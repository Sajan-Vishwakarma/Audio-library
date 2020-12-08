<?php
session_start();
$page_no = "";
$total_records_per_page = 10;
$page_link = "user-welcome.php";
$commented = FALSE;

if (isset($_SESSION['username']) && $_SESSION['loggedinuser'] == TRUE) {

    include('../dbconnect.php');
    //NAV-USER HERE INCLUDE;
    echo '<a href="../logout.php">Logout</a>';
    //above statement inside nav bar in user;

    //TO DISPLAY TABLES AND PAGENATION
    if (isset($_GET["page_no"]) && $_GET['page_no'] != "") {
        $page_no  = $_GET["page_no"];
    } else
        $page_no = 1;

    if (isset($_POST["cmt"]) && $_POST['cmt']) {
        include('comment.php');
    }
    
    
} else {
    header("Location: ../user-login.php");
    exit();
}
?>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>User Welcome</title>
</head>
<style>
    body {
        background-color: darkgray;
    }

    main {
        min-height: 100%;
        margin: 2%;
    }
</style>

<body>
    <?php
    if ($commented)
        echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
            <center><strong> Commented Successfully </strong></center>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>';
    ?>
    <main>

    </main>
    <footer>
        <?php
        include('../footer.php');
        ?>
    </footer>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>