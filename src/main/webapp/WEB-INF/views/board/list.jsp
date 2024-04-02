<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<style>
    table {
        border: 2px solid; border-collapse: collapse;
    }
    th, td {
        border: 1px solid; padding:10px 5px;
    }
</style>
<body>
    <div>
        게시판
        <button type="button" id="writeBtn" onclick="location.href='/board/create'">글쓰기</button>
    </div>
    <div>
        <table>
            <thead>
                <tr>
                    <th>No</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>등록일시</th>
                    <th>수정일시</th>
                    <th>조회 수</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="list">
                <tr>
                    <th>${list.rownum}</th>
                    <th><a href="detail/${list.seq}">${list.title}</a></th>
                    <th>${list.nickname}</th>
                    <th>${list.create_dt}</th>
                    <th>${list.update_dt}</th>
                    <th>${list.view}</th>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div>
        <a href="/">메인으로</a>
    </div>

</body>
<script>
</script>
</html>