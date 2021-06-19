package com.ezmarket.mail.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ezmarket.mybatis.config.SqlMapConfig;

public class MailDAO {
	SqlSessionFactory sqlfactory = SqlMapConfig.getInstance();
	SqlSession sqlsession;
	
	public MailDAO(){
		sqlsession=sqlfactory.openSession(true);
	}
	
	//mailtype에 따른 쪽지 개수 가져오기
	public int getTotalCnt(String userid, String mailtype) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("mailtype", mailtype);
		return sqlsession.selectOne("Mail.totalCnt", datas);
	}

	//검색어에 따른 쪽지 개수 가져오기
	public int getCriTotalCnt(String userid, String mailtype, String keyword, String type) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("mailtype", mailtype);
		datas.put("keyword", keyword);
		datas.put("type", type);
		return sqlsession.selectOne("Mail.criTotalCnt", datas);
	}
	
	//mailtype에 따른 쪽지 리스트 가져오기
	public List<MailBean> getMailList(String userid, String mailtype, String keyword, String type, int startRow, int endRow) {
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("mailtype", mailtype);
		datas.put("keyword", keyword);
		datas.put("type", type);
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<MailBean> mailList = sqlsession.selectList("Mail.mailListCri", datas);
		return mailList;
	}

	//mailtype과 검색어에 따른 쪽지 리스트 가져오기
	public List<MailBean> getMailList(String userid, String mailtype, int startRow, int endRow) {
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("mailtype", mailtype);
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<MailBean> mailList = sqlsession.selectList("Mail.mailListAll", datas);
		return mailList;
	}
	
	//쪽지보내기
	public boolean sendMail(MailBean mail) {
		return sqlsession.insert("Mail.sendMail", mail) == 1;
	}
	
	//임시저장
	public boolean saveMail(MailBean mail) {
		return sqlsession.insert("Mail.saveMail", mail) == 1;
	}
	
	public boolean updateMail(int mailnum, MailBean mail) {
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("mailnum", mailnum);
		datas.put("targetid", mail.getTargetid());
		datas.put("mailcontent", mail.getMailcontent());
		return 1 == sqlsession.update("Mail.updateMail", datas);
	}

	//쪽지 상세보기 정보
	public MailBean getMailDetail(int mailnum) {
		MailBean maildetail = sqlsession.selectOne("Mail.getMailDetail", mailnum);
		return maildetail;
	}

	//중요한 쪽지로 바꿔주기
	public boolean important(int mailnum) {
		return 1 == sqlsession.update("Mail.changeImp", mailnum);
	}
	
	//안중요한 쪽지로 바꿔주기
	public boolean notimportant(int mailnum) {
		return 1 == sqlsession.update("Mail.notimportant", mailnum);
	}
	
	//사용자 입장에서만 삭제 (ALSO 중요도 없어짐)
	public boolean deleteSenderMail(int mailnum) {
		return 1 == sqlsession.update("Mail.deleteSenderMail", mailnum);
	}
	
	//쪽지 완전 삭제 (휴지통 비우기, 임시저장 삭제)
	public boolean deleteMail(int mailnum) {
		return 1 == sqlsession.delete("Mail.deleteMail", mailnum);
	}

	//쪽지 휴지통에서 복구
	public boolean restoreMail(int mailnum) {
		return 1 == sqlsession.update("Mail.restoreMail", mailnum);
	}

	//쪽지 상세보기에서 이전
	public int toPrev(String mailtype, int mailnum, String userid) {
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("mailtype", mailtype);
		datas.put("mailnum", mailnum);
		datas.put("userid", userid);
		int changedMailnum = sqlsession.selectOne("Mail.toPrev", datas);
		return changedMailnum;
	}

	//쪽지 상세보기에서 다음
	public int toNext(String mailtype, int mailnum, String userid) {
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("mailtype", mailtype);
		datas.put("mailnum", mailnum);
		datas.put("userid", userid);
		int changedMailnum = sqlsession.selectOne("Mail.toNext", datas);
		return changedMailnum;
	}

	public boolean updateRead(int mailnum) {
		return 1 == sqlsession.update("Mail.read", mailnum);
		
	}

	public List<MailBean> getInboxList(String userid, int startRow, int endRow, String type, String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	
		
}
