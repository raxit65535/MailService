<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.zip.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'savaprofilepic.jsp' starting page</title>
    
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
String _email = (String)sen.getAttribute("Email");
 String connectionURL = "jdbc:mysql://localhost:3306/test";
        Connection con=null;
        String file = request.getParameter("file");
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            /* 
            Database connection, database id is root and password is blank
            */
            con = DriverManager.getConnection(connectionURL, "root", "root");
            PreparedStatement ps = con.prepareStatement("UPDATE mailuser set image=? where email=?");
            /* 
            inserting image in  pictures table*/
            //File file = new File(fl);

            FileInputStream fs = new FileInputStream(file);
            
            ps.setBinaryStream(1,fs,fs.available());
            ps.setString(2,_email);
            int i = ps.executeUpdate();

            if(i!=0){
              out.println("image inserted successfully");
            }
            else{
              out.println("problem in image insertion");
            }
        }
        catch (Exception e){
        System.out.println(e);
        }
%>

  </body>
</html>
