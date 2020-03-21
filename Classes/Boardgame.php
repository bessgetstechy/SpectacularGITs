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
        
        
    public function __construct($Title) {
      $this->Title = $Title;
    }
    
    public function setYearMade($YearMade) {
    $this->YearMade = $YearMade;
    }
    
    public function setPublisher($Publisher) {
    $this->Publisher = $Publisher;
    }
    
    public function setPlayable($Playable) {
    $this->Playable = $Playable;
    }
    
    public function setQuality($Quality) {
    $this->Quality = $Quality;
    }
    
    public function setMinPlayers($MinPlayers) {
    $this->MinPlayers = $MinPlayers;
    }
 
    public function setMaxPlayers($MaxPlayers) {
    $this->MaxPlayers = $MaxPlayers;
    }

    
    public function getYearMade() {
    return $this->YearMade;
    }
    
    public function getPublisher() {
    return $this->Publisher;
    }
    
    public function getMinPlayers() {
    return $this->MinPlayers;
    }
    
    public function getMaxPlayers() {
    return $this->MaxPlayers;
    }
}