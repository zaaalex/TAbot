<?php

namespace App\src\controller;

use App\src\config\Config;
use App\src\database\ErrorDAO;
use App\src\database\ProductDAO;
use App\src\database\UserInfoDAO;
use App\src\languagePhrases\PhrasesController;
use App\src\model\ActionInfo;
use App\src\service\Validator;
use App\src\view\MenuMessageService;
use App\src\view\MessageService;
use InvalidArgumentException;
use JsonException;

class SearchByErrorController
{
	/**
	 * @throws JsonException
	 */
	public static function determineState(array $data): void
	{
		$data=Validator::validateReceivedMessage($data);

		$userId=$data["message"]["from"]["id"];
		$userInput=$data["message"]["text"];

		$actionInfo= (new UserInfoDAO)->getActionInfoById($userId);
		$interfaceLanguage = (new UserInfoDAO())->getLanguageById($userId);
		$phrasesController = new PhrasesController($interfaceLanguage);

		if (is_null($actionInfo))
		{
			throw new InvalidArgumentException('Action info is not exist');
		}

		if (is_null($actionInfo->errorId))
		{
			self::setErrorId($userInput, $actionInfo, $phrasesController, $userId);
			return;
		}

		if (is_null($actionInfo->conditionId))
		{
			self::setConditionId($userInput, $actionInfo, $phrasesController, $userId);
			return;
		}

		self::setStep($userInput, $actionInfo, $phrasesController, $userId);
	}

	/**
	 * @throws JsonException
	 */
	private static function setErrorId(
		string $errorCode,
		ActionInfo $actionInfo,
		PhrasesController $phrasesController,
		int $userId
	): void
	{
		$errorInfo = (new ErrorDAO())->getErrorByCode(
			$errorCode,
			$phrasesController->interfaceLanguage,
			$actionInfo->productId
		);
		if (is_null($errorInfo))
		{
			$searchSuccessPhrase = $phrasesController
				->getPhrase("ERROR_CODE_UNSUCCESSFUL_SEARCH");

			(new MenuMessageService($userId, $phrasesController->interfaceLanguage, $searchSuccessPhrase))
				->sendMenu();
			return;
		}

		if (is_null($actionInfo->productId)&&$errorInfo['TYPE_NAME']===Config::getConfig()['ERROR_JAM'])
		{
			(new MessageService($userId))->sendTextMessage(
				$phrasesController->getPhrase('ERROR_JAM_FOUND')
			);

			$products = (new ProductDAO())->getProductsByErrorCode($errorCode);
			$keyboard = [];
			foreach ($products as $key=>$product)
			{
				$productMessage .= ($key+1).'. '.$product.PHP_EOL;
				$keyboard[] = ["text"=>$product];
			}

			(new MenuMessageService($userId, "", $productMessage, $keyboard))->sendMenu();
			(new UserInfoDAO())->updateUserInfoById(
				$userId,
				new ActionInfo(Config::getConfig()['USER_ACTION_PRODUCT'])
			);

			return;
		}

		$searchSuccessPhrase = $phrasesController
			->getPhrase("ERROR_CODE_SUCCESS_SEARCH");

		(new MessageService($userId))->sendTextMessage($searchSuccessPhrase);
		(new MessageService($userId))->sendTextMessage(
			$errorInfo['CODE']
			.': '
			.$errorInfo['NAME']
			.PHP_EOL
			.$errorInfo['DESCRIPTION']
		);

		$actionInfo->errorId=$errorInfo['ID'];

		(new UserInfoDAO())->updateUserInfoById($userId, $actionInfo);
		self::checkCondition($actionInfo, $phrasesController, $userId);
	}

	/**
	 * @throws JsonException
	 */
	private static function checkCondition(ActionInfo $actionInfo, PhrasesController $phrasesController, int $userId): void
	{
		$conditions = (new ErrorDAO())->getConditionsByErrorId(
			$actionInfo->errorId,
			$phrasesController->interfaceLanguage
		);

		if (empty($conditions))
		{
			$actionInfo->conditionId = -1;
			$actionInfo->step=0;

			(new UserInfoDAO())->updateUserInfoById($userId, $actionInfo);
			self::checkStep($actionInfo, $phrasesController, $userId);
			return;
		}

		$keyboard = [];
		$conditionsMessage = $phrasesController
			->getPhrase("ERROR_CODE_SUCCESS_SEARCH_CONDITIONS").PHP_EOL;

		foreach ($conditions as $key=>$condition)
		{
			$conditionsMessage .= ($key+1).'. '.$condition['DESCRIPTION'].PHP_EOL;
			$keyboard[] = ["text"=>$key+1];
		}

		(new MenuMessageService($userId, "", $conditionsMessage, $keyboard))->sendMenu();
	}

