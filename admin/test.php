<?php 
session_start();
$aid=$_SESSION['id'];
require_once("includes/config.php");
if(!empty($_POST["roomno"])) 
{
$roomno=$_POST["roomno"];
$sql1 ="SELECT count(*) FROM user_booking   WHERE roomno=?";
$result=mysql_query($sql1);
$sql2 ="SELECT count(*) FROM guest_booking   WHERE roomno=?";
$result=mysql_query($sql2);
$stmt = $mysqli->prepare($result);
$stmt->bind_param('i',$roomno);
$stmt->execute();
$stmt->bind_result($count);
$stmt->fetch();
$stmt->close();
if($count>0)
echo "<span style='color:red'>$count. Seats already full.</span>";
else
	echo "<span style='color:blue'>All Seats are Available</span>";
}
?>