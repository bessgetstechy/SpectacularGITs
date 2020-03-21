<?php

include 'Classes/Boardgame.php';
try {
      $pdo = new PDO('mysql:host=localhost;dbname=boardgame_library' , 'root' , '');
} catch (PDOException $e) {
	die($e->getMessage());  //die() for illustration
//always handle errors 
}
$stmt = $pdo->prepare("SELECT gameID, title FROM board_games");
$stmt ->execute();
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
?>
