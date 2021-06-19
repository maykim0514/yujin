package com.ezmarket.app.member;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ezmarket.action.Action;
import com.ezmarket.action.ActionForward;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class SendSmsAction implements Action{
	static String phone_code;
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)throws Exception {
		PrintWriter out = response.getWriter();
		System.out.println("userPhone : "+(String)request.getParameter("to"));
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			System.out.println("UTF-8 exception");
			e1.printStackTrace();
		}
		ActionForward forward = new ActionForward();

		//코드 구현
		String api_key = "NCS90019KZU7540S";
	    String api_secret = "XP5WEIHNYX4MXL5L47UTY5QVVDDQV5R5";
	    Message coolsms = new Message(api_key, api_secret);

		//인증코드 구현(str을 랜덤으로 6자리를 뽑는다.)
		String str = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789~!@#$%^&*()_-";
		String code = "";
		Random r = new Random();
		for (int i = 0; i < 6; i++) {
			int idx = r.nextInt(str.length());
			code += str.charAt(idx);
		}
	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    //보낼 사람 -> jsp의 request객체("to")
	    params.put("to", (String)request.getParameter("to"));
	    //없는 번호로 발송하면 에러가 남
	    params.put("from", "01073394549");
	    params.put("type", "SMS");
	    params.put("text", "회원가입 인증을 위한 코드입니다. 입력해주세요.\n" + code);
	    String resultMsg="";
	    try {
	      JSONObject result = coolsms.send(params); // 보내기&전송결과받기
	      resultMsg=result.get("success_count").toString();// {"error_count" : 전송실패한횟수}
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }
	    if(resultMsg.equals("1")) {
	    	phone_code=code;
	    	out.println("ok");
	    }else {
	    	out.println("not-ok");
	    }
		return null;
	}

}
