<?php
require '../../config/config.inc.php';
header("Content-type: text/json");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  try {
    $data = json_decode(file_get_contents('php://input'), true);
    $aadhaar_num = base64_decode($_COOKIE["bas"]);
    $sql = "UPDATE hie_db.user_details SET  
    first_name = '{$data['first_name']}',
    middle_name = '{$data['middle_name']}' ,
    last_name = '{$data['last_name']}',
    dob = '{$data['date_of_birth']}',
    gender = '{$data['gender']}', 
    email  = '{$data['email']}', 
    primary_contact = '{$data['primery_number']}',
    secondary_contact = '{$data['secondary_number']}',
    zip  = '{$data['zip']}',
    building = '{$data['addressline1']}',
    street  = '{$data['addressline2']}',
    city  = '{$data['city']}',
    state = '{$data['state']}',
    user_image = '{$data['user_image']}' 
    WHERE  aadhaar_num='{$aadhaar_num}' ";
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
