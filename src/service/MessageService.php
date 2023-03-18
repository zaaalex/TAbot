<?php

namespace App\src\service;

use App\src\config\Config;
use App\src\logging\Logger;
use JsonException;

class MessageService
{
	public function __construct()
	{
		$this->token = Config::getConfig()["TOKEN"];
	}

	private string $token;

	/**
	 * @throws JsonException
	 */
	public function sendMenu(int $chatId): void
	{
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

		$urlQuery = "https://api.telegram.org/bot"
			. $this->token . "/sendMessage?chat_id="
			. $chatId
			. "&text="
			. urlencode($textMessage)
			. "&reply_markup="
			. json_encode($keyboard, JSON_THROW_ON_ERROR)
			. "&entities="
			. json_encode($messageEntity, JSON_THROW_ON_ERROR);

		$this->send($urlQuery);
	}

	/**
	 * @throws JsonException
	 */
	public function sendChooseLanguageMessage(int $chatId): void
	{
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

		$urlQuery = "https://api.telegram.org/bot" . $this->token. "/sendMessage?chat_id=" . $chatId . "&text=" . urlencode(
				$textMessage
			) . "&reply_markup=" . json_encode($keyboard, JSON_THROW_ON_ERROR);

		$this->send($urlQuery);
	}

	/**
	 * @throws JsonException
	 */
	public function sendSearchByProductModelMessage(int $chatId): void
	{
		$textMessage = "Введите модель вашего устройства: ";

		$remove_keyboard = [
			"remove_keyboard" => true,
		];

		$urlQuery = "https://api.telegram.org/bot" . $this->token . "/sendMessage?chat_id=" . $chatId . "&text=" . urlencode(
				$textMessage
			) . "&reply_markup=" . json_encode($remove_keyboard, JSON_THROW_ON_ERROR);

		$this->send($urlQuery);
	}

	/**
	 * @throws JsonException
	 */
	public function sendSearchByErrorCodeMessage(int $chatId): void
	{
		$textMessage = "Введите код вашей ошибки: ";

		$remove_keyboard = [
			"remove_keyboard" => true,
		];

		$urlQuery = "https://api.telegram.org/bot" . $this->token . "/sendMessage?chat_id=" . $chatId . "&text=" . urlencode(
				$textMessage
			) . "&reply_markup=" . json_encode($remove_keyboard, JSON_THROW_ON_ERROR);

		$this->send($urlQuery);
	}

	public function sendTextMessage(int $chatId, string $textMessage = "Test"): void
	{
		$urlQuery = "https://api.telegram.org/bot" . $this->token . "/sendMessage?chat_id=" . $chatId . "&text=" . urlencode(
				$textMessage
			);

		file_get_contents($urlQuery);
	}

	/**
	 * @throws JsonException
	 */
	public function sendError(int $chatId):void
	{
		$this->sendTextMessage(
			$chatId,
			"Не получилось распознать команду. Попробуйте ещё раз или воспользуйтесь меню ниже ⬇"
		);
		$this->sendMenu($chatId);
	}

	/**
	 * @throws JsonException
	 */
	private function send(string $urlQuery): void
	{
		$result = file_get_contents($urlQuery);

		Logger::whiteLog($result, Config::getConfig()["LOG_OPTION_SEND"]);
	}
}