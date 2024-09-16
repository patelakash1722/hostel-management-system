<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="../css/stylesheet.css">
		<script language="Javascript" type="text/javascript">    
    
function allowOnlyLetters(e, t)   
{    
   if (window.event)    
   {    
      var charCode = window.event.keyCode;    
   }    
   else if (e)   
   {    
      var charCode = e.which;    
   }    
   else { return true; }    
   if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))    
       return true;    
   else  
   {    
      alert("Please enter only alphabets");    
      return false;    
   }           
}      
</script>
    </head>
    <body>
	<style>
	body{
		background-image:url('64.jpg');
		background-size:cover;
	}
	.aa{
		
		padding: 10px;
              border-radius: 5px;
              border: 2px solid black;
			  background-color:white;
	}	
	

        #upload {
               padding: 10px;
              border-radius: 5px;
              border: 2px solid black;
			  background-color:white;
   }
   h1{
		color:white;
		text-align:center;
		 background-color:black;
   }
   h2{
		color:white;
		text-align:center;
   }
   
#back-button {
  float: left;
  margin-left: 20px;
  margin-top: 20px;
  padding: 5px;
  font-size: 15px;
  background-color: #3498db;
  color: white;
  border-radius: 5px;
}

	</style>

        <center>
            <div id="headerSection">
            <h1>hms</h1>  
            </div>
            <hr>

            <h2>update</h2>
                <div class="panel-body">
<form method="post" action="" name="registration" class="form-horizontal" onSubmit="return valid();">
								
								

<div class="form-group">
<label class="col-sm-2 control-label"> Registration No : </label>
<div class="col-sm-8">
<input type="text" name="regno" id="regno"  class="form-control" required="required" value="<?php echo $row->regno;?>" >
</div>
</div>


<div class="form-group">
<label class="col-sm-2 control-label">roomno : </label>
<div class="col-sm-8">
<input type="text" name="roomno" id="roomno"  class="form-control" value="<?php echo $row->roomno;?>"   required="required" >
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Duration</label>
<div class="col-sm-8">
<select name="duration" id="duration" class="form-control">
<option value="">Select Duration in Month</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Food Status</label>
<div class="col-sm-8">
<input type="radio" value="0" name="foodstatus" checked="checked"> Without Food
<input type="radio" value="1" name="foodstatus"> With Food(Rs 2000.00 Per Month Extra)
</div>
</div>

<?php ?>

						



<div class="col-sm-6 col-sm-offset-4">

<input type="submit" name="update" Value="Update Profile" class="btn btn-primary">
</div>
</form>

									</div>
									</div>
								</div>
							</div>
						</div>
							</div>
						</div>
					</div>
				</div> 	
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script> 
    </body>
</html>


    <?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
	
    $id=$_SESSION['id'];
if(isset($_POST['update']))
{

$regno=$_POST['regno'];
$contectno=$_POST['contectno'];
$roomno=$_POST['roomno'];
$duration=$_POST['duration'];
$foodstatus=$_POST['foodstatus'];

$query="update  user_booking set regno=?,contectno=?,roomno=?,duration=?,foodstatusus=? where id=?";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('iiiiii',$regno,$contectno,$roomno,$duration,$foodstatus,$id);
$stmt->execute();
echo"<script>alert('Profile updated Succssfully');</script>";
}
?>
