<?php

$dbuser = "root" ;
$dbname = "vaccinations";

mysql_connect("localhost", $dbuser) or die ("Error connecting to mysql");
mysql_select_db($dbname);

$first_name = $_GET["first_name"];

$last_name= $_GET["last_name"];

$mother_maiden_name = $_GET["mothers_maiden_name"];


$query = "SELECT * FROM patient WHERE first_name = '$first_name' AND last_name = '$last_name' AND mothers_maiden_name = '$mother_maiden_name'";

$result = mysql_query($query) or die(mysql_error());

if( $result ) {
	
	$rows = array();

	while ($r = mysql_fetch_assoc($result)) {
		$rows[] = $r;
	}

	echo json_encode($rows);
	
} else {
	$errorMessage = "The username you selected has been used. Please select another username.";
	die ($errorMessage);
}

mysql_close();



?>