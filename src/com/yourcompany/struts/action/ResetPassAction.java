/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.yourcompany.struts.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.yourcompany.struts.form.ResetPassForm;

/** 
 * MyEclipse Struts
 * Creation date: 03-31-2013
 * 
 * XDoclet definition:
 * @struts.action path="/resetPass" name="resetPassForm" input="/form/resetPass.jsp" scope="request" validate="true"
 * @struts.action-forward name="success" path="/form/login.jsp" redirect="true"
 */
public class ResetPassAction extends Action {
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
		ResetPassForm resetPassForm = (ResetPassForm) form;// TODO Auto-generated method stub
		
		String _newpass = resetPassForm.getNewpass();
		String _conformpass = resetPassForm.getCnpass();
		
		HttpSession sen = request.getSession();
		String foo = (String) sen.getAttribute("Code");
		System.out.println(foo);
		
		int status = Reset.reset(_newpass, _conformpass, foo);
		
		if(status>0)
		{
			System.out.println("reset successful");
			
			return mapping.findForward("success");
		}
		else
		{
			System.out.println("could not purform the reset action");
			return mapping.findForward("failure");
		}
		
		
		
		
		//return null;
	}
}