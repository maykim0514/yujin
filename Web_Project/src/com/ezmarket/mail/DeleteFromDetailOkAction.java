package com.ezmarket.mail;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.mail.dao.MailDAO;

public class DeleteFromDetailOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		MailDAO mdao = new MailDAO();
		PrintWriter out = response.getWriter();		
		//JSONObject page = new JSONObject();
		
		int mailnum = Integer.parseInt(request.getParameter("mailnum"));
		//int pagenum = Integer.parseInt(request.getParameter("page"));
		
		
		//page.put("pagenum", pagenum);
		
		boolean deletecheck = mdao.deleteSenderMail(mailnum);
		
		if(deletecheck) {
			System.out.println(mailnum+" 삭제성공!");
		}
		
		/*out.println(page.toJSONString());
		System.out.println(page);
		out.close();*/
		
		return null;
	}
}
