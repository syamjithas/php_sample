INSERT INTO hie_db.general_history 
(aadhaar_num, marital_status, no_of_children, habits_cigarette,
 tobacco_snuff, alcohol, diabetes, cardiac_diseases, endrocrine_others,
  eplepsy, cancer, medical, surgical, present_medications, drug_allergies) 
  VALUES ('684107489589', 'No', '0', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'NO', 'No', 'No', 'No');

  INSERT INTO `hie_db`.`medical_status` (`aadhaar_num`) VALUES ('10211');

  $sql = "INSERT INTO hie_db.general_history (aadhaar_num, marital_status, no_of_children,habits_cigarette,
       tobacco_snuff, alcohol,diabetes, cardiac_diseases,  endrocrine_others, eplepsy,
        cancer,medical, surgical, present_medications, drug_allergies) VALUES ( '{$aadhaar_num}', '{$marital_status}',
         '{$no_of_children}','{$habits_cigarette}', '{$tobacco_snuff}', '{$alcohol}','{$diabetes}', '{$cardiac_diseases}',
          '{$endrocrine_others}','{$eplepsy}', '{$cancer}','{$medical}', '{$surgical}', '{$present_medications}','{$drug_allergies}')";
    

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