<?php

class BoardGame {
    
    public $gameID;
    public $title;  
    public $category;
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

    function getTitle() {
        return $this->title;
    }
    
        function getCategory() {
        return $this->category;
    }
    
    function getID() {
        return $this->gameID;
        }
}