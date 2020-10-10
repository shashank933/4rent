  
  <?php
 
  include 'conn.php';
extract($_POST);

if(isset($_POST['username'])&&isset($_POST['password'])&&isset($_POST['email'])&&isset($_POST['address'])&&isset($_POST['name'])&&isset($_POST['phone']))

{

	$q="INSERT INTO `login`(`username`, `phone`, `password`, `email`, `sno`, `address`, `name`) VALUES ('$username',$phone,'$password','$email',NULL,'$address','$name')";
	$result=mysqli_query($con,$q);
	
	if($result)
	{
		exit($result);
       
	}
	

}



 ?>
