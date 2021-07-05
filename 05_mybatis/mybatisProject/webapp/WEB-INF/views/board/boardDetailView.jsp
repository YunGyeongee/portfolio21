<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .table-area{
        width:600px;
        border-color: white;
    }
</style>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"/>

    <div class="outer">
        <br>
        <h1 align="center">게시판 상세보기</h1>
        <br>

        <table class="table-area" align="center" border="1">
            <tr>
                <td width=100>글번호</td>
                <td>${ board.boardNo }</td>
            </tr>
            <tr>
                <td>제목</td>
                <td>${ board.boardTitle }</td>
            </tr>
            <tr>
                <td>작성자</td>
                <td>${ board.boardWriter }</td>
            </tr>
            <tr>
                <td>조회수</td>
                <td>${ board.count }</td>
            </tr>
            <tr>
                <td>작성일</td>
                <td>${ board.createDate }</td>
            </tr>
            <tr>
                <td>내용</td>
                <td>
                    <p style="height: 100px;">${ board.boardContent }</p>
                </td>
            </tr>
        </table>
        <br>

        <table class="table-area" align="center" border="1">
            <thead>
                <tr>
                    <th width="100">댓글 작성</th>
                    <td width="400">
                        <textarea rows="3" style="resize: none; width: 100%; box-sizing: border-box;"></textarea>
                    </td>
                    <th width="100"><button>등록</button></th>
                </tr>
                <tr>
                    <td colspan="3"><b>댓글(${ rlist.size() })</b></td>
                </tr>
            </thead>
            <tbody>
            	<c:forEach var="r" items="${ rlist }">
	                <tr>
	                    <td>${ r.replyWriter }</td>
	                    <td>${ r.replyContent }</td>
	                    <td>${ r.createDate }</td>
	                </tr>
                </c:forEach>
            </tbody>
        </table>
        <br><br>


    </div>


</body>
</html>