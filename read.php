<?php 
include "proses/DBConfig.php";
session_start();
if(empty($_SESSION['username'] && $_SESSION['email']))
{
    header("location: login.php");
}
else
{

$s = $_SESSION['username'];
$e = $_SESSION['email'];
$id = $_GET['id'];
$query = "SELECT * FROM mail WHERE mail_id = '$id'";
$sql = mysqli_query($link, $query);
$row = mysqli_fetch_object($sql);
include "header.php"; 
?>
<!--inner block start here-->
<div class="inner-block">
    <div class="inbox">
    	  <h2>Inbox Details</h2>
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
							Reply Message 

						</div>
						<div class="inbox-details-body">
							<h4><?php echo "From : ".$row -> username; ?></h4>
							<hr />
							<h4><?php echo "Subject : ".$row -> mail_subject; ?></h4>
							<hr />
							<p style="word-wrap: break-word !important" id="messageDecrypt"><?php echo $row -> mail_message; ?></p>
							<hr />
							<button class="btn btn-primary" id="btnDecrypt" data-toggle="modal" data-target="#myModal">Decrypt</button>
							<br />
							<form class="com-mail" action="proses/mail.php" method="POST" enctype="multipart/form-data">
							<input type='hidden' name='id' id="id" class='form-control' value="<?php echo $_GET['id']; ?>"><br>
								<input type="text" name="to" id="to" value="<?php echo $_GET['username']; ?>">
								<input type="hidden" id="inputMessageDecrypt" value="<?php echo $row -> mail_message; ?>" />
								<textarea rows="6" name="message" id="message" placeholder="Message"></textarea>
								<textarea rows="6" name="MessageEncrypt" id="MessageEncrypt" placeholder="Message Encrypt"></textarea>
								<div class="form-group">
									<div class="btn btn-default btn-file">
										<i class="fa fa-paperclip"> </i> Attachment
										<input type="file" name="attachment">
									</div>
										<a href="upload/<?php echo $row -> mail_attachment; ?>"><?php echo $row -> mail_attachment; ?></a>
								</div>
								<button name="reply" class="btn btn-primary">Send Message</button>
							</form>
							<br />
                            <button class="btn btn-primary" id="btnEncrypt" name="encrypt">Encrypt Message</button>
						</div>
					</div>
				</div>
    	
          <div class="clearfix"> </div>  
          <div class="container">
		  <!-- Modal -->
		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-sm">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Input Password</h4>
		        </div>
		        <div class="modal-body">
		            <div class="form-group">
		              <label for="usr">Password:</label>
		              <input type="password" class="form-control" id="password" placeholder="Password">
		            </div>
		        </div>
		        <div class="modal-footer">
		            <button type="button" id="btnGenerate" class="btn btn-primary" data-dismiss="modal">OK</button>
		            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>   
   </div>
</div>

<!--inner block end here-->
<?php 
include "footer.php";
}
?>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btnDecrypt").click(function(){
			var message = $("#message").val();
			var to = $("#to").val();
			var id = $("#id").val();

			$("#btnGenerate").click(function(){
				var pass = $("#password").val();
				if(pass == ''){
					$('#myModal').modal('hide');
				}else{
					$.ajax({
						type: "POST",
	                	url: 'proses/Decrypt/ViewDecrypt.php',
	                	data: {
							message: message,
							id: id,
							to: to,
							pass: pass,
							flag: '1'
						},
	                	success: function(res)
	                	{
	                    	$("#messageDecrypt").text(res);
	                	}
	                });
				}
			});
		});
		
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