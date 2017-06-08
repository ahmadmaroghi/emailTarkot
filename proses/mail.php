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
    // $extension = end(explode(".", $_FILES["attachment"]["name"]));
    $file_name = $_FILES["attachment"]["name"];
	$tmp_file = $_FILES['attachment']['tmp_name'];
	$path = "../upload/".$file_name;
	$to = $_POST['to'];
	$subject = $_POST['subject'];
	$message = $_POST['message'];
	$attachment = $_POST['attachment'];

	$sql = "INSERT INTO mail (username, mail_to, mail_subject, mail_message, mail_attachment) VALUES ('$e', '$to', '$subject', '$message', '$file_name')";
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