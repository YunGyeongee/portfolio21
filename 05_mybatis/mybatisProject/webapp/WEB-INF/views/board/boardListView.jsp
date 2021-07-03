<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #list-area{
        border: 1px solid white;
        text-align: center;
    }
    #list-area a, #paging-area a{
        text-decoration: none;
        color:white;
    }
</style>
</head>
<body>

	<jsp:include page="../common/menubar.jsp" />

    <div class="outer">
        <br>
        <h1 align="center">게시판</h1>
        <br>

        <!-- 검색 영역 -->
        <div id="search-area" align="center">
            <form action="search.bo">
            	<input type="hidden" name="currentPage" value="1">
                <select name="condition">
                    <option value="title">제목</option>
                    <option value="writer">작성자</option>
                    <option value="content">내용</option>
                </select>
                <input type="text" name="keyword">
                <button type="submit">검색하기</button>
            </form>
        </div>
        <br><br>

        <!-- 조회된 게시글 리스트 영역-->
        <table id="list-area" align="center">
            <thead>
                <tr>
                    <th>글번호</th>
                    <th width="400">제목</th>
                    <th>작성자</th>
                    <th>조회수</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
            	<c:forEach var="b" items="${ list }">
	                <tr>
	                    <td>${ b.boardNo }</td>
	                    <td><a href="">${ b.boardTitle }</a></td>
	                    <td>${ b.boardWriter }</td>
	                    <td>${ b.count }</td>
	                    <td>${ b.createDate }</td>
	                </tr>
                </c:forEach>
            </tbody>
        </table>
        <br><br>

        <!-- 페이징바 영역-->
        <div id="paging-area" align="center">
            
            <c:if test="${ pi.currentPage ne 1 }">
            	<a href="list.bo?currentPage=${ pi.currentPage - 1 }">[이전]</a>
			</c:if>
			
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
            	<a href="list.bo?currnetPage=${ p }">[${ p }]</a>
			</c:forEach>
			
			<c:if test="${ pi.currentPage ne pi.maxPage }">
            	<a href="list.bo?currentPage=${ pi.currentPage + 1 }">[다음]</a>
			</c:if>
        </div>
        <br><br>
    </div>

</body>
</html>