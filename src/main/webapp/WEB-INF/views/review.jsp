<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<!--초기화 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<!--리뷰 CSS-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reviews.css">
<title>UGLYS</title>
</head>
<body>
<section id="rev_use">
	<div id="max-w-lg">
        <h2>후기</h2>
		<!-- 후기 시작 -->
		<ol id="rev_use_ol">
			<!-- 이미지 -->
			<div class="text-img">
				<img src="/uglys/resources/${review.content_img }" alt="">
			</div>
			<!-- 게시글 -->
			<div class="board">
				<!-- 글 제목 -->
				<!-- 내용 -->
				<div class="text-all">
					<p class="text-title">
						제목 : ${review.title} <br>
					</p>
					<p class="text-content">
						${review.content}</p>
					<!-- 작성 정보 -->
					<p class="writer">
						조회수 : ${review.viewCnt} <br>
						작성자 : ${review.writer} <br>
						작성일 : ${review.regDate} <br>
					</p>
				</div>
			</div>
			<!-- 버튼 -->
			<ol id="rev_use_ol">
			<div id="sit_use_wbtn01">
				<a href="updateReview.do?reviewNum=${review.reviewNum }" class="btn01">글 수정/삭제</a>
				<a href="getReviewList.do" class="btn01">후기 목록</a>
			</div>
			</div>
		</section>
</body>
</html>