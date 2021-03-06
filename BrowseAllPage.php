<!DOCTYPE html>
<html lang="en">
    
    
    
<!-- CODE COPIED FROM ABOUT PAGE -->  



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
         <a class="navbar-brand" href="#">
         <img src="Specs.png" width="50" height="30" alt=""></a>
      </li>
      
      <li class="nav-item">
          <a class="nav-link" href="Homepage2.php">Home</a>
      </li>
      <li class="nav-item">
                    <a class="nav-link" href="About.php">About</a>
                </li>
      <li class="nav-ite active">
          <a class="nav-link" href="BrowseAllPage.php">Our Games<span class="sr-only">(current)</span></a>
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
<body>
    <br>
    <br>
<center>
        <h2 style="font-family: 'Pacifico', cursive; font-size: 40px">Browse the games we have on offer...</h2>
    <br>
    <br>
  
    <div class="center">

        
  </div>
</div>

<?php

include 'boardgame_browse.php';
include 'dbConnection.php';


$stmt = $pdo->prepare("SELECT * FROM board_games");
$stmt ->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo "<table>";
foreach ($result as $game) {
    echo "<tr>";
    echo "<td>" . $game['Title'] . "</td>";
    echo "</tr>";
}
echo "</table>";

?>

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
