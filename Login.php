<?php
    session_start();    
?>
<!DOCTYPE html>
<html lang="en">
<!-- Below is the head -->  
<head>
      
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS & Fonts-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">
    
    <!-- Stylesheet internal-->
    <link rel="stylesheet" type="text/css" href="LibraryStyles.css">
    
    <title>Spectacular Board Game Library | Log in </title>
    <style> 
    #MainTitle {color: rgb(242, 107, 203);
        line-height: 1.4;
        align-content: center;
        font-size: 30px;}
    </style>
        
        <!-- Below is the navigation -->

    <nav class="navbar navbar-expand navbar-light d-flex justify-content-between bd-navbar" style="background-color: rgb(242, 107, 203)">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="Homepage2.php">Home</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="About.php">About<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../profile/index.html">Contact Us</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="OnLoan.php">Games on loan</a>
          <a class="dropdown-item" href="#">Loan history</a>
          <a class="dropdown-item" href="#">Saved list </a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Update Profile</a>
        </div>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="AdminArea.php">Librarian's Area</a>
      </li>
    </ul>
    <div class="nav-centered">
      <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search Games" aria-label="Search">
            <button class="btn my-2 my-sm-0 " style="background-color: #000000; color: white" type="submit">Search</button>
      </form>
    </div>
      
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="Register.php" >Sign up</a>
      </li>
    <form class="form-inline">
        <button class="btn btn-outline-light" type="button" onclick="window.location.href = 'http://localhost:8080/Library/Login.php';">Log in</button>
    </form>
    </ul>
    </nav>

</head>
   

   
   <body>
       <div class="container py-3">
           <br>
           <h2 style="font-family: 'Pacifico', cursive;">Log in</h2>
           <form class="py-3" action="#" method="post">
               <div class="form-group">
                   <label for="exampleDropdownFormEmail1">Username</label>
                   <input type="text" name="username" class="form-control" id="exampleDropdownFormEmail1" placeholder="">
               </div>
               <div class="form-group">
                   <label for="exampleDropdownFormPassword1">Password</label>
                   <input type="password" name="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="">
               </div>
               <div class="form-check">
                   <input type="checkbox" class="form-check-input" id="dropdownCheck">
                   <label class="form-check-label" for="dropdownCheck">
                       Remember me
                   </label>
               </div>
               <br>
               <button type="submit" class="btn" style="background-color: #000000; color: white">Log in</button>
           </form>
           <div></div>
           <a class="" href="#">Forgot your password?</a>
       </div>
   </body>
</html>