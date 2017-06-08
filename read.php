<?php 
include "proses/DBConfig.php";
session_start();
if(empty($_SESSION['username'] && $_SESSION['email']))
{
    header("location: login.php");
}
else
{
include "header.php"; 
$s = $_SESSION['username'];
$e = $_SESSION['email'];
$id = $_GET['id'];
$query = "SELECT * FROM mail WHERE mail_id = '$id'";
$sql = mysqli_query($link, $query);
$row = mysqli_fetch_object($sql);
?>
<!--inner block start here-->
<div class="inner-block">
    <div class="inbox">
    	  <h2>Inbox Details</h2>
    	 <div class="col-md-4 compose">   	 	
    	 	<div class="mail-profile">
    	 		<div class="mail-pic">
    	 			<a href="#"><img src="images/b3.png" alt=""></a>
    	 		</div>
    	 		<div class="mailer-name"> 			
    	 				<h5><a href="#"><?php echo $s; ?></a></h5>  	 				
    	 			     <h6><?php echo $e; ?></h6>  
    	 		</div>
    	 	    <div class="clearfix"> </div>
    	 	</div>
    	 	<div class="compose-bottom">
    	 		<ul>
    	 			<li><a class="hilate" href="#"><i class="fa fa-inbox"> </i>Inbox</a></li>
    	 			<li><a href="#"><i class="fa fa-envelope-o"> </i>Sent Mail</a></li>
    	 			<li><a href="#"><i class="fa fa-trash-o"> </i>Trash</a></li>
    	 		</ul>
    	 	</div>
    	 </div>
	 
    	 	<div class="col-md-8 compose-right">
					<div class="inbox-details-default">
						<div class="inbox-details-heading">
							Reply Message 

						</div>
						<div class="inbox-details-body">
							<h4><?php echo "From : ".$row -> username; ?></h4>
							<br>
							<h4><?php echo $row -> mail_subject; ?></h4>
							<br />
							<p><?php echo $row -> mail_message; ?></p>
							<br />
							<button class="btn btn-primary" onclick="test()">Decrypt</button>
							<br />
							<form class="com-mail" action="proses/mail.php" method="POST" enctype="multipart/form-data">
							<input type='hidden' name='id' class='form-control' value="<?php echo $_GET['id']; ?>"><br>
								<input type="text" name="to" value="<?php echo $_GET['username']; ?>">
								
								<textarea rows="6" name="message" value="Message :" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message </textarea>
								<textarea rows="6" name="encrypt" value="Message :" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message </textarea>
								<div class="form-group">
									<div class="btn btn-default btn-file">
										<i class="fa fa-paperclip"> </i> Attachment
										<input type="file" name="attachment">
									</div>
								</div>
								<input type="submit" name="sent" value="Send Message"> 
							</form>
						</div>
					</div>
				</div>
    	
          <div class="clearfix"> </div>     
   </div>
</div>

<!--inner block end here-->
<?php 
include "footer.php";
}
?>
<script type="text/javascript">
	function test(){
		alert('testt');
		return false;
	}
</script>