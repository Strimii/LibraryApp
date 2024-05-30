<?php
header('Content-type: application/json');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

$conn = require 'db_connect.php';
$login = $_POST['loginreg'];
$vv = "'$login'";

$query0 = "SELECT login FROM db_users WHERE login = $vv;";
$result0 = $conn->query($query0);
$options = array();

while ($row0 = $result0->fetch_assoc()) {
    $options = array('login' => $row0["login"]);
}

echo json_encode($options);
?>
