package com.ezmarket.app.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;

public class SendEmailAction implements Action {
	static String email_code;
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response){
		PrintWriter out = null;
		try {
			out = response.getWriter();
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		String userEmail=(String) request.getParameter("userEmail");
		System.out.println("userEmail : " + userEmail);
		if(userEmail.contains("@")&&userEmail.contains(".")) {
			SendEmail send = new SendEmail();
			try {
				email_code=send.generateAndSendEmail(userEmail);
				System.out.println("해당 이메일에 인증코드 전송 성공!!");
				out.println("ok");
			} catch (Exception e) {
				System.out.println(e);
				e.printStackTrace();
			}
		}else {
			out.println("not-ok");
		}
		return null;
	}

}
