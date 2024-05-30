<?php
    
    error_reporting(0);

    $servername = "localhost";
    $username = "id21971346_libraryapp";
    $password = "Root123$";
    $dbname = "id21971346_libraryapp";
    // Create connection
    $conn = new mysqli($servername, $username, $password,$dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 


          $autor=$_POST['autor'];
             $sql= mysqli_query($conn,"INSERT INTO db_autor(nazwa_autora) VALUES('".$autor."')");

 ?>