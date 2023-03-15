<?php

namespace App\src;

use App\src\service\MessageService;
use JsonException;

class Router
{
	/**
	 * @throws JsonException
	 */
	public static function searchCommandRoute($data): void
	{
		if (!isset($data["message"]["from"]["id"]))
		{
			throw new \InvalidArgumentException("Не удается получить id диалога.");
		}

		$chatId = $data["message"]["from"]["id"];
		switch ($data["message"]["text"])
		{
			case "/menu":
			{
				MessageService::sendMenu($chatId);
				break;
			}
			case "🖨️ Поиск по модели":
			case "/product":
			{
				MessageService::searchByProductModel($chatId);
				break;
			}
			case "📟 Поиск по ошибке":
			case "/code":
			{
				MessageService::searchByErrorCode($chatId);
				break;
			}
			case "🌍 Язык":
			case "/start":
			case "/language":
			{
				MessageService::chooseLanguage($chatId);
				break;
			}
			default:
				MessageService::sendTextMessage(
					$chatId,
					"Не получилось распознать команду. Попробуйте ещё раз или воспользуйтесь меню ниже ⬇"
				);
				MessageService::sendMenu($chatId);
		}
	}

	/**
	 * @throws JsonException
	 */
	public static function checkingForCommand($data): void
	{
		self::searchCommandRoute($data);
	}
}