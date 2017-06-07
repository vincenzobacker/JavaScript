<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>
        Registratie!
    </title>
</head>
<body>
<?php
// registreren klant 2.php
// voert een nieuwe klant in de tabel klanten in
// anjo eijeriks 2017/03/13 versie 0.1

// uitlezen formulier
//$klantid	= $_POST["klantid"];	weggehaald ivm autoincrement
$klantnaam 	= $_POST["klantnaam"];
$klantadres = $_POST["klantadres"];
$klantpostc = $_POST["klantpostc"];
$klantemail = $_POST["klantemail"];
$klanttel 	= $_POST["klanttel"];

// maak verbinding met webshop2017
include '../includes/dbConnect.php';

// voeg de gegevens toe aan de tabel klanten
$sql = "INSERT INTO klanten 
							(klantnaam, klantadres, klantpostc, 
							 klantemail, klanttel) 
					
					VALUES ( '$klantnaam', '$klantadres', '$klantpostc', 
							'$klantemail', '$klanttel'
						   )";

// controleer of het toevoegen gelukt is
$results = $dbh -> exec($sql);
echo 'resultaat: '.$results .' record toegevoegd. <br />';
?>
</body>
</html>
