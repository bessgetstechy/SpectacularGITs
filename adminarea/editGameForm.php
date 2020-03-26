<center>
<p class="adminheaders" style="text-align: center; font-family: 'Pacifico', cursive; font-size:30px">Edit Board Game&nbsp;</p>      
<button id="button3" onclick="showEditGameForm()" class="btn" style="color: rgb(242, 107, 203">Show Edit Form</button>
<br>

    
           
 
<!-- PHP + MYSQL : POST SECTION -->


    <?php
    
    /* TEST CODE FOR TEST TABLE
    if (isset($_POST['Title'])) {
        
        //Filters Inputs
        $title = filter_input(INPUT_POST, 'Title', FILTER_SANITIZE_SPECIAL_CHARS);
                
        //Created Object
        //$boardgame = new BoardGame($title);
        
        //PDO
        $stmt = $pdo->prepare("INSERT INTO `test`(`title`) VALUES (:title)");
        $stmt->execute(
                array(':title' => $title)
                );

        echo "Thank you, $title has been added";
     } 
 
     */
    
    // PDO QUERY BELOW -------------------------------------------
    
    if (null!==(filter_input(INPUT_POST, 'Title'))) {
        
        //Filters Inputs
        
        $editGameID = filter_input(INPUT_GET, 'searchID', FILTER_SANITIZE_URL);
        $editGameTitle = filter_input(INPUT_GET, 'searchTitle', FILTER_SANITIZE_SPECIAL_CHARS);
        
                
        //Created Object
        //$boardgame = new BoardGame($title);
        
        //PDO
        $stmt = $pdo->prepare("SELECT GameID, Title, ThumbnailLink, MinPlayers, MaxPlayers FROM `board_games` WHERE GameID = :editGameID OR Ttile =  :editGameTitle)");
        $stmt->execute(
                    array(
                        ':editGameID' => $editGameID,
                        ':editGameTitle' => $editGameTitle
                    )
                );

        //Messsage for User - includes Title and Game ID
        echo "hello";
        echo $editGameID;
        if ($editGameID != "") {
            echo "Showing results for <b>Game ID</b> $editGameID";
            while ($row = $stmt->fetch()){print_r($row[0]);
            }
        } elseif ($editGameTitle != ""){
            echo "Showing results for <b>Title</b> $editGameTitle";
            while ($row = $stmt->fetch()){print_r($row[1]);
        }
        }


         
    } 
 
     ?>

</center>
 

    
<!-- FORM -->
<div class="editboardgameform" id="editGameForm" style="display: none">  
    
    <!-- SEARCH FIELDS TITLE + ID -->
    <form action="" method="GET" >
        
        <p style="font-size: 13px">Enter the <b>Game ID </b> or <b>Title</b> to Search.</p>  
        
        <label for="searchID">Search by Game ID: &nbsp&nbsp</label>
            <input type="text" name="searchID" id="searchID" placeholder=""  style="width:200px; height:25px;">
            <br>  
            
        <label for="searchTitle">&nbsp&nbsp&nbsp&nbspSearch by Title: &nbsp&nbsp&nbsp&nbsp&nbsp</label>
            <input type="text" name="searchTitle" id="searchTitle" placeholder=""  style="width:200px; height:25px;">
            <br>
            <button class="btn" style="padding: 0px; text-align: center; background-color: #000000; color: white; font-size: 10px; width:40px; height:20px;" type="submit">Search</button>
    </form>  
    <br><br>
    
    <!-- AUTOFILL FORM -->
    
    <form action="" method="POST" >
        
        <!-- TITLE -->

        <label for="Title"><b>Board Game Title:&nbsp</b></label>
                <input type="text" name="Title" id="inputTitle" placeholder="e.g. Scrabble" style="width:200px; height:25px;" autofocus required>
                <br>
        <!-- THUMBNAIL -->

        <label for="ThumbnailLink"><b>Image Link URL:&nbsp&nbsp&nbsp&nbsp </b></label>
        <input type="url" name="ThumbnailLink" id="ThumbnailLink" placeholder="" style="width:200px; height:25px;" required maxlength="255">
                <br>
                
