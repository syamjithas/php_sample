<?php
require '../../config/config.inc.php';
header("Content-type: text/json");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  try {
    $data = json_decode(file_get_contents('php://input'), true);
    $aadhaar_num = base64_decode($_COOKIE["bas"]);
    $aadhaar_num_bkp = $aadhaar_num;
		$aadhaar_num = isset($_COOKIE["paadhaar"]) ? $_COOKIE["paadhaar"] : $aadhaar_num;
    $image_uploded = isset($data['user_image']) ? 1 : 0;
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
    image_uploaded ='{$image_uploded}'
    WHERE  aadhaar_num='{$aadhaar_num}' ";
    $data = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $data['user_image']));
    file_put_contents("../../data/profile_pic/{$aadhaar_num}.png", $data);
    $aadhaar_num = $aadhaar_num_bkp;
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
