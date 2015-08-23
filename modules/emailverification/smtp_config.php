<!DOCTYPE html>
<html>
<body>

<?php
    // Config SMTP
    define('Sender', 'kobe06410@gmail.com'); // Gmail username
    define('SenderPW', 'Lx62618960'); // Gmail password

    function smtpmailer($to_addr, $from_addr, $from_name, $subject, $body) 
    { 
        require 'PHPMailer/class.phpmailer.php';
        global $error;
        $mail = new PHPMailer();  // Create a new object
        $mail->IsSMTP(); // Enable SMTP
        $mail->IsHTML(true);
        $mail->SMTPDebug = 0;  // Debugging: 1 = errors and messages, 2 = messages only
        $mail->SMTPAuth = true;  // Authentication enabled
        $mail->SMTPSecure = 'ssl'; // Secure transfer enabled REQUIRED for GMail
        $mail->Host = 'smtp.gmail.com';
        $mail->Port = 465; 
        $mail->Username = Sender;  
        $mail->Password = SenderPW;    
        $mail->SetFrom($from_addr, $from_name);
        $mail->Subject = $subject;
        $mail->Body = $body;
        $mail->AddAddress($to_addr);

        if(!$mail->Send()) 
        {
            $error = 'Mail error: '.$mail->ErrorInfo; 
            return false;
        } 
        
        else 
        {
            $error = 'Message sent!';
            return true;
        }
    }
?>

</body>
</html>