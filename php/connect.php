<?php
$servername = "cs4111.c3bcpe6jtc0x.us-west-2.rds.amazonaws.com";
$username = "va2298";
$password = "JackieandVikas";
$dbname = "cs4111";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
}

?>

