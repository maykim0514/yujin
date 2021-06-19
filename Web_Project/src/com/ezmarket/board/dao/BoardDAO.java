package com.ezmarket.board.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.ezmarket.mybatis.config.SqlMapConfig;

public class BoardDAO {
	SqlSessionFactory sqlfactory = SqlMapConfig.getInstance();
	SqlSession sqlsession;
//	private static BoardDAO instance = new BoardDAO();
//	
//	private SqlSession getSession() {
//		Reader reader = null;
//		try {
//			reader = Resources.getResourceAsReader("./com/ezmarket/mybatis/config/config.xml");
//			SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(reader);
//			sqlsession = sf.openSession(true);
//		} catch (IOException e) {
//			System.out.println(e);
//			e.printStackTrace();
//		}
//		return sqlsession;
//	}
	
	public BoardDAO() {
		sqlsession = sqlfactory.openSession(true);
	}
	
	public int getBoardSeq() {
		return (Integer)sqlsession.selectOne("Board.boardSeq");
	}
	
	public int getBoardCnt() {
		return sqlsession.selectOne("Board.boardCnt");
	}
	
	public List<BoardBean> getBoardList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<BoardBean> boardList =sqlsession.selectList("Board.listAll", datas);
		
		return boardList;
	}
	
	public void updateReadCount(int boardnum) {
		sqlsession.update("Board.updateReadCount", boardnum);
	}
	
//	public List<BoardBean> getBoardList() {
//		List<BoardBean> boardList =sqlsession.selectList("Board.listAll");
//		return boardList;
//	}

	public boolean insertSaleBoard(BoardBean board) {
		return sqlsession.insert("Board.insertSaleBoard", board) == 1;
	}
	
	public boolean insertRentBoard(BoardBean board) {
		return sqlsession.insert("Board.insertRentBoard", board) == 1;
	}
	
	public BoardBean getDetail(int boardnum) {
		return sqlsession.selectOne("Board.getDetail",boardnum);
	}
	
	public void delete(int boardnum) {
		sqlsession.delete("Board.delete",boardnum);
	}
	
	public void deleteFiles(int boardnum) {
		sqlsession.delete("Board.deleteFiles",boardnum);
	}

	public boolean modifyBoard(BoardBean board) {
		return 1 == sqlsession.update("Board.modifyBoard",board);
	}
	
	public boolean boardDone(int boardnum) {
		return 1 == sqlsession.update("Board.boardDone", boardnum);
	}
	
//	public static BoardDAO getInstance() {
//		return instance;
//	}
//	
//	//찜 여부 검사
//	public int pickCheck(Map<String, Object> p) {
//		int result = 0;
//		try {
//			sqlsession = getSession();
//			result = (Integer)sqlsession.selectOne("Board.pickCheck", p);
//		}catch (Exception e) {
//			System.out.println("pickCheck : " + e);
//			e.printStackTrace();
//		}
//		return result;
//	}
//	//찜하기
//	public void pickUpdate(Map<String, Object> p) {
//		try {
//			sqlsession = getSession();
//			sqlsession.insert("Board.pickUpdate", p);
//		}catch (Exception e) {
//			System.out.println("pickUpdate : " + e);
//			e.printStackTrace();
//		}
//	}
//	//찜 제거 
//	public void pickDelete(Map<String, Object> p) {
//		try {
//			sqlsession = getSession();
//			sqlsession.insert("Board.pickDelete", p);
//		}catch(Exception e) {
//			System.out.println("pickDelete : " + e);
//			e.printStackTrace();
//		}
//	}
//	//찜수
//	public int pickCount(int no) {
//		int count = 0;
//		try {
//			sqlsession = getSession();
//			count = (Integer)sqlsession.selectOne("Board.pickCount", no);
//		}catch(Exception e) {
//			System.out.println("pickCount : " + e);
//			e.printStackTrace();
//		}
//		return count;
//	}
	
//회윤님---------------------------------------------------------------------------------------
	
	public List<Object> productList() {
		return sqlsession.selectList("Board.productList");
	}
	public List<Object> rentList() {
		return sqlsession.selectList("Board.rentList");
	}
	public List<BoardBean> location_productList(String location) {
		return sqlsession.selectList("Board.location_productList",location);
	}
	public List<BoardBean> location_rentList(String location) {
		return sqlsession.selectList("Board.location_productList",location);
	}
	//boardNum, realname 가지고 오기 (사진이 있는 boardnum만 가져오기)
	/*public List<FileBean> getFile() {
		return sqlsession.selectList("Board.getFile");
	}*/
	public List<Object> topic_product(String topic) {
		return sqlsession.selectList("Board.topic_product",topic);
	}
	public List<Object> topic_rent(String topic) {
		return sqlsession.selectList("Board.topic_rent",topic);
	}

	public List<Object> category_sale(String category) {
		return sqlsession.selectList("Board.category_sale", category);
	}
	
	public List<Object> category_rent(String category) {
		return sqlsession.selectList("Board.category_rent", category);
	}

	

	
}
