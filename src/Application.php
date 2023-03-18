<?php

namespace App\src;

use App\src\config\Config;
use App\src\logging\Logger;
use App\src\service\MessageService;
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
			(new MessageService())->sendError((int)$e->getCode());
			(new MessageService())->sendTextMessage(Config::getConfig()["ADMIN_CHAT_ID"], "[ERROR] " . $e);
		}
		catch (Exception $e)
		{
			(new MessageService())->sendTextMessage(Config::getConfig()["ADMIN_CHAT_ID"], "[ERROR] " . $e);
		}
	}

	/**
	 * @throws JsonException
	 */
	private static function getData(): array
	{
		$data = file_get_contents('php://input');
		Logger::whiteLog($data, Config::getConfig()["LOG_OPTION_RECEIVED"]);

		return Validator::validateReceivedMessage($data);
	}
}