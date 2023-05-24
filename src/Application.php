<?php

namespace App\src;

use App\src\config\Config;
use App\src\service\Logger;
use App\src\service\NetworkService;
use App\src\service\Validator;
use JsonException;

class Application
{
	public static function run(): void
	{
		NetworkService::setWebHook();

		if ($_SERVER['REQUEST_METHOD'] === 'POST')
		{
			$data = self::getData();
			Router::searchCommandRoute($data);
		}
	}

	/**
	 * @throws JsonException
	 */
	private static function getData(): array
	{
		$data = file_get_contents('php://input');
		if (Config::getConfig()['WRITE_LOG_REQUEST'])
		{
			Logger::whiteLog($data, Config::getConfig()["LOG_OPTION_RECEIVED"]);
		}
		$data = json_decode($data, true, 512, JSON_THROW_ON_ERROR);
		return Validator::validateReceivedMessage($data);
	}
}