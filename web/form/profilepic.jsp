<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD><TITLE>Display file upload form to the user</TITLE></HEAD>
<BODY> <form action="savaprofilepic.jsp" method="post">
<br><br><br>
<center>
<table border="0" bgcolor=#ccFDDEE>
<tr>
<center>
<td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>
<tr>
<td colspan="2" align="center"> </td>
</tr>
<tr>
<td><b>Choose the file To Upload:</b></td>
<td><INPUT NAME="file" TYPE="file"></td>
</tr>
<tr>
<td colspan="2" align="center"> </td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="save"> </td>
</tr>
</table>
</center>
</form>

</BODY>
</HTML>