      
<center>
<p class="adminheaders" style="text-align: center; font-family: 'Pacifico', cursive; font-size:30px">Delete Board Game&nbsp;</p>
<button id="buttondelete" onclick="showDeleteGameForm()" class="btn" style="color: rgb(242, 107, 203">Show Form</button>
<br>
</center>
           
 
<!-- PHP + MYSQL : POST SECTION -->


    <?php
    

    
    // PDO QUERY BELOW -------------------------------------------
    
    if (null!==(filter_input(INPUT_POST, 'Title'))) {
        
        //Filters Inputs
        
        $gameID = filter_input(INPUT_POST, 'gameID', FILTER_SANITIZE_URL);
        $title = filter_input(INPUT_POST, 'Title', FILTER_SANITIZE_SPECIAL_CHARS);
                
        //Created Object
        //$boardgame = new BoardGame($title);
        
        //PDO
        $stmt = $pdo->prepare("DELETE FROM `board_games` where GameID = :gameID and title = :title)");
        $stmt->execute([
                        ':gameID' => $thumbnailLink,
                        ':title' => $title,
                    ]
                );

        //Messsage for User - includes Title and Game ID
        echo "Thank you, $title has been deleted.";
    } 
 
     ?>



    
<!-- FORM (POST)-->

    <div class="boardgameform" id="deleteGameForm" style="display: none">   
    <form action="" method="POST" >
        <p style="font-size: 13px">Please provide both the <b>Game ID</b> and the <b>Title</b> to continue.</p>  
        
        <!-- Game ID -->

        <label for="Title">Board Game ID:&nbsp&nbsp&nbsp&nbsp</label>
                <input type="number" name="Title" id="inputTitle" placeholder="e.g. 12" style="width:200px; height:25px;" autofocus required>
                <br>
                
        <!-- TITLE -->

        <label for="Title">Board Game Title:&nbsp</label>
                <input type="text" name="Title" id="inputTitle" placeholder="e.g. Scrabble" style="width:200px; height:25px;" autofocus required>
                <br>

            <!-- SUBMIT BUTTON -->

            <br>
            <button class="btn" style="background-color: #000000; color: white; padding: 2px; font-size: 12px" type="submit">Submit</button>
            
        </form>
</div>        

                 
  
