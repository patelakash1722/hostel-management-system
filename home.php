<?php
session_start();
include('includes/config.php');
include("index.php");

if(isset($_POST['login']))
{
	$email=$_POST['email'];
    $password=$_POST['password'];

				?>
				


