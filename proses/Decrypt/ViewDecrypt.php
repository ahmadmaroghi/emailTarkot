<?php
function decryptMessage(){
	session_start();
	$passuser = md5($_POST['pass']);
	if($_POST['flag'] == '1'){
		$mail = $_SESSION['email'];
	}else{
		$mail = $_POST['to'];
	}

	include('../DBConfig.php');
	include('../Crypt/DES/DES.php');
	include('../Crypt/RSA/RSA.php');
	
	$rsa = new Crypt_RSA();
	$des = new Crypt_DES();
	
	$id = $_POST['id'];
	$query = "SELECT * FROM users WHERE email = '$mail' AND password='$passuser'";
	$queryMessage = "SELECT * FROM mail WHERE mail_id='$id'";
	
	$result = mysqli_query($link, $query);
	$resultMessage = mysqli_query($link, $queryMessage);
	
	$row = mysqli_fetch_assoc($result);
	$rowMessage = mysqli_fetch_assoc($resultMessage);
	
	$privKey = $row['privatekey'];
	$rsa->loadKey($privKey);
	$chipertextDecryptRSA = $rsa->decrypt(base64_decode($rowMessage['mail_message']));
	$des->setKey('mailcrypt');
	$chipertextDecryptDES = $des->decrypt(base64_decode($chipertextDecryptRSA));
	print $chipertextDecryptDES;
}

//CALL FUNCTION
decryptMessage();
?>