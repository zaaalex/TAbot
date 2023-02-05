<?php
include_once __DIR__ . "/../boot.php";

function getConfigurationOption(string $name, string $defaultValue = null)
{
	/**
	 * @var array $config ;
	 * @var array $localConfig ;
	 */
	static $config = null;

	if ($config === null)
	{
		require ROOT . "/config/config.php";

		file_exists(ROOT . "/config/local-config.php") ? require ROOT . '/config/local-config.php' : $localConfig = [];

		$config = array_merge($config, $localConfig);
	}

	if (array_key_exists($name, $config))
	{
		return $config[$name];
	}

	if ($defaultValue !== null)
	{
		return $defaultValue;
	}

	throw new \RuntimeException("Configuration option $name not found!");
}