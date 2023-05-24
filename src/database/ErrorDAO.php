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

	public function getErrorByCode(string $code, string $interfaceLanguage, int $productId = null): ?array
	{
		$connection = $this->getDatabaseConnection();
		$code = mysqli_real_escape_string($connection, $code);
		$code = trim($code);

		if (!is_null($productId) && $this->isTypeJam($code))
		{
			$query = "SELECT error.ID, CODE, TYPE_NAME, NAME, DESCRIPTION FROM error
			inner join errorDescription eD on error.ID = eD.ERROR_ID
			inner join product_errorJam peJ on error.ID = peJ.ERROR_ID
			WHERE CODE LIKE '$code' && eD.LANGUAGE_NAME = '$interfaceLanguage' && peJ.PRODUCT_ID='$productId'";
		}
		else
		{
			$query = "SELECT error.ID, CODE, TYPE_NAME, NAME, DESCRIPTION FROM error
			inner join errorDescription eD on error.ID = eD.ERROR_ID
			WHERE CODE LIKE '$code' && eD.LANGUAGE_NAME = '$interfaceLanguage'";
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
		$query = "SELECT * FROM errorCondition WHERE ERROR_ID = '$errorId' && LANGUAGE_NAME = '$interfaceLanguage'";

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

	public function getSolveByErrorId(int $errorId, int $ordinalNumber, string $interfaceLanguage): ?array
	{
		$connection = $this->getDatabaseConnection();
		$query = "SELECT DESCRIPTION, ASSUMED_CASE, MEASURES from error_solve
		INNER JOIN solve s on error_solve.SOLVE_ID = s.ID
		WHERE error_solve.ERROR_ID='$errorId' && s.STEP='$ordinalNumber'&& s.LANGUAGE_NAME='$interfaceLanguage'";

		$result = mysqli_query($connection, $query);
		if (!$result)
		{
			throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
		}

		return mysqli_fetch_assoc($result);
	}

	public function getSolveByConditionId(int $conditionId, int $ordinalNumber, string $interfaceLanguage): ?array
	{
		$connection = $this->getDatabaseConnection();
		$query = "SELECT DESCRIPTION, ASSUMED_CASE, MEASURES from condition_solve
		INNER JOIN solve s on condition_solve.SOLVE_ID = s.ID
		WHERE condition_solve.CONDITION_ID='$conditionId' && s.STEP='$ordinalNumber' && s.LANGUAGE_NAME='$interfaceLanguage'";

		$result = mysqli_query($connection, $query);
		if (!$result)
		{
			throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
		}

		return mysqli_fetch_assoc($result);
	}
}