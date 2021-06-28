<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
		* 프레임워크(FrameWork)
		- 개발자가 보다 편리한 환경에서 개발할 수 있도록 제공하는 틀(뼈대)
		  > 사전적 정의 : 복잡한 문제를 해결하거나 서술하는데 사용하는 기본 개념 구조
		  > 소프트웨어 개발의 입장 : 공통으로 사용하는 라이브러리/개발도구/인터페이스 등
		
		* 프레임워크의 필요성
		- 현재 웹프로그래밍의 추세는 규모가 점점 커짐 => 거대하고 복잡도가 높은 프로젝트 => 많은 개발자들이 필요 => 개발자들이 통일성있게 빠르고 안정적으로 개발을 위함 => 생산성 향상
		
		* 프레임워크의 특징
		- 자유롭게 설계하고 코딩하는것 x => 제공하는 가이드 대로 설계하고 코딩해야함
		  > 개발자를 위한 다양한 도구를 지원
		  > 개발할 수 있는 범위가 정해져 있음
		  > 개발자들이 따라야 하는 가이드라인 제공(세팅 포함)
		
		* 프레임워크의 장점
		- 개발 시간을 줄일 수 있음
		- 오류로부터 자유로울 수 있음
		- 유지보스에 용이
		
		* 프레임워크의 단점
		- 프레임워크에 의존하면 개발자의 능력이 떨어짐 => 프레임워크 없이 개발하는 것이 어려워짐
		- 습득하는데에 오랜 시간이 걸릴 수 있음
		
		* 프레임워크의 종류
		- 용속성 : 데이터 관련한 CRUD 기능들을 보다 편리하게 작업할 수 있도록 제공 ex) MyBatis, Hibernate, ...
		- 자바 : 웹어플리케이션에 초점을 맞춰 필요한 요소들을 모듈화해서 제공 ex) Spring, Struts, ...
		- 화면단 : Front-End를 보다 쉽게 구현할 수 있게 틀을 제공 ex) 부트스트랩, ...
		- 기능 및 지원 : 특정 기능이나 업무 수행에 도움을 줄 수 있는 기능을 제공 ex) Log4j, JUnit, ...
		
		* MyBatis 개요
		- 개발자가 지정한 sql, 저장 프로시저 그리고 몇가지 고급 매핑, 동적sql문 등을 지원하는 영속성 프레임워크
		- JDBC로 처리하는 부분의 코드와 파라미터 설정 및 결과 매핑을 대신해줌
		- 기본에 Apache에서 ibatis를 운영하던 팀이 구글로 이동하면서 mybatis로 이름 변경
		  (ibatis는 현재 비활성화 상태, 라이브러리만 제공)
		  > ibatis JDK 1.4 이상 / mybatis JDK 1.5 이상 사용가능
		
	 --%>
	
	<%-- 
		WEB-INF 폴더는 WAS 서버가 관리하는 폴더. views폴더가 WEB-INF 안에 있을 경우
		url에 디렉토리를 직접 작성해서 요청하는 것 불가능 (Web Server)
		직접 WAS 서버를 통해 이동하는 방식인 forwarding 방식으로만 접근 가능
	--%>
	 
	<jsp:forward page="WEB-INF/views/main.jsp" /> 
	
	
</body>
</html>