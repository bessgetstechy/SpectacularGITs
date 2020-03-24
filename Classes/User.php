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
    

    public function __construct($firstname, $lastname, $email, $addressline, $town, $postcode, $phonenumber,$password) {
      $this->firstname = $firstname;
      $this->lastname = $lastname;
      $this->email = $email;
      $this->addressline = $addressline;
      $this->town = $town;
      $this->postcode = $postcode;
      $this->phonenumber = $phonenumber;
      $this->password = $password;
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
    
    public function setPassword($password) {
    $this->phonenumber = $password;
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
    
   /*public function insertNewUser() {
               $sqlregistermember= "INSERT INTO member (FirstName, LastName, EmailAddress, Password, AddressLine, Town, Postcode, PhoneNumber) VALUES (:FirstName, :LastName, :EmailAddress, :Password, :AddressLine, :Town, :Postcode, :PhoneNumber) ";
               $stmt = $pdo->prepare($sqlregistermember);              
        
               $stmt->execute([
                'FirstName'=>$firstname,
                'LastName'=>$lastname,
                'EmailAddress'=>$emailaddress,
                'Password'=>$password,
                'AddressLine'=>$addressline,
                'Town'=>$town,
                'Postcode'=>$postcode,
                'PhoneNumber'=>$phonenumber,                
                  
            ]);
   
            echo "<br><p> Congratulations $firstname, you're now a member!</p>"; 
            echo "<hp>Your username is: $emailaddress</p>";
         }
        
         
            
                  
        try {
            $pdo = new PDO('mysql:host=localhost:8080;dbname=boardgame_library' , 'root' , '');
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo "Error: Failed to connect." . $e->getMessage();
        }
        return $pdo;
        
        
        $sqlregistermember= "INSERT INTO member (FirstName, LastName, EmailAddress, Password, AddressLine, Town, Postcode) VALUES (:FirstName, :LastName, :EmailAddress, :Password, :AddressLine, :Town, :Postcode) ";
 
        try {
            $stmt = $pdo-> prepare($sqlregistermember);
            $stmt->execute([
                'FirstName'=>$_POST["FirstName"],
                'LastName'=>$_POST["LastName"],
                'EmailAddress'=>$_POST["EmailAddress"],
                'Password'=>$_POST["Password"],
                'AddressLine'=>$_POST["AddressLine"],
                'Town'=>$_POST["Town"],
                'Postcode'=>$_POST["Postcode"],                
            ]);

            }catch (\PDOException $e) {
            echo $e->getMessage();
//            $error = $e->errorInfo();
            }

        }*/
}
        ?>