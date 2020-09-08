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
$sql = "DELETE FROM `model` WHERE `Model` = '$_POST[Model]'";
if ($conn->query($sql) === TRUE) {
    echo "Purchased successfully!";
    header("refresh:3; url=index.php");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>

