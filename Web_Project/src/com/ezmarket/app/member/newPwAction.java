package com.ezmarket.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberDAO;

public class newPwAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();
		String newPw = (String) request.getParameter("newUserpw");
		String userid = (String) request.getParameter("userid");
		System.out.println("find_pw3--param--> userid = "+userid+", newPw = "+newPw);
		MemberDAO mdao = new MemberDAO();
		
		if(mdao.change_pw(userid, newPw)) {
			//비밀번호 수정 성공!
			forward.setPath(request.getContextPath()+"/join,login/login.jsp?result=change_pw_success");
		}else {
			//비밀번호 수정 실패!
			forward.setPath(request.getContextPath()+"/join,login/login.jsp?result=change_pw_fail");
		}
		forward.setRedirect(true);
		return forward;
	}

}
