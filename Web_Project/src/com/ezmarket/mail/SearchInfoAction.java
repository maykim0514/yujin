package com.ezmarket.mail;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.mail.dao.MailDAO;

public class SearchInfoAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		MailDAO mdao = new MailDAO();
		PrintWriter out = response.getWriter();		
		JSONObject mail = new JSONObject();
		
		//처음 넘어왔을 때는 page라는 변수를 전에 사용하지 않았기 때문에 page라는 변수를 찾으면 null이 담길 것이다.
		String temp = request.getParameter("page");
		int page = temp==null?1:Integer.parseInt(temp);
		
		//쪽지함 종류
		String mailtype = request.getParameter("mailtype");
		
		//검색 타입 
		String type = request.getParameter("type");
		String[] arrType = type.split("");
		
		//키워드
		//String keyword = request.getParameter(")
		
		
		
		
		
		return null;
	}
}
