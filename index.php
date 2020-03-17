<?php
include 'admin.php';

$userOne = new User('Homer', 'Simpson', 'Homer@theSimpsons.com');
$userTwo = new User('Marge', 'Simpson', 'Marge@theSimpsons.com'); 
$userThree = new AdminUser('Bart', 'Simpson', 'Bart@theSimpsons.com'); 
$userFour = new User('Fred', 'Flinstone', 'Fred@flintsone.com');        
        
echo 'UserFour is called' . $userFour->firstname . '<br>';
echo 'Your name: ' . $userOne->firstname . $userOne->lastname . '<br>';
echo 'Your email: ' . $userOne->email . '<br>';
echo 'Your role:' . $userThree->role . '<br>';

echo 'The class is ' . get_class($userOne) . '<br>';
echo 'The class is ' . get_class($userThree) . '<br>';

print_r(get_class_vars('User'));
print_r(get_class_methods('User'));

?>

<html lang=""en">
    <head>
        <title>PHP OOP</title>
    </head>
    <body>
        
        
    </body>
</html>


