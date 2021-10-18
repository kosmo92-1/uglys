<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
        <h2 class="sr-only">사용후기 작성</h2>
        <div class="inner">
            <h3>사용후기 작성</h3>
            <form name="insertReview" action="insertReview.do" enctype="multipart/form-data" method="POST"  >
                <!-- PC ver START -->
                <table class="pc">
                    <tr>
                        <th>작성자</th>
                        <td class="input-group-sm"> 
                            <input type="text" id="writer" name="writer" class="form-control" value="${user.user_name }" readonly="readonly">
                        </td>
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td class="input-group-sm">
                            <input type="text" id="title" name="title" class="form-control">
                        </td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td class="input-group-sm">
                            <input type="text" name="content" class="form-control" style="width:100%;height:200px;font-size:30px;">
                        </td>
                    </tr>
                    <tr>
                        <th>후기 사진</th>
                        <td>
                            <input type="file" name="file" id="user_img" class="form-control">
                        </td>
                    </tr>
                    <caption><b></b></caption>
                </table>
                <!-- PC ver START -->

                <!-- Mobile ver START-->
                <div class="mb">
                    <div class="form-floating mb-3">
                        <input type="text" name="writer" class="form-control" placeholder="아이디">
                        <label for="name">작성자</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" name="title" class="form-control" placeholder="이름">
                        <label for="title">제목</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" name="content" class="form-control" placeholder="내용">
                        <label for="content">내용</label>
                    </div>
                    <div class="mb-3">
                        후기 사진<br>
                        <div class="input-group mb-2">
                            <input type="file" class="form-control" value="검색">
                        </div>
                    </div>
                </div>
                <!-- Mobile ver END-->

                <div class="text-center">
                    <button type="submit" class="btn-join btn btn-lg btn-secondary" value="새글 등록">등록</button>
                    <button type="submit" class="btn-join btn btn-lg btn-secondary">
                    <a href="getReviewList.do" style="color:white">닫기</a></button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
