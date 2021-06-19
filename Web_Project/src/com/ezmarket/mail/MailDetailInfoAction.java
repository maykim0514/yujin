package com.ezmarket.mail;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;
import com.ezmarket.mail.dao.MailBean;
import com.ezmarket.mail.dao.MailDAO;

public class MailDetailInfoAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		MailDAO mdao = new MailDAO();
		PrintWriter out = response.getWriter();		
		JSONObject detail = new JSONObject();
		
		int mailnum = Integer.parseInt(request.getParameter("mailnum"));
		
		System.out.println(mailnum + "번째 쪽지 상세보기");
		
		//read DB 업데이트
		if(mdao.updateRead(mailnum)) {
			System.out.println(mailnum + "번째 쪽지 읽음");
		}
		
		//쪽지 정보가져오기
		MailBean maildetail = mdao.getMailDetail(mailnum);
		
		detail.put("mailnum", maildetail.getMailnum());
		detail.put("userid", maildetail.getUserid());
		detail.put("targetid", maildetail.getTargetid());
		detail.put("mailcontent", maildetail.getMailcontent());
		detail.put("maildate", maildetail.getMaildate());
		detail.put("readstate", maildetail.isReadstate());
		detail.put("important", maildetail.isImportant());
		detail.put("draft", maildetail.isDraft());
		detail.put("sender_delete", maildetail.isSender_delete());
		detail.put("receiver_delete", maildetail.isReceiver_delete());
		
		out.println(detail.toJSONString());
		out.close();
	
		return null;
	}
}
