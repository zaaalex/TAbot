<?php

namespace App\src\service\message;

use App\src\config\Config;
use App\src\service\message\action\MenuMessageService;

class SendError extends MessageService
{
	public function __construct(string $languageCode, int $userId)
	{
		parent::__construct($userId);
		switch ($languageCode)
		{
			case Config::getConfig()["USER_LANGUAGE_RUSSIAN"]:
			{
				$this->currentKeyboard = MenuMessageService::$keyboardRu;
				$this->currentText =  $this->textRu;
				break;
			}
			case Config::getConfig()["USER_LANGUAGE_ENGLISH"]:
			{
				$this->currentKeyboard = MenuMessageService::$keyboardEn;
				$this->currentText =  $this->textEn;
				break;
			}
			default: throw new \LogicException("Передан некорректный languageCode: $languageCode");
		}
	}
	private string $currentText;
	private array $currentKeyboard;

	private string $textRu = "Не получилось распознать команду. Попробуйте ещё раз или воспользуйтесь меню ниже ⬇";
	private string $textEn = "The command could not be recognized. Try again or use the menu below ⬇";

	public function sendError(): void
	{
		$urlQuery = "https://api.telegram.org/bot"
			. $this->token
			. "/sendMessage?chat_id="
			. $this->userId
			."&text="
			. urlencode($this->currentText)
			."&reply_markup="
			. json_encode($this->currentKeyboard, JSON_THROW_ON_ERROR);

		$this->send($urlQuery);
	}
}