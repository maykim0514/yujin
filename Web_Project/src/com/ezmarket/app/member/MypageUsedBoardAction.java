package com.ezmarket.app.member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberBean;
import com.ezmarket.app.member.dao.MemberDAO;
import com.ezmarket.board.dao.BoardBean;
import com.ezmarket.board.dao.BoardDAO;
import com.ezmarket.board.dao.FileBean;

public class MypageUsedBoardAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		MemberDAO mdao = new MemberDAO();
		BoardDAO bdao = new BoardDAO();
		HttpSession session = request.getSession();
		MemberBean user = (MemberBean) session.getAttribute("session_id");
		System.out.println(user.getUserid());
		System.out.println(user.getUserpw());
//판매 게시물    
		List<Object> sell_list = mdao.usedSell(user.getUserid());
		ArrayList<BoardBean> sell_Array = new ArrayList<>();
		if (sell_list!=null) {
			for (int i = 0; i < sell_list.size(); i++) {
				sell_Array.add((BoardBean) sell_list.get(i));
			}
		}
		// 위 판매 상품Bean들을 담은 sell_Array 뷰단으로 보내줘야한다.
		request.setAttribute("sell_Array", sell_Array);

//대여 게시물    
		List<Object> rent_list = mdao.usedRent(user.getUserid());
		ArrayList<BoardBean> rent_Array = new ArrayList<>();
		if (rent_list!=null) {
			for (int i = 0; i < rent_list.size(); i++) {
				rent_Array.add((BoardBean) rent_list.get(i));
			}
		}
		// 위 판매 상품Bean들을 담은 sell_Array 뷰단으로 보내줘야한다.
		request.setAttribute("rent_Array", rent_Array);

//찜한 게시물    
		List<Object> pick_list = mdao.usedPick(user.getUserid());
		ArrayList<BoardBean> pick_Array = new ArrayList<>();
		if (pick_list!=null) {
			for (int i = 0; i < pick_list.size(); i++) {
				pick_Array.add((BoardBean) pick_list.get(i));
			}
		}
		// 위 판매 상품Bean들을 담은 sell_Array 뷰단으로 보내줘야한다.
		request.setAttribute("pick_Array", pick_Array);

//사진 가져오기
		List<FileBean> getFile = bdao.getFile();
		// 위 판매 상품Bean들을 담은 ArrayList 뷰단으로 보내줘야한다.
		request.setAttribute("file", getFile);

		forward.setRedirect(false);
		forward.setPath("/Mypage/Mypage.jsp");
		return forward;
	}
}
