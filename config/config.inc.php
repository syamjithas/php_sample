<?php
  session_start();
  $servername = "localhost"; //change this  accordingly
  $dBUsername = "root";
  $dBPassword = "";
  $dBName = "hie_db";
  $dBPort = 3306;
 // session_start();
  $conn=mysqli_connect($servername, $dBUsername, $dBPassword, $dBName,$dBPort);

  if (!$conn) {
    die("Connection Failed: ".mysqli_connect_error());
  }
?>