<!-- PLATER INFORMATION -->
        
    <fieldset>
                <legend style="text-align: center;">Player Information</legend>

        <!-- MIN PLAYERS -->
                <label for="MinPlayers">Minimum Players: &nbsp&nbsp</label>
                <input type="number" name="MinPlayers" id="MinPlayers" placeholder="" min="1" max="99" style="width:200px; height:25px;">
                <br>
                        
        <!-- MAX PLAYERS -->

                <label for="MaxPlayers">Maximum Players: &nbsp&nbsp</label>
                <input type="number" name="MaxPlayers" id="MaxPlayers" placeholder="" min="1" max="99" style="width:200px; height:25px;">
                <br>

       <!-- BEST PLAYERS -->

                <label for="BestPlayers">Optimum Players: &nbsp&nbsp</label>
                <input type="number" name="BestPlayers" id="BestPlayers" placeholder="" min="1" max="99" style="width:200px; height:25px;">
                <br>
                
       <!-- MIN AGE -->

                <label for="MinAge">Minimum Age: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                <input type="number" name="MinAge" id="BestPlayers" placeholder="" min="1" max="21" style="width:200px; height:25px;">
                <br>
                

    </fieldset>
        
<!-- GAME INFORMATION -->
        
    <fieldset>
    <legend style="text-align: center;">Game Information</legend>

        <!-- QUALITY -->
                <label for="Quality"><b>Game Condition: &nbsp&nbsp</b></label>
                <select id="Quality" name="Quality" style="width:200px; text-align-last: center;">
                        <option value="New">New</option>
                        <option value="Used - like new">Used - Like New</option>
                        <option value="Used - very good">Used - Very Good</option>
                        <option value="Used - good">Used - Good</option>
                        <option value="Used - Acceptable">Used - Acceptable</option>
                        <option value="Used - Missing Pieces">Missing Pieces</option>
                </select>
                <br>
         
        <!-- GAME MECHANICS -->

                <label for="GameMechanics"><b>Game Mechanics: &nbsp</b></label>
                <select id="GameMechanics" name="GameMechanics" style="width:200px;height:25px; text-align-last: center;">
                        <option value="Dice">Dice</option>
                        <option value="Cards">Cards</option>
                        <option value="Board">Board</option>
                        <option value="Other">Other</option>
                </select>
                
                <br>
         

        <!-- DIFFICULTY -->

                <label for="DifficultyRating" ><b>Difficulty Rating: &nbsp&nbsp</b></label>
                <select id="DifficultyRating" name="DifficultyRating" style="width:200px; text-align-last: center;">
                        <option value="Beginner">Beginner</option>
                        <option value="Intermediate">Intermediate</option>
                        <option value="Expert">Expert</option>
                </select>
                <br>
                
        <!-- PLAYTIME -->

                <label for="PlayTime">Average Play Time: &nbsp</label>
                <input type="number" name="PlayTime" id="PlayTime" placeholder="in minutes" style="width:200px; height:25px;" min="5" step="5">
                <br>
   
        <!-- GAME PUBLISHER -->

                <label for="Publisher"><b>Game Publisher: &nbsp&nbsp&nbsp</b></label>
                <input type="text" name="Publisher" id="Publisher" placeholder="e.g. Hasbro" style="width:200px; height:25px;" required>
                <br>

        <!-- YEAR MADE -->

                <label for="YearMade"><b>Year Game created: </b></label>
                <input type="number" name="YearMade" id="YearMade" placeholder="e.g. 2002" style="width:200px; height:25px;" min="1901" max="2020" step="1" required>
                <br>
                

    </fieldset>
      
