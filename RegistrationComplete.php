
<!DOCTYPE html>
<html lang="en">
<!-- Below is the head -->  
<head>
      
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">
    
    <!-- Stylesheet internal
    <link rel="stylesheet" type="text/css" href="LibraryStyles.css">-->
    
    <title>Spectacular Board Game Library | Register </title>

        
        
        <!-- Below is the navigation -->

    <nav class="navbar navbar-expand navbar-light flex-column flex-md-row d-flex justify-content-between bd-navbar" style="background-color: rgb(242, 107, 203)">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
    <ul class="navbar-nav mr-auto">
       
      
      <li class="nav-item">
          <a class="nav-link" href="Homepage2.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="About.php">About</a>
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
      <li class="nav-item active">
        <a class="nav-link" href="Register.php">Sign up<span class="sr-only">(current)</span></a>
      </li>
    <form class="form-inline">
        <button class="btn btn-outline-light" type="button" onclick="window.location.href = 'http://localhost:8080/Library/Login.php';" >Log in</button>
    </form>
    </ul>
</nav>


</head>

<!-- Below is the body -->
<center>

       <div class="container-sm"> 
           
<?php

include 'Classes/User.php';

$dbHost = "localhost";
$dbusr = "root";
$dbpwd = "";
$dbname = "boardgame_library";

        try {
    $dsn = "mysql:host=" . $dbHost . ";dbname=" . $dbname;
    $pdo = new PDO($dsn, $dbusr, $dbpwd);
    /* echo "Connection Successful";*/
        } catch (PDOException $e) {
            echo "DB Connection Failed: " . $e->getMessage();
        }
           
        if (null!==((filter_input(INPUT_POST, 'EmailAddress')))){
    
                $FirstName = filter_input(INPUT_POST, 'FirstName', FILTER_SANITIZE_SPECIAL_CHARS);
                $LastName = filter_input(INPUT_POST, 'LastName', FILTER_SANITIZE_SPECIAL_CHARS);
                $EmailAddress = filter_input(INPUT_POST, 'EmailAddress', FILTER_SANITIZE_SPECIAL_CHARS);
                $Password = filter_input(INPUT_POST, 'Password', FILTER_SANITIZE_SPECIAL_CHARS);
                $AddressLine = filter_input(INPUT_POST, 'AddressLine', FILTER_SANITIZE_SPECIAL_CHARS);
                $Town = filter_input(INPUT_POST, 'Town', FILTER_SANITIZE_SPECIAL_CHARS);
                $Postcode = filter_input(INPUT_POST, 'Postcode', FILTER_SANITIZE_SPECIAL_CHARS);
                $PhoneNumber = filter_input(INPUT_POST, 'PhoneNumber', FILTER_SANITIZE_SPECIAL_CHARS);
                          
        $member = new User($FirstName, $LastName, $EmailAddress);
        $member->SetPassword($Password);
        $member->SetAddressLine($AddressLine);
        $member->SetTown($Town);
        $member->SetPassword($Password);
        $member->SetPassword($PhoneNumber);
       /* $member->insertNewUser();*/
        
               $sqlregistermember= "INSERT INTO member (FirstName, LastName, EmailAddress, Password, AddressLine, Town, Postcode, PhoneNumber) VALUES (:FirstName, :LastName, :EmailAddress, :Password, :AddressLine, :Town, :Postcode, :PhoneNumber) ";
               $stmt = $pdo->prepare($sqlregistermember);              
        
               $stmt->execute([
                'FirstName'=>$FirstName,
                'LastName'=>$LastName,
                'EmailAddress'=>$EmailAddress,
                'Password'=>$Password,
                'AddressLine'=>$AddressLine,
                'Town'=>$Town,
                'Postcode'=>$Postcode,
                'PhoneNumber'=>$PhoneNumber,                
                  
            ]);
   
            echo "<br><p> Congratulations $FirstName, you're now a member!</p>"; 
            echo "<p>Your username is: $EmailAddress</p>";
         }
         else{
         echo "<br><br><h4>Sorry, there was an error. Please try registering again.</h4>" ;
         }
      
    ?>
  </div> 
    <!--  Below is the footer -->  
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <footer> Spectacular 2020 &copy; Thanks for visiting!</footer>

        <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
</body>

<!--End-->
</html>	


