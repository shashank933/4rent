<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
<head>
	<title>yourpage</title>
	<meta charset="utf-8">

<link rel="stylesheet"  href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
</head>

</head>
<body>
<% System.out.println("test jsp called");

int adno=Integer.parseInt(request.getParameter("adno"));
System.out.println(adno);

%>
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
      System.out.println("Database connected of delete ad");
      Statement st=con.createStatement();
      String data=session.getAttribute("user").toString();
     
      int i=st.executeUpdate("DELETE from item_detail WHERE adno='"+adno+"'");
      
      if(i>0)
 {
System.out.println(" ad data deleted");
      

}
}
     catch(Exception e)
     			{
                	e.printStackTrace();
     			}
%>
</body>
</html>