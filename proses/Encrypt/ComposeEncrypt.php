<?php
function encryptMessage(){
	include('../DBConfig.php');
	include('../Crypt/DES/DES.php');
	include('../Crypt/RSA/RSA.php');
	
	$rsa = new Crypt_RSA();
	$des = new Crypt_DES();
	
	$des->setKey('mailcrypt');
   
	$plaintext = $_POST['message'];
	$messageTo = $_POST['to'];
	
	$query = "SELECT * FROM users WHERE email = '$messageTo'";
	$result = mysqli_query($link, $query);
	$row = mysqli_fetch_assoc($result);
	
	$ciphertextDES = base64_encode($des->encrypt($plaintext));
	$pubKey = $row['publickey'];
	$rsa->loadKey($pubKey);
	$ciphertextRSA = $rsa->encrypt($ciphertextDES);
	
	print base64_encode($ciphertextRSA);
}

//CALL FUNCTION
encryptMessage();
?>