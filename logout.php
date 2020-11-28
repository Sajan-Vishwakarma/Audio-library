<?php
    session_start();
    session_unset();
    session_destroy();
  
    echo "will redirect to login page in 5 seconds";

    header('Refresh: 5; URL=user-login.php');
?>