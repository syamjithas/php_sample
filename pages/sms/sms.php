<!DOCTYPE html>
<html lang="en">

<head>
    <?php include '../../common/head.php'; ?>
    <link rel="stylesheet" href="./pages/sms/sms.css">
    <script src="./pages/sms/sms.js"></script>
</head>

<body>
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">AADHAAR NUMBER</th>
                <th scope="col">OTP</th>
                <th scope="col">SEND DATETIME</th>
            </tr>
        </thead>
        <tbody>
            <?php
            require '../../config/config.inc.php';
            $sql = "SELECT * FROM otp_history LIMIT 100";
            $result = mysqli_query($conn, $sql);	
          
             if(mysqli_num_rows($result)==0){
                echo '<tr><td colspan="4">No Rows Returned</td></tr>';
             }
             else{
                $rowNumber =1;
                 while($row = mysqli_fetch_assoc($result)){
                     echo "<tr>
                                <td>{$rowNumber}</td>
                                <td>{$row['aadhaar_num']}</td>
                                <td>{$row['otp']}</td>
                                <td>{$row['date_of_generation']}</td>
                            </tr>";
                            $rowNumber++;
                 }
             }
            ?>
        </tbody>
    </table>
    <script>
        bindAllScript()
    </script>
</body>

</html>