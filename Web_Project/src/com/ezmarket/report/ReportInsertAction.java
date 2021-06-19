package com.ezmarket.report;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.report.dao.ReportBean;
import com.ezmarket.report.dao.ReportDAO;

public class ReportInsertAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		System.out.println("ReportInsertAction");
	
		ReportDAO rdao = new ReportDAO();
		
		String temp = request.getParameter("boardnum");
		int boardnum = temp == null ? 0 : Integer.parseInt(temp);
		
		String userid = request.getParameter("userid");
		
		String reasonsplit = request.getParameter("checkbox");
		String[] arrReason = reasonsplit.toString().split(",");
		
		boolean insertReport = false;
		
		for (int i = 0; i < arrReason.length; i++) {
			
			String reason = arrReason[i];
			insertReport = rdao.insertReport(boardnum,userid,reason);
			if(insertReport) {
				System.out.println(reason+" 신고 접수 성공!");
			}
		}
		
		return null;
	}
}
