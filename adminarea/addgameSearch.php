       


<center>
<!-- SHOW SEARCH BUTTON -->
<button id="button2" onclick="addGameSearch()" class="btn" style="color: rgb(242, 107, 203">Show Search</button>
        
<p style="font-size:12px">
        
            
            <?php
                
                if (null!==(filter_input(INPUT_GET, 'searchTitle'))) {
                $searchTitle = filter_input(INPUT_GET, 'searchTitle', FILTER_SANITIZE_SPECIAL_CHARS);
                echo "You searched for: $searchTitle"."<br>";

                $result = $pdo->prepare("SELECT gameID FROM board_games where TITLE = :searchTitle");
                $result ->execute(array(
                    ':searchTitle' => $searchTitle
                ));
                
                if ($row[0] = null) {
                    echo "No game found".PHP_EOL;
                } else if ($row[0] = !null){
                         echo "The Game ID is: "; 
                         while ($row = $result->fetch()){print_r($row[0]);
                }
                }
                }
            ?>
    
</p>
        <div class="boardgamesearch" id="addGameSearch" style="display: none">    
        <p style="font-size: 12px">Need to check if a game is already in the Library?<br>Or need to find the Game ID?<br>Use the <b>Search</b> below<br></p>  

        <form action="" method="GET" >
            <label for="searchTitle">Search by Title: &nbsp&nbsp</label>
                <input type="text" name="searchTitle" id="searchTitle" placeholder=""  style="width:200px; height:25px;">
                    <button class="btn" style="padding: 0px; text-align: center; background-color: #000000; color: white; font-size: 10px; width:2-px; height:20px;" type="submit">Search</button>
        </form>                              
        </div>