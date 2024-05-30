<?php
    
    error_reporting(0);

    $conn = require 'db_connect.php';


          $gatunek=$_POST['gatunek'];
             $sql= mysqli_query($conn,"INSERT INTO db_gatunki(nazwa_gatunku) VALUES('".$gatunek."')");

 ?>