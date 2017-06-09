<?php
include ('DBConfig.php');

//INCLUDE RSA Library
include ('Crypt/RSA/RSA.php');

//DECLARE AND CREATE OBJECT RSA
$rsa = new Crypt_RSA();
extract($rsa->createKey());

if(isset($_POST['SignUp']))
{
	//GET PRIVATE KEY
	$privatekey_replace_comment1 = str_replace('-----BEGIN RSA PRIVATE KEY-----','',$privatekey);
	$privatekey_replace_comment2 = str_replace('-----END RSA PRIVATE KEY-----','',$privatekey_replace_comment1);
	
	//GET PUBLIC KEY
	$publickey_replace_comment1 = str_replace('-----BEGIN PUBLIC KEY-----','',$publickey);
	$publickey_replace_comment2 = str_replace('-----END PUBLIC KEY-----','',$publickey_replace_comment1);
	 
	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = md5($_POST['password']);
	
	//ENCRYPT PRIVATE AND PUBLIC USING DES
	$publickey = trim($publickey_replace_comment2);
	$privatekey = trim($privatekey_replace_comment2);
	
	$sql = "INSERT INTO users (username, email, password, publickey, privatekey) VALUES ('$username', '$email', '$password', '$publickey','$privatekey')";
	$data = mysqli_query($link, $sql);
	if($data)
	{
		header("location:../login.php");
	}
	else
	{
		echo "<script>alert(' Ada kesalahan pada register !');history.go(-1);</script>";
	}
	
}elseif (isset($_POST['SignIn'])) 
{
	session_start();

	$email = $_POST['email'];
	$password = md5($_POST['password']);


	$sqlLogin = "SELECT * FROM users WHERE email='$email' AND password='$password'";
	$queryLogin = mysqli_query($link, $sqlLogin);
	$numLogin = mysqli_num_rows($queryLogin);
	$row = mysqli_fetch_array($queryLogin);
	// echo $sqlLogin;
	// exit();
	if($numLogin == 0 && $password!=$row['password'])
	{
		echo "<script>alert(' email dan password tidak sesuai !');history.go(-1);</script>";
	}
	else
	{
		$_SESSION['username']= $row['username'];
		$_SESSION['email']= $row['email'];
		header("location:../index.php");
	}
	mysqli_close($link);

}elseif ('#logout')
{
	session_start();
	session_destroy();
	header("location:../login.php");
}

?>