<?php

namespace App\src;

use App\src\config\Config;
use App\src\controller\LanguageController;
use App\src\controller\SearchByErrorController;
use App\src\controller\SearchByProductController;
use App\src\database\UserInfoDAO;
use App\src\languagePhrases\PhrasesController;
use App\src\model\ActionInfo;
use App\src\view\LanguageMessageService;
use App\src\view\MenuMessageService;
use App\src\view\MessageService;

class Router
{
	public static function searchCommandRoute(array $data, bool $checkLastAction = false): void
	{
		$userInfoDAO = new UserInfoDAO();

		$userId = $data["message"]["from"]["id"];
		$action = ($checkLastAction) ? $userInfoDAO->getActionInfoById($userId)->lastAction
			: $data["message"]["text"];

		$interfaceLanguage = $userInfoDAO->getLanguageById($userId) ??
			Config::getConfig()["DEFAULT_LANGUAGE"];

		$phrasesController = new PhrasesController($interfaceLanguage);
		try
		{
			switch ($action)
			{
				case Config::getConfig()["USER_ACTION_MENU"]:
				{
					$userInfoDAO->updateUserInfoById($userId, new ActionInfo(null));
					(new MenuMessageService($userId, $interfaceLanguage))->sendMenu();
					break;
				}
				case "🖨️ Search by model":
				case "🖨️ Поиск по модели":
				case Config::getConfig()["USER_ACTION_PRODUCT"]:
				{
					if ($checkLastAction)
					{
						SearchByProductController::determineState($data);
						break;
					}

					$userInfoDAO->updateUserInfoById(
						$userId,
						new ActionInfo(Config::getConfig()["USER_ACTION_PRODUCT"])
					);

					(new MessageService($userId))
						->sendTextMessage($phrasesController->getPhrase('SEARCH_BY_MODEL_MESSAGE'));

					break;
				}
				case "📟 Search by error":
				case "📟 Поиск по ошибке":
				case Config::getConfig()["USER_ACTION_CODE"]:
				{
					if ($checkLastAction)
					{
						SearchByErrorController::determineState($data);
						break;
					}

					$userInfoDAO->updateUserInfoById(
						$userId,
						new ActionInfo(Config::getConfig()["USER_ACTION_CODE"])
					);

					(new MessageService($userId))
						->sendTextMessage($phrasesController->getPhrase('SEARCH_BY_CODE_MESSAGE'));
					break;
				}
				case "🌍 Language":
				case "🌍 Язык":
				case "/start":
				case Config::getConfig()["USER_ACTION_LANGUAGE"]:
				{
					if ($checkLastAction)
					{
						LanguageController::setLanguage($data);
						break;
					}

					$userInfoDAO->updateUserInfoById(
						$userId,
						new ActionInfo(Config::getConfig()["USER_ACTION_LANGUAGE"])
					);

					(new LanguageMessageService($interfaceLanguage, $userId))->sendLanguageMessage();
					break;
				}
				default:
				{
					$lastAction = $userInfoDAO->getActionInfoById($userId)->lastAction;
					if (!$checkLastAction && !is_null($lastAction))
					{
						self::searchCommandRoute($data, true);
						break;
					}
					throw new \InvalidArgumentException("Incorrect command");
				}
			}
		}
		catch (\Exception $e)
		{
			$phrasesController = new PhrasesController($interfaceLanguage);

			(new MenuMessageService
				(
					$userId,
					$interfaceLanguage,
					$phrasesController->getPhrase('COMMAND_NOT_RECOGNIZED')
				)
			)->sendMenu();
		}
	}
}