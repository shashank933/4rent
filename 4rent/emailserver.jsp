<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%  Connection con ; %>
	<% PreparedStatement pst,pst1,pst2 ;%>
     <% ResultSet rs,rs1,rs2; %>
     
    <% 
    response.setHeader("Cache-Control","no-cache,no-store,no-validate");
     
   
     String email=request.getParameter("email");
     
    
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
       rs=st.executeQuery("select * from register where email='"+email+"' and pass='"+psw+"'");
       
      if(rs.next())
      {
    	  String user=rs.getString("phone");
     	 session.setAttribute("elogmsg","pass");
     	 session.setAttribute("user",user);
     	 System.out.println("logged in sucessfully");
         response.sendRedirect("http://3.22.63.243:8080/4rent/email2.jsp");
      
      	}
      else{
    	  session.setAttribute("elogmsg","fail");
    	  System.out.println("logged in failed");
    	  response.sendRedirect("http://3.22.63.243:8080/4rent/email2.jsp");
    	  
      }
     
     
          }
             catch(Exception e)
      			{
                 	e.printStackTrace();
      			}
      		%>



</body>
</html>