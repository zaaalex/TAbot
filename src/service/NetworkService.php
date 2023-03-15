<?php

namespace App\src\service;

use App\src\config\Config;

class NetworkService
{
	public static function setWebHook(): void
	{
		static $webHookIsSet = null;
		if (is_null($webHookIsSet))
		{
			$token = Config::getConfig()["TOKEN"];
			$webHookUrl = Config::getConfig()["WEBHOOK_URL"];

			file_get_contents(
				"https://api.telegram.org/bot" . $token . "/setwebhook?url=" . $webHookUrl . "/index.php"
			);

			$webHookIsSet = true;
		}
	}
}