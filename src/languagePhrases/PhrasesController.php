<?php

namespace App\src\languagePhrases;

use App\src\config\Config;
use InvalidArgumentException;

class PhrasesController
{
	public string $interfaceLanguage;
	public function __construct(string $interfaceLanguage)
	{
		$this->interfaceLanguage = $interfaceLanguage;
	}

	public function getPhrase(string $phrase): string
	{
		switch ($this->interfaceLanguage)
		{
			case Config::getConfig()["USER_LANGUAGE_RUSSIAN"]:
			{
				if (isset(RussianPhrases::$lang[$phrase]))
				{
					return RussianPhrases::$lang[$phrase];
				}
				throw new InvalidArgumentException("Некорректная языковая фраза");
			}
			case Config::getConfig()["USER_LANGUAGE_ENGLISH"]:
			{
				if (isset(EnglishPhrases::$lang[$phrase]))
				{
					return EnglishPhrases::$lang[$phrase];
				}
				throw new InvalidArgumentException("Некорректная языковая фраза");
			}
			default: throw new \LogicException("Некорректный languageCode: $this->interfaceLanguage");
		}
	}
}