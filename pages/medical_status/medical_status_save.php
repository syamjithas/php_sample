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
      $sql = "UPDATE hie_db.general_history SET  marital_status = '{$data['marital_status']}', no_of_children = '{$data['no_of_children']}' ,
       habits_cigarette = '{$data['habits_cigarette']}', tobacco_snuff = '{$data['tobacco_snuff']}', alcohol = '{$data['alcohol']}', 
       diabetes  = '{$data['diabetes']}', cardiac_diseases = '{$data['cardiac_diseases']}', endrocrine_others = '{$data['endrocrine_others']}',
       eplepsy  = '{$data['eplepsy']}', cancer = '{$data['cancer']}', medical  = '{$data['medical']}', 
       surgical  = '{$data['surgical']}', present_medications = '{$data['present_medications']}', drug_allergies = '{$data['drug_allergies']}' 
       WHERE  aadhaar_num='{$aadhaar_num}' ";
    } else {
      $sql = "INSERT INTO hie_db.general_history (aadhaar_num, marital_status, no_of_children,habits_cigarette,
       tobacco_snuff, alcohol,diabetes, cardiac_diseases,  endrocrine_others, eplepsy,
        cancer,medical, surgical, present_medications, drug_allergies) VALUES ( '{$aadhaar_num}', '{$marital_status}',
         '{$no_of_children}','{$habits_cigarette}', '{$tobacco_snuff}', '{$alcohol}','{$diabetes}', '{$cardiac_diseases}',
          '{$endrocrine_others}','{$eplepsy}', '{$cancer}','{$medical}', '{$surgical}', '{$present_medications}','{$drug_allergies}')";
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
