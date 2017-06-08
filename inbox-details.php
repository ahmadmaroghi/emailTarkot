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
include "proses/DBConfig.php";
include "header.php"; 
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
							Compose New Message 
						</div>
						<div class="inbox-details-body">
							<form class="com-mail" action="proses/mail.php" method="POST" enctype="multipart/form-data">
								<input type="text" name="to" value="To :" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'To';}">
								<input type="text" name="subject" value="Subject :" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}">
								
								<textarea rows="6" name="message" value="Message :" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message </textarea>
								<div class="form-group">
									<div class="btn btn-default btn-file">
										<i class="fa fa-paperclip"> </i> Attachment
										<input type="file" name="attachment">
									</div>
								</div>
                                <button class="btn btn-primary" name="submit">Send Message</button>
							</form>
                            <br />
                            <button class="btn btn-primary" name="encrypt">Encrypt Message</button>

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