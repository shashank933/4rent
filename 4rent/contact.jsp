<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>4rent</title>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
   <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</head>

<body>

  <!-- Navigation -->
 <div class="d-flex p-2 flex-row">
  <div class="mt-0 bg-white"><a  href="index.jsp"><img src="./image/logo1.png" class=" mt-2"></a></div>
  
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
  <!-- Header -->
  <header class=" py-5 mb-5" style="background:#FF0000">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-lg-12">
          <h1 class="display-4 text-white mt-5 mb-2">A New Wave of Living,Always Fresh, Forever Original.</h1>
          <p class="lead mb-5 text-dark-50">4Rent is a open platform to lease and borrow</p>
        </div>
      </div>
    </div>
  </header>

  <!-- Page Content -->
  <div class="container mb-5">

    <div class="row">
      <div class="col-md-8 mb-5">
        <h2>What We Do</h2>
        <hr>
        <p class="text-capitalize">we are a young team looking solutions for problems in the society and creating unique system to cater the 
        present day demands.</p>
        <p class="text-capitalize">To support us, donate and become a part of team 4rent and help us to find solutions to your problems.</p>
        
      </div>
      <div class="col-md-4 mb-5">
        <h2>Contact Us</h2>
        <hr>
        <address>
          <strong>4RENT TEAM</strong>
          <br>Sarni
          <br>Sd557, MP 460447
          <br>
        </address>
        <address>
          <h5 title="Phone">&#128222;(+91)6265658797 </h5>
          
          <br>
          <h5 title="Email">&#128233<a href="mailto:#">Talapelliwars@gmail.com</a></h5>
          
        </address>
      </div>
    </div>
    <!-- /.row -->

    <div class="row">
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <img class="card-img-top" src="./image/ps1.jpeg" alt="shashankps" style="height:300px">
          <div class="card-body">
            <h5 class="card-title ">SHASHANK(FOUNDER AND CEO)</h5>
            <p class="card-text">Author of 4rent,Web developer.</p>
          </div>
          
        </div>
      </div>
      
    
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <footer class="py-1 bg-dark sticky-bottom fixed-bottom">
    <div class="container">
      <p class="m-0 text-center text-white">All rights are reserved &copy;2020 -Designed by Shashank talapelliwar
   <a href="mobile.jsp" class="badge badge-pill badge-info">Login</a>
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

  <!-- Bootstrap core JavaScript -->
 

</body>

</html>