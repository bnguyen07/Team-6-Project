<?php

$username = "root";

$database = "vaccinations";

mysql_connect("localhost", $username);

@mysql_select_db($database) or die ("Unable to find database");

$vaccination_id = $_GET["vaccination_id"];

$patient_id = $_GET["patient_id"];

$vaccine_id = $_GET["vaccine_id"];

$physician_id = $_GET["physician_id"];

$date_taken = $_GET["date_taken"];

$date_return = "";


$query = "INSERT INTO vaccination VALUES ('$vaccination_id', '$patient_id', '$vaccine_id', '$physician_id', '$date_taken', '$date_return')";

$result = mysql_query($query); //Result is Boolean type.

if( $result ) {
	echo "The new vaccination " . json_encode($vaccination_id) . " has been created Successfully! \n";	
} else {
	$errorMessage = "Cannot create new vaccination. Please check your connection or firewall.";
	die ($errorMessage);
}


mysql_close();


?>

