package com.ezmarket.board;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberBean;
import com.ezmarket.board.dao.BoardBean;
import com.ezmarket.board.dao.BoardDAO;

public class BoardRentListAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		System.out.println("BoardRentListAction");

		// 검색어
		String topic = request.getParameter("searchTerm");
		System.out.println("검색어 : "+topic);
		
		// 카테고리
		String category = request.getParameter("category");
		System.out.println("카테고리 : "+category);
		
		BoardDAO bdao = new BoardDAO();
		ActionForward forward = new ActionForward();
		
		// 로그인 된 세션 정보를 저장
		HttpSession session = request.getSession();
		MemberBean user = (MemberBean)session.getAttribute("session_id");
	
		ArrayList<BoardBean> rent_Array = new ArrayList<>();
		List<Object> rentList = null;
		if ((topic == null||topic.trim().equals("")) && category.equals("all")) {
			// 대여 상품 목록
			rentList = bdao.rentList();

			for (int i = 0; i < rentList.size(); i++) {
				rent_Array.add((BoardBean) rentList.get(i));
			}
		} else if ((topic == null||topic.trim().equals(""))) {
			// 카테고리별 대여 상품 목록
			rentList = bdao.category_rent(category);
			
			for (int i = 0; i < rentList.size(); i++) {
				rent_Array.add((BoardBean) rentList.get(i));
			} 
		} else {
			// 검색 대여 상품 목록
			rentList = bdao.topic_product(topic);

			for (int i = 0; i < rentList.size(); i++) {
				rent_Array.add((BoardBean) rentList.get(i));
			}
		}
		
		// 위 대여 상품Bean들을 담은 ArrayList 뷰단으로 보내줘야한다.
		request.setAttribute("rent_list", rent_Array);
		
		//String address = user.getUseraddr();
		//String[] address_split = address.split(" ");
		//String addr = address_split[0];
		
		// 가까운 판매 상품 목록
		List<BoardBean> loProList = null;
		
		if(user != null) {
			String address = user.getUseraddr();
			String[] address_split = address.split(" ");
			String addr = address_split[0];
			loProList = bdao.location_productList(addr);

			System.out.println("사용자의 주소 (대여) : " + addr);
			
			List<BoardBean> loRentList = bdao.location_rentList(addr);
			
			if (loRentList != null) {
				ArrayList<BoardBean> rent_location_Array = new ArrayList<>();
				for (int i = 0; i < loProList.size(); i++) {
					rent_location_Array.add(loProList.get(i));
				}
				// 위 판매 상품Bean들을 담은 ArrayList 뷰단으로 보내줘야한다.
				request.setAttribute("rent_list_location", rent_location_Array);
			}
		}
		
		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/productlist/rent_list.jsp");
		
		return forward;
	}
}
