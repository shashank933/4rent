<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
	<title>yourpage</title>
	

<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
</head>
<body id="all">
	<div class="container-fluid sticky-top">
  <nav class="navbar navbar-expand-lg navbar-light" style="background-color:white;height:100px;" >
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
             <form class="navbar-form ml-2">
            <select name="loc" id="" class="form-control" style="width:105px;">
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
		   "><i class="fas fa-house-damage fa-lg"></i>YourPage</a>
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
<div class="d-flex flex-row align-items-stretch font-weight-bold mt-auto mb-5 " style="height:auto;width:auto;">
  
  
    
	<div class="container-fluid align-self-start align-self-center">
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active text-dark" id="tabyour" data-toggle="tab" href="#ads" role="tab" >Posted Ads</a>
  </li>
  <li class="nav-item">
    <a class="nav-link text-dark" id="profile-tab" data-toggle="tab" href="#profile" role="tab" >Profile</a>
  </li>
  <li class="nav-item">
    <a class="nav-link text-dark" id="ordertab" data-toggle="tab" href="#order" role="tab" >Orders</a>
  </li>
  
</ul>

<div class="tab-content">
  <div class="tab-pane active" id="ads" role="tabpanel" >
  <h1 class="text-center "><span class="badge-success badge  font-weight-bold"> ADs</span></h1>
  
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
      
      String data=session.getAttribute("user").toString();
      ResultSet rs=st.executeQuery("select * from item_detail where phone='"+data+"'");
      
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
              
              	<div class="btn-group d-flex" role="group" >
              	<button  class="btn btn-warning flex-fill">Edit</button>
              	 <button  class="btn btn-danger  flex-fill" onclick="del('<%=rs.getString("adno")%>')">delete</button>
                </div>
                   

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
  <!-- /.container -->
   </div>
<!-- starting of profile tabpanal -->
  
  <div class="tab-pane" id="profile" role="tabpanel">
  <div class="row">
  <div class="col-sm-1"> </div>
  	
  	<div class="col-sm-3">
  	<h2 class=" "><span class="badge-warning badge  font-weight-bold">details</span></h2> 
  	<%
  	try
        {
  		 String dbURL = "jdbc:mysql://localhost:3306/forrent";
	    	   String username = "root";//also add jdbc jar file in apache lib folderalso dont forget to add servlet api.jar and jdbc.jar files to add in build
	    	   String password = "";//username is the orcle workspace name
	    	   
	    	   Class.forName("com.mysql.jdbc.Driver");
	    	Connection con2 = DriverManager.getConnection(dbURL,username,password);
      System.out.println("Database connected for profile");
      Statement st2=con2.createStatement();
     String data=session.getAttribute("user").toString();
      ResultSet rs1=st2.executeQuery("select * from register where phone='"+data+"' ");
      if(rs1.next())
      {
         %>
         <table class="table">
  <thead><tr> </tr></thead>
  <tbody>
    <tr>
      
      <td>Name</td>
      <td>:</td>
      <td><%=rs1.getString("fname") %>&nbsp;<%=rs1.getString("lname") %></td>
    </tr>
    <tr>
      <td>Address</td>
      <td>:</td>
      <td><%=rs1.getString("addr") %></td>
    </tr>
    <tr>
      <td>Country</td>
      <td>:</td>
      <td><%=rs1.getString("cnt") %></td>
    </tr>
     <tr>
      <td>State</td>
      <td>:</td>
      <td><%=rs1.getString("state") %></td>
    </tr>
    <tr>
      <td>City</td>
      <td>:</td>
      <td><%=rs1.getString("city") %></td>
    </tr>
    <tr>
      <td>Email</td>
      <td>:</td>
      <td><%=rs1.getString("email") %></td>
    </tr>
     <tr>
      <td>Phone</td>
      <td>:</td>
      <td><%=rs1.getString("phone") %></td>
    </tr>
  </tbody>
</table>
<%  } 
        }
  catch(Exception e)
  {
	 System.out.println("failed to load profile"); 
  }
  
  %>
  	</div>
  	  	<div class="col-sm-8"></div>
    </div>
    
  	
<!-- end of profile row-->
<h1 class="text-center"><button type="button" class="btn btn-outline-warning " data-toggle="modal" data-target="#modalLoginForm">Edit</button></h1>

  </div>
  <!-- end of profile -->
  
  <div class="tab-pane " id="order" role="tabpanel">
 <h1 class="text-center "><span class="badge-success badge  font-weight-bold">Order</span></h1>  	
<div class="container">

    <div class="row">
        <div class="col">
        <div class="row">

          

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Item One</a>
                </h4>
                <h5>&#8377;24.99</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
              </div>
              <div class="card-footer p-0">
              	<div class="btn-group d-flex" role="group" >
                  <button type="button" class="btn btn-warning flex-fill">Check Status</button>
                  </div>

              </div>
            </div>
          </div>

         
        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  </div>
  
</div>
</div>

</div>

<script>
  $(function () {
    $('#tabyour').tab('show');
  });
</script>


<!-- script for delete -->

<script type="text/javascript">

    function del(adno)
    {  
    
    	$.ajax({
    		url:"addel.jsp",
    		type:"POST",
    		data:{adno:adno},
    		success:function(data,status)
    		{
    			alert("deleted");
    			$("#all").load("yourpage.jsp");
    		}
    		
    	});
    	
    }

</script>

<!-- modal for edit profile -->
<div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold text-uppercase"><span class="badge badge-warning">edit</span></h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="row">

    <div class="col-sm-6">
    <div class="form-group">
    
    <input type="text"  name="fname" class="form-control" id="exampleInputPassword1" placeholder="Firstname" required>
   </div>
   </div>
    <div class="col-sm-6">
    <div class="form-group">
    <input type="text"  name="lname" class="form-control" id="exampleInputPassword1" placeholder="Lastname" required>
   </div>
   </div>
    <div class="col-sm-6">
    <div class="form-group">
    <input type="text"  name="addr" class="form-control" id="exampleInputPassword1" placeholder="Address" required>
   </div>
   </div>
    <div class="col-sm-6">
    <div class="form-group">
   
		  <select id="country" name="country" required>
		  <option >Country</option>
		  <option value="usa">India</option>
		    <option value="australia">Australia</option>
		    <option value="canada">Canada</option>
		    <option value="usa">USA</option>
	  </select>

	   
	    <select id="country" name="state" required>
	    <option >State</option>
	      <option value="Madhya pradesh">Madhya pradesh</option>
	      <option value="Maharashtra">Maharashtra</option>
	      <option value="Delhi">Delhi</option>
	  </select>
	  
	      <select id="country" name="city" required>
	      <option >City</option>
	        <option value="Betul">Betul</option>
	        <option value="sarni">sarni</option>
	        <option value="bhopal">bhopal</option>
	  </select>
   </div>
   </div>
  <div class="col-sm-6">
    <div class="form-group">
    <input type="text"  name="email" class="form-control" id="" placeholder="Email" required>
   </div>
   </div>
    
     <div class="col-sm-6">
    <div class="form-group">
    <input type="text"  name="password" class="form-control" id="" placeholder="Password" required>
   </div>
   </div>   
   <div class="col-sm-6">
    <div class="form-group">
    <input type="text"  name="psw1" class="form-control" id="" placeholder="Confirm password" required>
   </div>
   </div>   
    <div class="col-sm text-center">  <button type="submit" class="btn btn-success btn-lg ">Submit</button></div>
  </div>

      </div>
      
    </div>
  </div>
</div>

</body>
</html>