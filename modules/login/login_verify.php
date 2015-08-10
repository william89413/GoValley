<!DOCTYPE html>
<html>
<body>

<?php

	$host = "localhost"; // Host name 
	$username = ""; // Mysql username 
	$password = ""; // Mysql password 
	$db_name = "govalley"; // Database name 
	$tbl_name = "users"; // Table name 
	$session_username = 1; // Set value for username session
	$session_password = 2; // Set value for password seession

	// Connect to server and select databse.
	$link = mysql_connect("$host", "$username", "$password") or die ("cannot connect"); 
	$db = mysql_select_db("$db_name", $link) or die ("cannot select DB");

	// username and password sent from form 
	$myUsername = $_POST['myUsername']; 
	$myPassword = $_POST['myPassword']; 

	// To protect MySQL injection (more detail about MySQL injection)
	$myUsername = stripslashes($myUsername);
	$myPassword = stripslashes($myPassword);
	$myUsername = mysql_real_escape_string($myUsername);
	$myPassword = mysql_real_escape_string($myPassword);
	$sql = "SELECT * FROM $tbl_name WHERE username='$myUsername' and password='$myPassword'";
	$result = mysql_query($sql);

	// Mysql_num_row is counting table row
	$count = mysql_num_rows($result);

	// If result matched $myUsername and $myPassword, table row must be 1 row
	if($count == 1)
	{
		// Register $myUsername, $myPassword and redirect to file "login_success.php"
		session_start();
		$_SESSION["myUsername"] = $session_username;
		$_SESSION["myPassword"] = $session_password; 
		header("Location: login_success.php");
	}

	else 
	{
		echo "Wrong Username or Password";
	}

?>

</body>
</html>