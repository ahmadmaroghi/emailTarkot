<?php 
session_start();
if(empty($_SESSION['username'] && $_SESSION['email']))
{
	header("location: login.php");
}
else
{
$s = $_SESSION['username'];
$e = $_SESSION['email'];
include "DBConfig.php";

	if(isset($_POST['sent']))
	{
		if($_POST['MessageEncrypt'] == ''){
			$message = $_POST['message'];
		}else{
			$message = $_POST['MessageEncrypt'];
		}

	    $file_name = $_FILES["attachment"]["name"];
		$tmp_file = $_FILES['attachment']['tmp_name'];
		$path = "../upload/".$file_name;
		$to = $_POST['to'];
		$subject = $_POST['subject'];
		
		$attachment = $_POST['attachment'];

		$sql = "INSERT INTO mail (username, mail_to, mail_subject, mail_message, mail_attachment, flag) VALUES ('$e', '$to', '$subject', '$message', '$file_name', '2')";
	    $query =mysqli_query($link, $sql);
		//echo $sql;
		//die();
		if ($file_name != '') {
			move_uploaded_file($tmp_file, $path);
		}
	        header('location:../inbox.php');  
	}elseif (isset($_POST['reply'])) 
	{
		if($_POST['MessageEncrypt'] == ''){
			$message = $_POST['message'];
		}else{
			$message = $_POST['MessageEncrypt'];
		}

	    $file_name = $_FILES["attachment"]["name"];
		$tmp_file = $_FILES['attachment']['tmp_name'];
		$path = "../upload/".$file_name;
		$to = $_POST['to'];
		$subject = $_POST['subject'];
		
		$attachment = $_POST['attachment'];

		$sql = "INSERT INTO mail (username, mail_to, mail_subject, mail_message, mail_attachment, flag) VALUES ('$e', '$to', '$subject', '$message', '$file_name', '1')";
	    $query =mysqli_query($link, $sql);
		//echo $sql;
		//die();
		if ($file_name != '') {
			move_uploaded_file($tmp_file, $path);
		}
	        header('location:../inbox.php');
	}    
}
?>