<!DOCTYPE html>
<?php
if (isset($_POST['search'])) {
    require "SearchScript.php";
}
//include 'dbConnection.php';
//define("ROW_PER_PAGE", 7);
?>
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
    #MainTitle {color: rgb(242, 107, 203);
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
                    <button class="btn btn-outline-light" type="button" onclick="window.location.href = 'http://localhost/Library/Login.php';" >Log in</button>
                </form>
            </ul>
    </nav>

</head>

<!-- Below is the body -->
<body>
    <center>
        <br>
        <br>
        <img src="Images\Spectacular logo2.png" alt="Spectacular Board Game Library" width="462" height="190" class="center"></a>
        <br>
        <br>
        <br>

        <form class="d-flex justify-content-center" method = "post">
            <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search Games" aria-label="Search" >
            <button class="btn my-2 my-sm-0 " style="background-color: #000000; color: white" type="submit">Search</button>
        </form>
    </div>
    <?php
    
    if(isset($_POST["search"])) {
        if (count($results) > 0) {
            foreach ($results as $r) {
                printf($r['Title']);
            }
        } else {
                echo "Try again.";
            }
        } 
    
    
//    $search_keyword = '';
//    if (!empty($_POST['search']['keyword'])) {
//        $search_keyword = $_POST['search']['keyword'];
//    }
//    $sql = $pdo->prepare("SELECT * FROM boardgame_libraryDB WHERE title LIKE :keyword OR publisher LIKE :keyword OR categoryName LIKE :keyword");
//
//    $per_page_html = '';
//    $page = 1;
//    $start = 0;
//
//    if (!empty($_POST["page"])) {
//        $page = $_POST["page"];
//        $start = ($page - 1) * ROW_PER_PAGE;
//    }
//
//    $limit = " limit " . $start . "," . ROW_PER_PAGE;
//    $pagination_statement = $pdo->prepare($sql);
//    $pagination_statement->bindValue(':keyword', '%' . $search_keyword . '%', PDO::PARAM_STR);
//    $pagination_statement->execute();
//
//    $row_count = $pagination_statement->rowCount();
//    if (!empty($row_count)) {
//        $per_page_html .= "<div style='text-align:center;margin:20px 0px;'>";
//        $page_count = ceil($row_count / ROW_PER_PAGE);
//        if ($page_count > 1) {
//            for ($i = 1; $i <= page_count; $i++) {
//                if ($i == $page) {
//                    $per_page_html .= '<input type="submit" name="page" value="' . $i . '" class="btn-page current" />';
//                } else {
//                    $per_page_html .= '<input type="submit" name="page" value="' . $i . '" class="btn-page" />';
//                }
//            }
//        }
//        $per_page_html .= "</div>";
//    }
//
//    $query = $sql . $limit;
//    $pdo_statement = $pdo->prepare($query);
//    $pdo_statement->bindValue(':keyword', '%' . $search_keyword . '%', PDO::PARAM_STR);
//    $pdo_statement->execute();
//    $result = $pdo_statement->fetchAll();


        ?>
         

        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col">
                    <p id="MainTitle">News & Events</p>
                    <h5>Win an amazing hamper!</h5>
                    <p>Monopoly Hamper competition</p><br>
                    <h5>Extended Opening hours</h5>
                    <p>Every Saturday throughout winter</p><br>
                    <h5>New cafe coming soon</h5>
                    <p>Opening May 2020</p>
                </div>
                <div class="col">
                    <p id="MainTitle">Opening Times</p>
                    <p>Monday-Friday 8am-7pm</p>
                    <p>Saturday 8am-8pm</p>
                    <p>Sunday 12am-5pm</p>
                </div>
                <div class="col">
                    <p id="MainTitle">Library Address</p>
                    <p>Get From Database!!</p>

                </div>
            </div>
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