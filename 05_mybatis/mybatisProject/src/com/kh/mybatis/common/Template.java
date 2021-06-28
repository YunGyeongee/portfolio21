package com.kh.mybatis.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Template {
	
	public static SqlSession getSqlSession() {
		// 기존에 JDBC를 통해서 DB와 접속하는 객체가 Connection 이었다면,
		// mybatis를 통해서 DB와 접속하는 객체는 SqlSession
		
		// 기존에 JDBC를 통해 DB 연결설정 관련 문서는 driver.properties
		// mybatis를 통해서 DB 연결설정 관련 문서는 mybatis-config.xml (config파일)
		SqlSession sqlSession = null;
		
		try {
			InputStream stream = Resources.getResourceAsStream("/mybatis-config.xml");
			sqlSession = new SqlSessionFactoryBuilder().build(stream).openSession(false);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return sqlSession;
	}

}
