<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
  <script>

var request;
function viewAll(name)
{
var v=name;
var url="delete.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getAllInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getAllInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('bottom').innerHTML=val;
}
}

</script>
  
    <base href="<%=basePath%>">
    
    <title>My JSP 'inbox.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>&nbsp; 
  <%
  HttpSession sen = request.getSession();
  String _receiver = (String)sen.getAttribute("Email");
  String _flag = "0"; 
  					try {
		Class.forName("com.mysql.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
			PreparedStatement ps=con.prepareStatement("Select * from inbox28 where receiver=? and flag = ?");
			ps.setString(1,_receiver);
			ps.setString(2,_flag);
			ResultSet rs=ps.executeQuery();
			out.print("<div id='bottom'></div>");
			
			out.print("<table border=0 size=100% cellspacing='4' cellpadding='5'>");
			out.print("<tr><th>SENDER</th><th>Subject</th><th>Message</th><th>DATEs</th><the>Delete</th></tr>");
			while(rs.next()){
				int id=rs.getInt(1);
				System.out.print(id);
				out.print("<tr>");
				out.print("<td>" + rs.getString(2) + "</td>");
				//out.print("<td>" + rs.getString(3) + "</td>");
				out.print("<td>" + rs.getString(4) + "</td>");
				out.print("<td>" + rs.getString(5) + "</td>");
				out.print("<td>" + rs.getString(7) + "</td>");
				//out.print("<td>" + rs.getString(4) + "</td>");
				//out.print("<td>" DeleteServlet.Del`"</td>");
				out.print("<td><a href='form/delete.jsp?val="+rs.getInt(1)+"'>Delete</a></td>");
			
				out.print("</tr>");
			
			}
			out.print("</table>");
			//out.print("<table align='right'width='40%'>");
			//out.print("<tr><td><a href='DeleteServlet'>Delete</a></td></tr>");
			
			//out.print("</table>");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		%>
  </body>
</html>
