<?php  
 session_start();  
 $host = "localhost";  
 $usr = "root";
 if(empty($_SESSION["username"])){
     $username = "";
 } else {
     $username = $_SESSION["username"]; 
     header("location:.login.php"); 
 }
 
  if(empty($_SESSION["password"])){
     $password = "";
 } else {
     $password = $_SESSION["password"]; 
 }
 
 $password = "";  
 $database = "boardgame_library";  
 $message = "";  
 try  
 {  
      $connect = new PDO("mysql:host=$host; dbname=$database", $username, $password);  
      $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);  
      if(isset($_POST["login"]))  
      {  
           if(empty($_POST["username"]) || empty($_POST["password"]))  
           {  
                $message = '<label>All fields are required</label>';  
           }  
           else  
           {  
               $username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_URL);
               $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_SPECIAL_CHARS); 
               
               $query = "SELECT EmailAddress FROM members where EmailAddress = :username and Password = :password";  
                $statement = $connect->prepare($query);  
                $statement->execute(  
                     [  
                          'username'     =>     $username,  
                          'password'     =>     $password  
                     ]  
                );  
                $count = $statement->rowCount();  
                if($count > 0)  
                {  
                     $_SESSION["username"] = $username;  
                     header("location:login.php");  
                }  
                else  
                {  
                     $message = "<label><br>Sorry, we couldn't validate user $username<br>Please check your log in details and try again</label>";  
                }  
           }  
      }  
 }  
 catch(PDOException $error)  
 {  
      $message = $error->getMessage();  
 }  
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

    <nav class="navbar navbar-expand navbar-light flex-column flex-md-row d-flex justify-content-between bd-navbar" style="background-color: rgb(242, 107, 203)">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav mr-auto">

                <li class="nav-item">
                    <a class="navbar-brand" href="#">
                        <img src="Specs.png" width="50" height="30" alt=""></a>
                </li>

                <li class="nav-item active">
                    <a class="nav-link active" href="Homepage2.php">Home<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="About.php">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="BrowseAllPage.php">Our Games</a>
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
                <form class="form-inline my-2 my-lg-0" method = "post">
                    <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search Games" aria-label="Search">
                    <button class="btn my-2 my-sm-0 " style="background-color: #000000; color: white" type="submit">Search</button>
                </form>
            </div>

            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="Register.php">Sign up<span class="sr-only">(current)</span></a>
                </li>
                <form class="form-inline">
                    <button class="btn btn-outline-light" type="button" onclick="window.location.href = 'Login.php';" >Log in</button>
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
               <br>
               <button type="submit" class="btn" style="background-color: #000000; color: white">Log in</button>
           </form>
           <div></div>
           <a class="" href="#">Forgot your password?</a>
       </div>
   </body>
</html>