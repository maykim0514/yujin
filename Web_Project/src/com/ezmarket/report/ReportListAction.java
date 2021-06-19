package com.ezmarket.report;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.board.dao.BoardBean;
import com.ezmarket.report.dao.ReportBean;
import com.ezmarket.report.dao.ReportDAO;

public class ReportListAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		ReportBean report = new ReportBean();
		ReportDAO rdao = new ReportDAO();
		
		System.out.println("ReportListAction");
		
		ArrayList<ReportBean> reportArray = new ArrayList<>();
		List<Object> reportList = rdao.getList();
		
		for (int i = 0; i < reportList.size(); i++) {
			reportArray.add((ReportBean) reportList.get(i));
		}
		
		request.setAttribute("reportArray", reportArray);
		
		forward.setRedirect(false);
		forward.setPath("/adminpage/adminpage.jsp");
		return forward;
	}
}
