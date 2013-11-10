<?php

$dbuser = "root";
$dbname = "vaccinations";

mysql_connect("localhost", $dbuser) or die ("Error connecting to mysql");
mysql_select_db($dbname);

$user_id = $_GET["user_id"];

$password = $_GET["password"];

$query = "SELECT user_id, user_type, password FROM user WHERE user_id = $user_id AND password = $password";

$result = mysql_query($query) or die(mysql_error());

$output = "";

while ($row = mysql_fetch_assoc($result)){
	
	//If the user_type is 1 => Patient
	if($row["user_type"] == 1){
		$patient_query = "SELECT * FROM patient WHERE user_id = $user_id";
		
		$patient = mysql_query($patient_query);

		$patient_rows = array();

		while ($patient_r = mysql_fetch_assoc($patient)) {
			$patient_rows[] = $patient_r;
		}
		
		$patient_rows[] = $row;
		$output =  json_encode($patient_rows);
		
		//If the user_type is 0 => Physician
	} else {
		
		$physician_query = "SELECT * FROM physician WHERE user_id = $user_id";
		
		$physician = mysql_query($physician_query);

		$physician_rows = array();

		while ($physician_r = mysql_fetch_assoc($physician)) {
			$physician_rows[] = $physician_r;
		}
		$physician_rows[] = $row;
		$output =  json_encode($physician_rows);
	}
}

mysql_close();

echo $output;
$output;

?>