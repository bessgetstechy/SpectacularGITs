<?php
session_start();
session_destroy();
header( "refresh:5;../Homepage2.php" );
include 'adminheader.php';
?>

<head>
    <title>Logout</title>
</head>

<body>
<center>
    <br>
    <img src="../Images/Spectacular logo2.png" id="icon" alt="User Icon" style="width: 220px; height: 100px;" />
    <br>
    <br>
    <p>Logout successful!<br>You should now be redirected to the Home Page.<br><br>
    <img src="https://imageog.flaticon.com/icons/png/512/25/25694.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF" id="icon" alt="User Icon" style="width: 50x; height: 50px;" />    
        
        
    <br><br>If this doesn't happen please click below:</p>
    <br>
 
    <!-- Homepage -->
        <a href="../Homepage2.php" style="color: rgb(242, 107, 203">Take me home!</a>
        <br><br>
        
        
    <!-- Login -->
        <a href="logintest.php" style="color: rgb(242, 107, 203">Log Back In</a>
        <br>
        <br>

</center>
</body>

