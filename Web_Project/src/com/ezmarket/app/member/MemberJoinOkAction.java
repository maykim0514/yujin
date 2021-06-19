package com.ezmarket.app.member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberBean;
import com.ezmarket.app.member.dao.MemberDAO;


public class MemberJoinOkAction  implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		//가입시키는 코드
		//DAO사용
		MemberDAO mdao = new MemberDAO();
		MemberBean member = new MemberBean();
		member.setUserid(request.getParameter("userid"));
		member.setUserpw(request.getParameter("userpw"));
		member.setUsername(request.getParameter("username"));
		member.setUserphone(request.getParameter("userphone"));
		member.setUseremail(request.getParameter("useremail"));
		member.setUserpostcode(request.getParameter("userpostcode"));
		member.setUseraddr(request.getParameter("useraddr"));
		member.setUsercategory(request.getParameter("usercategory"));
		if(mdao.join(member)) {
			Cookie cookie = new Cookie("joinid", member.getUserid());
			cookie.setPath("/");
			response.addCookie(cookie);
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"/join,login/login.jsp");
		}
		return forward;
	}
}
