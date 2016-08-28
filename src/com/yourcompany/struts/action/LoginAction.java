/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.yourcompany.struts.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.sun.net.httpserver.Authenticator.Success;
import com.yourcompany.struts.form.LoginForm;

/** 
 * MyEclipse Struts
 * Creation date: 03-29-2013
 * 
 * XDoclet definition:
 * @struts.action path="/login" name="loginForm" input="/form/login.jsp" scope="request" validate="true"
 */
public class LoginAction extends Action {
	/*
	 * Generated Methods
	 */

	// s="success";
	//String f="failure";
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		LoginForm loginForm = (LoginForm) form;// TODO Auto-generated method stub
		String _email=loginForm.getEmail();
		String _password=loginForm.getPassword();
		
		/*HttpSession sen = request.getSession();
		sen.setAttribute("Email",_email);
		sen.setAttribute("Password", _password);
		String uname = (String)sen.getAttribute("Email");
  		String password = (String)sen.getAttribute("Password");
	*/	
		boolean status=VerifyLogin.checkLogin(_email,_password);
		if(status==true){
			HttpSession sen=request.getSession();
			sen.setAttribute("Email",_email);
			sen.setAttribute("Password", _password);
			return mapping.findForward("success");
		}
		else{
			System.out.println("login fail please try again ");
			return mapping.findForward("failure");
		}
		/*
		
		if(email=="raxit" && password=="raxit")
		{
			return mapping.findForward("success");
			
		}
		else
		{
			return mapping.findForward("failure");
		}*/
		//return null;
	}
}