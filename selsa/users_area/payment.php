<?php
include('../includes/connect.php');
include('../functions/common_function.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=h1, initial-scale=1.0">
    <title>Payment Page</title>
    
    <style>body{
    overflow-x: hidden;
}
img{
    width: 90%;
    margin: auto;
    display: block;

}
.logo{
    width:5%;
    height:5%;
}
</style>
<!--boostrap css link-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<!--awesome font link-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!--boostrap js link-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

</head>
<body>
    
    <!--php code to access to user id-->
    <?php
    $user_ip=getIPAddress();
    $get_user="Select * from user_table where user_ip='$user_ip'";
    $result=mysqli_query($con,$get_user);
    $run_query=mysqli_fetch_array($result);
    $user_id=$run_query['user_id'];

    ?>
  <div class="container">
    <h2 class="text-center text-info">Payment options</h2>
    <div class="row d-flex justify-content-center align-items-center my-5">
        <div class="col-md-6">
        <a href="https://www.paypal.com" target="_blank"><img src="../images/upi.jpg" alt=""></a>
        </div>
        <div class="col-md-6">
       <a href="order.php?user_id=<?php echo $user_id ?>"><h2 class="text-center">Pay Offline</h2></a>
        </div>
    </div>
  </div>
  <!--last child-->
  <div class="bg-info p-3 text-center">
        <p>
            All rights reserved @-Designed by GSJ-2022
        </p>
    </div>
</body>
</html>