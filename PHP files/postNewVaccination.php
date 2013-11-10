<?php

$username = "root";

$database = "vaccinations";

mysql_connect("localhost", $username);

@mysql_select_db($database) or die ("Unable to find database");

$vaccination_id = $_GET["vaccination_id"];

$vaccine_id = $_GET["vaccine_id"];

$date_taken = $_GET["date_taken"];

$return_date = $_GET["return_date"];

$physician_id = $_GET["physician_id"];

$patient_id = $_GET["patient_id"];


$query = "INSERT INTO vaccination VALUES ('$vaccination_id', '$vaccine_id', '$date_taken', '$return_date', '$physician_id', '$patient_id')";

mysql_query($query) or die (mysql_error("error"));

mysql_close();


?>

