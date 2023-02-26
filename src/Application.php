<?php

namespace App\src;

use App\src\Service\MessageService;
use App\src\Service\TemplateService;

class Application
{
	public static function run(): void
	{
		self::setWebHook();

		if ($_SERVER['REQUEST_METHOD'] === 'POST')
		{
			$data = file_get_contents('php://input');
			$data = json_decode($data, true);
			file_put_contents(__DIR__ . '/message.txt', print_r($data, true));
			MessageService::sendTextMessage($data["message"]["from"]["id"], $data["message"]["text"]);
		}
	}

	private static function setWebHook(): void
	{
		static $setWebHook = null;
		if ($setWebHook === null)
		{
			TemplateService::setWebHook();
			$setWebHook = true;
		}
	}
}