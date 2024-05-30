<?php
    header('Content-type: application/jsonp');
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    header("Access-Control-Allow-Headers: Content-Type");


    $conn = require 'db_connect.php';


          $login=$_POST['loginreg'];
          $password=$_POST['passwordreg'];
          $val= "'$login', '$password'";
        

             $sql= mysqli_query($conn,"INSERT INTO `db_users` (`login`, `password`) VALUES ('$login','$password');");

 ?>