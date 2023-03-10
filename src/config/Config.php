<?php

namespace App\src\config;

class Config
{
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
			if (file_exists(__DIR__."/LocalConfig.php"))
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

	/*
	 * При добавлении новых параметров конфигурации их следует занести в данный массив
	 */
	private static array $options = [
		"TOKEN" => "",
		"ADMIN_CHAT_ID" => "",
		"WEBHOOK_URL" => "",
	];
}