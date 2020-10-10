<?php 
include 'conn.php';
$id=$_GET['id'];
$q="DELETE FROM `product_list` WHERE id=$id";
mysqli_query($con,$q);

header('location:dashboard.php')



 ?>