
 <?php
error_reporting(0);


    header('Content-type: application/jsonp');
        $licznik=0;

        $conn = require 'db_connect.php';



        $klasa = $_POST['klasa'];
        $xx = "'$klasa'";

                $query1 ="SELECT DISTINCT imie_nazwisko FROM db_uczniowie WHERE klasa = $xx;";
                $result1 = mysqli_query($conn, $query1);
                $options = "";
            
                while($row1 = mysqli_fetch_array($result1))
                {
                    $options = $options."<option>$row1[0]</option>";
                
              }
             
                

                         echo json_encode($options);





                        

     ?>



