<?php

$username = "root";

$database = "vaccinations";

mysql_connect("localhost", $username);

@mysql_select_db($database) or die ("Unable to find database");

$user_id = $_GET["user_id"];

$password = $_GET["password"];

$email = $_GET["email"];

$query = "INSERT INTO user VALUES ('$user_id', '$password', '$email', 1)";

$result = mysql_query($query); //Result is Boolean type.

if( $result ) {
	echo "The username " . json_encode($user_id) . " has been created Successfully! \n";	
} else {
	$errorMessage = "The username you selected has been used. Please select another username.";
	die ($errorMessage);
}

mysql_close();


?>

