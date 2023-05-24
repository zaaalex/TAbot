<?php

namespace App\src\controller;

use App\src\config\Config;
use App\src\database\ProductDAO;
use App\src\database\UserInfoDAO;
use App\src\languagePhrases\PhrasesController;
use App\src\model\ActionInfo;
use App\src\service\Validator;
use App\src\view\MenuMessageService;
use App\src\view\MessageService;
use InvalidArgumentException;

class SearchByProductController
{
	/**
	 * @throws \JsonException
	 */
	public static function determineState(array $data): void
	{
		$data = Validator::validateReceivedMessage($data);

		$userId = $data["message"]["from"]["id"];
		$userInput = $data["message"]["text"];

		$actionInfo = (new UserInfoDAO())->getActionInfoById($userId);
		$interfaceLanguage = (new UserInfoDAO())->getLanguageById($userId);
		$phrasesController = new PhrasesController($interfaceLanguage);

		if (is_null($actionInfo))
		{
			throw new InvalidArgumentException('Action info is not exist');
		}

		self::setProduct($userInput, $phrasesController, $userId);
	}

	/**
	 * @throws \JsonException
	 */
	private static function setProduct(string $userInput, PhrasesController $phrasesController, int $userId): void
	{
		$product = (new ProductDAO())->getProductByName($userInput);
		if (is_null($product))
		{
			(new MenuMessageService(
				$userId,
				$phrasesController->interfaceLanguage,
				$phrasesController->getPhrase("ERROR_CODE_UNSUCCESSFUL_SEARCH"))
			)
				->sendMenu();
			return;
		}

		$actionInfo = new ActionInfo(Config::getConfig()['USER_ACTION_CODE'], $product['ID']);
		(new UserInfoDAO())->updateUserInfoById($userId, $actionInfo);
		(new MessageService($userId))
			->sendTextMessage($phrasesController->getPhrase('SEARCH_BY_CODE_MESSAGE'));
	}
}