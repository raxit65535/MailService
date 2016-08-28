<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%@ page import="java.util.zip.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body>
  
  <%
  HttpSession sen = request.getSession();
  String _email = (String)sen.getAttribute("Email");
  String _password = (String)sen.getAttribute("Password");
//Connection con = null;
PreparedStatement stmt = null;
ResultSet rs = null;
String qry = "SELECT name From mailuser where email=? and password=?";
   try{
  		Class.forName("com.mysql.jdbc.Driver").newInstance();
  		Connection con= DriverManager.getConnection ("jdbc:mysql://localhost:3306/test","root","root");
		   		
         //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test");
         stmt = con.prepareStatement(qry);
         stmt.setString(1, _email);
         stmt.setString(2, _password);
         rs =  stmt.executeQuery();
        
         while (rs.next()) {
         
           
              
               String raxit = rs.getString("name");         
               //out.println(raxit);
               out.println("<br>");
               sen.setAttribute("Name",raxit);          
         }
         }
catch (SQLException e) {
			
			e.printStackTrace();
		}
  
   %>
  
   
   
   
   
   
    
  
  <%
  if(session.getAttribute("Name")!=null){
								String name=(String)session.getAttribute("Name");		
								out.print("<font style='color:navy'>Welcome "+name+"</font>");
								out.println("<br/>");
								}
								else{
								request.setAttribute("Error1","Plz Do login First");
								%>
								<jsp:forward page="../index.jsp"></jsp:forward>
							<%
							} 
							%>
							<a href="profilepic.jsp">upload profili</a><br/>
    <a href="compose.jsp"> compose mail</a><br/>
    <a href="inbox.jsp">inbox</a> <br/>
    <a href="sent.jsp">sent</a><br/>
    <a href="draft.jsp">draft</a> <br/>
    <a href="logout.jsp">logout</a>
  </body>
  
</html>
