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
    	  <h2>Compose</h2>
    	 <div class="col-md-4 compose">         
            <div class="mail-profile">
                <div class="mail-pic">
                <img src="images/user.png" alt="" width="70px" height="70px">
                </div>
                <div class="mailer-name">           
                        <h5><a href="#"><?php echo $s; ?></a></h5>                      
                         <h6><?php echo $e; ?></h6>  
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="compose-bottom">
                <ul>
                    <li><a class="hilate" href="inbox.php"><i class="fa fa-inbox"> </i>Inbox</a></li>
                    <li><a href="sent.php"><i class="fa fa-envelope-o"> </i>Sent</a></li>
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
                                
								<input type="text" name="to" id="to" placeholder="To :">
								<input type="text" name="subject" placeholder="Subject :">
								<textarea rows="6" name="message" id="message" placeholder="Message"></textarea>
								<textarea rows="6" name="MessageEncrypt" id="MessageEncrypt" placeholder="Message Encrypted" ></textarea>
								<div class="form-group">
									<div class="btn btn-default btn-file">
										<i class="fa fa-paperclip"> </i> Attachment
										<input type="file" name="attachment">
									</div>
								</div>
                                <button class="btn btn-primary" name="sent">Send Message</button>
							</form>
                            <br />
                            <button class="btn btn-primary" id="btnEncrypt" name="encrypt">Encrypt Message</button>

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
	$(document).ready(function(){
		$("#btnEncrypt").click(function(){
			var message = $("#message").val();
			var to = $("#to").val();
			$.ajax({
				type: "POST",
                url: 'proses/Encrypt/ComposeEncrypt.php',
                data: {
						message: message,
						to: to
				},
                success: function(res)
                {
                    $("#MessageEncrypt").val(res);
                }
                });
		});
	});
</script>