<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>4Rent</title>
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
<div class="d-flex flex-column">
<div class="container-fluid sticky-top">
  <nav class="navbar navbar-expand-lg navbar-light" style="background-color:white;height:100px;z-index:9" >
     <a class="navbar-brand" href="index.jsp"><img src="./image/logo2.png" ></a>
      <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon "></span>
      </button>

       <div class="collapse navbar-collapse " id="navbarSupportedContent" style="background-color:white;">
          <ul class="navbar-nav ml-auto ">
        <li class="nav-item active "><a class="nav-link" href="index.jsp" ><i class="fab fa-foursquare"></i>Home</a></li>
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
<!-- end of nav -->
<div class="container-fluid bg-light" >
<div class="d-flex flex-row flex-wrap justify-content-center">
<div class="align-self-stretch align-self-center ">
<div class="card d-flex flex-row flex-wrap p-5 m-5" >
  
    
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
      
      String adno=request.getParameter("adno");
      ResultSet rs=st.executeQuery("select * from item_detail where adno='"+adno+"'");
      
      while(rs.next())
 {

      %><div class="">
      <img src=".\image\<%=rs.getString("imgaddr")%>" class="card-img " style="width:300px;height:300px; object-fit:cover;" alt="...">
    </div>
    <div class="">
    <form action="index.jsp">
    <div class="card-body">
        <h5 class="card-title">Title :<%=rs.getString("title") %></h5>
        <p class="card-text">Item description :<%=rs.getString("des") %></p>
        <p class="card-text">Price :&#8377;<%=rs.getInt("price") %></p>
        <p class="card-text">Location :<%=rs.getString("loc") %></p>
        
         <button type="submit"  class="btn btn-success">Order</button>
      </div>
     <%

}
}
     catch(Exception e)
     			{
                	e.printStackTrace();
     			}
%>
     
      </form>
      
    </div>
  
</div>
</div>
</div>
</div>
<!-- end -->
</div>
</body>
</html>