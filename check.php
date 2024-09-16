<?php
require_once("includes/config.php");
if(!empty($_POST["regno"])) {
	$regno= $_POST["regno"];
	if (filter_var($regno)===false) {

		echo "error : You did not enter a valid reg no.";
	}
	else {
		$result ="SELECT count(*) FROM userRegistration   WHERE regNo=?";
		$stmt = $mysqli->prepare($result);
		$stmt->bind_param('i',$regno);
		$stmt->execute();
$stmt->bind_result($count);
$stmt->fetch();
$stmt->close();
if($count>0)
{
echo "<span style='color:red'> Reg No  already exist .</span>";
}
else{
	echo "<span style='color:green'> Reg no available for registration .</span>";
}
}
}
?>
