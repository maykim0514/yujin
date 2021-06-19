package com.ezmarket.mail;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.app.member.dao.MemberBean;
import com.ezmarket.mail.dao.MailBean;
import com.ezmarket.mail.dao.MailDAO;

public class MailInfoAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		MailDAO mdao = new MailDAO();
		//ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();		
		JSONObject mail = new JSONObject();
		
		HttpSession session  = request.getSession();     
		MemberBean user = (MemberBean) session.getAttribute("session_id");
		String userid = user.getUserid();

		//처음 넘어왔을 때는 page라는 변수를 전에 사용하지 않았기 때문에 page라는 변수를 찾으면 null이 담길 것이다.
		String temp = request.getParameter("page");
		int page = temp==null?1:Integer.parseInt(temp);
		
		//쪽지함 종류
		String mailtype = request.getParameter("mailtype");
		
		//검색 타입 
		String type = request.getParameter("option");
		
		//키워드
		String keyword = request.getParameter("keyword");
		
		//쪽지함 종류에 따라 totalCnt가 다르다
		int totalCnt = 0;
		if(keyword != null && type != null) {
			totalCnt = mdao.getCriTotalCnt(userid, mailtype, keyword, type);
		}else {
			totalCnt = mdao.getTotalCnt(userid, mailtype);
		}
		
		System.out.println(totalCnt);
		
		//rowsize : 한 페이지에 띄워줄 “쪽지” 개수
		int rowsize = 30;
		int endRow = page*rowsize;
		int startRow = endRow-(rowsize-1);
		int totalPage = (int) Math.floor((totalCnt/rowsize)+1);
		
		if(endRow > totalCnt) {
			endRow = totalCnt;
		}
		if(totalCnt == 0) {
			startRow = 0;
		}
		
		mail.put("nowPage", page);
		mail.put("totalCnt", totalCnt);
		mail.put("startRow", startRow);
		mail.put("endRow", endRow);
		mail.put("totalPage", totalPage);
		
		List<MailBean> mails = null;
		
		
		if(keyword != null && type != null) {
			mails = mdao.getMailList(userid, mailtype, keyword, type, startRow, endRow);
		}else {
			mails = mdao.getMailList(userid, mailtype, startRow, endRow);
		}
		
		JSONArray arMail = new JSONArray();
		
		for (int i = 0; i < mails.size(); i++) {
			JSONObject mailinfo = new JSONObject();
			
			mailinfo.put("mailnum", mails.get(i).getMailnum());
			mailinfo.put("userid", mails.get(i).getUserid());
			mailinfo.put("targetid", mails.get(i).getTargetid());
			mailinfo.put("mailcontent", mails.get(i).getMailcontent());
			mailinfo.put("maildate", mails.get(i).getMaildate());
			mailinfo.put("readstate", mails.get(i).isReadstate());
			mailinfo.put("important", mails.get(i).isImportant());
			mailinfo.put("draft", mails.get(i).isDraft());
			mailinfo.put("sender_delete", mails.get(i).isSender_delete());
			mailinfo.put("receiver_delete", mails.get(i).isReceiver_delete());
			
			arMail.add(mailinfo);
		}
		
		mail.put("inboxList", arMail);
		
		out.println(mail.toJSONString());
		out.close();
		
		return null;
	}
}


