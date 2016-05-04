<?php

session_start();
	if(!isset($_SESSION["log"]))
	{
		header("location:accueil.php");
	}
		

$_SESSION['log'];
$sport=$_POST["sport"];

@mysql_connect("localhost", "root","");
		mysql_select_db("SOS");
?>
		

<html>
<head> <meta charset="UTF-8" /></head>
<body>
<center>
<table>	
<th> Nom </th><th> Prénom </th><th> Date de Naissance </th><th> Sexe </th><th> Courriel </th>
						<th> Ville </th><th> Code Postal </th><th> Telephone </th><th> Sport </th><th> Niveau Sportif </th>
						<th> Description </th><th> Disponible </th><th> Horaires </th></tr>	 
<?php

$req="select * from utilisateurs where Sport='$sport'";	
$res=mysql_query($req);	
$ligne=mysql_fetch_assoc($res);


while($ligne){



	echo "<tr bgcolor='silver'>
			<td>".$ligne["Nom"]."</td>
			<td>".$ligne["Prenom"]."</td>
			<td>".$ligne["Date_de_naissance"]."</td>
			<td>".$ligne["Sexe"]."</td>
			<td>".$ligne["Courriel"]."</td>
			<td>".$ligne["Ville"]."</td>
			<td>".$ligne["Code_postal"]."</td>
			<td>".$ligne["Telephone"]."</td>
			<td>".$ligne["Sport"]."</td>
			<td>".$ligne["Niveau_sportif"]."</td>
			<td>".$ligne["Description"]."</td>
			<td>".$ligne["Disponible"]."</td>
			<td>".$ligne["Horaires"]."</td></tr>";
			$ligne=mysql_fetch_assoc($res);
}
	?>	
</table>
</body>	