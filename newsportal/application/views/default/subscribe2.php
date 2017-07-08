<?php
error_reporting(0);
// Check if the "Sender's Email" input field is filled out
$email=$_POST['email'];
// Sanitize E-mail Address
$email =filter_var($email, FILTER_SANITIZE_EMAIL);
// Validate E-mail Address
$email= filter_var($email, FILTER_VALIDATE_EMAIL);
if (!$email){
echo "Invalid Sender's Email";
}
else{
require 'mail/PHPMailerAutoload.php';
require 'mail/class.phpmailer.php';
$messagetosent = "Hi There! this is coders-BCNI and you are the valuable member of our group. <br> Successfully Subscribed to our newsletter,</br> Keep visiting:- http://coders.uphero.com, Thankyou for supporting us. -Team_Coders";
 
$mail = new PHPMailer;
//$mail->SMTPDebug = 3;                               // Enable verbose debug output
 
$mail->isSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'codersheadquarter@gmail.com';                 // SMTP username
$mail->Password = 'codersHQ733134';                           // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
$mail->Port = 587;                                    // TCP port to connect to
 
$mail->setFrom('Codersheadquarter@gmail.com', 'CODERS HeadQuarter');
$mail->addAddress($email);     
$mail->addReplyTo('Codersheadquarter@gmail.com', 'Reply');
$mail->addCC('Codersheadquarter@gmail.com');
 
$mail->isHTML(true);                                 
 
$mail->Subject = 'BeTheChangeForANewIndia';
$mail->Body    = $messagetosent;
$mail->AltBody = 'you need HTML mail to view this content';
 
if(!$mail->send()) {
  echo 'Message was not sent.';
  echo 'Mailer error: ' . $mail->ErrorInfo;
} else {
  echo '';
}
 
echo "<center><h1>You are Awesome!!</br> Subscribed successfully ! Thank you.</h1></br><h2><font color='red'> Wait for 5 seconds We'll redirect you...</font></h2></center>";
}
 
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="icon.png">
 
	<title> Subscribed </title>
 
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	</head>
<body>
<script>
setTimeout(function () {
   window.location.href= 'http://coders.uphero.com/bcni'; // the redirect goes here
 
},5000);
</script>
</body>
</html>