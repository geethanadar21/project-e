<?php
include('../includes/connect.php');
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout Page</title>

    <style>.logo{
    width:5%;
    height:5%;
}</style>
</head>

<!--boostrap css link-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<!--awesome font link-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!--boostrap js link-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

<body>
    <!--firstchild-->
    <!--navbar-->

    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <img class="logo" id="logo" src="../images/logo.png" alt="Card image cap">
            <a class="navbar-brand" href="#">SelSa AgEnCy</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            &nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                    </li>


                    <li class="nav-item">
                        <a class="nav-link" href="display_all.php">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./users_area/user_registration.php">Register</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>

                </ul>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



                <!--<div class="icons">

          <div class="fas fa-search" id="search-btn"></div>
          <div class="fas fa-shopping-cart" id="cart-btn"><sup>
            
          </sup></div>
          <div class="fas fa-user" id="login-btn"></div>
        </div>-->
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <form class="d-flex" action="search_product.php" method="get">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search_data">

                    <input type="submit" value="Search" class="btn btn-outline-light" name="search_data_product">
                </form>

            </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary p-0">
    <ul class="navbar-nav me-auto">

    <?php
      if(!isset($_SESSION['username'])){
        echo "<li class=nav-item>
        <a class='nav-link' href='#'>Welcome Guest</a>
      </li>";
      }
      else{
       echo " <li class=nav-item>
       <a class='nav-link' href='#'>Welcome ".$_SESSION['username']."</a>
     </li>";
      }
      if(!isset($_SESSION['username'])){
        echo "<li class='nav-item'>
        <a class='nav-link' href='../users_area/user_login.php'>Login</a>
      </li>";
      }
      else{
       echo " <li class='nav-item'>
        <a class='nav-link' href='../users_area/logout.php'>Logout</a>
      </li>";
      }
      ?>
      
    </ul>
  </nav>
  <!--third child-->
  <div class="bg-light">
    <h3 class="text-center">Hidden Store</h3>
    <p class="text-center">
      Communication is at the heart of e-commerce and community
    </p>
  </div>
  
    
    <!--forth child-->
    <div class="row px-1">
        <div class="col-md-12">
            <!--products-->
            <div class="row">
                <?php
                if(!isset($_SESSION['username'])){
                    include('user_login.php');
                }
                else{
                    include('payment.php');
                }
                ?>

            </div>
        </div>
    </div>

    
</body>
<!-- css file link = style.css -->
<link rel="stylesheet" href="style.css">

</html>