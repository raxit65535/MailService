/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.yourcompany.struts.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.yourcompany.struts.form.RegistrationForm;

/** 
 * MyEclipse Struts
 * Creation date: 03-29-2013
 * 
 * XDoclet definition:
 * @struts.action path="/registration" name="registrationForm" input="/form/registration.jsp" scope="request" validate="true"
 */
public class RegistrationAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		RegistrationForm registrationForm = (RegistrationForm) form;// TODO Auto-generated method stub
		String _name=registrationForm.getName();
		String _surname=registrationForm.getSurname();
		String _password = registrationForm.getPassword();
		String _conformpassword = registrationForm.getConformpasswod();
		String _email = registrationForm.getEmail();
		String _altemail = registrationForm.getAltemail();
		
		
		boolean raxit = RepeatUser.checkAvailability(_email);
		
		if(raxit==false)
		{
		
			int status=RegustorUser.register(_name,_surname,_email,_altemail,_password,_conformpassword);
			if(status>0){
				System.out.println("registered");
				return mapping.findForward("success");
			}
			else{
			    System.out.println("error in registration");
				return mapping.findForward("failure");
			}
		}
		else
		{
			System.out.println("repeat user");
			return mapping.findForward("failure");
		}
		
			

			
		
		
				
}
}
