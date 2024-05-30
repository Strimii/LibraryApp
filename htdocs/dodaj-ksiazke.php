<?php
    
    error_reporting(0);

    $conn = require 'db_connect.php';


          $autor=$_POST['autorX'];
          $gatunek=$_POST['gatunekX'];
          $rodzaj=$_POST['rodzajX'];
          $tytul=$_POST['tytulX'];
          $lokalizacja="Na stanie";
          $val= "'$tytul', '$gatunek', '$rodzaj', '$autor', '$lokalizacja'";
        

             $sql= mysqli_query($conn,"INSERT INTO db_ksiazki(tytul,gatunek,rodzaj,autor,lokalizacja) VALUES($val)");

 ?>