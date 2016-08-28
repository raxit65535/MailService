<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page  import="com.yourcompany.struts.action.*"  %>
<%@ page import = "java.sql.*" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import = "java.text.DateFormat" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'savetodraft.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
    <%
    HttpSession sen = request.getSession();
    String _sender = (String)sen.getAttribute("Email");
    String _receiver = request.getParameter("receiver");
    String _subject =request.getParameter("subject");
    String _msg = request.getParameter("msg"); 
      
     DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
         java.util.Date date = new java.util.Date();
         String _dat=dateFormat.format(date);
   // SavetoDraft ob1 = new SavetoDraft();
   String _flag = "1";
    int status = 0;
   					try {
		Class.forName("com.mysql.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
			//String sql = "insert into draft(sender,receiver,
			PreparedStatement ps=con.prepareStatement("Insert into inbox28(sender,receiver,subject,message,flag,date) values(?,?,?,?,?,?)");
			ps.setString(1,_sender);
			ps.setString(2,_receiver);
			ps.setString(3,_subject);
			ps.setString(4,_msg);
			ps.setString(5,_flag);
			ps.setString(6,_dat);
		    status=ps.executeUpdate();
			
			if(status>0)
			{
					out.println(""+_receiver);
					out.println(""+_subject);
					out.println(""+_msg);			
			}
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
    
     %>
  </body>
</html>
