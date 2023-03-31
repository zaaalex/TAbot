<?php

namespace App\src;

use App\src\config\Config;
use App\src\logging\Logger;
use App\src\service\message\MessageService;
use App\src\service\message\SendError;
use App\src\service\NetworkService;
use App\src\service\Validator;
use Exception;
use InvalidArgumentException;
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

				Router::searchCommandRoute($data);
			}
		}
		catch(InvalidArgumentException $e)
		{
			(new SendError(Config::getConfig()["USER_LANGUAGE_RUSSIAN"], (int)$e->getCode()));
			(new MessageService(Config::getConfig()["ADMIN_CHAT_ID"]))->sendTextMessage("[ERROR] " . $e);
		}
		catch (Exception $e)
		{
			(new MessageService(Config::getConfig()["ADMIN_CHAT_ID"]))->sendTextMessage( "[ERROR] " . $e);
		}
	}

	/**
	 * @throws JsonException
	 */
	private static function getData(): array
	{
		$data = file_get_contents('php://input');
		Logger::whiteLog($data, Config::getConfig()["LOG_OPTION_RECEIVED"]);

		$data = json_decode($data, true, 512, JSON_THROW_ON_ERROR);
		return Validator::validateReceivedMessage($data);
	}
}