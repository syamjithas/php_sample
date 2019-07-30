<?php
require '../../config/config.inc.php';
header("Content-type: text/json");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $data = json_decode(file_get_contents('php://input'), true);
  $aadhaar_num = isset($data['aadhaar_num']) ? $data['aadhaar_num'] : '';
  $otp = isset($data['aadhaar_num']) ? $data['otp'] : '';
  $sql = "SELECT * FROM otp_history WHERE aadhaar_num='{$aadhaar_num}' and otp='{$otp}' and date_of_generation + INTERVAL 2 MINUTE > NOW()";
  $result = mysqli_query($conn, $sql);
  $response = new \stdClass();
  if (mysqli_num_rows($result) > 0) {
    $response->isValid = true;
    echo json_encode($response, true);
  } else {
    $response->isValid = false;
    echo json_encode($response, true);
  }
}
?>
