<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">

    <meta name="description" content="맛있는 채소를 좀 더 싸게!">
    <meta name="keywords" content="어글리채소,못생긴채소,채소">

    <!-- import CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        crossorigin="anonymous">
        
    <!-- fontawesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" crossorigin="anonymous" />

    <title>로그인</title>
</head>

<body>
    <div class="wrapper">
        <h2 class="sr-only">로그인 페이지</h2>
        <div class="inner">
            <figure>
                <i class="fas fa-user"></i>
            </figure>
            <form action="login" method="post">
                <div class="inputs input-group">
                    <input type="text" class="form-control" name="user_id" placeholder="아이디">
                    <input type="password" class="form-control" name="user_password" placeholder="비밀번호">
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-green">로그인</button>
                </div>
            </form>
            <p class="link-signup">
                아직 회원이 아니신가요? <a href="insertUser">회원가입</a>
            </p>
        </div>
    </div>
</body>

</html>