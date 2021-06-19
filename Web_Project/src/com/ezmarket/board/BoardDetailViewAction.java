package com.ezmarket.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.ActionForward;
import com.ezmarket.board.dao.BoardBean;
import com.ezmarket.board.dao.BoardDAO;


public class BoardDetailViewAction {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		BoardDAO bdao = new BoardDAO();
		
		int boardnum = Integer.parseInt(request.getParameter("num"));
		bdao.updateReadCount(boardnum);
		BoardBean board = bdao.getDetail(boardnum);
		
		if(board != null) {
			request.setAttribute("board", board);
			ActionForward forward = new ActionForward();
			forward.setPath("/sale,rentalpost/detail_salepost.jsp");
			forward.setRedirect(false);
			return forward;
		}
		return null;
	
	}

	
}
