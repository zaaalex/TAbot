<?php

namespace App\src\controller;

use App\src\config\Config;
use App\src\database\UserInfoDAO;
use App\src\languagePhrases\PhrasesController;
use App\src\model\ActionInfo;
use App\src\service\Validator;
use App\src\view\MenuMessageService;
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
				$interfaceLanguage = Config::getConfig()['USER_LANGUAGE_ENGLISH'];
				break;
			}
			case Config::getConfig()["USER_MESSAGE_LANGUAGE_RUSSIAN"]:
			{
				$interfaceLanguage = Config::getConfig()['USER_LANGUAGE_RUSSIAN'];
				break;
			}
			default:
			{
				$interfaceLanguage = (new UserInfoDAO())->getLanguageById($userId);

				(new MenuMessageService
				(
					$userId,
					$interfaceLanguage,
					(new PhrasesController($interfaceLanguage))->getPhrase('COMMAND_NOT_RECOGNIZED')
				)
				)->sendMenu();
				return;
			}
		}

		(new UserInfoDAO())->updateUserInfoById(
			$userId,
			new ActionInfo(null),
			$interfaceLanguage
		);

		(new MenuMessageService
		(
			$userId,
			$interfaceLanguage,
			(new PhrasesController($interfaceLanguage))->getPhrase('SUCCESS_INSTALL_LANGUAGE')
		)
		)->sendMenu();
	}
}