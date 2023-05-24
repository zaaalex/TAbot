<?php

namespace App\src\model;

class ActionInfo
{
	public ?string $lastAction;
	public ?int $errorId;
	public ?int $conditionId;
	public ?int $step;
	public ?int $productId;

	public function __construct(?string $lastAction, int $productId=null, int $errorId=null, int $conditionId=null, int $step=null)
	{
		$this->productId = $productId;
		$this->errorId = $errorId;
		$this->conditionId = $conditionId;
		$this->step = $step;
		$this->lastAction=$lastAction;
	}
}