<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>search</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
  
</head>
<body >
<div class="container-fluid sticky-top">
  <nav class="navbar navbar-expand-lg navbar-light" style="background-color:white;height:100px;z-index:9" >
     <a class="navbar-brand" href="index.jsp"><img src="./image/logo2.png" ></a>
      <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon "></span>
      </button>
<a class="nav-link bg-dark text-light" href="index.jsp" ><i class="fab fa-foursquare"></i>Home</a>
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
<!-- content area -->

<div class="container-fluid">
<div class="d-flex flex-row align-items-stretch">
  <div class=" " style="background-color:#B6B6B4">
   <button class="btn" type="button" data-toggle="collapse" data-target="#v-pills-tab" aria-expanded="false" aria-controls="collapseExample">
    
    <i class="fas fa-align-justify fa-2x"></i><br>All Categories
  </button>
    <div class="nav flex-column  nav-pills collapse" id="v-pills-tab" role="tablist" >
      <a class="nav-link badge-lg badge-dark m-2" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-home" role="tab" >All ads</a>
      
      <a class="nav-link badge-lg badge-dark m-2" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" >Car</a>
    <a class="nav-link badge-lg badge-dark m-2" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" >Electronics</a>
<a class="nav-link badge-lg badge-dark m-2" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" >Motercycles</a>
<a class="nav-link badge-lg badge-dark m-2" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" >Mobilephones</a>
<a class="nav-link badge-lg badge-dark m-2" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" >Property</a>
 <a class="nav-link badge-lg badge-dark m-2" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" >furniture</a>
<a class="nav-link badge-lg badge-dark m-2" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" >Services</a>
<a class="nav-link badge-lg badge-dark m-2" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" >Scooters</a>
 <a class="nav-link badge-lg badge-dark m-2" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" >utensils</a>
    </div>
  </div>
  
  <div class=" ">
    <div class="tab-content" id="v-pills-tabContent">
      <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
       <h1 class="text-center "><span class="badge-success badge  font-weight-bold">ALL ADs</span></h1>
      <h4>search results:<%=request.getParameter("search")%></h4>
      <div class="container">

    <div id="ads" class="row">
        <div class="col">
        <div class="row">
        
<%@ page import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
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

      %>
      
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src=".\image\<%=rs.getString("imgaddr")%>" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><%=rs.getString("title") %></a>
                </h4>
                <h5>&#8377;<%=rs.getInt("price") %></h5>
                <p class="card-text"><%=rs.getString("des") %></p>
              </div>
              <div class="card-footer p-0">
              <form action="view.jsp" method="post">
              	<div class="btn-group d-flex" role="group" >
                 <input type="hidden" name="adno" value="<%=rs.getString("adno")%>">
              	 <button  class="btn btn-info  flex-fill" onclick="del('<%=rs.getString("adno")%>')">view</button>
                </div>
              </form>
                   

              </div>
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
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
      </div>
      <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">profile</div>
      <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">message</div>
      <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">settings</div>
    </div>
  </div>
</div>
</div>

</body>
</html>