<?php

namespace App\src;

use App\src\config\Config;
use App\src\database\UserInfoDAO;
use App\src\service\MessageService;
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
		$messageService = new MessageService();
		$userInfoDAO= new UserInfoDAO();

		$userId = $data["message"]["from"]["id"];
		$userInput = ($checkLastAction) ? $userInfoDAO->getLastAction($userId) : $data["message"]["text"];

		switch ($userInput)
		{
			case Config::getConfig()["USER_ACTION_MENU"]:
			{
				if ($checkLastAction)
				{
					//MenuController();
					break;
				}
				$userInfoDAO->updateUserInfoById($userId, Config::getConfig()["USER_ACTION_MENU"]);
				$messageService->sendMenu($userId);
				break;
			}
			case "🖨️ Поиск по модели":
			case Config::getConfig()["USER_ACTION_PRODUCT"]:
			{
				if ($checkLastAction)
				{
					//ProductController();
					break;
				}
				$userInfoDAO->updateUserInfoById($userId, Config::getConfig()["USER_ACTION_PRODUCT"]);
				$messageService->sendSearchByProductModelMessage($userId);
				break;
			}
			case "📟 Поиск по ошибке":
			case Config::getConfig()["USER_ACTION_CODE"]:
			{
				if ($checkLastAction)
				{
					//CodeController();
					break;
				}
				$userInfoDAO->updateUserInfoById($userId, Config::getConfig()["USER_ACTION_CODE"]);
				$messageService->sendSearchByErrorCodeMessage($userId);
				break;
			}
			case "🌍 Язык":
			case "/start":
			case Config::getConfig()["USER_ACTION_LANGUAGE"]:
			{
				if ($checkLastAction)
				{
					//LanguageController();
					break;
				}
				$userInfoDAO->updateUserInfoById($userId, Config::getConfig()["USER_ACTION_LANGUAGE"]);
				$messageService->sendChooseLanguageMessage($userId);
				break;
			}
			default:
			{
				if ($checkLastAction)
				{
					$messageService->sendError($userId);
					break;
				}
				self::searchCommandRoute($data, true);
			}
		}
	}
}