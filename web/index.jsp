<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for LoginForm form</title>
		<meta name="description" content="Demo of a Sliding Login Panel using jQuery 1.3.2" />
  	<meta name="keywords" content="jquery, sliding, toggle, slideUp, slideDown, login, login form, register" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />

	<!-- stylesheets -->
  	<link rel="stylesheet" href="css/login.css" type="text/css" media="screen" />

	 
  
            
              <script type="text/javascript" lang="javascript">
            
             function b()
             {
                 var user = document.getElementById("email").value;
                 var pass = document.getElementById("password").value;
                 var reg = /^([A-Za-z0-9_\-\.])+\@([s]+[e]+[c]+[u]+[r]+[e])+\.([c]+[o]+[m])$/;
                  /*var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;*/
                 
                 if(user.length==0)
                     {
                         alert("Please Enter Username..");
                         return false;
                     }
                    else if(pass.length==0)
                    {
                        alert("Please Enter Password..");
                        return false;
                    }
                    else if(pass.length<4)
                        {
                            alert("please enter password more than 4 charactor..");
                            return false;
                        }
                        else if(reg.test(user)==false)
                            {
                              alert("only @secure.com is availvable in our service");
                              return false;
                            }
                    else
                        {
                            
                            return true;
                        }
                        
             
                 
             }
             
            
        </script>
             
            
    
	
	
	
		<title>JSP for LoginForm form</title>
	</head>
	<body>
	<%
	HttpSession sen = request.getSession();
	String a = request.getParameter("email");
	String b = request.getParameter("password");
	sen.setAttribute("Email",a);
	sen.setAttribute("Password",b);
	 %>
	  <div class="left">
	 <h2>Secure Infotech </h2>
	 </div>
    <div id="container">
        <div class="content clearfix">
            <div class="left">
            
		<html:form action="/login" >
		<h1>Member Login</h1>
			<label class="grey">Email :</label>
			 <input   class="field"    type="email" name="email" id="email" size="30"/> 
			<label class="grey">password :</label>
			<input  class="field" type="password" name="password" id="password" size="30"/><br/><br/>
			 <div class="clear"></div><br/>
                           <input type="submit"  name="submit" value="Login" class="bt_login" onclick="return b();"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a class="lost-pwd" href="form/forgotpass.jsp">Lost your password?</a><br/><br/><br/>
	        
	         </html:form>
        </div>
           
            <div class="right">
                <form action="form/registration.jsp">
                    <label >Not a member yet? Sign Up!</label><br/><br/><br/>
		    <input type="submit"  value="Register" class="bt_register"/><br/><br/>
                </form>
            </div>
        </div>
    </div>	
    </body>
</html>

