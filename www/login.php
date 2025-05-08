<?php
$utente_corretto = 'meni07';
$password_corretta = 'forzainter';

$username = $_POST['username'] ?? '';
$password = $_POST['password'] ?? '';

if ($username === $utente_corretto && $password === $password_corretta)
{
    echo "<h2>Benvenuto nella pagina di login $username!</h2>";
    echo "<p>Login effettuato con successo</p>";
} else 
{
    echo "<h2>Accesso negato</h2>";
    echo "<p>Username o password errati</p>";
}
?>