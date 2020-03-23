
<!DOCTYPE html>
<html lang="en">
<script src="JSfunctions.js"></script>

<!--INCLUDED FILES-->
<?php include 'header.php'; ?>
<?php include 'dbConnection.php'; ?>
<?php include_once 'Classes/Boardgame.php'; ?>

<!-- INTRO -->

    <br>
    <center>
    <p style="font-size:12px"> Welcome to the Librarian's area!<br>
        Here you can add, edit and delete a game from the library.</p>
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ_VdqnZDaliE9clcWAcIOTDxslcjI_-gHsSUFgneoj23x2Ax1v" alt="Library Icon" height="42" width="35">
    <br>
     
<!-- ADDING A NEW BOARD GAME -->  

        <!-- NEW GAME FORM -->    
        <?php include 'adminarea/addGameForm.php'; ?>  

        <!-- SEARCH GAME ID -->  

        <?php include 'adminarea/addGameSearch.php'; ?>  
        
<!-- ADDING A NEW BOARD GAME -->  

        <!-- EDIT GAME FORM -->
        
        <?php include 'adminarea/editGameForm.php'; ?>  
        
        <br>
            <h2 style="font-family: 'Pacifico', cursive;">Delete Game</h2>
            <br><br>


    
</center>
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
