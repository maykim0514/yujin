package com.ezmarket.mail;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.mail.dao.MailBean;
import com.ezmarket.mail.dao.MailDAO;

public class MailWriteOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		
		MailBean mail = new MailBean();
		MailDAO mdao = new MailDAO();
		
		String temp = request.getParameter("mailnum");
		int mailnum = temp == null ? 0 : Integer.parseInt(temp);
		
		if(mailnum != 0) {
			//임시저장했던 쪽지는 지워주기
			mdao.deleteMail(mailnum);
		}
		
		//쪽지 내용을 TBL_MAIL에 저장을 잘 했는지 체크할 flag
		boolean sendcheck=false;
		
		mail.setUserid(request.getParameter("userid"));
		mail.setTargetid(request.getParameter("targetid"));
		mail.setMailcontent(request.getParameter("mailcontent"));
		
		//TBL_MAIL에 보내는 쪽지 삽입
		sendcheck = mdao.sendMail(mail);
		
		if(!sendcheck){
			PrintWriter out =response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.println("<script>");
			out.println("alert('쪽지 보내기에 실패했습니다. 다시 시도해 주세요')");
			out.println("</script>");
		}
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		out.println("<script>");
		out.println("alert('쪽지를 보냈습니다.')");
		out.println("opener.document.location.reload()");
		out.println("self.close();");
		out.println("</script>");
		
		return null;
	}
}
