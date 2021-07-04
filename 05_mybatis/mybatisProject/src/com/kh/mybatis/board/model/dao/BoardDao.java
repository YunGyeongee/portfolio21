package com.kh.mybatis.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.common.model.vo.PageInfo;

public class BoardDao {
	
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("boardMapper.selectListCount");
	}

	public ArrayList<Board> selectList(SqlSession sqlSession, PageInfo pi){
		
		/*  
		    mybatis는 페이징처리를 위한 RowBounds 클래스 제공
			
			* offset : 조회 할 때 몇개의 게시글을 건너뛰고 조회할건지
			* limit : 몇개의 게시글을 조회할건지
		*/
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		// 여러행 조회되는 select문 실행시킬때는 sqlSession selectList메소드 실행
		return (ArrayList)sqlSession.selectList("boardMapper.selectList", null, rowBounds);
		
	}
	
	public int selectSearchListCount(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("boardMapper.selectSearchListCount", map);
	}
	
	public ArrayList<Board> selectSearchList(SqlSession sqlSession, HashMap<String, String> map, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectSearchList", map, rowBounds);
	}
}