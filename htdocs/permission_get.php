<?php

error_reporting(0);


    header('Content-type: application/jsonp');
      
    $conn = require 'db_connect.php';
    $permissions = $_POST['loginID'];
    $vv = "'$permissions'";
                              
                $query0 = "SELECT permissions, im_naz FROM db_users WHERE login = $vv;";
                              
                $result0 = $conn->query($query0);
                while($row0 = $result0->fetch_assoc()) {

                    $options = array('permissions' => $row0["permissions"], 'im_naz' => $row0["im_naz"]);

                                   
                }

                echo json_encode($options);
                        

     ?>



