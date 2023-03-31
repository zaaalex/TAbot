<?php

namespace App\src\userAction;

use App\src\config\Config;
use App\src\database\UserInfoDAO;
use App\src\service\message\action\MenuMessageService;
use App\src\service\message\SendError;
use App\src\service\Validator;
use JsonException;

class LanguageController
{
	/**
	 * @throws JsonException
	 */
	public static function setLanguage(array $data): void
	{
		$data=Validator::validateReceivedMessage($data);

		$userId=$data["message"]["from"]["id"];
		$userInput=$data["message"]["text"];

		switch ($userInput)
		{
			case Config::getConfig()["USER_MESSAGE_LANGUAGE_ENGLISH"]:
			{
				(new UserInfoDAO())->updateUserInfoById($userId, null, Config::getConfig()["USER_LANGUAGE_ENGLISH"]);
				(new MenuMessageService(Config::getConfig()["USER_LANGUAGE_ENGLISH"], $userId,
										"Super! New language installation was successful."))->sendMenu();

				break;
			}
			case Config::getConfig()["USER_MESSAGE_LANGUAGE_RUSSIAN"]:
			{
				(new UserInfoDAO())->updateUserInfoById($userId, null,Config::getConfig()["USER_LANGUAGE_RUSSIAN"]);
				(new MenuMessageService(Config::getConfig()["USER_LANGUAGE_RUSSIAN"], $userId,
										"Супер! Установка нового языка прошла успешно."))->sendMenu();

				break;
			}
			default:
			{
				$interfaceLanguage = (new UserInfoDAO())->getLanguageById($userId);
				(new SendError($interfaceLanguage, $userId))->sendError();
			}
		}
	}
}