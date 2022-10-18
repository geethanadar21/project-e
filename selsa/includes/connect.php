<?php

$con = mysqli_connect('localhost','root','','typroj');

if($con){
    echo " ";
}
else{
    die(mysqli_error($conn));
   
}

?>