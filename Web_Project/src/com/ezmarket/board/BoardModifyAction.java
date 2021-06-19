package com.ezmarket.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.board.dao.BoardBean;
import com.ezmarket.board.dao.BoardDAO;
import com.ezmarket.board.dao.FileBean;
import com.ezmarket.board.dao.FileDAO;

public class BoardModifyAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		int boardnum = Integer.parseInt(request.getParameter("num"));
		BoardBean board = bdao.getDetail(boardnum);
		
		request.setAttribute("board", board);
		forward.setRedirect(false);
		forward.setPath("/sale,rentalpost/salepost_modify.jsp");
		
		return forward;
	}
}
