<?php
include "DBConfig.php";

if(isset($_POST['SignUp']))
{
	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = md5($_POST['password']);

	$sql = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$password')";
	$data = mysqli_query($link, $sql);
	// echo $sql;
	// exit();
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