<?php

namespace App\src\config;

/*
 * Для использования переименовать файл и название класса в LocalConfig
 */
class LocalConfigSample extends Config
{
	private static function setLocalOptions(): void
	{
		self::$localOptions = Config::getOptions();
		/*
		 * Далее при необходимости следует установить локальные значения для элементов,
		 * пример:
		 * self::$localOptions["TOKEN"]="7578287785:Sgdgfdsjgk";
		 */
	}

	protected static function getLocalOptions(): array
	{
		self::setLocalOptions();

		return self::$localOptions;
	}

	private static array $localOptions;
}