<?php

namespace App\src\service\message\action;

use App\src\config\Config;
use App\src\service\message\MessageService;
use JsonException;

class SearchByCodeMessageService extends MessageService
{

	public function __construct(string $languageCode, int $userId)
	{
		parent::__construct($userId);
		switch ($languageCode)
		{
			case Config::getConfig()["USER_LANGUAGE_RUSSIAN"]:
			{
				$this->currentText = $this->textRu;
				break;
			}
			case Config::getConfig()["USER_LANGUAGE_ENGLISH"]:
			{
				$this->currentText = $this->textEn;
				break;
			}
			default: throw new \LogicException("Передан некорректный languageCode: $languageCode");
		}
	}

	private array $keyboard = [
	"remove_keyboard" => true,
	];

	private string $currentText;

	private string $textRu = "Введите код вашей ошибки: ";
	private string $textEn = "Enter error code: ";

	/**
	 * @throws JsonException
	 */
	public function sendMessage(): void
	{
		$urlQuery = "https://api.telegram.org/bot"
			. $this->token
			. "/sendMessage?chat_id="
			. $this->userId
			. "&text="
			. urlencode($this->currentText)
			. "&reply_markup="
			. json_encode($this->keyboard, JSON_THROW_ON_ERROR);


		$this->send($urlQuery);
	}
}