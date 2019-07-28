<?php
require '../../config/config.inc.php';
header("Content-type: text/json");
  if ($_SERVER['REQUEST_METHOD'] === 'POST') { 
    $data = json_decode(file_get_contents('php://input'), true);
    $aadhaarId = isset($data['aadhaarId']) ? $data['aadhaarId'] : '';      
    $sql = "SELECT * FROM aadhaar_dump where aadhaar_num='".$aadhaarId."'";
    $result = mysqli_query($conn, $sql);	
    $row = mysqli_fetch_array($result);
    $response =new \stdClass();
    if($row&& $row['aadhaar_num']==$aadhaarId){
      $response->isValid = true;
      echo json_encode($response,true);	
    }else{
      $response->isValid = false;
      echo json_encode($response,true);	
    }
    }
?>