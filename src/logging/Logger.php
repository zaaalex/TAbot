<?php

namespace App\src\logging;

use App\src\config\Config;

class Logger
{
	public static function whiteLog(array $data, string $type): void
	{
		if (Config::getConfig()["WHITE_LOG_REQUEST"])
		{
			if ($type === Config::getConfig()["LOG_OPTION_SEND"])
			{
				file_put_contents(
					Config::getConfig()["ROOT"] . '/logging/result.txt',
					print_r($data, true),
					FILE_APPEND
				);

				return;
			}
			file_put_contents(
				Config::getConfig()["ROOT"] . '/logging/message.txt',
				print_r($data, true),
				FILE_APPEND
			);

			return;
		}

		if ($type === Config::getConfig()["LOG_OPTION_SEND"])
		{
			file_put_contents(
				Config::getConfig()["ROOT"] . '/logging/result.txt',
				print_r($data, true)
			);

			return;
		}

		file_put_contents(
			Config::getConfig()["ROOT"] . '/logging/message.txt',
			print_r($data, true)
		);
	}
}