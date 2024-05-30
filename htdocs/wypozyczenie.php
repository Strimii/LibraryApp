<?php
    
    error_reporting(0);

    $conn = require 'db_connect.php';


          
          $bookid = $_POST['bookid'];
          $uczenid = $_POST['uczenid'];
          $title = $_POST['title'];
        
        $query0 = "SELECT tytul FROM db_ksiazki WHERE id = '$bookid';";
                              
       
             $sql= mysqli_query($conn,"UPDATE db_uczniowie SET bookid = '$bookid', wypozyczenia = '$title' WHERE id = '$uczenid';");
             $sql= mysqli_query($conn,"UPDATE db_ksiazki SET lokalizacja = 'Wypożyczona'WHERE id = '$bookid';");
             $sql= mysqli_query($conn,"INSERT INTO db_historia (nazwa_ksiazki, imie_nazwisko)
             SELECT k.tytul, u.imie_nazwisko
             FROM db_ksiazki k
             JOIN db_uczniowie u ON k.id = $bookid AND u.id = $uczenid;");

 ?>