<?php include 'conn.php';
extract($_POST);
if(isset($_POST['username'])&&isset($_POST['password']))
{
	
	$q="SELECT * FROM `login` WHERE username='$username' AND password='$password' ";
	
	$result=mysqli_query($con,$q);

if(mysqli_num_rows($result)>0)
{

	
	session_start();
	$_SESSION["log"]=$username;

   $log=$_SESSION["log"];
   exit($log);
 
}




}

 ?>
