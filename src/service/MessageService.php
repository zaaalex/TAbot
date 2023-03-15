<?php

namespace App\src\service;

use App\src\config\Config;
use App\src\logging\Logger;
use JsonException;

class MessageService
{
	/**
	 * @throws JsonException
	 */
	public static function sendMenu(int $chatId): void
	{
		$token = Config::getConfig()["TOKEN"];

		$textMessage = "🖨️ Поиск по модели \nРежим поиска решения возникшей ошибки по модели техники. Идеальный поиск. Точная схема действий.\n\n📟 Поиск по ошибке\nНе удается найти модель техники? Попытаемся отыскать решение, имея лишь код ошибки. Возможно кратное увеличение числа шагов для решения проблемы по сравнению с первым методом.\n\n🌍 Язык\nВыбор языка бота";

		$messageEntity = [
			[
				"offset" => 4,
				"length" => 15,
				"type" => "bold",
			],
			[
				"offset" => 122,
				"length" => 15,
				"type" => "bold",
			],
			[
				"offset" => 318,
				"length" => 4,
				"type" => "bold",
			],
		];

		$keyboard = [
			"keyboard" => [
				[
					[
						"text" => "🖨️ Поиск по модели",
					],
					[
						"text" => "📟 Поиск по ошибке",
					],
				],
				[
					["text" => "🌍 Язык"],
				],
			],
			"resize_keyboard" => true,
		];

		$urlQuery = "https://api.telegram.org/bot" . $token . "/sendMessage?chat_id=" . $chatId . "&text=" . urlencode(
				$textMessage
			) . "&reply_markup=" . json_encode($keyboard, JSON_THROW_ON_ERROR) . "&entities=" . json_encode(
				$messageEntity,
				JSON_THROW_ON_ERROR
			);

		$result = file_get_contents($urlQuery);
		$result = json_decode($result, true, 512, JSON_THROW_ON_ERROR);
		Logger::whiteLog($result, Config::getConfig()["LOG_OPTION_SEND"]);
	}

	public static function chooseLanguage(int $chatId): void
	{
		$token = Config::getConfig()["TOKEN"];

		$textMessage = "Язык: ";

		$keyboard = [
			"keyboard" => [
				[
					[
						"text" => "🇷🇺 Русский",
					],
					[
						"text" => "🇬🇧 English",
					],
				],
			],
			"resize_keyboard" => true,
		];

		$urlQuery = "https://api.telegram.org/bot" . $token . "/sendMessage?chat_id=" . $chatId . "&text=" . urlencode(
				$textMessage
			) . "&reply_markup=" . json_encode($keyboard, JSON_THROW_ON_ERROR);

		$result = file_get_contents($urlQuery);
		$result = json_decode($result, true, 512, JSON_THROW_ON_ERROR);
		Logger::whiteLog($result, Config::getConfig()["LOG_OPTION_SEND"]);
	}

	/**
	 * @throws JsonException
	 */
	public static function searchByProductModel(int $chatId): void
	{
		$token = Config::getConfig()["TOKEN"];

		$textMessage = "Введите модель вашего устройства: ";

		$remove_keyboard = [
			"remove_keyboard" => true,
		];

		$urlQuery = "https://api.telegram.org/bot" . $token . "/sendMessage?chat_id=" . $chatId . "&text=" . urlencode(
				$textMessage
			) . "&reply_markup=" . json_encode($remove_keyboard, JSON_THROW_ON_ERROR);

		$result = file_get_contents($urlQuery);
		$result = json_decode($result, true, 512, JSON_THROW_ON_ERROR);
		Logger::whiteLog($result, Config::getConfig()["LOG_OPTION_SEND"]);
	}

	/**
	 * @throws JsonException
	 */
	public static function searchByErrorCode(int $chatId): void
	{
		$token = Config::getConfig()["TOKEN"];

		$textMessage = "Введите код вашей ошибки: ";

		$remove_keyboard = [
			"remove_keyboard" => true,
		];

		$urlQuery = "https://api.telegram.org/bot" . $token . "/sendMessage?chat_id=" . $chatId . "&text=" . urlencode(
				$textMessage
			) . "&reply_markup=" . json_encode($remove_keyboard, JSON_THROW_ON_ERROR);

		$result = file_get_contents($urlQuery);
		$result = json_decode($result, true, 512, JSON_THROW_ON_ERROR);
		Logger::whiteLog($result, Config::getConfig()["LOG_OPTION_SEND"]);
	}

	public static function sendTextMessage(int $chatId, string $textMessage = "Test"): void
	{
		$token = Config::getConfig()["TOKEN"];

		$urlQuery = "https://api.telegram.org/bot" . $token . "/sendMessage?chat_id=" . $chatId . "&text=" . urlencode(
				$textMessage
			);

		$result = file_get_contents($urlQuery);
	}
}