package com.ezmarket.mail.dao;

public class MailBean {
	
	private int mailnum;
	private String userid;
	private String targetid;
	private String mailcontent;
	private String maildate;
	private boolean readstate;		//읽으면 true, 안읽으면 false
	private String important;		//노란별 true, 일반별 false
	private boolean draft;			//임시저장하면 true, 아니면 false
	private boolean sender_delete;  //사용자가 삭제하면
	private boolean receiver_delete; //받은 사람이 삭제하면
		
	public int getMailnum() {
		return mailnum;
	}
	public void setMailnum(int mailnum) {
		this.mailnum = mailnum;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTargetid() {
		return targetid;
	}
	public void setTargetid(String targetid) {
		this.targetid = targetid;
	}
	public String getMailcontent() {
		return mailcontent;
	}
	public void setMailcontent(String mailcontent) {
		this.mailcontent = mailcontent;
	}
	public String getMaildate() {
		return maildate;
	}
	public void setMaildate(String maildate) {
		this.maildate = maildate;
	}
	public boolean isReadstate() {
		return readstate;
	}
	public void setReadstate(boolean readstate) {
		this.readstate = readstate;
	}
	public String isImportant() {
		return important;
	}
	public void setImportant(String important) {
		this.important = important;
	}
	public boolean isDraft() {
		return draft;
	}
	public void setDraft(boolean draft) {
		this.draft = draft;
	}
	public boolean isSender_delete() {
		return sender_delete;
	}
	public void setSender_delete(boolean sender_delete) {
		this.sender_delete = sender_delete;
	}
	public boolean isReceiver_delete() {
		return receiver_delete;
	}
	public void setReceiver_delete(boolean receiver_delete) {
		this.receiver_delete = receiver_delete;
	}
	
}
