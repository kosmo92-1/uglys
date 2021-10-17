<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<!--초기화 CSS -->
<link rel="stylesheet" href="../../resources/css/reset.css">
<link rel="stylesheet" href="../../resources/css/common.css">
<!--리뷰 CSS-->
<link rel="stylesheet" href="../../resources/css/reviews.css">
<!-- 영문, 숫자 폰트-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400" />
<!--검색 CSS, js-->
<link rel="stylesheet" href="../../resources/css/reviewSearch.css" />
<script src="../../resources/js/extention/choices.js"></script>
<script src="../../resources/js/extention/custom-materialize.js"></script>
<script src="../../resources/js/extention/flatpickr.js"></script>
<title>UGLYS</title>
</head>
<body>
<!--상품 검색 시작-->
    <div class="s132">
		<form>
		  <div class="inner-form">
			<div class="input-field first-wrap">
			  <div class="input-select">
				<select data-trigger="" name="choices-single-defaul">
				  <option placeholder="">제목</option>
				  <option>내용</option>
				</select>
			  </div>
			</div>
			<div class="input-field second-wrap">
			  <input id="search" type="text" placeholder="Enter Keywords" />
			</div>
			<div class="input-field third-wrap">
			  <button class="btn-search" type="button">Search</button>
			</div>
		  </div>
<!--제목/내용-->
	  <script>
		const choices = new Choices('[data-trigger]',
		{
		  searchEnabled: false,
		  itemSelectText: '',
		});
	  </script>
<!--상품 검색 끝-->
<!-- 검색창, 후기 게시판, 페이징네이션, 사용후기 버튼 전체 정렬 -->
    <div id="sit_center_t">
    <!--후기 게시판 시작-->
    <section id="sit_use">
        <h2>후기 게시판</h2>
<!--상품 사용후기 시작-->
<section id="sit_use_list">
    <ol id="sit_use_ol">
        <li class="sit_use_li">
			<div class="border-b-2 border-gray-100 pb-8 text-gray-500 cursor-pointer">
				<div class="flex justify-between pb-4">
						</div>
						<div class="flex space-x-4">
							<div class="relative rounded-md h-24 w-24">
								<a href="../../WEB-INF/views/review.html">
								<button type="button" class="sit_use_li_title">
								<img src="../../resources/img/review/1.jpeg" alt="" class="absolute w-full h-full object-cover"></div>
							</button>
							<div class="flex-1 space-y-2">
								<button type="button" class="sit_use_li_title">
							review test 1
							<dl class="sit_use_dl">
								<dt>작성자</dt>
								<dd>한**</dd>
								<dt>작성일</dt>
								<dd>00-00-00</dd>
								<dt>조회수</dt>
								<dd>조회수 : 1</dd>
							</dl>
						</button>
					</a>
				</li>
        <li class="sit_use_li">
			<div class="flex space-x-4">
				<div class="relative rounded-md h-24 w-24">
					<a href="../../WEB-INF/views/review.html">
					<button type="button" class="sit_use_li_title">
					<img src="../../resources/img/review/2.jpg" alt="" class="absolute w-full h-full object-cover"></div>
				</button>
				<div class="flex-1 space-y-2">
					<button type="button" class="sit_use_li_title">
						review test 2
						<dl class="sit_use_dl">
							<dt>작성자</dt>
							<dd>한**</dd>
							<dt>작성일</dt>
							<dd>00-00-00</dd>
							<dt>조회수</dt>
							<dd>조회수 : 1</dd>
						</dl>
					</button>
				</a>
				</li>
        <li class="sit_use_li">
			<div class="flex space-x-4">
				<div class="relative rounded-md h-24 w-24">
					<a href="../../WEB-INF/views/review.html">
					<button type="button" class="sit_use_li_title">
					<img src="../../resources/img/review/3.jpg" alt="" class="absolute w-full h-full object-cover"></div>
				</button>
				<div class="flex-1 space-y-2">
					<button type="button" class="sit_use_li_title">
						review test 3
						<dl class="sit_use_dl">
							<dt>작성자</dt>
							<dd>한**</dd>
							<dt>작성일</dt>
							<dd>00-00-00</dd>
							<dt>조회수</dt>
							<dd>조회수 : 1</dd>
						</dl>
					</button>
				</a>
				</li>
        <li class="sit_use_li">
			<div class="flex space-x-4">
				<div class="relative rounded-md h-24 w-24">
					<a href="../../WEB-INF/views/review.html">
					<button type="button" class="sit_use_li_title">
					<img src="../../resources/img/review/4.jpg" alt="" class="absolute w-full h-full object-cover"></div>
				</button>
				<div class="flex-1 space-y-2">
					<button type="button" class="sit_use_li_title">
						review test 4
						<dl class="sit_use_dl">
							<dt>작성자</dt>
							<dd>한**</dd>
							<dt>작성일</dt>
							<dd>00-00-00</dd>
							<dt>조회수</dt>
							<dd>조회수 : 1</dd>
						</dl>
					</button>
				</a>
        </li>
        <li class="sit_use_li">
			<div class="flex space-x-4">
				<div class="relative rounded-md h-24 w-24">
					<a href="../../WEB-INF/views/review.html">
					<button type="button" class="sit_use_li_title">
					<img src="../../resources/img/review/5.JPG" alt="" class="absolute w-full h-full object-cover"></div>
				</button>
				<div class="flex-1 space-y-2">
					<button type="button" class="sit_use_li_title">
						review test 5
						<dl class="sit_use_dl">
							<dt>작성자</dt>
							<dd>한**</dd>
							<dt>작성일</dt>
							<dd>00-00-00</dd>
							<dt>조회수</dt>
							<dd>조회수 : 1</dd>
						</dl>
					</button>
				</a>
				</li>
    </ol>
</section>
<!--상품 사용후기 끝-->
<!--페이징 시작-->
<nav class="pg_wrap"><span class="pg"><span class="sound_only">열린</span><strong class="pg_current">1</strong><span class="sound_only">페이지</span>
<a href="#" class="pg_page">2</a><span class="sound_only"></span>
<a href="#" class="pg_page">3</a><span class="sound_only"></span>
<a href="#" class="pg_page">4</a><span class="sound_only"></span>
<a href="#" class="pg_page">5</a><span class="sound_only"></span>
<a href="" class="pg_page pg_next">></a>
<a href="" class="pg_page pg_end">>></a>
</span>
</nav>
<!-- 페이징 끝-->
<!--사용후기 쓰기-->
<div id="sit_use_wbtn02">
    <a href="./reviewInsert.jsp" class="btn02">사용후기 쓰기</a>
</div>
</div>
</div>
</body>
</html>
