      

<p class="adminheaders" style="text-align: center; font-family: 'Pacifico', cursive; font-size:30px">Add Board Game&nbsp;</p>
<button id="button1" onclick="showAddGameForm()" class="btn" style="color: rgb(242, 107, 203">Show Form</button>
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
        
        $thumbnailLink = filter_input(INPUT_POST, 'ThumbnailLink', FILTER_SANITIZE_URL);
        $title = filter_input(INPUT_POST, 'Title', FILTER_SANITIZE_SPECIAL_CHARS);
        $minPlayers = filter_input(INPUT_POST, 'MinPlayers', FILTER_SANITIZE_NUMBER_INT);
        $maxPlayers = filter_input(INPUT_POST, 'MaxPlayers', FILTER_SANITIZE_NUMBER_INT);
        $bestPlayers = filter_input(INPUT_POST, 'BestPlayers', FILTER_SANITIZE_NUMBER_INT);
        $minAge = filter_input(INPUT_POST, 'MinAge', FILTER_SANITIZE_NUMBER_INT);
        $playTime = filter_input(INPUT_POST, 'PlayTime', FILTER_SANITIZE_NUMBER_INT);
        $gameMechanics = filter_input(INPUT_POST, 'GameMechanics', FILTER_SANITIZE_SPECIAL_CHARS);
        $publisher = filter_input(INPUT_POST, 'Publisher', FILTER_SANITIZE_SPECIAL_CHARS);
        $yearMade = filter_input(INPUT_POST, 'YearMade', FILTER_SANITIZE_NUMBER_INT);
        $difficultyRating = filter_input(INPUT_POST, 'DifficultyRating', FILTER_SANITIZE_SPECIAL_CHARS);
        $quality = filter_input(INPUT_POST, 'Quality', FILTER_SANITIZE_SPECIAL_CHARS);
        $category = filter_input(INPUT_POST, 'Category', FILTER_SANITIZE_SPECIAL_CHARS);
        $date = new DateTime();
        $dt=$date->format('Y-m-d');
                
        //Created Object
        //$boardgame = new BoardGame($title);
        
        //PDO
        $stmt = $pdo->prepare("INSERT INTO `board_games`(`ThumbnailLink`,`Title`,`MinPlayers`,`MaxPlayers`,`BestPlayers`,`MinAge`,`PlayTime`,`GameMechanics`,`Publisher`,`YearMade`,`DifficultyRating`,`Quality`,`CategoryName`,`DateAdded`)"
                                              . "VALUES (:thumbnailLink,:title, :minPlayers, :maxPlayers, :bestPlayers, :minAge, :playTime, :gameMechanics, :publisher, :yearMade, :difficultyRating, :quality, :category, :dateAdded)");
        $stmt->execute(
                    array(
                        ':thumbnailLink' => $thumbnailLink,
                        ':title' => $title,
                        ':minPlayers' => $minPlayers,
                        ':maxPlayers' => $maxPlayers,
                        ':bestPlayers' => $bestPlayers,
                        ':minAge' => $minAge,
                        ':playTime' => $playTime,
                        ':gameMechanics' => $gameMechanics,
                        ':publisher' => $publisher,
                        ':yearMade' => $yearMade,
                        ':difficultyRating' => $difficultyRating,
                        ':quality' => $quality,
                        ':category' => $category,
                        ':dateAdded' => $dt
                    )
                );

        //Messsage for User - includes Title and Game ID
        echo "Thank you, $title has been added."."<br>"."The Game ID is: ";
        $result = $pdo->prepare("SELECT gameID FROM board_games where TITLE = :title");
        $result ->execute(array(
                ':title' => $title
                ));
        while ($row = $result->fetch()){print_r($row[0]);
        }


            // The below is for debugging the form
        
              /*  print_r([':thumbnailLink' => $thumbnailLink,
                        ':title' => $title,
                        ':minPlayers' => $minPlayers,
                        ':maxPlayers' => $maxPlayers,
                        ':bestPlayers' => $bestPlayers,
                        ':minAge' => $minAge,
                        ':playTime' => $playTime,
                        ':gameMechanics' => $gameMechanics,
                        ':publisher' => $publisher,
                        ':yearMade' => $yearMade,
                        ':difficultyRating' => $difficultyRating,
                        ':quality' => $quality,
                        ':category' => $category,
                        ':dateAdded' => $dt
                        ]
                    ); */
    } 
 
     ?>

</center>
 

    
<!-- FORM -->
    <div class="boardgameform" id="addGameForm" style="display: none">   
    <form action="" method="POST" >
        <p style="font-size: 13px">Fields in bold are <b>required</b></p>  
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
            <button class="btn" style="background-color: #000000; color: white; padding: 2px; font-size: 12px" type="submit">Submit</button>
            
        </form>
</div>        

                 
<!-- END OF ADD GAME FORM -->    
