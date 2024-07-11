<?php
error_reporting(0);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dba";

$con = new mysqli($servername, $username, $password, $dbname);
if ($con->connect_error) {
  die("Connection failed: " . $con->connect_error);
}
?>
