<%@ page language="java" pageEncoding="ISO-8859-1"%>
    <%@page language="java" import="java.sql.*" %>
    <%@page import="java.text.DateFormat" %>
    <%@page import="java.text.SimpleDateFormat" %>
    <%@page import="java.util.Calendar"%>
    <%@page import="java.util.Date" %>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
<!--  <script type="text/javascript">
function submitForm()
{
document.forms[0].action = "/compose.do?method=send"
document.forms[0].submit();
}
</script>-->
		<title>JSP for ComposeForm form</title>
	
	
	
	</head>
	<body>
	
	
	
	
		 
		<html:form action="/compose" method="post">
		 
		<table border="0" width="60%" align="center">
           
            <caption><h2>Send New E-mail</h2></caption>
            <tr>
                <td width="50%">To </td>
                <td><input type="email" name="receiver" id="receiver" size="50"/></td>
            </tr>
            <tr>
                <td>Subject </td>
                <td><input type="text" name="subject" id="subject" size="50"/></td>
            </tr>
            <tr>
                <td>Message </td>
                <td><textarea rows="10" cols="39" name="msg" id="msg"></textarea> </td>
            </tr>
           
			<tr>
                <td colspan="2" align="center"><html:submit value="send" property="send" /> 
                &nbsp; &nbsp; &nbsp;<a href="savetodraft.jsp">save</a> </td>
                
            <!--     <td> <html:submit property="method" value="save" /></td> -->
                
               
            </tr>
            </table>
            
		</html:form>
	
		
		
		
	</body>
	
	
</html>

