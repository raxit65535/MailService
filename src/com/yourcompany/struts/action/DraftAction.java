/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.yourcompany.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.yourcompany.struts.form.DraftForm;

/** 
 * MyEclipse Struts
 * Creation date: 03-31-2013
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class DraftAction extends Action {
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
		// TODO Auto-generated method stub
		HttpSession sen = request.getSession();
		/*String _sender=(String)sen.getAttribute("Email");
		String _receiver=(String)sen.getAttribute("Receiver");
		String _subject=(String)sen.getAttribute("Subject");
		String _message=(String)sen.getAttribute("Message");
		*/
		DraftForm draftform = (DraftForm)form;
		String _sender = draftform.getSender();
		String _receiver = draftform.getReceiver();
		String _subject = draftform.getSubject();
		String _message = draftform.getMsg();
		int i=SavetoDraft.save(_sender, _receiver, _subject, _message);
		
		if(i>0)
		{
			System.out.println("saved to draft");
			return mapping.findForward("success");
			
		}
		else
		{
			System.out.println("error occured");
			return mapping.findForward("failure");
		}
		}

		//return null;
	}