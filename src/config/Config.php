<?php

namespace App\src\config;

class Config
{
	/*
	 * При добавлении новых параметров конфигурации их следует занести в данный массив
	 */
	private static array $options = [
		"TOKEN" => "",
		"ADMIN_CHAT_ID" => "",
		"WEBHOOK_URL" => "",

		"DB_HOST" => "",
		"DB_USER" => "",
		"DB_PASSWORD" => "",
		"DB_NAME" => "",

		"LOG_OPTION_SEND" => "send",
		"LOG_OPTION_RECEIVED" => "received",

		"USER_ACTION_MENU"=>"/menu",
		"USER_ACTION_LANGUAGE"=>"/language",
		"USER_ACTION_PRODUCT"=>"/product",
		"USER_ACTION_CODE"=>"/code",

		"DEFAULT_LANGUAGE"=>"ru",
		"USER_LANGUAGE_ENGLISH"=>"en",
		"USER_LANGUAGE_RUSSIAN"=>"ru",

		"USER_MESSAGE_LANGUAGE_ENGLISH"=>"🇬🇧 English",
		"USER_MESSAGE_LANGUAGE_RUSSIAN"=>"🇷🇺 Русский",

		"WHITE_LOG_REQUEST" => false,
	];

	public static function getConfig(): array
	{
		self::setConfig();

		return self::$config;
	}

	protected static function getOptions(): array
	{
		return self::$options;
	}

	private static function setConfig(): void
	{
		if (empty(self::$config))
		{
			if (file_exists(__DIR__ . "/LocalConfig.php"))
			{
				self::$config = array_merge(self::$options, LocalConfig::getLocalOptions());
			}
			else
			{
				self::$config = self::$options;
			}
		}
	}

	private static array $config = [];
}