package com.ezmarket.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberBean;
import com.ezmarket.app.member.dao.MemberDAO;



public class MemberLoginOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		MemberDAO mdao = new MemberDAO();
		HttpSession session = request.getSession();
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		MemberBean member = mdao.login(userid,userpw);
		if(member == null) {
//			로그인 실패
			forward.setPath(request.getContextPath()+"/join,login/login.jsp?result=false");
		}else {
//			로그인성공
			session.setAttribute("session_id", member);
			//메인페이지로 이동
			forward.setPath(request.getContextPath()+"/index.jsp");
		}
		forward.setRedirect(true);
		return forward;
	}
}
