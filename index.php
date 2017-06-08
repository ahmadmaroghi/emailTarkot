<?php 
session_start();
if(empty($_SESSION['email']))
{
	header("location: login.php");
}
else
{
$s = $_SESSION['email'];
include "proses/DBConfig.php";
include "header.php"; 
?>
<!--inner block start here-->
<div class="inner-block">
    <div class="blank">
    	<h2>PT. Aneka Warna Semesta</h2>
    	<div class="blankpage-main">
    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>
    	</div>
    </div>
</div>
<!--inner block end here-->
<?php 
include "footer.php"; 
}
?>