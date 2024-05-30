<?php
    
    error_reporting(0);

    $conn = require 'db_connect.php';


          $autor=$_POST['autor'];
             $sql= mysqli_query($conn,"INSERT INTO db_autor(nazwa_autora) VALUES('".$autor."')");

 ?>