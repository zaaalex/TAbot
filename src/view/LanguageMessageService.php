<?php

namespace App\src\view;

use App\src\languagePhrases\PhrasesController;
use JsonException;

class LanguageMessageService extends MessageService
{

	public function __construct(string $interfaceLanguage, int $userId)
	{
		parent::__construct($userId);
		$this->currentText=(new PhrasesController($interfaceLanguage))->getPhrase('CHOOSE_LANGUAGE');
	}

	private array $keyboard =
		[
			[
				"text" => "🇷🇺 Русский",
			],
			[
				"text" => "🇬🇧 English",
			],
		];

	private string $currentText;

	/**
	 * @throws JsonException
	 */
	public function sendLanguageMessage(): void
	{
		(new MenuMessageService($this->userId, "", $this->currentText, $this->keyboard))
			->sendMenu();
	}
}