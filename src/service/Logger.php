<?php

namespace App\src\service;

use App\src\config\Config;
use JsonException;

class Logger
{
	/**
	 * @throws JsonException
	 */
	public static function whiteLog(string $data, string $type): void
	{
		$data = json_decode($data, true, 512, JSON_THROW_ON_ERROR);

		if (Config::getConfig()["WHITE_LOG_REQUEST"])
		{
			if ($type === Config::getConfig()["LOG_OPTION_SEND"])
			{
				file_put_contents(
					__DIR__.'/result.txt',
					print_r($data, true),
					FILE_APPEND
				);

				return;
			}
			file_put_contents(
				__DIR__.'/message.txt',
				print_r($data, true),
				FILE_APPEND
			);

			return;
		}

		if ($type === Config::getConfig()["LOG_OPTION_SEND"])
		{
			file_put_contents(
				__DIR__.'/result.txt',
				print_r($data, true)
			);

			return;
		}

		file_put_contents(
			__DIR__.'/message.txt',
			print_r($data, true)
		);
	}
}