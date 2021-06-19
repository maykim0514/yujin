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

public class BoardSaleListAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		System.out.println("BoardSaleListAction");
		
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

////////////////////////////////////////////////////////////////////////////////		
		
		ArrayList<BoardBean> product_Array = new ArrayList<>();
		List<Object> boardList = null;
		if ((topic == null||topic.trim().equals("")) && category.equals("all")) {
			// 판매 상품 목록
			boardList = bdao.productList();
			
			for (int i = 0; i < boardList.size(); i++) {
				product_Array.add((BoardBean) boardList.get(i));
			}
		} else if ((topic == null||topic.trim().equals(""))) {
			// 카테고리별 판매 상품 목록
			boardList = bdao.category_sale(category);
			
			for (int i = 0; i < boardList.size(); i++) {
				product_Array.add((BoardBean) boardList.get(i));
			}
		} else {
			// 검색 상품 목록
			boardList = bdao.topic_product(topic);
			
			for (int i = 0; i < boardList.size(); i++) {
				product_Array.add((BoardBean) boardList.get(i));
			}
		}
		// 위 판매 상품Bean들을 담은 ArrayList 뷰단으로 보내줘야한다.
		request.setAttribute("product_list", product_Array);

		// 가까운 판매 상품 목록
		List<BoardBean> loProList = null;
		
		if(user!=null) {
			String address = user.getUseraddr();
			String[] address_split = address.split(" ");
			String addr = address_split[0];
			
			System.out.println("사용자의 주소 (판매) : " + addr);
			loProList = bdao.location_productList(addr);
		}


		if (loProList != null) {
			ArrayList<BoardBean> product_location_Array = new ArrayList<>();
			for (int i = 0; i < loProList.size(); i++) {
				product_location_Array.add(loProList.get(i));
			}

			// 위 판매 상품Bean들을 담은 ArrayList 뷰단으로 보내줘야한다.
			request.setAttribute("product_list_location", product_location_Array);
		}	
		
		forward.setRedirect(false);
		forward.setPath(request.getContextPath() + "/productlist/sale_list.jsp");
		
		return forward;
	}
}
