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
    	  <h2>Sent</h2>
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
    	 	<div class="compose-block">
    	 		<a href="inbox-details.php">Compose</a>
    	 	</div>
    	 	<div class="compose-bottom">
    	 		  <nav class="nav-sidebar">
					<ul class="nav tabs">
			          <li class="active"><a href="inbox.php"><i class="fa fa-inbox"></i>Inbox</a></li>
			          <li class=""><a href="sent.php"><i class="fa fa-envelope-o"></i>Sent</a></li>                            
					</ul>
				</nav>
    	 	</div>
    	 </div>
    	 <div class="col-md-8 mailbox-content  tab-content tab-content-in">
    	 	<div class="tab-pane active text-style" id="tab1">
	    	 	<div class="mailbox-border">
	               <div class="mail-toolbar clearfix">
				     <div class="float-left">
				        <a href="inbox.php" class="btn btn_1 btn-default mrg5R">
				           <i class="fa fa-refresh"> </i>
				        </a>
				        <div class="btn btn_1 btn-default mrg5R">
				           <i class="fa fa-trash"> </i>
				        </div>
				        <div class="clearfix"> </div>
				    </div>
	               </div>
	                <table class="table tab-border">
	                    <tbody>
	                <?php
	                	$query = "SELECT * FROM mail WHERE flag in('1','2') AND username='$e' ORDER BY mail_id DESC";
	                	$row = mysqli_query($link, $query);
	                	//echo $query;
	                	//die();
	                	while($sql = mysqli_fetch_object($row)){


	                ?>
	                        <tr class="unread checked">
	                            <td class="hidden-xs">
	                                <input type="checkbox" class="checkbox">
	                            </td>
	                            <td class="hidden-xs">
	                                <i class="fa fa-star icon-state-warning"> </i>
	                            </td>
	                            <td class="hidden-xs">
	                            	<a href="sent-details.php?id=<?php echo $sql -> mail_id; ?>&&mail_to=<?php echo $sql-> mail_to ?>">
	                                <?php echo $sql -> mail_to; ?>
	                                </a>
	                            </td>
	                            <td>
	                                <?php echo $sql -> mail_subject; ?>
	                            </td>
	                            <?php 
	                            	if (empty($sql -> mail_attachment)) 
	                            	{
	                            		echo "<td></td>";
	                            	}else{
	                            		echo "<td><i class='fa fa-paperclip'></i></td>";
	                            	}
	                            ?>
	                            <td>
	                                <?php echo substr($sql -> mail_date, 0 ,10 ); ?>
	                            </td>
	                        </tr>
	                <?php
	            	}
	            	?>
	                    </tbody>
	                </table>
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