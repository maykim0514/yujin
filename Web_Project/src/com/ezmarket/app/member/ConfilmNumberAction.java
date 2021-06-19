package com.ezmarket.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;

public class ConfilmNumberAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String inputCode = (String)request.getParameter("phoneCode");
		System.out.println(inputCode);
		if (inputCode.equals(new SendSmsAction().phone_code)) {
			out.println("ok");
		} else {
			out.println("not-ok");
		}
		return null;
	}

}
