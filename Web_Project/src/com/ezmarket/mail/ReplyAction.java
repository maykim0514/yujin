package com.ezmarket.mail;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.mail.dao.MailBean;
import com.ezmarket.mail.dao.MailDAO;

public class ReplyAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		MailDAO mdao = new MailDAO();
		
		String temp = request.getParameter("mailnum");	
		int mailnum = temp == null ? 0 : Integer.parseInt(temp);
		
		MailBean mail = null;
		String sender = null;
		if(mailnum != 0) {
			mail = mdao.getMailDetail(mailnum);
			sender = mail.getUserid();
		}
		
		request.setAttribute("sender", sender);
		
		forward.setPath("/mail/replyview.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
}
