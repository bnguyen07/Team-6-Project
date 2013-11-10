<?php

$dbuser = "root";
$dbname = "vaccinations";

mysql_connect("localhost", $dbuser) or die ("Error connecting to mysql");
mysql_select_db($dbname);

$patient_id = $_GET["patient_id"];
$first_name = $_GET["first_name"];
$last_name = $_GET["last_name"];
$middle_name = $_GET["middle_name"];
$birthdate = $_GET["birthdate"];
$gender = $_GET["gender"];	
$mothers_name = $_GET["mothers_name"];
$mothers_maiden_name = $_GET["mothers_maiden_name"];	
$fathers_name = $_GET["fathers_name"];
$POB_street_number = $_GET["POB_street_number"];
$POB_street_name = $_GET["POB_street_name"];
$POB_city = $_GET["POB_city"];
$POB_state = $_GET["POB_state"];
$POB_zipcode = $_GET["POB_zipcode"];
$current_street_number = $_GET["current_street_number"];
$current_street_name = $_GET["current_street_name"];
$current_city = $_GET["current_city"];
$current_state = $_GET["current_state"];
$current_zipcode = $_GET["current_zipcode"];

$query = "UPDATE patient SET patient_id = $patient_id,
						first_name = $first_name,
						last_name = $last_name,
						middle_name = $middle_name,
						birthdate = $birthdate,
						gender = $gender,	
						mothers_name = $mothers_name,					
						mothers_maiden_name = $mothers_maiden_name,										
						fathers_name = $fathers_name,
						POB_street_number = $POB_street_number,
						POB_street_name = $POB_street_name,
						POB_city = $POB_city,
						POB_state = $POB_state,
						POB_zipcode = $POB_zipcode,
						current_street_number = $current_street_number,
						current_street_name = $current_street_name,
						current_city = $current_city,
						current_state = $current_state,
						current_zipcode = $current_zipcode
		WHERE patient_id = $patient_id";

mysql_query($query) or die(mysql_error());

$result = mysql_affected_rows();

if( $result ) {
	echo "The patient's informations has been updated successfully.";
} else {
	$errorMessage = "Cannot update patient's information. Please contact administration.";
	die ($errorMessage);
}

mysql_close();


?>

