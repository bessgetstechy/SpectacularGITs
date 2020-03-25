<?php

include 'Classes/Boardgame.php';
try {
      $pdo = new PDO('mysql:host=localhost;dbname=boardgame_library' , 'root' , '');
      $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 } catch (PDOException $e) {
            echo "DB Connection Failed: " . $e->getMessage();
        }

/*
$stmt = $pdo->prepare("SELECT gameID, title FROM board_games");
$stmt ->execute();
while ($row = $stmt->fetch()){print_r($row);
}

$result = $stmt->fetchAll(PDO::FETCH_CLASS, "BoardGame");

foreach ($result as $boardgame) {
	echo $boardgame->getID();
        echo PHP_EOL;
        }
        
foreach ($result as $boardgame) {
	echo $boardgame->getID();
        echo PHP_EOL;
        echo $boardgame->getTitle();
        
        }    
 */     
?>
