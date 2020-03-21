<?php

include 'user.php';

Class AdminUser extends User {

public $role = 'admin';
private $employeeno;  //replace employeeno with something suitable

public function __construct($firstname, $lastname, $email, $employeeno){
        $this->employeeno = $employeeno;
        parent::__construct($firstname, $lastname, $email);
}

}
?>