package com.ezmarket.board;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberBean;
import com.ezmarket.board.dao.BoardBean;
import com.ezmarket.board.dao.BoardDAO;
import com.ezmarket.board.dao.FileBean;
import com.ezmarket.board.dao.FileDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardWriteOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		int size = 1024*1024*5;
		BufferedWriter bw = new BufferedWriter(new FileWriter("test.txt"));
		bw.close();
		
		boolean bcheck = false;
		
		//파일이 저장될 경로
		
		//수빈 경로 
//		String saveFolder = "D:\\1500_Web\\WEB_PROJECT\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Web_Project\\sale,rentalpost\\files";
		
		//유진 경로
		String saveFolder = "/Users/yujin/Library/Mobile Documents/com~apple~CloudDocs/Desktop/web/Project/Web_Project/WebContent/sale,rentalpost/files";
		
		
		//String saveFolder = request.getSession().getServletContext().getRealPath("sale,rentalpost/files");

//		request.getSession().getServletContext().getRealPath("sale,rentalpost/files") + "/" + DB에서 조회한 객체.getFilename();
//		req.setAttribute("img",src);
//		
//		[jsp]
//		<img src = '${img}'>
//		String saveFolder = request.getRealPath("sale,rentalpost/files");
		
		File f = new File(saveFolder);
		
		for(File file : f.listFiles()) {
			System.out.println(file.getName());
		}

		BoardBean board = new BoardBean();
		MultipartRequest multi = new MultipartRequest(request, saveFolder, size, "UTF-8", new DefaultFileRenamePolicy());
		
		//게시글 내용 DB에 저장
		HttpSession session  = request.getSession();     
		MemberBean user = (MemberBean) session.getAttribute("session_id");
		String userid = user.getUserid();
		
		String temp = multi.getFilesystemName("file1");
		String file = temp == null ? "null" : temp ;
		
		board.setUserid(userid);
		board.setBoardTitle(multi.getParameter("boardtitle"));
		board.setRentCategory(multi.getParameter("rentcategory"));
		board.setBoardCategory(multi.getParameter("boardcategory"));
		System.out.println(multi.getParameter("boardcategory"));
		board.setProductPrice(multi.getParameter("productprice"));
		board.setProductStatus(multi.getParameter("productstatus"));
		board.setProductOffer(multi.getParameter("productoffer") == null ? "0" : "1");	
		board.setLocation(multi.getParameter("productlocation"));
		board.setProductExplain(multi.getParameter("productexplain") );
		board.setFilename(file);
		board.setAvTime1(multi.getParameter("avtime1"));
		board.setAvTime2(multi.getParameter("avtime2"));
		
		if(multi.getParameter("avtime1") != null) {
			//대여하기
			bcheck = bdao.insertRentBoard(board);
			forward.setPath(request.getContextPath()+"/board/rent_list.bo?category=all");
		}else {
			//판매하기
			bcheck = bdao.insertSaleBoard(board);
			forward.setPath(request.getContextPath()+"/board/sale_list.bo?category=all");
		}
			
		if(!bcheck) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=UTF-8");
			out.println("<script>");
			out.println("alert('게시글 등록 실패. 다시 시도해 주세요.'");
			out.println("</script>");
			return null;
		}
		
		forward.setRedirect(true);
		return forward;
	}
}
