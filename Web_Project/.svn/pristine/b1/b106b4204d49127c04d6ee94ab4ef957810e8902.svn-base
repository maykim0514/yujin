package com.ezmarket.app.member;

import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendEmail {
	static Properties prop;
	static Session session;
	static MimeMessage message;


	public String generateAndSendEmail(String userEmail){
		final String user = "ghldbssla1997@gmail.com"; // 발신자의 이메일 아이디를 입력
		final String password = "Maximom119!";
		// Step1 세션 생성
		prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		//"mail.smtp.port "은 SMTP서버와 통신하는 포트를 말하는데 gmail일 경우 465를 Naver의 경우 587을 사용.
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });


		//코드 구현
				//인증코드 구현(str을 랜덤으로 6자리를 뽑는다.)
				String str = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789~!@#$%^&*()_-";
				String email_code = "";
				Random r = new Random();
				for (int i = 0; i < 6; i++) {
					int idx = r.nextInt(str.length());
					email_code += str.charAt(idx);
				}
		// Step2 메세지 작성
		try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail)); 

            // Subject
            message.setSubject("인증번호를 입력하세요."); //메일 제목을 입력

            // Text
            message.setText("인증번호 : \" "+email_code+" \"");    //메일 내용을 입력

            // send the message
            Transport.send(message); ////전송
        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

		return email_code;

	}

}
