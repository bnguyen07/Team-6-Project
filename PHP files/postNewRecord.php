<?php

$username = "root";

$database = "vaccinations";

mysql_connect("localhost", $username);

@mysql_select_db($database) or die ("Unable to find database");

$patient_id = $_GET["patient_id"];

$first_name = $_GET["first_name"];

$last_name = $_GET["last_name"];

$middle_name = $_GET["middle_name"];

$birthdate = $_GET["birthdate"];

$gender = $_GET["gender"];

$mothers_name = $_GET["mothers_name"];

$mothers_maiden_name = $_GET["mothers_maiden_name"];

$fathers_name = $_GET["fathers_name"];

$birth_street_number = $_GET["POB_street_number"];

$birth_street_name = $_GET["POB_street_name"];

$birth_city = $_GET["POB_city"];

$birth_state = $_GET["POB_state"];

$birth_zipcode = $_GET["POB_zipcode"];

$birth_country = "USA";

$current_street_number = $_GET["current_street_number"];

$current_street_name = $_GET["current_street_name"];

$current_city = $_GET["current_city"];

$current_state = $_GET["current_state"];

$current_zipcode = $_GET["current_zipcode"];

$current_country = "USA";

$user_id= $_GET["user_id"];

$query = "INSERT INTO patient VALUES ('$patient_id', '$first_name', '$last_name', '$middle_name', 
		'$birthdate', '$gender', '$mothers_name', '$mothers_maiden_name','$fathers_name', '$birth_street_number', 
		'$birth_street_name', '$birth_city', '$birth_state', '$birth_zipcode', '$birth_country', '$current_street_number', 
		'$current_street_name', '$current_city', '$current_state', '$current_zipcode', '$current_country', '$user_id')";

$result = mysql_query($query); //Result is Boolean type.
echo "Result is: " . $result;

if( $result ) {
	echo "The new patient " . json_encode($patient_id) . " has been created Successfully! \n";	
} else {
	$errorMessage = "Cannot create new patient record. Please check your connection or firewall.";
	die ($errorMessage);
}


mysql_close();

?>

