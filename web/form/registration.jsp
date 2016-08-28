<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registeration</title>
      <link rel="stylesheet" type="text/css" href="../css/registration.css">
        <script type="text/javascript" language="javascript">
            
      
       function k()
            {
                var nm,sname,em,altem,pass,cpass;
                
                var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                var reg1 = /^([A-Za-z0-9_\-\.])+\@([s]+[e]+[c]+[u]+[r]+[e])+\.([c]+[o]+[m])$/;
                nm = document.getElementById("name").value;
                 sname = document.getElementById("surname").value;
                 em = document.getElementById("email").value;
                 altem = document.getElementById("altemail").value;
                 pass = document.getElementById("password").value;
                 cpass = document.getElementById("conformpasswod").value;
                 
                 
                 
                 
                
                var error;
                
                if(nm.length==0 || sname.length==0 || em.length==0 || altem.length==0 || pass.length==0 || cpass.length==0 )
                    {
                        alert("Please fill all the fields of form...");
                        //error  "Please fill all the fields of form...\n";
                        return false;    
                    }
                    
        else if(reg.test(altem)== false)
            {
                alert("Enter Proper alternative email address...");
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
              
              
              else if(reg1.test(em)== false)
              {
                  alert("Only @ secure.com domain is provided by us...");
                
                return false;
              }
         
              else
                  {
                      return true;
                  }
                  
           }
           
        </script>    
    </head>
    <body>
    <center>
       <div class="content">
        <h1> Registration form</h1>
        
        <html:form action="/registration" method="get">
            
            name     : <input type="text" name="name" id="name" size="30"/> <br/> <br/>
            
            surname  : <input type="text" name="surname" id="surname" size="30"><br/><br/> 
            
            E-Mail ID : <input type="text" name="email" id="email" size="30"/> <br/> <br/>
            
           Alt E-Mail ID : <input type="text" name="altemail" id="altemail" size="30"/> <br/> <br/>
           
                   
            Password : <input type="password" name="password" id="password" size="30"/> <br/> <br/>
            
           ConformPassword : <input type="password" name="conformpasswod" id="conformpasswod" size="30"/> <br/> <br/>
            
                    
                     <html:submit  value="Registor" onclick="return k();" styleClass="bt_register"/>     
                        </html:form>
        </div>
        </center>
    </body>
</html>

