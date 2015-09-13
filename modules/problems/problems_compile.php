<!DOCTYPE html>
<html>
<body>

<?php

    $host = "localhost"; // Host name
    $username = "govalley2015"; // Mysql username
    $password = "govalley2015"; // Mysql password
    $db_name = "govalley"; // Database name
    $tb_name = "problems"; // Table name

    // Connect to server and select databse.
    $link = mysql_connect("$host", "$username", "$password") or die ("cannot connect");
    $db = mysql_select_db("$db_name", $link) or die ("cannot select DB");

    // Collect the problem names sent from user
    if(isset($_GET['link_compile']))
    {
  		$problem_name = $_GET['link_compile'];
  	}

	// Get the corresponding description of the problem
	$query = mysql_query("SELECT description FROM $tb_name WHERE name='$problem_name'");

	if (!$query) 
	{
		echo "The description of $problem_name doesn't exist" . mysql_error();
		exit();
	}

	// Fetch data
	$row = mysql_fetch_array($query, MYSQL_ASSOC);
	$problem_description = $row["description"];  

	// Layout of problem description 
	echo "$problem_name Description: <br>";
	echo "$problem_description";

?>

</body>
</html>