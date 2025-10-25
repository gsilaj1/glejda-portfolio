<?php
$host = "localhost";
$user = "root";
$pass = "root"; // ose bosh nëse nuk përdor fjalëkalim
$db = "supermarket";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Lidhja me databazën dështoi: " . $conn->connect_error);
}
?>