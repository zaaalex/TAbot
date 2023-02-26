<?php

namespace App\src\Service;

use App\src\config\Config;
use App\src\config\LocalConfig;

class MessageService
{
	public static function sendTextMessage(int $chatId, string $textMessage = "Test"): void
	{
		$token = Config::getConfig()["TOKEN"];

		$urlQuery = "https://api.telegram.org/bot"
			. $token
			. "/sendMessage?chat_id="
			. $chatId
			. "&text="
			. $textMessage;

		$result = file_get_contents($urlQuery);

		var_dump(json_decode($result, true));
	}
}