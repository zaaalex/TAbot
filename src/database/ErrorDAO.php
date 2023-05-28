<?php

namespace App\src\database;

use App\src\config\Config;
use RuntimeException;

class ErrorDAO extends DatabaseService
{
	public function isTypeJam(string $code): bool
	{
		$connection = $this->getDatabaseConnection();
		$code = mysqli_real_escape_string($connection, $code);
		$code = trim($code);

		$query = "SELECT TYPE_NAME FROM error WHERE CODE LIKE '$code'";

		$result = mysqli_query($connection, $query);

		if (!$result)
		{
			throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
		}

		$row = mysqli_fetch_assoc($result);

		return isset($row['TYPE_NAME']) && $row['TYPE_NAME'] === Config::getConfig()['ERROR_JAM'];
	}

	public function getErrorByCode(string $code, int $productId = null): ?array
	{
		$connection = $this->getDatabaseConnection();
		$code = mysqli_real_escape_string($connection, $code);
		$code = trim($code);

		if (!is_null($productId) && $this->isTypeJam($code))
		{
			$query = "SELECT error.ID, CODE, TYPE_NAME FROM error
					  inner join product_errorJam peJ on error.ID = peJ.ERROR_ID
					  WHERE CODE LIKE '$code' && peJ.PRODUCT_ID='$productId'";
		}
		else
		{
			$query = "SELECT ID, CODE, TYPE_NAME FROM error 
                      WHERE CODE LIKE '$code'";
		}

		$result = mysqli_query($connection, $query);

		if (!$result)
		{
			throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
		}

		$row = mysqli_fetch_assoc($result);
		if (is_null($row))
		{
			return null;
		}

		return $row;
	}

	public function getConditionsByErrorId(int $errorId, string $interfaceLanguage): ?array
	{
		$connection = $this->getDatabaseConnection();
		$query = "SELECT ID, NAME, DESCRIPTION FROM errorCondition WHERE ERROR_ID = '$errorId' && LANGUAGE_NAME = '$interfaceLanguage'";

		$result = mysqli_query($connection, $query);
		if (!$result)
		{
			throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
		}

		$description = [];
		while ($row = mysqli_fetch_assoc($result))
		{
			$description[] = $row;
		}

		return $description;
	}

	public function getSolveByConditionId(int $conditionId, int $ordinalNumber): ?array
	{
		$connection = $this->getDatabaseConnection();
		$query = "SELECT DESCRIPTION, ASSUMED_CASE, MEASURES from solve s
		WHERE s.CONDITION_ID='$conditionId' && s.STEP='$ordinalNumber'";

		$result = mysqli_query($connection, $query);
		if (!$result)
		{
			throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
		}

		return mysqli_fetch_assoc($result);
	}
}