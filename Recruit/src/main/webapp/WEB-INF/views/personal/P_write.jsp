<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/pheader.jsp"%>

<!-- picker : https://lalwr.blogspot.kr/2016/04/bootstrap-datepicker.html -->
<link rel="stylesheet" type="text/css" href="/resources/rpjt/datepicker/datepicker3.css" />
<script type="text/javascript" src="/resources/rpjt/datepicker/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="/resources/rpjt/datepicker/bootstrap-datepicker.kr.js"></script>

<!-- Main content -->
<!-- 기업 채용공고 목록 -->
<div class="col-md-9">
	<h1>이력서 작성</h1>
<form id="listForm" action="/personal/write" method="post">
	<table class="table table-bordered">
		<div class="company_info_content">
				<!-- ★아래 두 줄의 class 설정으로 인해 테이블이 반응형으로 적용됨 -->
				<div class="table-responsive">
					<!-- ★클래스를 여러 개 쓰고 싶으면 한 칸 띄우고 쓰기/table-striped는 홀수번째마다 색칠하기 -->
					<table class="table table-bordered">
						<tbody>
							<tr>
							    <div class="form-group">
							      <label for="userid">이름</label>
							      <input type="text" class="form-control" id="userid" name="userid" value="${ResumeVO.title}">							     
							    </div>
							    <div class="form-group">
							      <label for="img">사진</label>
							      <input type="file" class="form-control" id="img" value="${ResumeVO.img}">
							    </div>
							    
							    <div class="row">
							    
									<!-- ☆google search : datepicker -->
									<div class="form-group col-lg-6">
										<label>생년월일</label>
										<div class="input-group date" data-provide="datepicker">
											<input type="text" id="birth" name="birth" class="form-control" value="${ResumeVO.birth}">
											<span
												class="input-group-addon"> <i
												class="glyphicon glyphicon-calendar"></i>
											</span>
										</div>
									</div>					
								</div>
								
								<div class="form-group">
								  <label for="email">이메일</label>
								  <input type="text" class="form-control" id="email" value="${ResumeVO.email}">
								</div>
								
								<div class="form-group">
								  <label for="title">제목</label>
								  <input class="form-control" id="title" name="title" value="${ResumeVO.title}">
								</div>
								<div class="form-group">
								  <label for="address">주소</label>
								  <input class="form-control"  id="address" name="address" value="${ResumeVO.address}">
								</div>
								<div class="form-group">
								  <label for="postcode">우편번호</label>
								  <input class="form-control"id="postcode" name="postcode" value="${ResumeVO.postcode}">
								</div>
								<div class="form-group">
								  <label for="jobstateid">구직상태</label>
								  <input class="form-control" id="jobstateid" name="jobstateid" value="${ResumeVO.jobstateid}">
								</div>
								<div class="form-group">
								  <label for="jobgroupid">희망직종</label>
								  <input class="form-control" id="jobgroupid" name="jobgroupid" value="${ResumeVO.jobgroupid}">
								</div>
								<div class="form-group">
								  <label for="rgbid">희망근무지(시/도)</label>
								  <input class="form-control" id="rgbid" name="rgbid" value="${ResumeVO.rgbid}">
								</div>
								<div class="form-group">
								  <label for="employstatusid">희망근무형태</label>
								  <input class="form-control" id="employstatusid" name="employstatusid" value="${ResumeVO.employstatusid}">
								</div>
								<div class="form-group">
								  <label for="salaryid">희망연봉</label>
								  <input class="form-control" id="salaryid" name="salaryid"value="${ResumeVO.salaryid}">
								</div>
								
							    <div class="form-group">
								  <label for="coverletter">자기소개서</label>
								  <textarea class="form-control" rows="10" id="coverletter" name="coverletter"></textarea>
								</div>
								<input id="btn-success" class="btn btn-success" type="submit" value="등록">
								<!-- <a href="/personal/listAll" type="button" class="btn btn-success">등록</a> -->
								<a href="/personal/detail" type="button" class="btn btn-danger">취소</a>
							 
							</tr>							
						</tbody>
					</table>
					<!-- //table class -->
				</div>
				<!-- //table-responsive -->
			</div>
	</table>
 </form>
	
</div>
<!-- //기업 채용공고 목록 끝 -->

<script type='text/javascript'>
$(document).ready(function(){
	
	var formObj = $("form[role = 'form']");
	
	$(function() {
		$('.input-group.date').datepicker({
			calendarWeeks : false,
			todayHighlight : true,
			autoclose : true,
			format : "yyyy-mm-dd",
			language : "kr"
		});
	});
	
	$("#btn-success").on("click", function(){
		formObj.attr("action", "/personal/write");
		formObj.attr("method", "post");
		formObj.submit();
	});
});
</script>




<%@include file="../include/cfooter.jsp"%>

