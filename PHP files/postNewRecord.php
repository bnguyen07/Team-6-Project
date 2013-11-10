<?php

$username = "root";

$database = "vaccinations";

mysql_connect("localhost", $username);

@mysql_select_db($database) or die ("Unable to find database");

$patient_id = $_GET["patient_id"];

$first_name = $_GET["first_name"];

$last_name = $_GET["last_name"];

$middle_name = $_GET["middle_name"];

// $birthdate = $_GET["birthdate"];

$gender = $_GET["gender"];

$mothers_name = $_GET["mothers_name"];

$fathers_name = $_GET["fathers_name"];

$birth_street_number = $_GET["birth_street_number"];

$birth_street_name = $_GET["birth_street_name"];

$birth_city = $_GET["birth_city"];

$birth_state = $_GET["birth_state"];

$birth_zipcode = $_GET["birth_zipcode"];

$current_street_number = $_GET["current_street_number"];

$current_street_name = $_GET["current_street_name"];

$current_city = $_GET["current_city"];

$current_state = $_GET["current_state"];

$current_zipcode = $_GET["current_zipcode"];

$query = "INSERT INTO patient VALUES ('$patient_id', '$first_name', '$last_name', '$middle_name', 
		'$birthdate', '$gender', '$mothers_name', '$fathers_name', '$birth_street_number', 
		'$birth_street_name', '$birth_city', '$birth_state', '$birth_zipcode', '$current_street_number', 
		'$current_street_name', '$current_city', '$current_state', '$current_zipcode')";

mysql_query($query) or die (mysql_error("error"));

mysql_close();


?>

