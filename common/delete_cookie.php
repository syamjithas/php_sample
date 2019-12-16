<?php
header("Content-type: text/json");
$response = new stdClass();
$response->isValid = true;
$response->status = "success";
$response->message = "";
setcookie("paadhaar", null, time() + 3600, "/");
echo json_encode($response);
$paadhaar_num = null;
?>
