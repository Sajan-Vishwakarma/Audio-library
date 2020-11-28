<?php
session_start();
if(isset($_SESSION['adminname']) && $_SESSION['loggedinadmin']==TRUE ){

    include('../dbconnect.php');
    echo "<h1><Center>This is wwelcome page for Admins</center></h1>";
    echo "<h1><Center> Welcome ".$_SESSION['adminname']." </center></h1>";
    echo '<a href="../logout.php">Logout</a>';
    
}
else{

    echo "Login First will redirect to login page in 5 seconds";
    header('Refresh: 5; URL=../user-login.php');
}
?>
<html>
<!-- <a href="ALBUMS/album.php">Click to go album page</a> -->
</html>