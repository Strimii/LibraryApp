
 <?php
error_reporting(0);


    header('Content-type: application/jsonp');
        $licznik=0;

        $conn = require 'db_connect.php';



        $ksiazeczka = $_POST['ksiazeczka'];
        $xx = "'$ksiazeczka'";

                $query1 ="SELECT id, tytul, autor, lokalizacja FROM db_ksiazki WHERE tytul = $xx;";
                $result1 = mysqli_query($conn, $query1);
                $options = "";
            
                while($row1 = mysqli_fetch_array($result1))
                {  
                    if($row1[3] == "Na stanie"){
                        $options = $options. "<br><ons-list> <ons-list-header>ID</ons-list-header><ons-list-item><div class=\"left\"><i class=\"fas fa-user ikonka_mala_mala\"></i></div><div class=\"center\">$row1[0]</div></ons-list-item>";
                        $options = $options. "<ons-list-header>Tytuł książki</ons-list-header><ons-list-item><div class=\"left\"><i class=\"fas fa-table ikonka_mala_mala\"></i></div><div class=\"center\">$row1[1]</div></ons-list-item>";
                        $options = $options. "<ons-list-header>Autor</ons-list-header><ons-list-item><div class=\"left\"><i class=\"fas fa-book ikonka_mala_mala\"></i></div><div class=\"center\">$row1[2]</div></ons-list-item><ons-button id=\"$row1[0]\" class=\"buttonmniejszy button--pomaranczka\" onclick=\"wypozyczenie1(this)\">Wypożycz</ons-button></ons-list>";
                    }

              }
             
                

                         echo json_encode($options);






                        

     ?>



