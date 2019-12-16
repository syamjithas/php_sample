<?php
require '../../config/config.inc.php';
header("Content-type: text/json");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	try {
		$data = json_decode(file_get_contents('php://input'), true);
		$aadhaar_num = base64_decode($_COOKIE["bas"]);
		$aadhaar_num_bkp = $aadhaar_num;
		$aadhaar_num = isset($_COOKIE["paadhaar"]) ? $_COOKIE["paadhaar"] : $aadhaar_num;
		$sql = "SELECT * FROM death_report WHERE aadhaar_num='{$aadhaar_num}'";
		$result = mysqli_query($conn, $sql);
		if (mysqli_num_rows($result) > 0) {
			$sql = "UPDATE hie_db.death_report SET  
			briefed_by = '{$data['briefed_by']}',
			terms_of_reference = '{$data['terms_of_reference']}',
			last_seen_alive = '{$data['last_seen_alive']}',
      history = '{$data['history']}',
			condition_of_body = '{$data['condition_of_body']}', 
			verification_of_death = '{$data['verification_of_death']}',
			absence_of_carotid_pulse = '{$data['absence_of_carotid_pulse']}',
      absence_of_heart_sounds = '{$data['absence_of_heart_sounds']}',
			absence_of_respiratory = '{$data['absence_of_respiratory']}',
      fixed_dilated_pupils = '{$data['fixed_dilated_pupils']}',
			presence_of_hypostasis  = '{$data['presence_of_hypostasis']}',
			presence_of_rigor_mortis = '{$data['presence_of_rigor_mortis']}', 
      can_death_be_verified = '{$data['can_death_be_verified']}',
			suspicious_circumstances = '{$data['suspicious_circumstances']}',
      further_action_needed  = '{$data['further_action_needed']}',
			details  = '{$data['details']}'
      WHERE  aadhaar_num='{$aadhaar_num}' ";
		} else {
			$sql = "INSERT INTO hie_db.death_report 
			(aadhaar_num,
			briefed_by,
			terms_of_reference,
			last_seen_alive,
			history,
			condition_of_body,
			verification_of_death,
			absence_of_carotid_pulse,
			absence_of_heart_sounds,
      absence_of_respiratory,
			fixed_dilated_pupils,
			presence_of_hypostasis,
			presence_of_rigor_mortis, 
			can_death_be_verified,
      suspicious_circumstances,
			further_action_needed,
			details)
			VALUES ( '{$aadhaar_num}',
      '{$data['briefed_by']}',
			'{$data['terms_of_reference']}',
			'{$data['last_seen_alive']}',
			'{$data['history']}', 
			'{$data['condition_of_body']}', 
      '{$data['verification_of_death']}',
			'{$data['absence_of_carotid_pulse']}',
			'{$data['absence_of_heart_sounds']}',
      '{$data['absence_of_respiratory']}',
			'{$data['fixed_dilated_pupils']}',
			'{$data['presence_of_hypostasis']}', 
      '{$data['presence_of_rigor_mortis']}',
			'{$data['can_death_be_verified']}',
			'{$data['suspicious_circumstances']}',
      '{$data['further_action_needed']}',
			'{$data['details']}')";
		}
		$aadhaar_num = $aadhaar_num_bkp;
		$result = mysqli_query($conn, $sql);
		$response = new stdClass();
		$response->isValid = true;
		$response->status = "success";
		$response->message = "Data Saved Successfully";
		$response->sql = $sql;
		// setcookie("bas", base64_encode($aadhaar_num), time() + 3600, "/");
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
