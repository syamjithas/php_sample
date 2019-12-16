<?php
require '../config/config.inc.php';
header("Content-type: text/json");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	try {
		$data = json_decode(file_get_contents('php://input'), true);
		$paadhaar_num = $data["aadhaar_num"];
		$sql = "SELECT * FROM aadhaar_dump where aadhaar_num='{$paadhaar_num}'";
		$result = mysqli_query($conn, $sql);
		$row = mysqli_fetch_array($result);
		if ($row && $row['aadhaar_num'] == $paadhaar_num) {
			$sql = "SELECT * FROM user_details WHERE aadhaar_num='{$paadhaar_num}'";
			$result = mysqli_query($conn, $sql);
			if (mysqli_num_rows($result) == 0) {
				$sql = "INSERT INTO user_details (aadhaar_num) VALUES ('{$paadhaar_num}');";
				mysqli_query($conn, $sql);
				$sql = "SELECT * FROM user_details WHERE aadhaar_num='{$paadhaar_num}'";
				$result = mysqli_query($conn, $sql);
				$user = mysqli_fetch_array($result);
			} else {
				$user = mysqli_fetch_array($result);
			}
			$response = new stdClass();
			$response->isValid = true;
			$response->status = "success";
			$response->message = "Data Saved Successfully";
			setcookie("paadhaar", $paadhaar_num, time() + 3600, "/");
		} else {
			$response = new stdClass();
			$response->isValid = true;
			$response->status = "backend-error";
			$response->message = "Incorrect AddharId";
		}
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
