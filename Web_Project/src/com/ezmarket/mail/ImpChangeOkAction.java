package com.ezmarket.mail;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberDAO;
import com.ezmarket.mail.dao.MailBean;
import com.ezmarket.mail.dao.MailDAO;

public class ImpChangeOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();
		JSONObject result = new JSONObject();
		
		MailDAO mdao = new MailDAO();
		MailBean mail = new MailBean();
		
		int mailnum = Integer.parseInt(request.getParameter("mailnum"));
		
		System.out.println(mailnum);
		
		mail = mdao.getMailDetail(mailnum);
		String importance = mail.isImportant();

		if(importance.equals("0")) {
			if(mdao.important(mailnum)){
				// 0 -> 1
				result.put("important", 1);
			}
		}else {
			if(mdao.notimportant(mailnum)) {
				// 1 -> 0
				result.put("important", 0);
			}
		}
		
		out.println(result.toJSONString());
		out.close();
		
		return null;
	}
}
