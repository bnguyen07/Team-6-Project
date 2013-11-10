<?php

$username = "root";
$database = "vaccinations";


mysql_connect("localhost", $username);

@mysql_select_db($database) or die("Error");

// $patient_id = $_GET["patient_id"];
//$patient_id = "0010123";

$query = "SELECT * FROM vaccine";

$result = mysql_query($query) or die(mysql_error());

$num = mysql_numrows($result);

mysql_close();

$rows = array();

while ($r = mysql_fetch_assoc($result)) {
	$rows[] = $r;
}

echo json_encode($rows);

?>