<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>Login with mail</title>
<link rel="stylesheet" href="style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
</head>

<body style="background-image:url('./image/bg.jpg');background-size: cover;background-repeat: no-repeat;">
<div class="d-flex p-2 flex-row">
  <div class="mt-0 bg-white" style="z-index: 9"><a  href="index.jsp"><img src="./image/logo1.png" class=" mt-2"></a></div>
  
  <div class="flex-grow-1 flex-row-reverse">
  	<nav class="navbar navbar-expand-lg navbar-light fixed-top position-sticky bg-white" style="z-index:9; height:100px" >
  <a class="navbar-brand"></a>
  <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon "></span>
  </button>

  <div class="collapse navbar-collapse bg-white" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto justify-content-center" >
  <li class="nav-item active "><a class="nav-link" href="index.jsp" >Home</a></li>
      <li class="nav-item active ml-0 mr-0  overflow-auto">
        <a class="nav-link" href="<% 
	   try{
		   String data=session.getAttribute("user").toString();
		   out.println("yourpage.jsp");
		   }  catch(Exception e)
     			{
	 out.println("email2.jsp");
                	e.printStackTrace();
     			}%>
		   "><i class="fas fa-house-damage fa-lg"></i>YourPage<span class="sr-only">(current)</span></a>
      </li>
        <li class="nav-item active ml-0 mr-0">
        <a class="nav-link " href="<% 
	   try{
		   String data=session.getAttribute("user").toString();
		   out.println("admak.jsp");
		   }  catch(Exception e)
     			{
	 out.println("email2.jsp");
                	e.printStackTrace();
     			}%>
		   "><i class="fab fa-adversal fa-lg"></i>PostAd</a>
      </li>
      <li class="nav-item active"><a class="nav-link" href="contact.jsp" >About</a></li>
      <li class="nav-item active">
        <a class="nav-link " href="#"><i class="fa fa-user fa-lg"></i><%
 try{
   String data=session.getAttribute("user").toString();
   
 out.println(data);
 if(data!=null){
 %>  
 <li class="nav-item active"><a class="nav-link active" href="logout.jsp" color="white">Logout</a></li>
 <%
 
            }
 }
 catch(Exception e)
     			{
	 out.println("guest");
                	e.printStackTrace();
     			}
%></a>
      </li>
    </ul>
   </div>
  </nav>
  </div>
</div>

<div class="d-flex flex-row mt-2 p-4 mb-5" style="height:auto;width:auto;">
<div class=" align-self-center ml-auto mr-auto mb-5 form-con " >

   
   <form class="text-center text-gray-dark mx-auto" action="emailserver.jsp" method="post" >
 	<h1 class="badge-pill badge-info text-capitalize">login</h1>
 
<%
 try{
   String data=session.getAttribute("elogmsg").toString();
   if(data=="pass")
   {
   %><div class="alert alert-success container" role="alert">
  <h4 class="alert-heading">logged in</h4>
  <p>Now Explore 4rent</p>
 </div><%
   session.removeAttribute("elogmsg");
 }
   if(data=="fail")
   {
	   %><div class="alert alert-success container" role="alert">
	   <h4 class="alert-heading">Invalid Username/Password</h4>
	   <p>Please register by signing up</p>
	  </div><%session.removeAttribute("elogmsg");
   }
	   
}
 catch(Exception e)
     			{
                 
                	e.printStackTrace();
     			}

%>
  <div class="form-group">
    <label for="exampleInputEmail1"></label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="&#128231; Email address" aria-describedby="emailHelp">
    <small id="emailHelp" class="form-text">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1"></label>
    <input type="password" name="psw" class="form-control" placeholder="&#128274; Password" id="exampleInputPassword1">
  </div>
  <div class="form-group form-check text-info">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Remember me</label>
  </div>
  <div class="d-flex"><button type="submit" class="btn flex-fill" id="demo">Submit</button></div>
 
     </form>
  
</div>
</div>
<!-- end of middle flex-->
 
 <footer class="py-1 bg-dark sticky-bottom fixed-bottom">
    <div class="container">
      <p class="m-0 text-center text-white">All rights are reserved &copy;2020 -Designed by Shashank talapelliwar
   <a href="mobile.jsp"  class="badge badge-pill badge-info">Login</a>
<a href="reg.jsp"   class="badge badge-pill badge-light">Sign-Up</a>
<a href="contact.jsp"   class="badge badge-pill badge-success">Contact-Us</a>
   </p>
   </div>
    <!--start of felx-->
   <div class="d-flex flex-row">
    <div class="btn-group-horizontal btn-group-sm mx-auto justify-content-center  ">
    <button type="button" class="btn rounded-circle " style="background: #3B5998"><a href="https://m.facebook.com" class="text-white" ><i class="fab fa-facebook"></i></a></button>
    <button type="button" class="btn rounded-circle" style="background: #55ACEE"><a href="https://twitter.com" class="text-white" ><i class="fab fa-twitter"></i></a></button>
    <button type="button" class="btn rounded-circle " style="background: #dd4b39"> <a href="https://google.com" class="text-white" ><i class="fab fa-google"></i></a></button>
    <button type="button" class="btn rounded-circle" style=" background: #007bb5"><a href="https://linkedin.com" class="text-white" ><i class="fab fa-linkedin"></i></a></button>
    <button type="button" class="btn rounded-circle" style="background: #bb0000"><a href="https://m.youtube.com" class="text-white" ><i class="fab fa-youtube"></i></a></button>
    </div >
    </div>
    <!--end of felx-->
    
    
    
    <!-- /.container -->
  </footer>
 

</body>
</html>