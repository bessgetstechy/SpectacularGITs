
<!DOCTYPE html>
<html lang="en">
   <script src="JSfunctions.js"></script>

<?php include 'header.php'; ?>
<?php include 'dbConnection.php'; ?>
<?php include_once 'Classes/Boardgame.php'; ?>


<!-- POST MESSAGE -->   

<p style="text-align: center">
    <br>
    <?php if (isset($_POST['Title'])) {
        $newboardGame[] = filter_input(INPUT_POST, 'Title', FILTER_SANITIZE_SPECIAL_CHARS);
        $newboardGame[] = filter_input(INPUT_POST, 'MinPlayers', FILTER_SANITIZE_SPECIAL_CHARS);
        $stmt = $pdo->prepare("INSERT INTO `test`(`name`,'minPlayers') VALUES (?,?)");
        $stmt ->execute($newBoardGame);
        echo "Thank you, $newboardGame[0] has been added";
     } ?>
</p>


     
<!-- ADDING A NEW BOARD GAME -->

    <br>
    <center>
        <p class="adminheaders" style="text-align: center; display: inline-block; font-family: 'Pacifico', cursive; font-size:30px">Add Board Game&nbsp;
        <button onclick="showAddGameForm()" class="btn" style="border-color:#BFDEFF; vertical-align: center; font-size: 10px; font-family: Pacifico"></button>
        <br>
        </p>
    </center>
    
    

    
<!-- FORM -->
    <div class="boardgameform" id="addGameForm">
    <form action="" method="POST" >
        <p style="font-size: 13px">Fields in bold are <b>required</b></p>  
        <!-- TITLE -->

        <label for="Title"><b>Board Game Title:</b></label>
                <input type="text" name="Title" id="inputTitle" placeholder="e.g. Scrabble" style="width:200px; height:25px;" autofocus required>
                <br>
        <!-- THUMBNAIL -->

                <label for="ThumbnailLink">Image Link URL:&nbsp&nbsp&nbsp&nbsp&nbsp </label>
                <input type="url" name="ThumbnailLink" id="inputTitle" placeholder="" style="width:200px; height:25px;" autofocus>
                <br>
                
<!-- PLATER INFORMATION -->
        
    <fieldset>
                <legend style="text-align: center;">Player Information</legend>

        <!-- MIN PLAYERS -->
                <label for="MinPlayers">Minimum Players: &nbsp&nbsp</label>
                <input type="number" name="MinPlayers" id="inputTitle" placeholder="" min="1" max="99" style="width:200px; height:25px;"autofocus>
                <br>
                        
        <!-- MAX PLAYERS -->

                <label for="MaxPlayers">Maximum Players: &nbsp</label>
                <input type="number" name="MaxPlayers" id="inputTitle" placeholder="" min="1" max="99" style="width:200px; height:25px;" autofocus>
                <br>

       <!-- BEST PLAYERS -->

                <label for="BestPlayers">Optimum Players: &nbsp&nbsp</label>
                <input type="number" name="BestPlayers" id="inputTitle" placeholder="" min="1" max="99" style="width:200px; height:25px;" autofocus>
                <br>
                

    </fieldset>
        
<!-- GAME INFORMATION -->
        
    <fieldset>
    <legend style="text-align: center;">Game Information</legend>

        <!-- QUALITY -->
                <label for="Quality"><b>Game Condition: &nbsp&nbsp</b></label>
                <select id="DifficultyRating" style="width:200px; text-align-last: center;">
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
                <select id="GameMechanics" style="width:200px;height:25px; text-align-last: center;">
                        <option value="Dice">Dice</option>
                        <option value="Cards">Cards</option>
                        <option value="Board">Board</option>
                        <option value="Other">Other</option>
                </select>
                
                <br>
         

        <!-- DIFFICULTY -->

                <label for="DifficultyRating"><b>Difficulty Rating: &nbsp&nbsp</b></label>
                <select id="DifficultyRating" style="width:200px; text-align-last: center;">
                        <option value="Beginner">Beginner</option>
                        <option value="Intermediate">Intermediate</option>
                        <option value="Expert">Expert</option>
                </select>
                <br>
                
        <!-- PLAYTIME -->

                <label for="PlayTime">Average Play Time: &nbsp&nbsp</label>
                <input type="number" name="BestPlayers" id="inputTitle" placeholder="in minutes" style="width:200px; height:25px;" min="5" step="5" autofocus>
                <br>
   
        <!-- GAME PUBLISHER -->

                <label for="Publisher"><b>Game Publisher: &nbsp&nbsp&nbsp</b></label>
                <input type="text" name="Publisher" id="inputTitle" placeholder="e.g. Hasbro" style="width:200px; height:25px;" autofocus>
                <br>

        <!-- YEAR MADE -->

                <label for="YearMade"><b>Year Game created: </b></label>
                <input type="number" name="BestPlayers" id="inputTitle" placeholder="e.g. 2002" style="width:200px; height:25px;" min="1901" max="2020" step="1" autofocus>
                <br>
                

    </fieldset>
      
<!-- CATEGORIES -->
    <fieldset>
    <legend>Add Categories</legend>        

        <!-- CATEGORY 1 -->       
                <label for="Category"><b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspMain Category:&nbsp&nbsp&nbsp</b></label>
                <select id="DifficultyRating" style="width:200px; text-align-last: center;" autofocus required> 
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
                <select id="DifficultyRating" style="width:200px; text-align-last: center;" autofocus required> 
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
                <select id= "DifficultyRating" style="width:200px; text-align-last: center;" autofocus required> 
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
            <button class="btn" style="background-color: #000000; color: white" type="submit">Submit</button>
            
        </form>
        </div>        

        <br>
         
<!-- END OF ADD GAME FORM -->        
        
        
        
        
        
                <h2 style="font-family: 'Pacifico', cursive;">Edit Existing Game</h2>
                <br>
                <br>
                <h2 style="font-family: 'Pacifico', cursive;">Delete Game</h2>
            <br><br>


    

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
