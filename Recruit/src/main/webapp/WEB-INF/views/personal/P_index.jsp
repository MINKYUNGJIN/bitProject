<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@include file="../include/pheader.jsp"%>
<!-- 
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>퍼팩트 매칭</title>

Bootstrap Core CSS
<link href="/resources/rpjt/css/bootstrap.min.css" rel="stylesheet">

Custom CSS
<link href="css/shop-item.css" rel="stylesheet">
<link href="/resources/rpjt/css/lovelyB_022711.css" rel="stylesheet">

HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
WARNING: Respond.js doesn't work if you view the page via file://
[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>

<body>

	Navigation
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			Brand and toggle get grouped for better mobile display
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">퍼팩트 매칭</a>
			</div>
			Collect the nav links, forms, and other content for toggling
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">기업찾기</a></li>
					<li><a href="#">인재찾기</a></li>
					<li><a href="#">검색</a></li>
					<li><a href="#"> <span class="glyphicon glyphicon-user"></span>
							회원가입
					</a></li>
					<li><a href="#"> <span class="glyphicon glyphicon-log-in"></span>
							로그인
					</a></li>
				</ul>
			</div>
			/.navbar-collapse
		</div>
		/.container
	</nav>

	Page Content
	<div class="container">

		<div class="row">

			<div class="col-md-3">
				<p class="lead">마이페이지(개인)</p>
				<div class="list-grozup">
					<a href="/personal/index" class="list-group-item">개인정보관리</a>p08 <a
						href="/personal/write" class="list-group-item">이력서 작성/수정</a> p02<a
						href="/personal/manage" class="list-group-item">이력서 관리</a> p01<a
						href="/personal/recom" class="list-group-item">추천채용공고</a> p04<a
						href="/personal/favor" class="list-group-item">관심채용공고</a> p05<a
						href="/personal/applied" class="list-group-item">지원현황리스트</a>p07
				</div>
			</div> -->
			
			<div class="col-md-9">
	<!-- 기업 페이지 첫번째(이미지, 이름, 소개) -->
	<%-- <div class="top_cont">
		<div class="corp_logo">
			<img id="동국제약㈜" alt="동국제약㈜"
				src="http://webpds.saramin.co.kr/pds/united_company/logo/8008_logo_2.jpg"
				width="209" height="117"> <br> <br>
			<h1 class="ci_name">${cinfoVO.cname}</h1>
			<br>
		</div>
		<div class="ci_desc">
			<p class="txt">${cinfoVO.intro}</p>
		</div>
	</div> --%>
	<!-- //기업 페이지 첫번째 -->
	<br> <br>
	
	<!-- 이력서 페이지 두번째(기본 정보) -->
			<div class="company_info_content">
				<!-- ★아래 두 줄의 class 설정으로 인해 테이블이 반응형으로 적용됨 -->
				<div class="table-responsive">
					<!-- ★클래스를 여러 개 쓰고 싶으면 한 칸 띄우고 쓰기/table-striped는 홀수번째마다 색칠하기 -->
					<table class="table table-bordered">
						<tbody>
							<tr>
								<!-- ★scope="row"는 태그가 있는 행의 나머지 셀에 적용 -->
								<!-- ★class="table-active"는 셀 바탕색,active말고도 success, warning, danger, info -->
								<th class="table-active" scope="row">이름</th>
								<td class="col-sm-4">${PUserVO.pname}</td>
								<th class="table-active" scope="row">사진</th>
								<td class="col-sm-4">${ResumeVO.img}</td>
							</tr>
							<tr>
								<th class="table-active" scope="row">생년월일</th>
								<td>${PUserVO.ctype}</td>
								<th class="table-active" scope="row">이메일</th>
								<td>${PUserVO.email}</td>
							</tr>
							<tr>
								<th class="table-active" scope="row">제목</th>
								<td colspan="3">${PUserVO.form}</td>
							</tr>
							<tr>
								<th class="table-active" scope="row">주소</th>
								<td colspan="3">${ResumeVO.title}</td>
							</tr>
							<tr>
								<th class="table-active" scope="row">우편번호</th>
								<td>${ResumeVO.postcode}</td>
								<th class="table-active" scope="row">자기소개서</th>
								<td>${ResumeVO.coverletter}</td>
							</tr>
							<tr>
								<th class="table-active" scope="row">구직상태</th>
								<td>${cinfoVO.tel}</td>
								<th class="table-active" scope="row">희망직종</th>
								<td>${cinfoVO.fax}</td>
							</tr>
							<tr>
								<th class="table-active" scope="row">희망근무지(시/도)</th>
								<td><a href="${cinfoVO.homepage}" class="link_site"
									target="_blank" rel="nofollow">${cinfoVO.homepage}</a></td>
								<th class="table-active" scope="row">희망근무지</th>
								<td><a href="${cinfoVO.sns}"
									class="link_site" target="_blank" rel="nofollow">${cinfoVO.sns}</a></td>
							</tr>
							<tr>
								<th class="table-active" scope="row">희망근무형태</th>
								<td colspan="3">${cinfoVO.location}</td>
							</tr>
							<tr>
								<th class="table-active" scope="row">희망연봉</th>
								<td colspan="3">${cinfoVO.location}</td>
							</tr>
							<tr>
								<th class="table-active" scope="row">사진</th>
								<td colspan="3">${ResumeVO.img}</td>
							</tr>							
						</tbody>
					</table>
					<!-- //table class -->
				</div>
				<!-- //table-responsive -->
			</div>
			
			<!-- //개인 페이지 두번째(company_modify_content) -->
			<br> <br>
			<!-- 수정 버튼 -->
			<form>
				<input class="btn btn-success" type='button' value='수정'
					onClick="javascript:self.location='/personal/modify';">
			</form>
			<!-- //수정 버튼 -->
			<br> <br>
		</div>
			
<!-- 		</div>
	</div> -->
	
<!-- //기업 페이지 -->
</body>
			
<%@include file="../include/cfooter.jsp"%>