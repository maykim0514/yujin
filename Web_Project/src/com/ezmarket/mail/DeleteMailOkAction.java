package com.ezmarket.mail;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.mail.dao.MailDAO;

public class DeleteMailOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		MailDAO mdao = new MailDAO();
		
		String mailnums = request.getParameter("checkbox");
		String[] arrMailNum = mailnums.toString().split(",");
		
		for (int i = 0; i < arrMailNum.length; i++) {
			int mailnum = Integer.parseInt(arrMailNum[i]);
			boolean deletecheck = mdao.deleteSenderMail(mailnum);
			if(deletecheck) {
				System.out.println(arrMailNum[i]+" 삭제성공!");
			}
		}
		
		return null;
	}
}
