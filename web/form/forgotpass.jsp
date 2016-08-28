<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for ForgotpassForm form</title>
		<link rel="stylesheet" type="text/css" href="../css/forgotpass.css"/>
	</head>
	<body>
	<%
	String femail = request.getParameter("email_ID");
	HttpSession sen = request.getSession();
	sen.setAttribute("Femail",femail);
	
	 %>
	 <center>
	 <div class="content">
	<h1>Forgot PassWord</h1>
		<html:form action="/forgotpass">
		
		Enter your Email :<html:text property="email_ID"/><html:errors property="email_ID"/><br/>
		<br/><br/>
			<html:submit styleClass="bt_submit" />
		</html:form>
		</div>
		</center>
	</body>
</html>

