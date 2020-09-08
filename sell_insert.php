<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname= "car";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$sql = "INSERT INTO model VALUES ('$_POST[Model]', '$_POST[Brand]', '$_POST[Year]', '$_POST[Price]', '$_POST[Location_code]', '$_POST[engine_id]')";
if ($conn->query($sql) === TRUE) {
    echo "Car listed successfully!";
    header("refresh:3; url=index.php");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>

