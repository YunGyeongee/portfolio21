package com.kh.mybatis.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.member.model.vo.Member;

public class MemberDao {
	
	public int insertMember(SqlSession sqlSession, Member m) {
		
		/*
		 * sqlSession.실행할sql메소드("실행할sql문", 완성시킬객체)
		 * 
		 * 첫번째 인자 : 쿼리문이 존재하는 "매퍼의별칭.sql문의id"
		 */
		int result = sqlSession.insert("memberMapper.insertMember", m);
		return result;
		
		/* return = sqlSession.insert("memberMapper.insertMember", m); */
	}
	
	public Member loginMember(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}

}
