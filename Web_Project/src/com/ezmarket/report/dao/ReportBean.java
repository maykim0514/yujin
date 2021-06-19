package com.ezmarket.report.dao;

public class ReportBean {
	
	private int reportcode;
	private String userid;
	private int boardnum;
	private String report;
	private String reportdetail;
	private String reportdate;
	private String reportstate;
	
	public int getReportcode() {
		return reportcode;
	}
	public void setReportcode(int reportcode) {
		this.reportcode = reportcode;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
	public String getReport() {
		return report;
	}
	public void setReport(String report) {
		this.report = report;
	}
	public String getReportdetail() {
		return reportdetail;
	}
	public void setReportdetail(String reportdetail) {
		this.reportdetail = reportdetail;
	}
	public String getReportdate() {
		return reportdate;
	}
	public void setReportdate(String reportdate) {
		this.reportdate = reportdate;
	}
	public String getReportstate() {
		return reportstate;
	}
	public void setReportstate(String reportstate) {
		this.reportstate = reportstate;
	}
	
}
