<!DOCTYPE html>
<html>
<body>

<?php

    $host = "localhost"; // Host name 
    $username = "govalley2015"; // Mysql username 
    $password = "govalley2015"; // Mysql password 
    $db_name = "govalley"; // Database name 
    $tbl_name = "users"; // Table name 

    // Connect to server and select databse.
    $link = mysql_connect("$host", "$username", "$password") or die ("cannot connect"); 
    $db = mysql_select_db("$db_name", $link) or die ("cannot select DB");

    // List all column items
    $myUsername = $_POST['myUsername'];  
    $myEmail = $_POST['email']; 
    $myConfirmEmail = $_POST['confirmEmail']; 
    $myPassword = $_POST['myPassword'];
    $myConfirmPw = $_POST['confirmPassword'];
    $myMajor = $_POST['major'];
    $myProfession = $_POST['profession'];
    $myCompany = $_POST['company'];
    $infoSource = $_POST['infoSource'];

    // Validate email
    $query = "select email from users where email = '$myEmail'";
    $link = mysql_query($query);

    if (!$link) 
    {
        die('can not access database');
    }

    $num = mysql_num_rows($link);

    if ($num > 0)
    {
        //email already taken
        header("Location: signup_emailexisting.php");
    }
    
    // Match email and password with confirmed ones
    if ($myEmail != $myConfirmEmail)
    {
        header("Location: signup_emailwarning.php");
    }

    if ($myPassword != $myConfirmPw)
    {
        header("Location: signup_passwordwarning.php");
    }

    // Insert data to database
    $sql = "INSERT INTO users (`username`, `password`, `email`, `major`, `profession`, `company`, `info_source`, `salt`) 
            VALUES ('$myUsername', '$myPassword', '$myEmail', '$myMajor', '$myProfession', '$myCompany', '$infoSource', 'abcdefg')";

    $link = mysql_query($sql);

    if (!$link) 
    {
        die('can not access db to insert data');
    }
    
    // Email verification proc
    include '..//emailverification//smtp_config.php';

    // Create link url
    $url = 'http://www.govalley.com/';
    $activation = md5($myEmail.time()); // encrypted email+timestamp
    $fromAddr = "kobe06410@gmail.com";
    $emailSubject = "govalley email verification";
    $emailBody = 'Hi, <br/> <br/> Thank you for being our valuable members. 
                 Please verify your email and get started using your GoValley account. 
                 <br/> <br/> <a href="'.$url.'email_activation/'.$activation.'">'.$url.'activation/'.$activation.'</a>';

    if (smtpmailer($myEmail, $fromAddr, $fromAddr, $emailSubject, $emailBody))
    {
        echo "Verification email was sent successfully";
    }

    else
    {
        echo "Verification email was not able to be sent";
    }

?>

</body>
</html>