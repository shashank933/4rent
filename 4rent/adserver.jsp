<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>


<%  Connection con ; %>
	<% PreparedStatement pst,pst1,pst2 ;%>
     <% ResultSet rs,rs1,rs2; %>
     
    <% 
     String title=request.getParameter("title");
    System.out.println(title);
     String category=request.getParameter("category");
     System.out.println(category);
     int price=Integer.parseInt(request.getParameter("price"));
    System.out.println(price);
     String message=request.getParameter("message");
     String loc=request.getParameter("loc");
     
     System.out.println(message);
     String imgaddr=session.getAttribute("filename").toString();
     System.out.println(imgaddr);
     session.removeAttribute("filename");
     Random rand = new Random();
     int adno = rand.nextInt(900000) + 10000;
     System.out.println(adno);
          try
        {
        	 
        	  response.setHeader("Cache-Control","no-cache,no-store,no-validate");
        	  String dbURL = "jdbc:mysql://localhost:3306/forrent";
	    	   String username = "root";
	    	   String password = "";
	    	   
	    	   Class.forName("com.mysql.jdbc.Driver");
	    	    con = DriverManager.getConnection(dbURL,username,password);
      System.out.println("Database connected");
      Statement st=con.createStatement();
    String user=session.getAttribute("user").toString();
   
    System.out.println(user);
    
      int i=st.executeUpdate("insert into item_detail(category,title,des,price,imgaddr,phone,adno,loc)values('"+category+"','"+title+"','"+message+"','"+price+"','"+imgaddr+"','"+user+"','"+adno+"','"+loc+"')");
     if(i>0)
     {
    	 session.setAttribute("msg2","pass");
    	 out.println("AD Posted");
      
      response.sendRedirect("http://3.22.63.243:8080/4rent/admak.jsp");}
     
     	}
            catch(Exception e)
     			{
                	e.printStackTrace();
                	response.sendRedirect("http://3.22.63.243:8080/4rent/admak.jsp");
                	session.setAttribute("msg2","fail");
     			}
     		%>

