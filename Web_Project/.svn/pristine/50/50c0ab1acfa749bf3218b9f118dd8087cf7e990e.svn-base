package com.ezmarket.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.ActionForward;

@WebServlet("*.me")
public class MemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		// 회원가입
		if (command.equals("/member/MemberJoinOk.me")) {
			try {
				forward = new MemberJoinOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/MemberJoinOk 오류");
				System.out.println(e);
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('회원가입 실패!')");
				out.println("</script>");
				out.close();
			}
			/// login.me로 보내면 맞는 login.jsp를 찾아준다.
		} else if (command.equals("/login.me")) {
			forward = new ActionForward();
			forward.setPath("/join,login/login.jsp");
			forward.setRedirect(false);
			/// join.me로 보내면 맞는 join.jsp를 찾아준다.
		} else if (command.equals("/join.me")) {
			forward = new ActionForward();
			forward.setPath("/join,login/join.jsp");
			forward.setRedirect(false);
			/// find_id.me로 보내면 맞는 find_id.jsp를 찾아준다.
		} else if (command.equals("/find_id.me")) {
			forward = new ActionForward();
			forward.setPath("/join,login/find_id.jsp");
			forward.setRedirect(false);
			/// id_found.me로 보내면 맞는 id_found.jsp를 찾아준다.
		} else if (command.equals("/id_found.me")) {
			forward = new ActionForward();
			forward.setPath("/join,login/id_found.jsp");
			/// find_pw1.me로 보내면 맞는 find_pw1.jsp를 찾아준다.
		} else if (command.equals("/find_pw1.me")) {
			forward = new ActionForward();
			forward.setPath("/join,login/find_pw1.jsp");
			forward.setRedirect(false);
			/// find_pw2.me로 보내면 맞는 find_pw2.jsp를 찾아준다.
		} else if (command.equals("/find_pw2.me")) {
			forward = new ActionForward();
			forward.setPath("/join,login/find_pw2.jsp");
			forward.setRedirect(false);
			/// find_pw3.me로 보내면 맞는 find_pw3.jsp를 찾아준다.
		} else if (command.equals("/find_pw3.me")) {
			forward = new ActionForward();
			forward.setPath("/join,login/find_pw3.jsp");
			forward.setRedirect(false);
			//login버튼을 눌렀을 때
		} else if (command.equals("/member/MemberLoginOk.me")) {
			try {
				forward = new MemberLoginOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/MemberLoginOk 오류");
			}
			//아이디 중복체크
		} else if (command.equals("/member/CheckId.me")) {
			try {
				forward = new CheckIdAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/CheckId 오류");
				System.out.println(e);
			}
			//휴대폰 인증
		} else if (command.equals("/member/sendSms.me")) {
			try {
				forward = new SendSmsAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/sendSms 오류");
				System.out.println(e);
			}
			//휴대폰 인증 확인
		} else if (command.equals("/member/confilmNumber.me")) {
			try {
				forward = new ConfilmNumberAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/confilmNumber 오류");
				System.out.println(e);
			}
			//이메일 인증
		} else if (command.equals("/member/sendEmail.me")) {
			try {
				forward = new SendEmailAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/sendEmail 오류");
				System.out.println(e);
			}
			//이메일 인증 확인
		} else if (command.equals("/member/confilmNumber_email.me")) {
			try {
				forward = new ConfilmNumber_emailAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/confilmNumber_email 오류");
				System.out.println(e);
			}
			// 로그아웃
		} else if (command.equals("/member/MemberLogout.me")) {
			request.getSession().invalidate();
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(request.getContextPath() + "/");
			///////////////////////////////////////////
			// 마이페이지 이동
		} else if (command.equals("/member/Mypage.me")) {
			try {
				forward = new MypageUsedBoardAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/Mypage 오류");
				System.out.println(e);
			}
			// 개인정보 수정 이동
		} else if (command.equals("/Mypage/Mypage_user_edit.me")) {
			forward = new ActionForward();
			forward.setPath("/Mypage/Mypage_user_edit.jsp");
			forward.setRedirect(false);
			// 개인정보 수정 완료
		} else if (command.equals("/Mypage/MypageEditOk.me")) {
			try {
				forward = new MypageEditOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/member/Mypage 오류");
				System.out.println(e);
			}
		} else {
			forward = new ActionForward();
			forward.setPath("/app/error/404.jsp");
			forward.setRedirect(false);
		}
		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}

	}
}
