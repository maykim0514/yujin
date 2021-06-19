package com.ezmarket.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.board.dao.BoardBean;
import com.ezmarket.board.dao.BoardDAO;

public class BoardRentDoneAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		BoardBean board = new BoardBean();
		
		int boardnum = Integer.parseInt(request.getParameter("num"));
		
		
		board = bdao.getDetail(boardnum);
		
	
		bdao.boardDone(boardnum);
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/board/rent_list.bo?category=all");
		return forward;
	}

}
