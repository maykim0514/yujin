package com.ezmarket.mail;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.mail.dao.MailBean;
import com.ezmarket.mail.dao.MailDAO;

public class DraftWriteAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		MailDAO mdao = new MailDAO();
		
		String temp = request.getParameter("mailnum");
		int mailnum = temp == null ? 0 : Integer.parseInt(temp);
		
		//임시저장한 쪽지에만 해당
		MailBean draftmail = mdao.getMailDetail(mailnum);
		
		System.out.println("================mailwriteaction(draftmail)================");
		System.out.println(draftmail);
		System.out.println("===============================================");
		
		request.setAttribute("draftmail", draftmail);
		forward.setPath("/mail/draftsendview.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
}
