package com.ezmarket.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;

public class ConfilmNumber_emailAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String inputCode = (String)request.getParameter("emailCode");
		if (inputCode.equals(new SendEmailAction().email_code)) {
			out.println("ok");
		} else {
			out.println("not-ok");
		}
		return null;
	}

}
