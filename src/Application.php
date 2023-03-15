<?php

namespace App\src;

use App\src\config\Config;
use App\src\logging\Logger;
use App\src\service\MessageService;
use App\src\service\NetworkService;
use Exception;
use JsonException;

class Application
{
	public static function run(): void
	{
		try
		{
			NetworkService::setWebHook();

			if ($_SERVER['REQUEST_METHOD'] === 'POST')
			{
				$data = self::getData();
				Logger::whiteLog($data, Config::getConfig()["LOG_OPTION_RECEIVED"]);

				Router::checkingForCommand($data);
			}
		}
		catch (Exception $e)
		{
			MessageService::sendTextMessage(Config::getConfig()["ADMIN_CHAT_ID"], "[ERROR] " . $e);
		}
	}

	/**
	 * @throws JsonException
	 */
	private static function getData(): array
	{
		$data = file_get_contents('php://input');

		return json_decode($data, true, 512, JSON_THROW_ON_ERROR);
	}
}