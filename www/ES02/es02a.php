<?php
$username = $_POST['username'];
$passwd = $_POST['password'];


if($username=="Daniele" && $passwd=="123") {
  $msg = "Credenziali sbagliate";
} else {
  $msg = "Benvenuto $username nella pagina riservata del mio sito!";
}
?>

<!DOCTYPE html>
<html>
<head>
  <title>Accesso a pagina riservata</title>
</head>
<body>
  <h3>Pagina di Accesso</h3>
  
  <?=$msg?>

</body>
</html>