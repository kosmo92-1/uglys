<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="/uglys/resources/css/reset.css">
<link rel="stylesheet" href="/uglys/resources/css/common.css">
<link rel="stylesheet" href="/uglys/resources/css/reviewInsert.css">
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
            <form action="">
                <!-- PC ver START -->
                <table class="pc">
                    <tr>
                        <th>작성자</th>
                        <td class="input-group-sm">
                            <input type="text" id="name" class="form-control" value="${user.user_name }">
                        </td>
                        <tr>
                            <th>휴대폰 번호</th>
                            <td class="input-group-sm">
                                <input type="tel" id="phoneNum" maxlength="11" class="form-control" placeholder="01012341234">
                                답변 등록 시 답변등록 알림이 SMS로 전송됩니다.
                            </td>
                        </tr>
                        <tr>
                            <th>이메일 주소</th>
                            <td class="input-group-sm">
                                <input type="email" id="email" class="form-control" placeholder="name@example.com">
                                답변 등록 시 답변등록 알림이 메일로 전송됩니다.
                            </td>
                        </tr>
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td class="input-group-sm">
                            <input type="text" id="title" class="form-control">
                        </td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td class="input-group-sm">
                            <input type="text" id="content" class="form-control" style="width:100%;height:200px;font-size:30px;">
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
                        <label for="name">작성자</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" id="phoneNumMb" class="form-control" placeholder="휴대폰 번호">
                        <label for="phoneNumMb">휴대폰 번호</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="email" id="emailMb" class="form-control" placeholder="이메일">
                        <label for="emailMb">이메일 주소</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" id="title" class="form-control" placeholder="이름">
                        <label for="title">제목</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" id="content" class="form-control" placeholder="생년월일">
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
                    <button type="submit" class="btn-join btn btn-lg btn-secondary">등록</button>
                    <button type="submit" class="btn-join btn btn-lg btn-secondary">삭제</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
