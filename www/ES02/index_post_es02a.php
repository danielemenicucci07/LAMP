<?php
$username_corretta = "daniele";
$password_corretta = "Forzainter";

if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
    if (isset($_POST["username"]) || isset($_POST["password"]))  //isset determina se una variabile è dichiarata ed è diversa da null
    {
        $username_messo = $_POST["username"];
        $password_messa = $_POST["password"];

        if ($username_messo == $username_esatto && $password_messa == $password_esatta) 
        {
           echo "<h2>Accesso riuscito! Benvenuto, $username_messo! </h2>";
        } else {
            echo "<h2>Username o password errati! Riprova.</h2>";
            //dati errati rivisualizzare il form
            visualizza_form();
               }
    }else {
        //i campi non sono stati mandati rivisualizza il form
        visualizza_form();
          }
}else {
    //prima accesso alla pagina e visualizza il form
    visualizza_form();
      }

//funzione per visualizzare il form
function visualizza_form() 
{
  echo '
  <form action="" method="post">
   <label for="name">Username:</label>
   <input type="text" id="username" name="username" placeholder= "nome"><br>
   <label for="password">Password:</label>
   <input type="password" id="password" name="password" placeholder = "password"><br>
   <input type="submit" value="invia">
   </form>';  
}

?>