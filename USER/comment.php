<?php
    $cmt = $_POST['cmt'];
    $commentor = $_SESSION['username'];
    $qry = "SELECT Email FROM Clients WHERE username='$commentor' ";
    $result = mysqli_query($link,$qry);
    $row = mysqli_fetch_array($result);
    $email = $row['Email'];

    $qry = "INSERT INTO `Comments` (`user`, `comment`, `Email`, `date`) 
        VALUES ('$commentor', '$cmt', '$email', current_timestamp());";
    $result = mysqli_query($link, $qry);
    if ($result == TRUE)
        $commented = TRUE;
?>
