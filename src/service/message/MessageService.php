<?php

namespace App\src\service\message;

use App\src\config\Config;
use App\src\database\UserInfoDAO;
use App\src\logging\Logger;
use JsonException;

class MessageService
{
	public function __construct(int $userId)
	{
		$this->token = Config::getConfig()["TOKEN"];
		$this->userId = $userId;
	}

	protected string $token;
	protected int $userId;





	/**
	 * @throws JsonException
	 */
	public function sendTextMessage(string $textMessage = "Test"): void
	{
		$remove_keyboard = [
			"remove_keyboard" => true,
		];

		$urlQuery = "https://api.telegram.org/bot"
			. $this->token
			. "/sendMessage?chat_id="
			. $this->userId
			. "&text="
			. urlencode(
				$textMessage
			)
			. "&reply_markup="
			. json_encode($remove_keyboard, JSON_THROW_ON_ERROR);

		file_get_contents($urlQuery);
	}

	/**
	 * @throws JsonException
	 */
	protected function send(string $urlQuery): void
	{
		$result = file_get_contents($urlQuery);

		Logger::whiteLog($result, Config::getConfig()["LOG_OPTION_SEND"]);
	}
}