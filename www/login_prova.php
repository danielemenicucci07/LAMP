<?php
// Connessione al database (usando mysql_)
$conn = mysql_connect('localhost', 'root', '');
if (!$conn) {
    die('Connessione fallita: ' . mysql_error());
}

// Selezioniamo il database
mysql_select_db('test', $conn);

// Dati dal form
$username = $_POST['meni07'] ?? '';
$password = $_POST['forzainter'] ?? '';

// Query per trovare l'utente
$sql = "SELECT * FROM utenti WHERE username = '$username'";

// Eseguiamo la query
$result = mysql_query($sql, $conn);

// Verifica se l'utente esiste
if ($result) {
    // Controlliamo i risultati
    $row = mysql_fetch_array($result);
    
    if ($row && $row['password'] == $password) {
        // Se l'utente esiste e la password è corretta
        echo "<h2>Benvenuto, $username!</h2>";
        echo "<p>Login effettuato con successo</p>";
    } else {
        // Se la password è errata
        echo "<h2>Accesso negato</h2>";
        echo "<p>Username o password errati</p>";
    }
} else {
    // Se la query fallisce
    echo "<h2>Accesso negato</h2>";
    echo "<p>Username o password errati</p>";
}

// Chiudiamo la connessione
mysql_close($conn);
?>
