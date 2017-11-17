<?php
$servername = "localhost";
$username = "root";
$password = "";
$databasename = "superhero";

try {
  // Connect to database
  $conn = new PDO("mysql:host=$servername;dbname=".$databasename, $username, $password);

  // Set the PDO error mode to exception. Makes it possible to catch errors
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  //echo "Connected successfully";
}

catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
?>
