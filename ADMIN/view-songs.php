<?php
session_start();
if (isset($_SESSION['adminname']) && $_SESSION['loggedinadmin'] == TRUE) {
    include('../dbconnect.php');
    include('nav.php');

}else {
   header("Location: ../admin-login.php");
   exit();
}
?>

this is all songs