	/**
	 * @throws JsonException
	 */
	private static function setConditionId(
		string $conditionId,
		ActionInfo $actionInfo,
		PhrasesController $phrasesController,
		int $userId
	): void
	{
		$conditions = (new ErrorDAO())->getConditionsByErrorId(
			$actionInfo->errorId,
			$phrasesController->interfaceLanguage
		);

		// Используется [$conditionId-1] так как при выводе пользователю в checkCondition id
		// было увеличено на единицу, чтобы не начинать список с нуля
		if (!isset($conditions[$conditionId-1]))
		{
			throw new \InvalidArgumentException("Incorrect conditionId");
		}

		$actionInfo->conditionId = $conditions[$conditionId-1]['ID'];
		$actionInfo->step = 0;

		(new UserInfoDAO())->updateUserInfoById($userId, $actionInfo);

		self::checkStep($actionInfo, $phrasesController, $userId);
	}

	/**
	 * @throws JsonException
	 */
	private static function checkStep(
		ActionInfo $actionInfo,
		PhrasesController $phrasesController,
		int $userId
	): void
	{
		if ($actionInfo->conditionId!==-1)
		{
			$solve = (new ErrorDAO())->getSolveByConditionId($actionInfo->conditionId, $actionInfo->step, $phrasesController->interfaceLanguage);
		}
		else
		{
			$solve = (new ErrorDAO())->getSolveByErrorId($actionInfo->errorId, $actionInfo->step, $phrasesController->interfaceLanguage);
		}

		if (empty($solve))
		{
			(new MenuMessageService($userId,
									$phrasesController->interfaceLanguage,
									$phrasesController->getPhrase('FIX_ERROR_UNSUCCESSFUL'),
			)
			)->sendMenu();
			(new UserInfoDAO())->updateUserInfoById($userId, new ActionInfo(null));
			return;
		}

		(new MessageService($userId))->sendTextMessage(
			"[". $phrasesController->getPhrase("STEP"). " "
			.($actionInfo->step+1) ."]".PHP_EOL
			. $phrasesController->getPhrase('DESCRIPTION').": "
			. $solve['DESCRIPTION'].PHP_EOL
			. $phrasesController->getPhrase('ASSUMED_CASE').": "
			. $solve['ASSUMED_CASE'].PHP_EOL
			. $phrasesController->getPhrase('MEASURES').": "
			. $solve['MEASURES'].PHP_EOL
		);

		$keyboard = [
			["text"=>$phrasesController->getPhrase('AGREE')],
			["text"=>$phrasesController->getPhrase('DISAGREE')]
		];

		(new MenuMessageService($userId,
								"",
								$phrasesController->getPhrase('FIX_ERROR_QUESTION'),
								$keyboard)
		)->sendMenu();
	}

	/**
	 * @throws JsonException
	 */
	private static function setStep(
		string $userInput,
		ActionInfo $actionInfo,
		PhrasesController $phrasesController,
		int $userId
	): void
	{
		switch ($userInput)
		{
			case $phrasesController->getPhrase('AGREE'):
			{
				(new MenuMessageService($userId,
										$phrasesController->interfaceLanguage,
										$phrasesController->getPhrase('FIX_ERROR_SUCCESS'),
										)
				)->sendMenu();
				(new UserInfoDAO())->updateUserInfoById($userId, new ActionInfo(null));
				break;
			}
			case $phrasesController->getPhrase('DISAGREE'):
			{
				$actionInfo->step++;
				(new UserInfoDAO())->updateUserInfoById($userId, $actionInfo);
				self::checkStep($actionInfo, $phrasesController, $userId);
				break;
			}
			default:
			{
				throw new \InvalidArgumentException("Incorrect input");
			}
		}
	}
}