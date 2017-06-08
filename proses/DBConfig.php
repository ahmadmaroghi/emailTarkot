<?php
error_reporting(0);
$host = "localhost";
$user = "root";
$pass = "";
$db = "email";

$link = mysqli_connect($host,$user,$pass,$db)or die(mysqli_error());