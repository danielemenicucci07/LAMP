<?php
session_start();
if (isset($_SESSION['username'])) { // se l'utente è gia loggato viene rimandato all'home page
    header('Location: index.php');
    die();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if ($username == 'meni07' && $password == 'forzainter') {

        $_SESSION['username'] = $username;

        header('location: riservata.php');
        die();
}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <?=$err_msg?>

    <form action="login.php" method="POST">
        <label for="username">Username</label>
        <input type="text" name="username" id="username">
        <br>
        <label for="password">Password</label>
        <input type="password" name="password" id="password">
        <br>
        <input type="submit" value="Login">
    </form>
</body>
</html>