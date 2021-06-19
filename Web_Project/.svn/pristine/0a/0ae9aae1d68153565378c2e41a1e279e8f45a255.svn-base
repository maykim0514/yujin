package com.ezmarket.app.member.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ezmarket.board.dao.BoardBean;
import com.ezmarket.mybatis.config.SqlMapConfig;

public class MemberDAO {
	SqlSessionFactory sqlfactory= SqlMapConfig.getInstance();
	SqlSession sqlsession = null;
	
	public MemberDAO() {
		sqlsession=sqlfactory.openSession(true);
	}
	public boolean join(MemberBean member) {
		return 1 == sqlsession.insert("Member.join",member);
	}
	public MemberBean login(String userid, String userpw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid",userid);
		datas.put("userpw", userpw);
		MemberBean member = (MemberBean)sqlsession.selectOne("Member.login", datas);
		return member;
	}
	public boolean checkId(String userid) {
		return 0==(Integer)(sqlsession.selectOne("Member.checkId",userid));
	}
	
	public MemberBean find_id_phone(String username, String userphone) {
		
		HashMap<String, String> datas = new HashMap<>();
		datas.put("username",username);
		datas.put("userphone", userphone.substring(3,11));
		return (MemberBean)sqlsession.selectOne("Member.find_id_phone", datas);
	}
	public MemberBean find_id_email(String username, String useremail) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("username",username);
		datas.put("useremail", useremail);
		return (MemberBean)sqlsession.selectOne("Member.find_id_email", datas);
	}
	public boolean change_pw(String userid, String newPw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid",userid);
		datas.put("newPw", newPw);
		return sqlsession.update("Member.change_pw", datas)==1;
	}
	//판매 게시물 가져오기
	public List<Object> usedSell(String userid) {
		return sqlsession.selectList("Member.usedSell",userid);
	}
	public List<Object> usedRent(String userid) {
		return sqlsession.selectList("Member.usedRent",userid);
	}
	public List<Object> usedPick(String userid) {
		return sqlsession.selectList("Member.usedPick",userid);
	}
	//회원 정보 수정
	public boolean userUpdate(MemberBean member) {
		return 1==sqlsession.update("Member.userUpdate",member);
	}
}









