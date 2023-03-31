<?php

namespace App\src\database;

use App\src\config\Config;
use App\src\service\Validator;
use RuntimeException;

class UserInfoDAO extends DatabaseService
{
	/*[IMPORTANT]:Если пользователь впервые добавляется в БД, ему автоматически будет назначен
	Config["DEFAULT_LANGUAGE"] в качестве основного языка*/
	public function updateUserInfoById(int $userId, ?string $action, string $language=null):void
	{
		$connection = $this->getDatabaseConnection();
		$action = Validator::validateString($action);
		$language = is_null($language) ? $language : Validator::validateString($language);
		$defaultLanguage = Config::getConfig()["DEFAULT_LANGUAGE"];

		//если данных нет - создаем новую запись в БД
		if (!$this->existUserInfoById($userId))
		{
			(is_null($language)) ?
				$query="insert into userInfo (ID, ACTION_INFO, LANGUAGE_NAME) values ('$userId', '$action', '$defaultLanguage')"
				:
				$query="insert into userInfo (ID, ACTION_INFO, LANGUAGE_NAME) values ('$userId', '$action', '$language')";

		}
		//иначе - обновляем информацию
		else
		{
			(is_null($language)) ?
				$query="update userInfo set ACTION_INFO = '$action' WHERE ID='$userId'"
				:
				$query="update userInfo set ACTION_INFO = '$action', LANGUAGE_NAME = '$language' WHERE ID='$userId'";

		}

		$result = mysqli_query($connection, $query);

		if (!$result)
		{
			throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
		}
	}

	public function getLanguageById(int $userId): ?string
	{
		$connection = $this->getDatabaseConnection();

		if ($this->existUserInfoById($userId))
		{
			$result = mysqli_query(
				$connection,
				"SELECT LANGUAGE_NAME from userInfo uA WHERE uA.ID='$userId'");

			if (!$result)
			{
				throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
			}

			return mysqli_fetch_assoc($result)["LANGUAGE_NAME"];
		}
		return null;
	}

	public function getLastActionById(int $userId): ?string
	{
		$connection = $this->getDatabaseConnection();

		if ($this->existUserInfoById($userId))
		{
			$result = mysqli_query(
				$connection,
				"SELECT ACTION_INFO from userInfo uA WHERE uA.ID='$userId'");

			if (!$result)
			{
				throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
			}

			return mysqli_fetch_assoc($result)["LAST_ACTION"];
		}
		return null;
	}

	public function existUserInfoById(int $userId): bool
	{
		$connection = $this->getDatabaseConnection();

		$result = mysqli_query($connection, "SELECT ID from userInfo uA WHERE uA.ID='$userId'");

		if (!$result)
		{
			throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
		}

		if(is_null(mysqli_fetch_assoc($result)))
		{
			return false;
		}
		return true;
	}
}