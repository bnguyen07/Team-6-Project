<?php

$username = "root";

$database = "vaccinations";

mysql_connect("localhost", $username);

@mysql_select_db($database) or die ("Unable to find database");

$user_id = $_GET["user_id"];

$password = $_GET["password"];

$new_password = $_GET["new_password"];

$query = "UPDATE user SET password='$new_password' WHERE user_id='$user_id' AND password='$password'";


$result = mysql_query($query); //Result is Boolean type.

if( $result ) {
	echo "Your password has been updated successfully to " . json_encode($new_password);	
} else {
	$errorMessage = "Cannot update your password! Please check your imputs.";
	die ($errorMessage);
}

mysql_close();


?>