<!-- CATEGORIES -->
    <fieldset>
    <legend>Add Categories</legend>        

        <!-- CATEGORY 1 -->       
                <label for="Category"><b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMain Category:&nbsp&nbsp&nbsp</b></label>
                <select id="Category" name="Category" style="width:200px; text-align-last: center;" required> 
                    <optgroup label="Mechanics">
                        <option value="Accessible">Accessible</option>
                        <option value="Card Game">Card Game</option>
                        <option value="Dice">Dice</option>
                        <option value="Grid Movement">Grid Movement</option>
                        <option value="Memory">Memory</option>
                        <option value="Role Playing">Role Playing</option>
                    </optgroup>
                    <optgroup label="Age Group">
                        <option value="Adult">Adult</option>
                        <option value="Children">Children</option>
                        <option value="Family">Family</option>
                        <option value="Teen">Teen</option>
                    </optgroup>
                    <optgroup label=Categories>        
                            <option value="Action">Action</option>
                            <option value="Adventure">Adventure</option>
                            <option value="Animals">Animals</option>
                            <option value="Apocalypse">Apocalypse</option>
                            <option value="Battle">Battle</option>
                            <option value="Betting">Betting</option>
                            <option value="Bluffing">Bluffing</option>
                            <option value="Celebrity">Celebrity</option>
                            <option value="City Building">City Building</option>
                            <option value="Civilization">Civilization</option>
                            <option value="Comic Book">Comic Book</option>
                            <option value="Detective">Detective</option>
                            <option value="Economic">Economic</option>
                            <option value="Educational">Educational</option>
                            <option value="Fantasy">Fantasy</option>
                            <option value="Farming">Farming</option>
                            <option value="Fighting">Fighting</option>
                            <option value="History">History</option>
                            <option value="Horror">Horror</option>
                            <option value="Humour">Humour</option>
                            <option value="Logic">Logic</option>
                            <option value="Maze">Maze</option>
                            <option value="Music">Music</option>
                            <option value="Mythology">Mythology</option>
                            <option value="Negotiation">Negotiation</option>
                            <option value="Number">Number</option>
                            <option value="Party Game">Party Game</option>
                            <option value="Pirates">Pirates</option>
                            <option value="Player Elimination">Player Elimination</option>
                            <option value="Political">Political</option>
                            <option value="Popular Culture">Popular Culture</option>
                            <option value="Property">Property</option>
                            <option value="Puzzle">Puzzle</option>
                            <option value="Quiz">Quiz</option>
                            <option value="Racing">Racing</option>
                            <option value="Radio">Radio</option>
                            <option value="Single Player">Single Player</option>
                            <option value="Space">Space</option>
                            <option value="Sports">Sports</option>
                            <option value="Spy">Spy</option>
                            <option value="Strategy">Strategy</option>
                            <option value="Survival">Survival</option>
                            <option value="Town">Town</option>
                            <option value="Trivia">Trivia</option>
                            <option value="TV/Film">TV/Film</option>
                            <option value="Video Game">Video Game</option>
                            <option value="Voting">Voting</option>
                            <option value="Wargame">Wargame</option>
                            <option value="Word">Word</option>
                            <option value="Worker Placement">Worker Placement</option>
                            <option value="World War I">World War I</option>
                            <option value="World War II">World War II</option>
                            <option value="Zombies">Zombies</option>
                    </optgroup>
                </select>
                <br>

        
         <!-- CATEGORY 2 -->
        
                <label for="Category">&nbsp&nbspAdditional Category:&nbsp</label>
                <select id="Category2" style="width:200px; text-align-last: center;" required> 
                    <optgroup label="Mechanics">
                        <option value="Accessible">Accessible</option>
                        <option value="Card Game">Card Game</option>
                        <option value="Dice">Dice</option>
                        <option value="Grid Movement">Grid Movement</option>
                        <option value="Memory">Memory</option>
                        <option value="Role Playing">Role Playing</option>
                    </optgroup>
                    <optgroup label="Age Group">
                        <option value="Adult">Adult</option>
                        <option value="Children">Children</option>
                        <option value="Family">Family</option>
                        <option value="Teen">Teen</option>
                    </optgroup>
                    <optgroup label=Categories>        
                            <option value="Action">Action</option>
                            <option value="Adventure">Adventure</option>
                            <option value="Animals">Animals</option>
                            <option value="Apocalypse">Apocalypse</option>
                            <option value="Battle">Battle</option>
                            <option value="Betting">Betting</option>
                            <option value="Bluffing">Bluffing</option>
                            <option value="Celebrity">Celebrity</option>
                            <option value="City Building">City Building</option>
                            <option value="Civilization">Civilization</option>
                            <option value="Comic Book">Comic Book</option>
                            <option value="Detective">Detective</option>
                            <option value="Economic">Economic</option>
                            <option value="Educational">Educational</option>
                            <option value="Fantasy">Fantasy</option>
                            <option value="Farming">Farming</option>
                            <option value="Fighting">Fighting</option>
                            <option value="History">History</option>
                            <option value="Horror">Horror</option>
                            <option value="Humour">Humour</option>
                            <option value="Logic">Logic</option>
                            <option value="Maze">Maze</option>
                            <option value="Music">Music</option>
                            <option value="Mythology">Mythology</option>
                            <option value="Negotiation">Negotiation</option>
                            <option value="Number">Number</option>
                            <option value="Party Game">Party Game</option>
                            <option value="Pirates">Pirates</option>
                            <option value="Player Elimination">Player Elimination</option>
                            <option value="Political">Political</option>
                            <option value="Popular Culture">Popular Culture</option>
                            <option value="Property">Property</option>
                            <option value="Puzzle">Puzzle</option>
                            <option value="Quiz">Quiz</option>
                            <option value="Racing">Racing</option>
                            <option value="Radio">Radio</option>
                            <option value="Single Player">Single Player</option>
                            <option value="Space">Space</option>
                            <option value="Sports">Sports</option>
                            <option value="Spy">Spy</option>
                            <option value="Strategy">Strategy</option>
                            <option value="Survival">Survival</option>
                            <option value="Town">Town</option>
                            <option value="Trivia">Trivia</option>
                            <option value="TV/Film">TV/Film</option>
                            <option value="Video Game">Video Game</option>
                            <option value="Voting">Voting</option>
                            <option value="Wargame">Wargame</option>
                            <option value="Word">Word</option>
                            <option value="Worker Placement">Worker Placement</option>
                            <option value="World War I">World War I</option>
                            <option value="World War II">World War II</option>
                            <option value="Zombies">Zombies</option>
                    </optgroup>
                </select>
                <br>
            
         <!-- CATEGORY 3 -->
        
                <label for="Category">&nbsp&nbspAdditional Category:</label>
                <select id= "Category3" style="width:200px; text-align-last: center;"> 
                    <optgroup label="Mechanics">
                        <option value="Accessible">Accessible</option>
                        <option value="Card Game">Card Game</option>
                        <option value="Dice">Dice</option>
                        <option value="Grid Movement">Grid Movement</option>
                        <option value="Memory">Memory</option>
                        <option value="Role Playing">Role Playing</option>
                    </optgroup>
                    <optgroup label="Age Group">
                        <option value="Adult">Adult</option>
                        <option value="Children">Children</option>
                        <option value="Family">Family</option>
                        <option value="Teen">Teen</option>
                    </optgroup>
                    <optgroup label=Categories>        
                            <option value="Action">Action</option>
                            <option value="Adventure">Adventure</option>
                            <option value="Animals">Animals</option>
                            <option value="Apocalypse">Apocalypse</option>
                            <option value="Battle">Battle</option>
                            <option value="Betting">Betting</option>
                            <option value="Bluffing">Bluffing</option>
                            <option value="Celebrity">Celebrity</option>
                            <option value="City Building">City Building</option>
                            <option value="Civilization">Civilization</option>
                            <option value="Comic Book">Comic Book</option>
                            <option value="Detective">Detective</option>
                            <option value="Economic">Economic</option>
                            <option value="Educational">Educational</option>
                            <option value="Fantasy">Fantasy</option>
                            <option value="Farming">Farming</option>
                            <option value="Fighting">Fighting</option>
                            <option value="History">History</option>
                            <option value="Horror">Horror</option>
                            <option value="Humour">Humour</option>
                            <option value="Logic">Logic</option>
                            <option value="Maze">Maze</option>
                            <option value="Music">Music</option>
                            <option value="Mythology">Mythology</option>
                            <option value="Negotiation">Negotiation</option>
                            <option value="Number">Number</option>
                            <option value="Party Game">Party Game</option>
                            <option value="Pirates">Pirates</option>
                            <option value="Player Elimination">Player Elimination</option>
                            <option value="Political">Political</option>
                            <option value="Popular Culture">Popular Culture</option>
                            <option value="Property">Property</option>
                            <option value="Puzzle">Puzzle</option>
                            <option value="Quiz">Quiz</option>
                            <option value="Racing">Racing</option>
                            <option value="Radio">Radio</option>
                            <option value="Single Player">Single Player</option>
                            <option value="Space">Space</option>
                            <option value="Sports">Sports</option>
                            <option value="Spy">Spy</option>
                            <option value="Strategy">Strategy</option>
                            <option value="Survival">Survival</option>
                            <option value="Town">Town</option>
                            <option value="Trivia">Trivia</option>
                            <option value="TV/Film">TV/Film</option>
                            <option value="Video Game">Video Game</option>
                            <option value="Voting">Voting</option>
                            <option value="Wargame">Wargame</option>
                            <option value="Word">Word</option>
                            <option value="Worker Placement">Worker Placement</option>
                            <option value="World War I">World War I</option>
                            <option value="World War II">World War II</option>
                            <option value="Zombies">Zombies</option>
                    </optgroup>
                </select>
            
        </fieldset>



            <!-- SUBMIT BUTTON -->

            <br>
            <button class="btn" style="background-color: #000000; color: white; padding: 2px;" type="submit">Submit</button>
            
        </form>
</div>        

                 
<!-- END OF ADD GAME FORM -->    
