<?php

error_reporting(0);


    header('Content-type: application/jsonp');
        $licznik=0;


        $conn = require 'db_connect.php';

            $bookid=$_POST['bookid'];

             
                $query1 ="SELECT tytul FROM db_ksiazki WHERE id = '$bookid'";
                $result1 = $conn->query($query1);
                
                while($row1 = $result1->fetch_assoc()) {

                $opti = array('tytul' => $row1["tytul"]);
                   
              }

              echo json_encode($opti);
                        

     ?>



