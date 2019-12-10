<?php
require '../../config/config.inc.php';
header("Content-type: text/json");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	try {
		$data = json_decode(file_get_contents('php://input'), true);

		$aadhaar_num = base64_decode($_COOKIE["bas"]);

		$sql = "SELECT * FROM general_history WHERE aadhaar_num='{$aadhaar_num}'";
		$result = mysqli_query($conn, $sql);
		if (mysqli_num_rows($result) > 0) {
			$sql = "";
		} else {
			$sql = "";
		}
		$result = mysqli_query($conn, $sql);
		$response = new stdClass();
		$response->isValid = true;
		$response->status = "success";
		$response->message = "Data Saved Successfully";
		setcookie("bas", base64_encode($aadhaar_num), time() + 3600, "/");
		echo json_encode($response);
	} catch (Exception $e) {
		$response->status = "backend-error";
		$response->message = "Exception Occurred" . $e->getMessage();
		echo json_encode($response);
	}
} else {
	$response = new stdClass();
	$response->status = "backend-error";
	$response->message = "Request methord is not supported";
	echo json_encode($response);
}
