<?php

namespace App\src\service;

use InvalidArgumentException;
use JsonException;
use LogicException;

class Validator
{
	/**
	 * @throws JsonException
	 */
	public static function validateReceivedMessage(string $data):array
	{
		$data = json_decode($data, true, 512, JSON_THROW_ON_ERROR);
		if (!isset($data["message"]["from"]["id"], $data["message"]["chat"]["id"], $data["message"]["text"]))
		{
			throw new LogicException("Не удается получить доступ к полю входящего сообщения");
		}

		if (!preg_match('/^[\/A-Za-zА-Яа-я0-9-\s🇷🇺🇬🇧🖨️📟🌍]+$/u', $data["message"]["text"]))
		{
			$userId=$data["message"]["chat"]["id"];
			throw new InvalidArgumentException("Сообщение пользователя $userId содержит недопустимые символы",
											   $userId);
		}

		return $data;
	}

	public static function validateString(string $data):string
	{
		return htmlspecialchars($data, ENT_QUOTES);
	}
}