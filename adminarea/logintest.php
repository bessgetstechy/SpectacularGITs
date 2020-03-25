<?php  
 session_start();  
 $host = "localhost";  
 $username = "root";
 if(empty($_SESSION["username"])){
     $adminusername = "";
 } else {
     $adminusername = $_SESSION["username"]; 
     header("location:../Adminarea.php"); 
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
               $adminusername = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_URL);
               $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_SPECIAL_CHARS); 
               
               $query = "SELECT EmailAddress FROM employees where EmailAddress = :username and Password = :password";  
                $statement = $connect->prepare($query);  
                $statement->execute(  
                     [  
                          'username'     =>     $adminusername,  
                          'password'     =>     $password  
                     ]  
                );  
                $count = $statement->rowCount();  
                if($count > 0)  
                {  
                     $_SESSION["username"] = $adminusername;  
                     header("location:../Adminarea.php");  
                }  
                else  
                {  
                     $message = "<label><br>Sorry, we couldn't validate user $adminusername<br>Please check your log in details and try again</label>";  
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
 <html>  
<?php include 'adminheader.php'; ?>   
     
     
      <head>  
           <title>Spectacular Board Game Library | Librarian Admin</title> 

      </head>  
      
      
       <body>  
       <center>
            <div class="container" style="width:500px;">  
                <?php  
                if(isset($message))  
                {  
                     echo '<label class="text-danger">'.$message.'</label>';  
                }  
                ?>  
               
               
            <!-- Icon -->
            <div class="fadeIn first">
                <br>
                <img src="../Images/Spectacular logo2.png" id="icon" alt="User Icon" style="width: 220px; height: 100px;" />
                <br>
            </div> 
            
            <div>
                <p style="color: #f26bcc;">Admin Area</p>
            </div>
    
            <!-- Login Form -->
                <form method="post">  
                        <label>Username</label>  
                        <input type="text" name="username" class="form-control" />  
                        <br/>  
                        <label>Password</label>  
                        <input type="password" name="password" class="form-control" />  
                        <br/>  
                        <input type="submit" name="login" class="btn btn-info" value="Login" style="border-color: black; background-color: black;"/>  
                </form>  
            </div>  
            <br/>  
        </center>
        </body>  
 </html>  