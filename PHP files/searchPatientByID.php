<?php

$dbuser = "root" ;
$dbname = "vaccinations";

mysql_connect("localhost", $dbuser) or die ("Error connecting to mysql");
mysql_select_db($dbname);

$patient_id = $_GET["patient_id"];

$query = "SELECT * FROM patient WHERE patient_id = '$patient_id'";

$result = mysql_query($query) or die(mysql_error());

if( $result ) {
	
	$rows = array();

	while ($r = mysql_fetch_assoc($result)) {
		$rows[] = $r;
	}

	echo json_encode($rows);
	
} else {
	$errorMessage = "The patient ID does exist. Please re-scan the barcode.";
	die ($errorMessage);
}

mysql_close();



?>