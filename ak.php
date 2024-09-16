<?php
$result1 = "";
$result2 = "";
$merged_results = "";

$stmt =$mysqli->prepare("SELECT count(*) FROM user_booking   WHERE roomno=?");
$stmt->execute();
$result1 =$stmt->get_result();

$stmt =$mysqli->prepare("SELECT count(*) FROM guest_booking   WHERE roomno=?");
$stmt->execute();
$result2 =$stmt->get_result();
$merged_results= array_merge($result1,$result2);

?>
$result ="SELECT count(*) FROM user_booking   WHERE roomno=?";

   
$stmt = $mysqli->prepare($result

$stmt->bind_param('i',$roomno);
$stmt->execute();
$stmt->bind_result($count);

$stmt->fetch();

$stmt->close();
