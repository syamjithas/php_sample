<?php
require '../../config/config.inc.php';
header("Content-type: text/json");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  try {
    $data = json_decode(file_get_contents('php://input'), true);
    $aadhaar_num = isset($data['aadhaar_num']) ? $data['aadhaar_num'] : '';
    $otp = isset($data['aadhaar_num']) ? $data['otp'] : '';
    $sql = "SELECT * FROM otp_history WHERE aadhaar_num='{$aadhaar_num}' and otp='{$otp}' and date_of_generation + INTERVAL 2 MINUTE > NOW()";
    $result = mysqli_query($conn, $sql);
    $response = new stdClass();
    if (mysqli_num_rows($result) > 0) {
      $response->isValid = true;
      $response->status = "success";
      $response->message = "OTP Validated ,Redirecting to your Profile";
      setcookie("id",base64_encode($aadhaar_num), time() + 3600);
      echo json_encode($response);
    } else {
      $response->isValid = false;
      $response->status = "error";
      $response->message = "Incorrect OTP Please Try Again";
      echo json_encode($response);
    }
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
?>