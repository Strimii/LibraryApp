
<?php
error_reporting(0);


    header('Content-type: application/jsonp');
        $licznik=0;

        $conn = require 'db_connect.php';
        $asort = $_POST['asortyment_input'];
        $xx = "'$asort'";

              
                $query1 ="SELECT id, tytul, autor, lokalizacja FROM db_ksiazki WHERE tytul = $xx;";
                $result1 = mysqli_query($conn, $query1);
                $options = "";

                $i = 1; 
                while($row1 = mysqli_fetch_array($result1))
                {  
                    
                    $options = $options. "<br><ons-list> <ons-list-header>" . $i . ". ID</ons-list-header><ons-list-item><div class=\"left\"><i class=\"fas fa-user ikonka_mala_mala\"></i></div><div class=\"center\">$row1[0]</div></ons-list-item>";
                    $options = $options. "<ons-list-header>Tytuł książki</ons-list-header><ons-list-item><div class=\"left\"><i class=\"fas fa-table ikonka_mala_mala\"></i></div><div class=\"center\">$row1[1]</div></ons-list-item>";
                    $options = $options. "<ons-list-header>Autor</ons-list-header><ons-list-item><div class=\"left\"><i class=\"fas fa-book ikonka_mala_mala\"></i></div><div class=\"center\">$row1[2]</div></ons-list-item>";
                    $options = $options. "<ons-list-header>Stan</ons-list-header><ons-list-item><div class=\"left\"><i class=\"fas fa-book ikonka_mala_mala\"></i></div><div class=\"center\">$row1[3]</div></ons-list-item></ons-list>";

                    $i++; 

              }
             
                

              echo json_encode($options);




                        

     ?>



