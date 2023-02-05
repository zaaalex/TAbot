<?php
include_once __DIR__ . "/../boot.php";

function sendMessage(string $textMessage="Test"):void{
	$token = getConfigurationOption("TOKEN");
	$chat_id = getConfigurationOption("CHAT_ID");

	$textMessage = urlencode($textMessage);

	$urlQuery = "https://api.telegram.org/bot"
		. $token
		. "/sendMessage?chat_id="
		. $chat_id
		. "&text="
		. $textMessage
		. "&reply_markup="
		. json_encode([
						  'keyboard' => [],

					  ], JSON_THROW_ON_ERROR);
	$result = file_get_contents($urlQuery);

	var_dump(json_decode($result, true));
}