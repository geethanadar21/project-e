
<?php
include('../includes/connect.php');
include('../functions/common_function.php');
@session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        .logo{
    width:5%;
    height:5%;
}
body{
    overflow-x: hidden;
}
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <!--boostrap css link-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<!--awesome font link-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!--boostrap js link-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

</head>
<body>
    
<div class="container-fluid my-3">
<h2 class="text-center">User Login</h2>
<div class="row d-flex align-items-center justify-content-center mt-5">
    <div class="lg-12 col-xl-6">
        <form action="" method="post">
            <div class="form-outline mb-4">
                <!--username-->
                <label for="user_username" class="form-label">Username</label>
                <input type="text" id="user_username" class="form-control" placeholder="Enter your username" autocomplete="off" required="required" name="user_username"/>
            </div>
            <!--email-->
           <!-- <div class="form-outline mb-4">
              
                <label for="user_email" class="form-label">Email</label>
                <input type="email" id="user_email" class="form-control" placeholder="Enter your email" autocomplete="off" required="required" name="user_email"/>
            </div>-->
            
            <!--password-->
            <div class="form-outline mb-4">
                <label for="user_password" class="form-label">Password</label>
                <input type="password" id="user_password" class="form-control" placeholder="Enter your password" autocomplete="off" required="required" name="user_password"/>
            </div>
            
             
            <div class="mt-4 pt-2">
                <input type="submit" value="Login" class="bg-info py-2 px-3 border-0" name="user_login">
                <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="../users_area/user_registration.php" class="text-danger"> Register</a></p>
            </div>

        </form>
    </div>
</div>
</div>    
<!--<div class="bg-info p-3 text-center">
        <p>
            All rights reserved @-Designed by GSJ-2022
        </p>
    </div>-->

</body>
</html>
<?php

if(isset($_POST['user_login'])){
    $user_username=$_POST['user_username'];
    $user_password=$_POST['user_password'];
    $select_query="Select * from user_table where username='$user_username'";
    $result=mysqli_query($con,$select_query);
    $rows_count=mysqli_num_rows($result);
    $row_data=mysqli_fetch_assoc($result);
    $user_ip=getIPAddress();
    //cart item
    $select_query_cart="Select * from cart_details where ip_address='$user_ip'";
   
    $select_cart=mysqli_query($con,$select_query_cart);
    $rows_count_cart=mysqli_num_rows($select_cart);


    if($rows_count>0){
        $_SESSION['username']=$user_username;
        
if(password_verify($user_password,$row_data['user_password'])){
    //echo "<script>alert('Login Successful')</script>";
    if($rows_count==1 and $rows_count_cart==0){
        $_SESSION['username']=$user_username;
    echo "<script>alert('Login Successful')</script>";
    echo "<script>window.open('profile.php','_self')</script>";

    }else{
        $_SESSION['username']=$user_username;
        echo "<script>alert('Login Successful')</script>";
        echo "<script>window.open('payment.php','_blank')</script>";
    }

}else{
    echo "<script>alert('Invalid Credentials')</script>";
}
    }else{
        echo "<script>alert('Invalid Credentials')</script>";
    }
   


}
?>