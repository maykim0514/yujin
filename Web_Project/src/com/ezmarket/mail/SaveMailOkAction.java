package com.ezmarket.mail;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.mail.dao.MailBean;
import com.ezmarket.mail.dao.MailDAO;

public class SaveMailOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		
		MailBean mail = new MailBean();
		MailDAO mdao = new MailDAO();
		
		String temp = request.getParameter("mailnum");
		int mailnum = temp == null ? 0 : Integer.parseInt(temp);
		
		
		//임시 쪽지 내용을 TBL_MAIL에 저장을 잘 했는지 체크할 flag
		boolean savecheck=false;
		
		mail.setUserid(request.getParameter("userid"));
		mail.setTargetid(request.getParameter("targetid"));
		mail.setMailcontent(request.getParameter("mailcontent"));

		
		if(mailnum != 0) {
			//임시저장했던 쪽지는 지워주기
			if(mdao.updateMail(mailnum, mail)) {
				savecheck=true;
			}
		}else {
			//TBL_MAIL에 임시 저장하는 쪽지 정보 삽입
			savecheck = mdao.saveMail(mail);
		}
		
		if(!savecheck){
			PrintWriter out =response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.println("<script>");
			out.println("alert('임시저장에 실패했습니다.')");
			out.println("</script>");
		}
	
		PrintWriter out =response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		out.println("<script>");
		out.println("alert('임시저장했습니다.')");
		out.println("opener.document.location.reload()");
		out.println("self.close();");
		out.println("</script>");
		
		return null;
	}
}
