<?php session_start();
	if(!isset($_SESSION["log"]))
	{
		header("location:login.php");
	}
?>

<html>
<head><meta charset="UTF-8"/>
</head>
<body>
<center>
<h1> Recherche Partenaire </h1>
<form action="resultat.php" method="post">


Sport : 

    <select name="sport">
				<option value="Football">Football</option>
				<option value="Basket">Basket</option>
				<option value="Tennis">Tennis</option>
				<option value="Handball">Handball</option>
		</select><br /><br />

	
<br /><br />

<input type="submit" value="Envoyer" />

</form>
</center>
</body>
</html>