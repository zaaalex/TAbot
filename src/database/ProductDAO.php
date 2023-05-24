<?php

namespace App\src\database;

use RuntimeException;

class ProductDAO extends DatabaseService
{
	public function getProductsByErrorCode(string $code): ?array
	{
		$connection = $this->getDatabaseConnection();
		$code = mysqli_real_escape_string($connection, $code);
		$code = trim($code);

		$query = "SELECT p.NAME, p.ID FROM error
			inner join product_errorJam peJ on error.ID = peJ.ERROR_ID
			inner join product p on peJ.PRODUCT_ID = p.ID
			where error.CODE like '$code'";

		$result = mysqli_query($connection, $query);

		if (!$result)
		{
			throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
		}

		$products = [];
		while ($row = mysqli_fetch_assoc($result))
		{
			$products[] = $row['NAME'];
		}

		return $products;
	}

	public function getProductByName(string $code): ?array
	{
		$connection = $this->getDatabaseConnection();
		$code = mysqli_real_escape_string($connection, $code);
		$code = trim($code);

		$query = "SELECT ID, NAME FROM product p
			where p.NAME like '$code'";

		$result = mysqli_query($connection, $query);

		if (!$result)
		{
			throw new RuntimeException(mysqli_errno($connection) . ': ' . mysqli_error($connection));
		}

		return mysqli_fetch_assoc($result);
	}
}