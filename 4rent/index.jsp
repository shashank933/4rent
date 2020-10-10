<!DOCTYPE html>
<html lang="en">
<head>
  <title>4Rent</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
  <script scr="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 
 <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
<!-- -->

  
</head>
<body >
<div class="d-flex flex-column ">
<div class="container-fluid sticky-top">
  <nav class="navbar navbar-expand-lg navbar-light" style="background-color:white;height:100px;" >
     <a class="navbar-brand" href="#"><img src="./image/logo2.png" ></a>
      <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon "></span>
      </button>

       <div class="collapse navbar-collapse " id="navbarSupportedContent" style="background-color:white;">

           <ul class="navbar-nav justify-content-end w-100">
            <form action="search.jsp" autocomplete="off" class="form-horizontal  w-50" method="post" accept-charset="utf-8">
        <div class=" input-group">
            <input name="search" value="" class="form-control" type="text" placeholder="What are you looking for?">
            <span class="input-group-btn">
               <button class=" btn btn-outline-dark" type="submit" id="addressSearch">
                   <i class="fas fa-search"></i>
               </button>
            </span>
        </div>
       </form> 
             <form class="navbar-form ml-3">
            <select name="loc" id="" class="form-control" style="width:120px;">
              <option >location</option>
              <option value="Sarni">Sarni</option>
              <option value="Betul">Betul</option>
                <option value="Bhopal">Bhopal</option>
              <option value="Indore">Indore</option>
            </select>
          </form>
          <li class="nav-item active">
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
       <li class="nav-item active ">
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

<div class="container-fluid ">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark  " style="height:50; z-index: 9;" >
 <ul class="navbar-nav ">
 	<li class="nav-item dropdown"><a class="navbar-brand nav-link  dropdown-toggle active" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" >ALL CATEGORIES</a>
  <div class="dropdown-menu " aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="http://3.22.63.243:8080/4rent/search.jsp">Car</a>
          <a class="dropdown-item" href="http://3.22.63.243:8080/4rent/search.jsp">Electronics</a>
          <a class="dropdown-item" href="http://3.22.63.243:8080/4rent/search.jsp">Mobilephones</a>
          <a class="dropdown-item" href="http://3.22.63.243:8080/4rent/search.jsp">Property</a>
          <a class="dropdown-item" href="http://3.22.63.243:8080/4rent/search.jsp"> furniture</a>
          <a class="dropdown-item" href="http://3.22.63.243:8080/4rent/search.jsp">Services</a>
        </div></li></ul>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav2" >
    <span class="navbar-toggler-icon"></span>
  </button>
   <div class="collapse navbar-collapse bg-dark " id="nav2">

    <ul class="navbar-nav mr-auto  " >
   
   <li class="nav-item mr-auto"><a class="nav-link" href="http://3.22.63.243:8080/4rent/search.jsp">Car<span class="sr-only">(current)</span></a> </li>
    <li class="nav-item"><a href="http://3.22.63.243:8080/4rent/search.jsp" class="nav-link">Electronics<span class="sr-only">(current)</span></a></li>
<li class="nav-item"><a href="http://3.22.63.243:8080/4rent/search.jsp" class="nav-link">Motercycles<span class="sr-only">(current)</span></a></li>
  <li class="nav-item"><a href="http://3.22.63.243:8080/4rent/search.jsp" class="nav-link">Mobilephones<span class="sr-only">(current)</span></a></li>
<li class="nav-item"><a href="http://3.22.63.243:8080/4rent/search.jsp" class="nav-link"> Property<span class="sr-only">(current)</span></a></li>
  <li class="nav-item"><a href="http://3.22.63.243:8080/4rent/search.jsp" class="nav-link"> furniture<span class="sr-only">(current)</span></a></li>
<li class="nav-item"><a href="http://3.22.63.243:8080/4rent/search.jsp" class="nav-link">Services<span class="sr-only">(current)</span></a></li>
<li class="nav-item"><a href="http://3.22.63.243:8080/4rent/search.jsp" class="nav-link">Scooters<span class="sr-only">(current)</span></a></li>
 <li class="nav-item"><a href="http://3.22.63.243:8080/4rent/search.jsp" class="nav-link">utensils<span class="sr-only">(current)</span></a></li>
  
</ul>
</div>
</nav>
</div>

<div class="container-fluid">
<div id="carouselEx" class="carousel slide" data-ride="carousel ">
 <ol class="carousel-indicators">
    <li data-target="#carouselEx" data-slide-to="0" class="active"></li>
    <li data-target="#carouselEx" data-slide-to="1"></li>
    <li data-target="#carouselEx" data-slide-to="2"></li>
     </ol>
  <div class="carousel-inner">
    
    <div class="carousel-item active">
      <img class="d-block w-100" src="./image/2_1000x300.jpg" alt="Second slide">
<div class="carousel-caption d-none d-md-block">
        <h5 class="text-light" style="font-family: 'Sofia';font-size: 22px;">Rent a property on 4rent</h5>
        </div>
    </div>
   
    <div class="carousel-item">
      <img class="d-block w-100" src="./image/5_1000x300.jpg" alt="five slide">
