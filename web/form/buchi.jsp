<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Secure Infotech</title>
<meta name="keywords" content="Wooden Template, Portfolio Website, Personal, Free CSS Template, XHTML" />
<meta name="description" content="Wooden Template, Portfolio Website, Free CSS Template from TemplateMo.com" />
<link href="../css/templatemo_style.css" rel="stylesheet" type="text/css" />

    <meta http-equiv="Content-Language" content="en-us" />
	<meta name="author" content="Niall Doherty" />
    <script src="../js/jquery-1.2.1.pack.js" type="text/javascript"></script>
    <script src="../js/jquery-easing.1.2.pack.js" type="text/javascript"></script>
    <script src="../js/jquery-easing-compatibility.1.2.pack.js" type="text/javascript"></script>
    <script src="../js/coda-slider.1.1.1.pack.js" type="text/javascript"></script>
    <!-- 
    The CSS. You can of course have this in an external .css file if you like.
    Please note that not all these styles may be necessary for your use of Coda-Slider, so feel free to take out what you don't need.
    -->
    <!-- Initialize each slider on the page. Each slider must have a unique id -->
    <script type="text/javascript">
    jQuery(window).bind("load", function() {
    jQuery("div#slider1").codaSlider()
    // jQuery("div#slider2").codaSlider()
    // etc, etc. Beware of cross-linking difficulties if using multiple sliders on one page.
    });
    </script>
      <script type="text/javascript" language="javascript">
            
             function k()
             {
                 var to = document.getElementById("receiver").value;
                 var message = document.getElementById("msg").value;
                  var subject = document.getElementById("subject").value;
                 var reg = /^([A-Za-z0-9_\-\.])+\@([s]+[e]+[c]+[u]+[r]+[e])+\.([c]+[o]+[m])$/;
                  /*var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;*/
                 
                 if(to.length==0 || msg.length==0 || subject.length==0)
                     {
                         alert("Please Enter all the fields");
                         return false;
                     }
                      else if(reg.test(to)==false)
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



 <script>

var request;
function viewAllsent(name)
{
var v=name;
var url="deletesent.jsp?val1="+v;

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

String jadi = (String)sen.getAttribute("Name");

 %>
 <div id="templatemo_site_title_bar_wrapper">

	<div id="templatemo_site_title_bar">
    
    	<div id="site_title">
            <h1>
            <font color="black">
                    MailSystem  
              <!--   <span>represents</span> -->
           </font>
            </h1>
        </div>
        <div id="twitter"><a href="#">Hi ,<%=jadi %></a>&nbsp;&nbsp;&nbsp;<a href="logout.jsp">(Logout)</a></div><br/>
       
       
      
	</div> <!-- end of templatemo_site_title_bar -->
	
</div> <!-- end of templatemo_site_title_bar_wrapper -->


<div id="templatemo_content_wrapper">

  <div id="templatemo_content">
    
    <!-- start of slider -->

<div class="slider-wrap">
	<div id="slider1" class="csw">
		<div class="panelContainer">
		
			<div class="panel" title="Home">
				<div class="wrapper">
                
					<h2>Welcome to our Website!</h2>
                    
					<div class="image_wrapper fl_image">
	                    <img src="../images/templatemo_image_01.jpg" alt="image"/>
                    </div>
                    

                    <p class="em_text"><br/>This website  is provided by <b><font color="#FF7F50"><br/><br/>"SecureInfoTech Pvt Ltd"</font></b> for free of charge. <br/><br/>  
	                 Credits go to......<br/><br/>
	                 Raxit Solanki(10IT50)<br/><br/>
	                 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	                 Heli Shah(10IT46)</p>



 
					<p><a href="#2" class="cross-link" title="Go to Page 2">Next Page &#187;</a></p>
				</div>
			</div>
			<div class="panel" title="Inbox">
				<div class="wrapper">
                
					<h2>Inbox</h2>
                    
  
  
  
   <%
 
  String _receiver = (String)sen.getAttribute("Email");
  String _flag = "0"; 
  					try {
		Class.forName("com.mysql.jdbc.Driver");
	Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
			PreparedStatement ps1=con1.prepareStatement("Select * from inbox28 where receiver=? and flag = ?");
			ps1.setString(1,_receiver);
			ps1.setString(2,_flag);
			ResultSet rs1=ps1.executeQuery();
			out.print("<div id='bottom'></div>");
			
			out.print("<table border=1 size=100% cellspacing='4' cellpadding='5'>");
			out.print("<tr><th>SENDER</th><th>Subject</th><th>Message</th><th>DATEs</th><th>Delete</th></tr>");
			while(rs1.next()){
				int id=rs1.getInt(1);
				System.out.print(id);
				out.print("<tr>");
				out.print("<td>" + rs1.getString(2) + "</td>");
				//out.print("<td>" + rs.getString(3) + "</td>");
				out.print("<td>" + rs1.getString(4) + "</td>");
				out.print("<td>" + rs1.getString(5) + "</td>");
				out.print("<td>" + rs1.getString(7) + "</td>");
				//out.print("<td>" + rs.getString(4) + "</td>");
				//out.print("<td>" DeleteServlet.Del`"</td>");
				out.print("<td><a href='delete.jsp?val="+rs1.getInt(1)+"'> Delete</a></td>");
			
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
  
  
  
  
  
  
                    
             
       <div class="cleaner_h20"></div>
					
<p><a href="#1" class="cross-link" title="Go to Page 1">&#171; Previous Page</a> | <a href="#3" class="cross-link" title="Go to Page 3">Next Page 

&#187;</a></p>
				</div>
			</div>		
			







<div class="panel" title="Sent">
				
<div class="wrapper">
					
                     <h2>Sent</h2>



 <%
  
  String _receiver1 = (String)sen.getAttribute("Email");
  String _flag1 = "0";
  					try {
		Class.forName("com.mysql.jdbc.Driver");
	Connection con2= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
			PreparedStatement ps2=con2.prepareStatement("Select * from inbox28 where sender=? and flag = ?");
			ps2.setString(1,_receiver1);
			ps2.setString(2,_flag1);
			ResultSet rs2=ps2.executeQuery();
			out.print("<div id='bottom'></div>");
			
			out.print("<table border=1 size=100% cellspacing='4' cellpadding='5'>");
			out.print("<tr><th>SENDER</th><th>Subject</th><th>Message</th><th>DATEs</th><th>Delete</th></tr>");
			while(rs2.next()){
				int id=rs2.getInt(1);
				System.out.print(id);
				out.print("<tr>");
				//out.print("<td>" + rs.getString(2) + "</td>");
				out.print("<td>" + rs2.getString(3) + "</td>");
				out.print("<td>" + rs2.getString(4) + "</td>");
				out.print("<td>" + rs2.getString(5) + "</td>");
				out.print("<td>" + rs2.getString(7) + "</td>");
				//out.print("<td>" + rs.getString(4) + "</td>");
				//out.print("<td>" DeleteServlet.Del`"</td>");
				out.print("<td><a href='deletesent.jsp?val1="+rs2.getInt(1)+"'> Delete</a></td>");
			
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



                    
                   
					<p><a href="#2" class="cross-link" title="Go to Page 2">&#171; Previous Page</a> | <a href="#4" class="cross-link" title="Go to Page 4">Next Page 

&#187;</a></p>
				</div>
			 </div>
			<!--<div class="panel" title="Draft">
				<div class="wrapper">
					
                    <h2>Draft</h2>
                    
                   






                    
					<p><a href="#3" class="cross-link" title="Go to Page 3">&#171; Previous Page</a> | <a href="#5" class="cross-link" title="Go to Page 5">Next Page 

&#187;</a></p>
				</div>
			</div> -->
			<div class="panel" title="Compose">
				<div class="wrapper">
					
                    <h2>Compose</h2>

                    <div id="contact_form">
                    
                        <form method="post" name="contact" action="../compose.do">

                      
                        
                        <label for="email">To:</label> <input type="text" id="receiver" name="receiver" class="validate-email required input_field" />
                        <div class="cleaner_h10"></div>
                        
                        <label for="subject">Subject:</label> <input type="text" name="subject" id="subject" class="input_field" />
                        <div class="cleaner_h10"></div>
                        
                      
  <label for="text">Message:</label> <textarea id="msg" name="msg" rows="0" cols="0" class="required"></textarea>
                        <div class="cleaner_h10"></div>
                        
                        <input style="font-weight: bold;" type="submit" class="submit_btn" name="submit" id="submit" value=" Send " onclick="return k();" />
                        <input style="font-weight: bold;" type="reset" class="submit_btn" name="reset" id="reset" value=" Reset " />
                        
                        </form>
                    </div>

                    <div class="address_info">
                    	<h3>Thoughts</h3>
                    	"Wake up...Arrise <br />
						and stop not till the goal is achived"<br />
						-SwamiVivekanand
                    </div>
                    
                    <div class="cleaner_h20"></div>
                    
					<p><a href="#4" class="cross-link" title="Go to Page 4">&#171; Previous Page</a></p>
				</div>
			</div>
			
		</div><!-- .panelContainer -->
	</div><!-- #slider1 -->
</div><!-- .slider-wrap -->

<p id="cross-links" style="width:0px; height: 0px; font-size:0; overflow: hidden;">
	Same-page cross-link controls:<br />
	<a href="#1" class="cross-link">Page 1</a> | <a href="#2" class="cross-link">Page 2</a> | <a href="#3" class="cross-link">Page 3</a> | <a href="#4" class="cross-link">Page 4</a> | <a href="#5" 

class="cross-link">Page 5</a>
</p>

    <!-- end of slider -->
	</div> 
	<!-- end of templatemo_content -->
</div> <!-- end of templatemo_content_wrapper -->

<div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">
	    Copyright © 2048 <a href="#"><b>SecureInfotech Pvt Ltd</b></a>
        <div class="cleaner_h10"></div>
        
	</div> <!-- end of templatemo_footer -->
</div> <!-- end of templatemo_footer_wrapper -->
</body>
</html>