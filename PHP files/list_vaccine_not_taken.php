<?php

$dbuser = "root";
$dbname = "vaccinations";

mysql_connect("localhost", $dbuser) or die ("Error connecting to mysql");
mysql_select_db($dbname);


$patient_id = $_GET["patient_id"];

$query = "SELECT v.vaccine_id, v.vaccine_name FROM vaccine v WHERE v.vaccine_id NOT IN (SELECT p.vaccine_id FROM vaccination p WHERE p.patient_id = '$patient_id')";


$result = mysql_query($query) or die(mysql_error());

$num = mysql_num_rows($result);

mysql_close();

$rows = array();

while ($r = mysql_fetch_assoc($result)) {
	$rows[] = $r;
}


echo json_encode($rows);

?>


