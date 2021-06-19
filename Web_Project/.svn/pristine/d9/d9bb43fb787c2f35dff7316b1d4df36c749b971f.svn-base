package com.ezmarket.app.member;

import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberBean;
import com.ezmarket.app.member.dao.MemberDAO;

public class find_id_phoneAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String username = (String) request.getParameter("username");
		String userphone = (String) request.getParameter("userphone");
		String page = (String) request.getParameter("page");
		ActionForward forward = new ActionForward();
		MemberDAO mdao = new MemberDAO();
		MemberBean member = new MemberBean();
		member = mdao.find_id_phone(username, userphone);
		if(member == null) {
//			아이디 찾기 실패
			forward.setPath(request.getContextPath()+"/join,login/login.jsp?result=lost");
		}else {
//			아이디 찾기 성공
			request.setAttribute("userid", member.getUserid());
			
			Cookie cookie = new Cookie("joinid", member.getUserid());
			cookie.setPath("/");
			response.addCookie(cookie);
			forward.setRedirect(true);
			
			if(page.equals("find_id")) {
				forward.setPath(request.getContextPath()+"/join,login/id_found.jsp");
			}else if(page.equals("find_pw2")) {
				request.setAttribute("member", member);
				forward.setPath(request.getContextPath()+"/join,login/find_pw3.jsp");
			}
		}
		forward.setRedirect(false);
		return forward;
	}

}
