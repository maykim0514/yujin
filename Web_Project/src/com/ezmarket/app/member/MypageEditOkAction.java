package com.ezmarket.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberBean;
import com.ezmarket.app.member.dao.MemberDAO;

public class MypageEditOkAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();

		MemberDAO mdao = new MemberDAO();

		String userid = request.getParameter("userid");
		String userpw = request.getParameter("pswd");
		boolean login_check = mdao.login(userid, userpw) != null;
		if (login_check) {
			System.out.println("?");
			//비밀번호 일치 했을때

			// 파라미터 값 가져오기
			MemberBean member = new MemberBean();
			member.setUserid(request.getParameter("userid"));
			member.setUserpw(request.getParameter("newpswd"));
			member.setUserpostcode(request.getParameter("sample4_postcode"));
			member.setUseraddr(request.getParameter("sample4_roadAddress"));
			member.setUseremail(request.getParameter("email1") + "@" + request.getParameter("email2"));
			member.setUserphone("010" + request.getParameter("ph_m") + request.getParameter("ph_l"));

			if (mdao.userUpdate(member)) {
				// 회원 정보 수정 완료
				session.setAttribute("session_id", member);
				forward.setRedirect(false);
				forward.setPath("/member/Mypage.me");
			}
		}else {
			//비밀번호 일치 X
			forward.setRedirect(false);
			forward.setPath("/Mypage/Mypage_user_edit.me?result=false");
		}
		return forward;
	}
}
