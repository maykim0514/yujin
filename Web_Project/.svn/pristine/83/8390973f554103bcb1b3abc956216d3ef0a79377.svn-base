package com.ezmarket.mail;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberBean;
import com.ezmarket.mail.dao.MailBean;
import com.ezmarket.mail.dao.MailDAO;

public class ChangeMailInfoAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		MailDAO mdao = new MailDAO();
		PrintWriter out = response.getWriter();		
		JSONObject change = new JSONObject();
		
		HttpSession session  = request.getSession();     
		MemberBean user = (MemberBean) session.getAttribute("session_id");
		String userid = user.getUserid();
		
		int mailnum = Integer.parseInt(request.getParameter("mailnum"));		
		String mailtype = request.getParameter("mailtype");
		int action = Integer.parseInt(request.getParameter("action"));
		
		String type = request.getParameter("option");
		
		//키워드
		String keyword = request.getParameter("keyword");
		
		int changedMailnum = 0;
		if(action == 0) {
			changedMailnum = mdao.toPrev(mailtype, mailnum, userid);
		}else {
			changedMailnum = mdao.toNext(mailtype, mailnum, userid);
		}
		
		change.put("changedMailnum", changedMailnum);
		
		out.println(change.toJSONString());		
		out.close();
		
		return null;
	}
}
