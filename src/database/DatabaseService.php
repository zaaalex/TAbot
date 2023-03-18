<?php

namespace App\src\database;

use App\src\config\Config;
use mysqli;
use RuntimeException;

class DatabaseService
{
	protected function getDatabaseConnection(): mysqli
	{
		static $connection = null;

		if ($connection === null)
		{
			$dbHost = Config::getConfig()["DB_HOST"];
			$dbUser = Config::getConfig()["DB_USER"];
			$dbPassword = Config::getConfig()["DB_PASSWORD"];
			$dbName = Config::getConfig()["DB_NAME"];

			$connection = mysqli_init();
			$connected = mysqli_real_connect($connection, $dbHost, $dbUser, $dbPassword, $dbName);
			if (!$connected)
			{
				$error = mysqli_connect_errno() . ': ' . mysqli_connect_error();
				throw new RuntimeException($error);
			}

			$encodingResult = mysqli_set_charset($connection, 'utf8');
			if (!$encodingResult)
			{
				header("Location: /public/error.php");
				throw new RuntimeException(mysqli_error($connection));
			}
		}
		return $connection;
	}
}