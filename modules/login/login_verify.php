<!DOCTYPE html>
<html>
<body>

<?php

    $host = "localhost"; // Host name
    $username = "govalley2015"; // Mysql username
    $password = "govalley2015"; // Mysql password
    $db_name = "govalley"; // Database name
    $tbl_name = "users"; // Table name
    $session_username = 1; // Set value for username session
    $session_password = 2; // Set value for password seession

    // Connect to server and select databse.
    $link = mysql_connect("$host", "$username", "$password") or die ("cannot connect");
    $db = mysql_select_db("$db_name", $link) or die ("cannot select DB");

    // username and password sent from form
    $myEmail = $_POST['myEmail'];
    $myPassword = $_POST['myPassword'];

    // To protect MySQL injection (more detail about MySQL injection)
    $myEmail = stripslashes($myEmail);
    $myPassword = stripslashes($myPassword);
    $myEmail = mysql_real_escape_string($myEmail);
    $myPassword = mysql_real_escape_string($myPassword);
    $sql = "SELECT * FROM $tbl_name WHERE email='$myEmail' and password='$myPassword'";
    $result = mysql_query($sql);

    // Mysql_num_row is counting table row
    $count = mysql_num_rows($result);

    // If result matched $myEmail and $myPassword, table row must be 1 row
    if($count == 1)
    {
        // Register $myEmail, $myPassword and redirect to file "problems_layout.php"
        session_start();
        $_SESSION["myEmail"] = $session_username;
        $_SESSION["myPassword"] = $session_password;
        header("Location: /GoValley//modules//problems//problems_layout.php");
    }

    else
    {
        echo "Wrong Username or Password";
    }

?>

</body>
</html>