<?php

error_reporting(0);


    header('Content-type: application/jsonp');
      

    $conn = require 'db_connect.php';
        $permissions = $_POST['uczenIM'];
         $vv = "'$permissions'";
                              
                $query0 = "SELECT wypozyczenia FROM db_uczniowie WHERE imie_nazwisko = $vv;";
                              
                $result0 = $conn->query($query0);
                while($row0 = $result0->fetch_assoc()) {

                    $options = array('wypozyczenia' => $row0["wypozyczenia"]);

                                   
                }

                echo json_encode($options);


     ?>



