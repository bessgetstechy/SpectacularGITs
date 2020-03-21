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
    <style> 
    #MainTitle {color: #9AF3C1;
        line-height: 1.4;
        font-size: 40px;}
    
    
        </style>
        
        
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
    
            <div class="container-sm">  <!-- puts formatting in the middle -->
                <br>
                <br>
                <br>
            <h2 style="font-family: 'Pacifico', cursive; font-size: 60px">Registration Form</h2>
           
           
            <br>
            <br>
 
    <form action="RegistrationComplete.php" method="POST">  
    
                <div class="formBlock">  <!-- put the box around the form fields -->
                <div class="form-group">
                    <div class="row">
                        <div class="col">
                            <label for="FirstName">First Name</label>
                            <input  type="text" class="form-control" placeholder=""  name="FirstName" id="FirstName" value="" required autofocus="true" />          
                        </div>
                        <div class="col">
                            <label for=”LastName”>Last Name</label>
                            <input  type="text" class="form-control" placeholder=""  name="LastName" id="LastName" value="" required size="35" />
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="EmailAddress">Email Address</label>
                    <input  type="EmailAddress" class="form-control" placeholder=""  name="EmailAddress" id="EmailAddress" value="" required size="35" />          
                    <small id="email" class="form-text text-muted">
                        Your email must contain a valid @ symbol.
                    </small>

                </div> 
              
                <div class="form-group">
                    <label for="Password">Password</label>
                    <input  type="Password" class="form-control" placeholder=""  name="Password" id="Password" value="" required size="8" />          
                    <small id="password" class="form-text text-muted">
                        Password must contain 8 characters.
                    </small>
                </div> 
           
                <div class="form-group">
                    <label for="AddressLine">Address Line</label>
                    <input  type="AddressLine" class="form-control" placeholder=""  name="AddressLine" id="AddressLine" value=""/>          
                    <small id="password" class="form-text text-muted">
                    </small>
                </div> 
              
                <div class="form-group">
                      <div class="row">
                        <div class="col">
                            <label for="Town">Town</label>
                            <input  type="text" class="form-control" placeholder=""  name="Town" id="Town" value="" />          
                        </div>
                        <div class="col">
                            <label for=”Postcode”>Postcode</label>
                            <input  type="text" class="form-control" placeholder=""  name="Postcode" id="Postcode" value=""/>
                        </div>
        
                      </div>
                </div>
                      
                <div class="form-group">
                            <label for="Phonenumber">Phone Number</label>
                            <input  type="text" class="form-control" placeholder=""  name="Phonenumber" id="Phonenumber" value="" />          
                </div>
            <br>
          
            <button class="btn" style="background-color: rgb(242, 107, 203); color: white; float: right;" type="submit">Create Account</button>    
        </form>
          
            
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