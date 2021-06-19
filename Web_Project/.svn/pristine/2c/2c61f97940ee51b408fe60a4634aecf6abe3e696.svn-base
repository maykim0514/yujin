package com.ezmarket.mail;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.mail.dao.MailBean;
import com.ezmarket.mail.dao.MailDAO;

public class TrashDecisionAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//ActionForward forward = new ActionForward();
		
		MailDAO mdao = new MailDAO();
		
		String mailnums = request.getParameter("checkbox");
		String[] arrMailNum = mailnums.toString().split(",");

		System.out.println(mailnums);
		
		String action = request.getParameter("action");
		
		System.out.println(action);
		
		if(action.equals("restore")) {
			for (int i = 0; i < arrMailNum.length; i++) {
				int mailnum = Integer.parseInt(arrMailNum[i]);
				boolean restorecheck = mdao.restoreMail(mailnum);
				//체크하고 지우기
				if(restorecheck) {
					//체크하고 지우기
					System.out.println(arrMailNum[i]+" 복구성공!");
				}
			}
		}else if(action.equals("empty")) {
			for (int i = 0; i < arrMailNum.length; i++) {
				int mailnum = Integer.parseInt(arrMailNum[i]);
				boolean completedelete = mdao.deleteMail(mailnum);
				//체크하고 지우기
				if(completedelete) {
					System.out.println(arrMailNum[i]+" 삭제성공!");
				}
			}
		}
		
		return null;
	}
}
