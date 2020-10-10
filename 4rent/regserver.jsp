<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%  Connection con ; %>
	<% PreparedStatement pst,pst1,pst2 ;%>
     <% ResultSet rs,rs1,rs2; %>
     
    <% 
    response.setHeader("Cache-Control","no-cache,no-store,no-validate");
     String fname=request.getParameter("Firstname");
     String lname=request.getParameter("Lastname");
     String addr=request.getParameter("Address");
     String country=request.getParameter("country");
     String state=request.getParameter("state");
     String city=request.getParameter("city");
     String email=request.getParameter("email");
     
     String number=request.getParameter("number");
    
     String psw=request.getParameter("psw");
     Random rand = new Random();
     int n = rand.nextInt(90000) + 10000;
     System.out.println(n);
          try
        {
        	 
        	  String dbURL = "jdbc:mysql://localhost:3306/forrent";
	    	   String username = "root";//also add jdbc jar file in apache lib folderalso dont forget to add servlet api.jar and jdbc.jar files to add in build
	    	   String password = "";//username is the orcle workspace name
	    	   
	    	   Class.forName("com.mysql.jdbc.Driver");
	    	    con = DriverManager.getConnection(dbURL,username,password);
      System.out.println("Database connected");
      Statement st=con.createStatement();
      int i=st.executeUpdate("insert into register(fname,lname,addr,cnt,state,city,email,phone,pass)values('"+fname+"','"+lname+"','"+addr+"','"+country+"','"+state+"','"+city+"','"+email+"','"+number+"','"+psw+"')");
      if(i>0)
      {
    	   session.setAttribute("regmsg","pass");
     	 
     	 System.out.println("data inserted sucessfully");
         response.sendRedirect("http://3.22.63.243:8080/4rent/reg.jsp");
      
      	}
      else{
    	 
      }
          	}
             catch(Exception e)
      			{
 session.setAttribute("regmsg","fail");
    	  System.out.println("failed");
    	  response.sendRedirect("http://3.22.63.243:8080/4rent/reg.jsp");
    	  
                 	e.printStackTrace();
      			}
      		%>


</body>
</html>