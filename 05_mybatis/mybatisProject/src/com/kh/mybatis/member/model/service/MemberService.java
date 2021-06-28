package com.kh.mybatis.member.model.service;

import com.kh.mybatis.member.model.vo.Member;

public interface MemberService {
	
	// interface 에서는 오직 추상메소드(미완성메소드)만 기술 가능
	// MemberService라는 인터페이스를 구현(실제화==implements)하는 클래스에서 완성
	
	// 1. 회원가입용 서비스
	int insertMember(Member m);
	
	// 2. 로그인 서비스
	Member loginMember(Member m);
	
	// 3. 회원정보수정 서비스
	int updateMember(Member m);
	
	// 4. 회원탈퇴 서비스
	int deleteMember(Member m);
	
}
