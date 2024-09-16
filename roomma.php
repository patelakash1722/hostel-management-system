<?php
if(!empty($_POST["login"])) 
 
{

$result ="SELECT count(*) FROM user_booking   WHERE roomno=?";   
$stmt = $mysqli->prepare($result);
$stmt->bind_param('i',$roomno);
$stmt->execute();
$stmt->bind_result($count);
$stmt->fetch();
$stmt->close();

$roomno=$_POST["roomno"];
$result ="SELECT count(*) FROM guest_booking   WHERE roomno=?";   
$stmt = $mysqli->prepare($result);
$stmt->bind_param('i',$roomno);
$stmt->execute();
$stmt->bind_result($count1);
$stmt->fetch();
$stmt->close();
$sum=$count+$count1;
if($count>0)
echo "<span style='color:red'> $sum.Seats already full.</span>";
else
	echo "<span style='color:blue'>All Seats are Available</span>";

}
?>