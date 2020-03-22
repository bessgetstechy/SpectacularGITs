<?php

trait ConnectToDB {

    function connect() {
        
        $dsn = "mysql:host=localhost:8080; dbname=boardgame_library";
        $user = "root";
        $password = "";
        try {
            $pdo = new PDO($dsn, $user, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo "Error: Failed to connect." . $e->getMessage();
        }
        return $pdo;
    }

}
