package com.kh.mybatis.member.model.service;

import static com.kh.mybatis.common.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.member.model.dao.MemberDao;
import com.kh.mybatis.member.model.vo.Member;

public class MemberServiceImpl implements MemberService {

	private MemberDao mDao = new MemberDao();
	
	// 1. 회원 가입용 서비스
	@Override
	public int insertMember(Member m) {
		SqlSession sqlSession = getSqlSession();
		int result = mDao.insertMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public Member loginMember(Member m) {
		SqlSession sqlSession = getSqlSession();
		Member loginUser = mDao.loginMember(sqlSession, m);
		sqlSession.close();
		return loginUser;
	}

	@Override
	public int updateMember(Member m) {
		return 0;
	}

	@Override
	public int deleteMember(Member m) {
		return 0;
	}

}
