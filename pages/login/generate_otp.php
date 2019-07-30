<?php
require '../../config/config.inc.php';
header("Content-type: text/json");
  if ($_SERVER['REQUEST_METHOD'] === 'POST') { 
    $data = json_decode(file_get_contents('php://input'), true);
    $aadhaar_num = isset($data['aadhaar_num']) ? $data['aadhaar_num'] : '';      
    $sql = "SELECT * FROM aadhaar_dump where aadhaar_num='{$aadhaar_num}'";
    $result = mysqli_query($conn, $sql);	
    $row = mysqli_fetch_array($result);
    $response =new \stdClass();
    if($row&& $row['aadhaar_num']==$aadhaar_num){
      $otp =rand(pow(10, 4-1), pow(10, 4)-1);
      $sql = "SELECT * FROM otp_history where aadhaar_num='{$aadhaar_num}'";
      $result = mysqli_query($conn, $sql);	
      $row = mysqli_fetch_array($result);
      if($row&& $row['aadhaar_num']==$aadhaar_num){
        $sql = "UPDATE otp_history SET date_of_generation=NOW(), otp='{$otp}' WHERE aadhaar_num='$aadhaar_num'";
        mysqli_query($conn, $sql);	
      }else{
        $sql = "INSERT INTO otp_history (aadhaar_num,otp,date_of_generation) VALUES ('{$aadhaar_num}','{$otp}',NOW())";
        mysqli_query($conn, $sql);	
      }
      $response->isValid = true;
      echo json_encode($response,true);	
    }else{
      $response->isValid = false;
      echo json_encode($response,true);	
    }
    }
