<?php
session_start();
if(isset($_SESSION['username']) && $_SESSION['loggedinuser']==TRUE ){

    include('../../dbconnect.php');
    echo "<h1><Center>This is album page</center></h1>";
    echo "<h1><Center> Welcome ".$_SESSION['username']." </center></h1>";
    echo " <a href='../../logout.php'>Log out</a>";
}
else{

    echo "Login First will redirect to login page in 5 seconds";
    header('Refresh: 5; URL=../../user-login.php');
}

?>
