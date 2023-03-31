<?php

namespace App\src;

use App\src\config\Config;
use App\src\database\UserInfoDAO;
use App\src\service\message\action\LanguageMessageService;
use App\src\service\message\action\MenuMessageService;
use App\src\service\message\action\SearchByCodeMessageService;
use App\src\service\message\action\SearchByModelMessageService;
use App\src\service\message\SendError;
use App\src\userAction\LanguageController;
use JsonException;

class Router
{
	/**
	 * @throws JsonException
	 */
	public static function searchCommandRoute(
		array $data,
		bool $checkLastAction = false
	): void
	{
		$userInfoDAO= new UserInfoDAO();

		$userId = $data["message"]["from"]["id"];
		$userInput = ($checkLastAction) ? $userInfoDAO->getLastActionById($userId) : $data["message"]["text"];

		$interfaceLanguage = (new UserInfoDAO())->getLanguageById($userId);
		if (is_null($interfaceLanguage))
		{
			$interfaceLanguage= Config::getConfig()["DEFAULT_LANGUAGE"];
		}

		switch ($userInput)
		{
			case Config::getConfig()["USER_ACTION_MENU"]:
			{
				(new UserInfoDAO())->updateUserInfoById($userId, null);
				(new MenuMessageService($interfaceLanguage, $userId))->sendMenu();
				break;
			}
			case "🖨️ Search by model":
			case "🖨️ Поиск по модели":
			case Config::getConfig()["USER_ACTION_PRODUCT"]:
			{
				if ($checkLastAction)
				{
					//ProductController();
					break;
				}
				$userInfoDAO->updateUserInfoById($userId, Config::getConfig()["USER_ACTION_PRODUCT"]);
				(new SearchByModelMessageService($interfaceLanguage, $userId))->sendMessage();
				break;
			}
			case "📟 Search by error":
			case "📟 Поиск по ошибке":
			case Config::getConfig()["USER_ACTION_CODE"]:
			{
				if ($checkLastAction)
				{
					//CodeController();
					break;
				}
				$userInfoDAO->updateUserInfoById($userId, Config::getConfig()["USER_ACTION_CODE"]);
				(new SearchByCodeMessageService($interfaceLanguage, $userId))->sendMessage();
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
				$userInfoDAO->updateUserInfoById($userId, Config::getConfig()["USER_ACTION_LANGUAGE"]);
				(new LanguageMessageService($interfaceLanguage, $userId))->sendChooseLanguageMessage();
				break;
			}
			default:
			{
				if (!$checkLastAction&&!is_null($userInfoDAO->getLastActionById($userId)))
				{
					self::searchCommandRoute($data, true);
					break;
				}
				(new SendError($interfaceLanguage, $userId))->sendError();
			}
		}
	}
}