package com.ezmarket.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberDAO;

public class pw1Action implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();
		String userid = (String) request.getParameter("userid");
		MemberDAO mdao = new MemberDAO();
		
		//같은 아이디가 없을 때 
		if(mdao.checkId(userid)) {
			forward.setPath(request.getContextPath()+"/join,login/find_pw1.jsp?result=false");
		//같은 아이디가 있을 때
		}else {
			request.setAttribute("userid", userid);
			forward.setPath(request.getContextPath()+"/join,login/find_pw2.jsp");
		}
		forward.setRedirect(false);
		return forward;
	}

}
