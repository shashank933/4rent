<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 try{
  
   session.removeAttribute("user");
   session.setAttribute("logout","You are logged out");
   response.sendRedirect("http://3.22.63.243:8080/4rent/index.jsp");
   
   
}
 catch(Exception e)
     			{
                 
                	e.printStackTrace();
     			}

%>

</body>
</html>