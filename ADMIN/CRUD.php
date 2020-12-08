<?php

if (isset($_SESSION['adminname']) && $_SESSION['loggedinadmin'] == TRUE) {
   if (isset($_GET['del']) && $_GET['del']) {
        $id = $_GET['del'];
        
        mysqli_query($link, $qry);
        $_SESSION['message'] = "Record Deleted";
        //header("Location: view-comments.php");
    }
} else {
    header("Location: ../admin-login.php");
    exit();
}

?>
<!-- 
.edit-btn {
        text-decoration: none;
        padding: 2px 5px;
        background: green;
        color: white;
        border-radius: 3px;
    }
    .del-btn {
        text-decoration: none;
        padding: 2px 5px;
        background: red;
        color: white;
        border-radius: 3px;
    } -->