<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reviewInsert.css">
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
<!-- fontawesome -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" crossorigin="anonymous" />
<title>UGLYS</title>
</head>
<body>
    <div class="wrapper">
        <h2 class="sr-only">사용후기 수정 및 삭제</h2>
        <div class="inner">
            <h3>사용후기 수정 및 삭제</h3>
            <form action="updateReview.do" method="post"> 
                <!-- PC ver START -->
                <table class="pc">
                    <tr>
                        <th>작성자</th>
                        <td class="input-group-sm">
                            <input type="text" id="name" class="form-control" value="${review.writer}">
                        </td>
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td class="input-group-sm">
                            <input type="text" id="title" class="form-control" value="${review.title}">
                        </td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td class="input-group-sm">
                            <input type="text" id="content" class="form-control" 
                            style="width:100%; height:200px; font-size:30px; value="${review.content}">
                        </td>
                    </tr>
                    <tr>
                        <th>후기 사진</th>
                        <td>
                            <input type="file" class="form-control">
                        </td>
                    </tr>
                    <caption><b></b></caption>
                </table>
                <!-- PC ver START -->

                <!-- Mobile ver START-->
                <div class="mb">
                    <div class="form-floating mb-3">
                        <input type="text" id="name" class="form-control" placeholder="아이디">
                        <label for="name">작성자 : ${review.writer}</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" id="title" class="form-control" placeholder="이름">
                        <label for="title">제목 : ${review.title}</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" id="content" class="form-control" placeholder="내용">
                        <label for="content">내용 : ${review.content}</label>
                    </div>
                    <div class="mb-3">후기 사진<br>
                        <div class="input-group mb-2">
                            <input type="file" class="form-control" value="검색">
                        </div>
                    </div>
                </div>
                <!-- Mobile ver END-->

                <div class="text-center">
                    <button type="submit" class="btn-join btn btn-lg btn-secondary" value="수정">수정</button>
                    <button type="submit" class="btn-join btn btn-lg btn-secondary" value="삭제">삭제</button>
                    <button type="submit" class="btn-join btn btn-lg btn-secondary">
                    <a href="getReviewList.do" style="color:white">닫기</a></button>
                </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>