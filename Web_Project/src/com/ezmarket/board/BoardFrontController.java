package com.ezmarket.board;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezmarket.action.ActionForward;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		System.out.println(command);
		
		if(command.equals("/board/BoardList.bo")) {
			try {
				forward = new BoardListAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/board/BoardList 오류");
				System.out.println(e);
			}
		}else if(command.equals("/board/BoardSaleWrite.bo")) {
			//판매하기
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/sale,rentalpost/salepost.jsp");
		}else if(command.equals("/board/BoardRentWrite.bo")) {
			//대여하기
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/sale,rentalpost/rentalpost.jsp");
		}else if(command.equals("/board/BoardWriteOk.bo")){
			//판매하기 작성후 리스트
			try {
				forward = new BoardWriteOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/board/BoardWriteOk 오류");
				System.out.println(e);
			}
		}else if(command.equals("/board/BoardModify.bo")) {
			try {
				forward = new BoardModifyAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/board/BoardModify 오류");
				System.out.println(e);
				}
		}else if(command.equals("/board/FileDownload.bo")) {
				try {
					forward = new FileDownloadAction().execute(request, response);
				} catch (Exception e) {
					System.out.println("/board/FileDownload 오류");
					System.out.println(e);
				}
		}else if(command.equals("/board/BoardModifyOk.bo")) {
			try {
				forward = new BoardModifyOkAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("board/BoardModifyOk.bo 오류");
				System.out.println(e);
			}
		}else if(command.equals("/board/BoardSaleDelete.bo")) {
			try {
				forward = new BoardSaleDeleteAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/board/BoardDelete.bo 오류");
			}
		}else if(command.equals("/board/BoardRentDelete.bo")) {
			try {
				forward = new BoardRentDeleteAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/board/BoardDelete.bo 오류");
			}
		}else if(command.equals("/board/BoardSaleDone.bo")) {
			try {
				forward = new BoardSaleDoneAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/board/BaordSaleDone.bo 오류");
			}
		}else if(command.equals("/board/BoardRentDone.bo")) {
			try {
				forward = new BoardRentDoneAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/board/BaordRentDone.bo 오류");
			}
		}else if (command.equals("/board/sale_list.bo")) {
			//구매 물품 리스트
			try {
				forward = new BoardSaleListAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/productlist/sale_list 오류");
				System.out.println(e);
			}
		}else if (command.equals("/board/rent_list.bo")) {
			//대여 물품 리스트
			try {
				forward = new BoardRentListAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/productlist/rent_list 오류");
				System.out.println(e);
			}
		}else if(command.equals("/board/BoardDetail.bo")){
			try {
				forward = new BoardDetailViewAction().execute(request, response);
			} catch (Exception e) {
				System.out.println("/board/BoardDetail.bo 오류");
			}
			
		}//else if(command.equals("/board/BoardPickUpdate.bo")) {
//			try {
//				forward = new BoardPickUpdateAction().execute(request, response);
//			} catch (Exception e) {
//				System.out.println("/board/BoardPickUpdate.bo 오류");
//			}
//			
//		}else if(command.equals("/board/BoardPickCount.bo")) {
//			try {
//				forward = new BoardPickCountAction().execute(request, response);
//			} catch (Exception e) {
//				System.out.println("/board/BoardPickCount.bo 오류");
//			}
//		}
		else {
			forward = new ActionForward();
			forward.setPath("/app/error/404.jsp");
			forward.setRedirect(false);
		}
		
		if(forward!=null) {
			if(forward.isRedirect()) {
				//redirect 방식
				response.sendRedirect(forward.getPath());
			}else {
				//forward 방식
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
}