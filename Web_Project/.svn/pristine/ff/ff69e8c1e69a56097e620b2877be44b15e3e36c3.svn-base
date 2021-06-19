package com.ezmarket.mail;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.CheckIdAction;

@WebServlet("*.ma")
public class MailFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		
		if(command.equals("/mail/MailInfo.ma")) {
			//getList(page, mailtype)에서 사용되는 json
			try {
				forward = new MailInfoAction().execute(request, response);
			}catch (Exception e) {
				System.out.println("/mail/MailInfo 오류");
				System.out.println(e);
			}
		}else if(command.equals("/mail/SearchInfo.ma")){
			//getList(page, mailtype, type, keyword)에서 사용되는 json
			try {
				forward = new SearchInfoAction().execute(request, response);
			}catch (Exception e) {
				System.out.println("/mail/SearchInfo 오류");
				System.out.println(e);
			}
		}else if(command.equals("/mail/InboxList.ma")){
			//받은 쪽지함
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/mail/inboxview.jsp");
		}else if(command.equals("/mail/SentMailList.ma")){
			//보낸 쪽지함
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/mail/sentmailview.jsp");
		}else if(command.equals("/mail/DraftMailList.ma")){
			//임시 쪽지함
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/mail/draftinboxview.jsp");
		}else if(command.equals("/mail/ImportantInboxList.ma")){
			//별표 쪽지함 : starredinboxview.jsp (미완성)
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/mail/starredinboxview.jsp");
		}else if(command.equals("/mail/DeletedInboxList.ma")){
			//휴지통 : trashcanview.jsp (미완성)
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/mail/trashcanview.jsp");
		}else if(command.equals("/mail/MailWrite.ma")){
			//쪽지보내기
			forward = new ActionForward();
			forward.setPath("/mail/sendview.jsp");
			forward.setRedirect(false);
		}else if(command.equals("/mail/Reply.ma")) {
			//답장하기
			try {
				forward = new ReplyAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/mail/Reply 오류");
				System.out.println(e);
			}
		}else if(command.equals("/mail/DraftWrite.ma")) {
			//임시저장했던 쪽지 보내기
			try {
				forward = new DraftWriteAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/mail/DraftWrite 오류");
				System.out.println(e);
			}
		}else if(command.equals("/mail/CheckID.ma")) {
			//존재하는 아이디로 쪽지를 보내는지 아이디체크
			try {
				forward = new CheckIdAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/mail/CheckID 오류");
				System.out.println(e);
			}
		}else if(command.equals("/mail/MailWriteOk.ma")){
			//쪽지보내기 창에서 "보내기" 클릭시
			try {
				forward = new MailWriteOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/mail/MailWriteOk 오류");
				System.out.println(e);
			}
		}else if(command.equals("/mail/SaveMailOK.ma")){
			//쪽지보내기 창에서 "임시저장" 클릭시
			try {
				forward = new SaveMailOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/mail/SaveMailOK 오류");
				System.out.println(e);
			}
		}else if(command.equals("/mail/MailDetailInfo.ma")){
			//쪽지 상세보기 
			try {
				forward = new MailDetailInfoAction().execute(request, response);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/mail/MailDetailInfo 오류");
			}
		}else if(command.equals("/mail/ChangeMail.ma")) {
			try {
				forward = new ChangeMailInfoAction().execute(request, response);
			} catch (Exception e) {
				System.out.println(e);
				System.out.println("/mail/changeMail 오류");
			}
		}else if(command.equals("/mail/ImpChangeOK.ma")){
			//별표(중요도) 바꿔주기
			try {
				forward = new ImpChangeOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/mail/ImpChangeOK 오류");
				System.out.println(e);
			}
		}else if(command.equals("/mail/DeleteFromDetailOK.ma")) {
			try {
				forward = new DeleteFromDetailOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/mail/DeleteMailOK 오류");
				System.out.println(e);
			}
		}else if(command.equals("/mail/DeleteMailOK.ma")){
			//쪽지 삭제하기 눌렀을때
			try {
				forward = new DeleteMailOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/mail/DeleteMailOK 오류");
				System.out.println(e);
			}
		}else if(command.equals("/mail/TrashDecision.ma")) {	
			//휴지통 비우기
			try {
				forward = new TrashDecisionAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/mail/TrashDecision 오류");
				System.out.println(e);
			}
		}else {
			//에러페이지
			forward = new ActionForward();
			forward.setPath("/app/error/404.jsp");
			forward.setRedirect(false);
		}
		if(forward!=null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
}
