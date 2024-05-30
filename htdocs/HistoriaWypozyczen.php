
<?php
error_reporting(0);


    header('Content-type: application/jsonp');
        $licznik=0;

        $conn = require 'db_connect.php';



        $im = $_POST['uczenIM1'];
        $xx = "'$im'";

                $query1 ="SELECT nazwa_ksiazki, data_czas_dodania FROM db_historia WHERE imie_nazwisko = $xx;";
                $result1 = mysqli_query($conn, $query1);
                $options = "";
                
                $i = 1; 

                while ($row1 = mysqli_fetch_array($result1)) {  
                    $options .= "<br><ons-list> <ons-list-header>" . $i . ". Nazwa książki</ons-list-header><ons-list-item><div class=\"left\"><i class=\"fas fa-user ikonka_mala_mala\"></i></div><div class=\"center\">$row1[0]</div></ons-list-item>";
                    $options .= "<ons-list-header>Data wypożyczenia</ons-list-header><ons-list-item><div class=\"left\"><i class=\"fas fa-table ikonka_mala_mala\"></i></div><div class=\"center\">$row1[1]</div></ons-list-item>";
                
                    $i++; 
                }
             
                
                echo json_encode($options);





                        

     ?>



