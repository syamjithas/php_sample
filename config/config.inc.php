<?php
  session_start();
  $servername = "localhost:3306"; //change this  accordingly
  $dBUsername = "root";
  $dBPassword = "";
  $dBName = "hie_db";
 // session_start();
  $conn=mysqli_connect($servername, $dBUsername, $dBPassword, $dBName);

  if (!$conn) {
    die("Connection Failed: ".mysqli_connect_error());
  }
?>
