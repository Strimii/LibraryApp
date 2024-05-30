<?php

error_reporting(0);


    header('Content-type: application/jsonp');
      

    $conn = require 'db_connect.php';
           
            $uczen1=$_POST['uczen1'];
            $vv = "'$uczen1'";
                              $query0 = "SELECT * FROM db_uczniowie WHERE imie_nazwisko = $vv ";
                              
                                $result0 = $conn->query($query0);
                                while($row0 = $result0->fetch_assoc()) {

                                    $opti = array('imie_nazwisko' => $row0["imie_nazwisko"], 'klasa' => $row0["klasa"], 'wypozyczenia' => $row0["wypozyczenia"], 'id' => $row0["id"], 'bookid' => $row0["bookid"]);
                                   
                              }
                             
                            

                              echo json_encode($opti);
                        

     ?>