<div class="carousel-caption d-none d-md-block">
        <h5 class="text-light" style="font-family: 'Sofia';font-size: 22px;">Rent a furniture on 4rent</h5>
        </div>
    </div>
    
       
    <div class="carousel-item">
      <img class="d-block w-100" src="./image/8_1000x300.jpg" alt="eight slide">
<div class="carousel-caption d-none d-md-block">
        <h5 class="text-light" style="font-family: 'Sofia';font-size: 22px;">Rent a vehicle on 4rent</h5>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselEx" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselEx" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
  
  </div>
  
</div>  

<div class="container bg-light mb-5 "  style="text-align:center;">

<h4><span class="badge badge-pill badge-dark"><i class="fa fa-bars" ></i>Popular Ads </span></h4><hr>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<div class="container pt-3 bg-light">
 <div class="row">
 <div class="card-deck">
 <% 
try
        {
	 String dbURL = "jdbc:mysql://localhost:3306/forrent";
	    	   String username = "root";//also add jdbc jar file in apache lib folderalso dont forget to add servlet api.jar and jdbc.jar files to add in build
	    	   String password = "";//username is the orcle workspace name
	    	   
	    	   Class.forName("com.mysql.jdbc.Driver");
	    	Connection con = DriverManager.getConnection(dbURL,username,password);
      System.out.println("Database connected");
      Statement st=con.createStatement();
       
      ResultSet rs=st.executeQuery("select * from item_detail");
      
      while(rs.next())
 {
System.out.println("table exist");
      %>
      
      <div class=" col-lg-3 col-md-6 mb-4">
     
       <div class="card text-center h-100"> 
      <form action="view.jsp" method="post">
      <div >
      <h6 class="card-title bg-info text-white p-1 text-uppercase"> <%=rs.getString("title") %></h6>
      <div class="card-body"><img src=".\image\<%=rs.getString("imgaddr")%>" class="img-fluid figure-img" style="width:1500px;height:200px;object-fit:cover;" >
      </div><hr>
      <h6> &#8377;<%=rs.getInt("price") %></h6>
    </div>
      <div class="container-fluid d-flex">
<input type="hidden" name="adno" value="<%=rs.getString("adno")%>">
      <button class=" btn btn-success flex-fill">View </button>
      </div>
      </form>
      </div>   
      </div>
      
     <%

}
}
     catch(Exception e)
     			{
                	e.printStackTrace();
     			}
%>
  </div>
 
 </div>
 
 </div>
 </div>


<div class="container m-2 d-flex flex-wrap">
<footer class=" bg-dark  sticky-bottom fixed-bottom">
    <div class="container">
      <p class="m-0 text-center text-white">All rights are reserved &copy;2020 -Designed by Shashank talapelliwar
   <a href="email2.jsp" data-toggle="modal" data-target="#myModal" class="badge badge-pill badge-info">Login</a>
<a href="reg.jsp"   class="badge badge-pill badge-light">Sign-Up</a>
<a href="contact.jsp"   class="badge badge-pill badge-success">About-Us</a>
   </p>
   </div>
   <div class="d-flex flex-row">
    <div class="btn-group-horizontal btn-group-sm mx-auto justify-content-center  ">
    <button type="button" class="btn rounded-circle " style="background: #3B5998"><a href="https://m.facebook.com" class="text-white" ><i class="fab fa-facebook"></i></a></button>
    <button type="button" class="btn rounded-circle" style="background: #55ACEE"><a href="https://twitter.com" class="text-white" ><i class="fab fa-twitter"></i></a></button>
    <button type="button" class="btn rounded-circle " style="background: #dd4b39"> <a href="https://google.com" class="text-white" ><i class="fab fa-google"></i></a></button>
    <button type="button" class="btn rounded-circle" style=" background: #007bb5"><a href="https://linkedin.com" class="text-white" ><i class="fab fa-linkedin"></i></a></button>
    <button type="button" class="btn rounded-circle" style="background: #bb0000"><a href="https://m.youtube.com" class="text-white" ><i class="fab fa-youtube"></i></a></button>
    </div >
    </div>
     <!-- /.container -->
  </footer>
</div>
<!-- sign in modal --> 
 <div class="container-fluid bg-dark">
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-dialog-centered">
         <div class="modal-content " style="background-image: url(./image/orange.jpg);">
        <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold text-uppercase">login with</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body text-center">
         
      
      <a href="mobile.jsp" class="btn btn-light btn-lg btn-block " role="button" >&#128222;CONTINUE WITH PHONE</a>
      <br><hr>
       <a href="email2.jsp" class="btn btn-light btn-lg btn-block" role="button" aria-pressed="true">&#128233;CONTINUE WITH EMAIL</a>
      <br><hr>
   <h2 class="text-center"><a href="reg.jsp" class="badge bagde-pill badge-warning">Sign-Up</a></h2>    
     </div>
        
      </div>
    </div>
   </div>
 </div>
 
<!--  end sign in modal --> 
</div>
</body>
</html>