<?php

$dbuser = "root";
$dbname = "vaccinations";

mysql_connect("localhost", $dbuser) or die ("Error connecting to mysql");
mysql_select_db($dbname);


$patient_id = $_GET["patient_id"];

$query = "SELECT v.vaccine_id, t.vaccine_name, v.date_taken, d.clinic
		FROM vaccination v, patient p, physician d, vaccine t
		WHERE p.patient_id = '$patient_id' AND v.patient_id = p.patient_id AND v.physician_id = d.physician_id AND t.vaccine_id = v.vaccine_id ";


$result = mysql_query($query) or die(mysql_error());

$num = mysql_num_rows($result);

mysql_close();

$rows = array();

while ($r = mysql_fetch_assoc($result)) {
	$rows[] = $r;
}

echo json_encode($rows);

?>


