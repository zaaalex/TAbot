<?php

namespace App\src\view;

use App\src\config\Config;
use JsonException;

class MenuMessageService extends MessageService
{
	public function __construct(int $userId, string $languageCode="", string $text ="", array $keyboard=[])
	{
		parent::__construct($userId);

		if (!empty($keyboard))
		{
			$customKeyboard = [
				"keyboard" => [
					$keyboard
				],
				"resize_keyboard" => true,
			];

			$this->currentKeyboard = $customKeyboard;
			$this->currentMessageEntity = [];
			$this->currentText = $text;

		}
		else
		{
			switch ($languageCode)
			{
				case Config::getConfig()["USER_LANGUAGE_RUSSIAN"]:
				{
					$this->currentKeyboard = self::$keyboardRu;
					$this->currentMessageEntity = empty($text) ? $this->messageEntityRu : [];
					$this->currentText = empty($text) ? $this->textRu : $text;
					break;
				}
				case Config::getConfig()["USER_LANGUAGE_ENGLISH"]:
				{
					$this->currentKeyboard = self::$keyboardEn;
					$this->currentMessageEntity = empty($text) ? $this->messageEntityEn : [];
					$this->currentText = empty($text) ? $this->textEn : $text;
					break;
				}
				default:
					throw new \LogicException("Передан некорректный languageCode: $languageCode");
			}
		}
	}

	private array $currentKeyboard;
	private array $currentMessageEntity;
	private string $currentText;

	public static array $keyboardRu = [
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

	public static array $keyboardEn = [
		"keyboard" => [
			[
				[
					"text" => "🖨️ Search by model",
				],
				[
					"text" => "📟 Search by error",
				],
			],
			[
				["text" => "🌍 Language"],
			],
		],
		"resize_keyboard" => true,
	];

	private array $messageEntityRu = [
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

	private array $messageEntityEn = [
		[
			"offset" => 4,
			"length" => 15,
			"type" => "bold",
		],
		[
			"offset" => 139,
			"length" => 15,
			"type" => "bold",
		],
		[
			"offset" => 341,
			"length" => 8,
			"type" => "bold",
		],
	];

	private string $textRu = "🖨️ Поиск по модели \nРежим поиска решения возникшей ошибки по модели техники. Идеальный поиск. Точная схема действий.\n\n📟 Поиск по ошибке\nНе удается найти модель техники? Попытаемся отыскать решение, имея лишь код ошибки. Возможно кратное увеличение числа шагов для решения проблемы по сравнению с первым методом.\n\n🌍 Язык\nВыбор языка бота";
	private string $textEn = "🖨️ Search by model \nMode of searching for a solution to an error based on the vehicle model. Perfect search. Exact scheme of actions.\n\n📟 Search by error\nCan't find the vehicle model? Let's try to find a solution with only the error code It is possible to multiply the number of steps to solve the problem compared to the first method.\n\n🌍 Language\nSelect the language of the bot";

	/**
	 * @throws JsonException
	 */
	public function sendMenu(): void
	{
		$urlQuery = "https://api.telegram.org/bot"
			. $this->token
			. "/sendMessage?chat_id="
			. $this->userId
			. "&text="
			. urlencode($this->currentText)
			. "&reply_markup="
			. json_encode($this->currentKeyboard, JSON_THROW_ON_ERROR);


		if (isset($this->currentMessageEntity))
		{
			$urlQuery.= "&entities="
				. json_encode($this->currentMessageEntity, JSON_THROW_ON_ERROR);
		}

		$this->send($urlQuery);
	}
}