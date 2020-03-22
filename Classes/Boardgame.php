<?php

class BoardGame {
    
    public $gameID;
    public $title;  
    public $thumbnailLink;
    public $minPlayers;
    public $maxPlayers;
    public $bestPlayers;
    public $minAge;
    public $playTime;
    public $gameMechanics;
    public $publisher;
    public $yearMade;
    public $rating;
    public $difficultyRating;
    public $noUsersRated;
    public $quality;
    public $playable;
    public $available;
    public $categoryName;
    public $dateAdded;
    
    public function __construct($title, $minPlayers) {
        $this->title = $title;
        $this->minPlayers = $minPlayers;
    }
                function getTitle() {
        return $this->title;
    }
    
        function getCategory() {
        return $this->category;
    }
    
    function getID() {
        return $this->gameID;
        }
        
    function getImage() {
        return $this->thumbnailLink;
        }
}