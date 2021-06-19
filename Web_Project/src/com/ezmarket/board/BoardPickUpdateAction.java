package com.ezmarket.board;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberBean;
import com.ezmarket.board.dao.BoardDAO;

public class BoardPickUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session  = request.getSession();     
		MemberBean user = (MemberBean) session.getAttribute("session_id");
		String userid = user.getUserid();
		//no와 id갑을 map에 저장
		Map<String, Object> p = new HashMap<>();
		p.put("no", request.getParameter("no"));
		p.put("id", userid);
		
		BoardDAO board = BoardDAO.getInstance();
		//동일 게시글에 대한 찜 여부 확인
		int result = board.pickCheck(p);
		
		if(result == 0) {
			board.pickUpdate(p);
		}else {
			board.pickDelete(p);
		}
		return null;
	}

}
