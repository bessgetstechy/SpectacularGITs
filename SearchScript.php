<?php

include 'Classes/Boardgame.php';

$dbHost = "localhost";
$dbusr = "root";
$dbpwd = "";
$dbname = "boardgame_library";

        try {
    $dsn = "mysql:host=" . $dbHost . ";dbname=" . $dbname;
    $pdo = new PDO($dsn, $dbusr, $dbpwd);
    /* echo "Connection Successful";*/
        } catch (PDOException $e) {
            echo "DB Connection Failed: " . $e->getMessage();
        }
        

$query = "SELECT * FROM `Board_games` WHERE `Title` LIKE ?";
$stmt = $pdo->prepare($query);
$stmt ->execute(["%" . $_POST['search'] . "%"]);
$results = $stmt->fetchAll();
if (isset($_POST['ajax'])){
    echo json_encode($results);
}




