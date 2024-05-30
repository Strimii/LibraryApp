 <?php

error_reporting(0);


    header('Content-type: application/jsonp');
        $licznik=0;


        $conn = require 'db_connect.php';



                //$query1 ="SELECT id FROM db_autor ORDER BY id DESC LIMIT 0, 1";
                $query1 ="SELECT nazwa_autora FROM db_autor";
                $result1 = mysqli_query($conn, $query1);
              $options = "";
              while($row1 = mysqli_fetch_array($result1))
              {
              $options = $options."<option>$row1[0]</option>";
                
              }
                

              echo json_encode($options);





                        

     ?>



