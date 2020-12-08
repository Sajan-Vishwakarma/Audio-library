<!DOCTYPE html>
<html lang="en">
<style>
    .header {
        padding-left: 80px;
        background: radial-gradient(#fff, #ffd6d6);
    }
    #logo {
        border-radius: 50%;
    }

    nav a {
        color: #000000;
        font-family: 'Times New Roman', Times, serif;
        font-weight: bold;
        font-size: larger;
    }

    nav a:hover {
        color: rgb(143, 24, 223);
        text-decoration: none;
    }
    nav ul {
        list-style: none;
    }
    nav ul li:hover{
    background: linear-gradient(limegreen,lightgreen);
}
    nav ul li {
        float: left;
        background: radial-gradient(#fff, #ffd6d6);
        width: 150px;
        border: 1px solid #fff;
        border-radius: 2px;
        height: 50px ;
        line-height: 50px;
        text-align: center;
        position: relative;
    }
    nav ul ul {
        display: none;
    }
    nav ul li:hover>ul {
        display: block;
    }
</style>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> </title>
    <link rel="stylesheet" href="CSS/nav-bar.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
    <div class="header">
        <div class="navbar">
            <div class="logo">
                <a href="admin-welcome.php"><img id="logo" src="../Images/logo.jpg" height="70px" width="200px"></a>
            </div>
            <nav>
                <ul>
                    <li><a href="view-users.php">All Users</a></li>
                    <li><a href="view-inbox.php">Inbox</a></li>
                    <li><a href="#">Administration</a>
                        <ul class="dropdown">
                            <li><a href="edit-artist.php">Add Artist</a></li>
                            <li><a href="edit-album.php">Add Album</a></li>
                            <li><a href="edit-track.php">Add Track</a></li>
                        </ul>
                    </li>
                    <li><a href="../logout.php">Log out</a></li>
                </ul>
            </nav>
        </div>
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>