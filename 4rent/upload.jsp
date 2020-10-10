<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>upload</title>
</head>
<body>
<%@ page import="java.io.*" %>  

<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%  
MultipartRequest m = new MultipartRequest(request,"C:/xampp/tomcat/webapps/4rent/image",1000000);  
session.setAttribute("upload","Image uploaded");
String filename=m.getOriginalFileName("image");
session.setAttribute("filename",filename);
System.out.println(filename);


%>  

<h4>File uploaded:<%out.println(filename); %></h4>



</body>
</html>
