<?php

$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'cosc';

//$user=$_GET("user_id");
$user = "lee";
$conn = mysql_connect($dbhost, $dbuser, $dbpass) or die ('Error connecting to mysql');
mysql_select_db($dbname);

$query = "	Select u.user_id, p.patient_id, p.first_name, p.last_name, v.vaccination_id, t.vaccine_name, d.physician_first_name, d.clinic
			from Patient p, Vaccination v, Vaccine t, Physician d, Parent_Child u
			where u.user_id = '$user' AND (u.patient_id = p.patient_id AND (p.patient_id = v.patient_id AND (v.vaccine_id = t.vaccine_id AND 
			(v.physician_id = d.physician_id))));";

$result = mysql_query($query) or die(mysql_error());

$num = mysql_numrows($result);

mysql_close();

$rows = array();

while ($r = mysql_fetch_assoc($result)) {
	$rows[] = $r;
}

echo json_encode($rows);

?>

