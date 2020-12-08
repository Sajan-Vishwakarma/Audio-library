<?php
session_start();
if (isset($_SESSION['adminname']) && $_SESSION['loggedinadmin'] == TRUE) {
    include('../dbconnect.php');
    include('nav.php');
} else {
    header("Location: ../admin-login.php");
    exit();
}
?>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/welcome.css">
    <title>Welcome Admin</title>
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
    <main>

        <form action="admin-welcome.php" method="post">
            <div class="form-head">
                <h3>Add Genre</h3>
            </div>
            <div class="content">
                <table>
                    <tr>
                        <td> Genre Type* :<input type="text" name="genre-id" list="all-genre" required="required">
                        </td>
                    </tr>
                </table>
            </div>
            <button class="sub-btn" type="submit" name="add-genre">ADD</button><br>
        </form>

        <form action="admin-welcome.php" method="post">
            <div class="form-head">
                <h3>Add Artist</h3>
            </div>
            <div class="content">
                <table>
                    <tr>
                        <td> Artist Name* :<input type="text" name="artist-name" list="all-artist" required="required">
                        </td>
                    </tr>
                </table>
            </div>
            <button class="sub-btn" type="submit" name="add-artist">ADD</button><br>
        </form>

        <form action="admin-welcome.php" method="post">
            <div class="form-head">
                <h3>Add Album</h3>
            </div>
            <div class="content">
                <table>
                    <tr>
                        <td>Album Title* :<br><input type="text" name="album-id" list="all-album" required="required">
                        </td>
                        <td> Artist Name* :<br><input type="text" name="artist-name" list="all-artist" required="required">
                        </td>
                    </tr>
                </table>
            </div>
            <button class="sub-btn" type="submit" name="add-album">ADD</button><br>
        </form>

        <form action="admin-welcome.php" method="post">
            <div class="form-head">
                <h3>Add Song</h3>
            </div>
            <div class="content">
                <table>
                    <tr>
                        <td colspan="2"> Song Name* : <input type="text" name="song-name" required="required"></td>
                    </tr>
                    <tr>
                        <td>Album Title* :<br><input type="text" name="album-id" list="all-album" required="required">
                        </td>
                        <td> Genre Type* :<br><input type="text" name="genre-id" list="all-genre" required="required">
                        </td>
                    </tr>
                </table>
                <?php include('option.php'); ?>

            </div>
            <button class="sub-btn" type="submit" name="add-song">ADD</button><br>
        </form>


    </main>

</body>

</html>