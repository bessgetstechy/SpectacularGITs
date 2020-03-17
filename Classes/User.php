<?php

class User {
    
    public $firstname;
    public $lastname;
    public $email;
    protected $addressline;
    protected $town;
    protected $postcode;
    protected $phonenumber;
    private $password;
    public $role = 'member';
    
    
    public function __construct($firstname, $lastname, $email) {
      $this->firstname = $firstname;
      $this->lastname = $lastname;
      $this->email = $email;
    }
    
    public function setFirstname($firstname) {
    $this->firstname = $firstname;
    }
    
    public function setLastname($lastname) {
    $this->email = $lastname;
    }
    
    public function setAddressline($addressline) {
    $this->addressline = $addressline;
    }
    
    public function setTown($town) {
    $this->town = $town;
    }
  
    public function setPostcode($postcode) {
    $this->postcode = $postcode;
    }
    
    public function setPhonenumber($phonenumber) {
    $this->phonenumber = $phonenumber;
    }
    
    /* public function setPassword($password) {
    if('SOME-REGEX???'){
    $this->email = $password;
    }
    */
    
    public function setEmail($email) {
    if(strpos($email, '@') > -1){
    $this->email = $email;
    }
    }

    public function getEmail() {
    return $this->email;
    }
    
    public function getAddress() {
    return $this->addressline; $this->town; $this->postcode;
    }
    

}



?>