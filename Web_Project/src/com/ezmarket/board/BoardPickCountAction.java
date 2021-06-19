package com.ezmarket.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.board.dao.BoardDAO;

public class BoardPickCountAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		int boardnum = Integer.parseInt(request.getParameter("no"));
		BoardDAO board = BoardDAO.getInstance();
		//게시글 총 찜수 구하기 
		int pickcnt	= board.pickCount(boardnum);
		//jsp에 출력
		out.println(pickcnt);
		out.close();
		
		return null;
	}

}
