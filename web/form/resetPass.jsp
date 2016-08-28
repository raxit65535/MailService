<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for ResetPassForm form</title>
		<link rel="stylesheet" type="text/css" href="../css/resetpswd.css"/>
			</head>
			 <script type="text/javascript" lang="javascript">
			 function m()
			 {
			     var pass = document.getElementById("newpass").value;
                  var cpass = document.getElementById("cnpass").value;
                  
                  if( pass.length==0 || cpass.length==0 )
                    {
                        alert("Please fill all the fields of form...");
                        //error  "Please fill all the fields of form...\n";
                        return false;    
                    }
                     
                 else if(pass.length<4)
                 {
                  alert("Enter password more than 4  character...");
                
                return false;
                 }
                else if(pass!=cpass)
                 {
                  alert("Password not match...");
                
                return false;
                }
                   else
                    {
                    return true;
                    }
                  }
			 </script>
	<body>
	
	<%  
	String s1 = request.getQueryString(); 
	    
	   HttpSession sen = request.getSession(); 
	   sen.setAttribute("Code",s1); 
	   String code = (String)sen.getAttribute("Code"); 
	   if(code==null) 
	   { 
	   %>
	   <jsp:forward page="login.jsp"></jsp:forward>
<%
	 }
	     %>
   
	 <div class="content">
		<html:form action="/resetPass" >
		
		<h1>Reset password</h1>
		Password : <input type="password" name="newpass" id="newpass" size="30"/> <br/> <br/>
 confirmPassword :  <input type="password" name="cnpass" id="cnpass" size="30"/> <br/> <br/>			
       <html:submit value="Re-Password" styleClass="bt_submit" onclick="return m();" />
		</html:form>
		</div>

	</body>
</html>

