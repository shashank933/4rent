
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>Sign-Up</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
  
  
</head>
<body style="background-image:url('./image/orange.jpg');background-size: cover;background-repeat: no-repeat;">

<div class="d-flex p-0 flex-row">
  <div class="mt-1 p-2 bg-white" style="z-index: 9"><a  href="index.jsp"><img src="./image/logo1.png" class=" mt-2"></a></div>
  
  <div class="flex-grow-1 mt-1 flex-row-reverse">
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

<div class="d-flex flex-row justify-content-center">
<div class="container mt-auto mb-5 m-2">
<form action="regserver.jsp" class="form-con2 container mb-5 bg-light" id="myform" method="post">

<h1 align="center"><span class="badge badge-pill badge-light">Sign-up</span></h1>
<%
 try{
   String data=session.getAttribute("regmsg").toString();
   if(data=="pass")
   {
   %><div class="alert alert-success container" role="alert">
  <h4 class="alert-heading">REGISTERED SUCCESSFULLY</h4>
  <p>Now Explore 4rent</p>
 </div>
 <%
   session.removeAttribute("regmsg");
 }
   if(data=="fail")
   {
	   %><div class="alert alert-success container" role="alert">
	   <h4 class="alert-heading">Failed</h4>
	   <p>Please register by correct details</p>
	  </div><%session.removeAttribute("regmsg");
   }
	   
}
 catch(Exception e)
     			{
                 
                	e.printStackTrace();
     			}

%>
<div class="row">

    <div class="col-sm-6">
    <div class="form-group">
     <input type="text"  name="Firstname" class="form-control" id="Firstname" placeholder="&#128104;Firstname" >
       </div>
   </div>
    <div class="col-sm-6">
    <div class="form-group">
    <input type="text"  name="Lastname" class="form-control" id="Lastname" placeholder="&#128100;Lastname" >
   
   </div>
   </div>
    <div class="col-sm-6">
    <div class="form-group">
    <input type="text"  name="Address" class="form-control" id="Address" placeholder="&#127969;Address" >
    <small id="aerr" class="font-weight-bold text-uppercase text-danger"></small>
   </div>
   </div>
    <div class="col-sm-6">
    <div class="form-group">
       <select id="country" name="country" class="form-control" >
        <option value="" hidden>&#127987;Country</option>
		    <option value="India">India</option>
		    <option value="australia">Australia</option>
		    <option value="canada">Canada</option>
		    <option value="usa">USA</option>
	     </select>
     </div>
   </div>

	   <div class="col-sm-6">
    <div class="form-group">
	    <select id="state" name="state" class="form-control" >
 
	    <option value="" hidden>&#127966;State</option>
	      <option value="Madhya pradesh">Madhya pradesh</option>
	      <option value="Maharashtra">Maharashtra</option>
	      <option value="Delhi">Delhi</option>
	  </select>
  </div>
</div>
  <div class="col-sm-6">
    <div class="form-group">
	  
	      <select id="city" name="city" class="form-control" >
	      <option value="" hidden>&#127961;City</option>
	        <option value="Betul">Betul</option>
	        <option value="sarni">sarni</option>
	        <option value="bhopal">bhopal</option>
	  </select>
    
   </div>
   </div>
  <div class="col-sm-6">
    <div class="form-group">
    <input type="text"  name="email" class="form-control" id="email" placeholder="&#128231;Email" >
   </div>
   </div>
    <div class="col-sm-6">
    <div class="form-group">
    <input type="text"  name="number" class="form-control" id="number" placeholder="&#128222;phone" >
   </div>
   </div>
     <div class="col-sm-6">
    <div class="form-group">
    <input type="password"  name="psw" class="form-control" id="psw" placeholder="&#128274;Password" >
   </div>
   </div>   
   <div class="col-sm-6">
    <div class="form-group">
    <input type="password"  name="psw1" class="form-control" id="psw1" placeholder="&#128275;Confirm password">
   </div>
   </div>   

                <div class=" offset-sm-5">
                  <div class="form-group ">
                  <div class="form-check">
                    <input type="checkbox" id="agree" name="agree" value="agree" class="form-check-input"/>
                    <label class="form-check-label">Please agree to our policy</label>
                  </div>
                </div>
              </div>
    <div class="col-sm-12 text-center">  <button type="submit" id="sub" name="sub" class="btn btn-success btn-lg ">Submit</button></div>
  </div>
   <h4 class="text-center">Already have an account!&nbsp;<a href="#" class="badge badge-pill badge-primary">Sign-in</a></h4>
   </form>
</div>
  
</div>


<footer class=" mt-1 bg-dark sticky-bottom fixed-bottom">
    <div class="container">
      <p class="m-0 text-center text-white">All rights are reserved &copy;2020 -Designed by Shashank talapelliwar
   <a href="email2.jsp"  class="badge badge-pill badge-info">Login</a>
<a href="reg.jsp"   class="badge badge-pill badge-light">Sign-Up</a>
<a href="contact.jsp"   class="badge badge-pill badge-success">Contact-Us</a>
   </p>
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

    </div>
    <!-- /.container -->
  </footer>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
<!-- validation -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<script type="text/javascript">
$( document ).ready( function () {
  
      $( "#myform" ).validate( {
        rules: {
          state:"required",
             country:
             "required", 
             city:
             "required",        
          Firstname: "required",
          Lastname: "required",
           
          Address: {
            required: true,
            minlength: 10
          },
          psw: {
            required: true,
            minlength: 5
          },
          psw1: {
            required: true,
            minlength: 5,
            equalTo: "#psw"
          },
          email: {
            required: true,
            email: true
          },
          number:{
            required:true,
            minlength: 10,
            maxlength: 10
          },
          agree: "required"
        },
        messages: {
          state:"enter state",
          city:"enter city",
          country:"enter country",
          
          Firstname: "Please enter your firstname",
          Lastname: "Please enter your lastname",
          Address: {
            required: "Please enter a Address",
            minlength: "Your Address must consist of at least 10 characters"
          },
          psw: {
            required: "Please provide a password",
            minlength: "Your password must be at least 5 characters long"
          },
          psw1: {
            required: "Please provide a password",
            minlength: "Your password must be at least 5 characters long",
            equalTo: "Please enter the same password as above"
          },
          email: "Please enter a valid email address",
          agree: "Please accept our policy",
          number:{
            required:"Enter phone number",
            minlength:"invalid phone number ,should have 10 number",
            maxlength:"invalid phone number ,should have 10 number"
          },
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
          // Add the `invalid-feedback` class to the error element
          error.addClass( "invalid-feedback" );

          if ( element.prop( "type" ) === "checkbox" ) {
            error.insertAfter( element.next( "label" ) );
          } else {
            error.insertAfter( element );
          }
        },
        highlight: function ( element, errorClass, validClass ) {
          $( element ).addClass( "is-invalid" ).removeClass( "is-valid" );
        },
        unhighlight: function (element, errorClass, validClass) {
          $( element ).addClass( "is-valid" ).removeClass( "is-invalid" );
        }
           } );

  
} );
  </script>
  
  




</body>
</html>