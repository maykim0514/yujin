package com.ezmarket.board;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.board.dao.BoardBean;
import com.ezmarket.board.dao.BoardDAO;
import com.ezmarket.board.dao.FileBean;
import com.ezmarket.board.dao.FileDAO;

public class BoardSaleDeleteAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		BoardDAO bdao = new BoardDAO();
		ActionForward forward = new ActionForward();
		
		//수빈 경로 
//		String saveFolder = "D:\\1500_Web\\WEB_PROJECT\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Web_Project\\sale,rentalpost\\files";
		
		//유진 경로
		String saveFolder = "/Users/yujin/Library/Mobile Documents/com~apple~CloudDocs/Desktop/web/Project/Web_Project/WebContent/sale,rentalpost/files";
		
		int boardnum = Integer.parseInt(request.getParameter("num"));
		
		BoardBean file = bdao.getDetail(boardnum);
		File f = new File(saveFolder, file.getFilename());
		if(f.exists()) {
			f.delete();
		}
		bdao.deleteFiles(boardnum);
		bdao.delete(boardnum);
		
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/board/sale_list.bo?category=all");
		return forward;
	}
}