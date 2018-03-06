<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<%@include file="../include/pheader.jsp"%>

<!-- Main content -->
<!-- 기업 채용공고 목록 -->
<div class="col-md-9">
<div class="table-responsive">			

	<h1>이력서 목록</h1>
	<table class="table table-bordered">
		<tr>
			<th>순번</th>
			<th>이력서 제목</th>
			<th>수정/삭제</th>
		</tr>
		
		<c:forEach items="${list}" var="ResumeVO">		
			<tr>
				<td>${ResumeVO.bno}</td>
				<td><a href="/personal/detail">${ResumeVO.title}</a></td>			
				<th>
					<button type="submit" class="btn btn-warning">수정</button>
					<button type="submit" class="btn btn-danger">삭제</button>
				</th>
			</tr>
		</c:forEach>
	</table>
</div>
</div>


<script type='text/javascript'>
$(document).ready(function(){
		
	$(".btn btn-warning").on("click", function(){
		formObj.attr("action", "/personal/P_detail");
		formObj.attr("method", "get");
		formObj.submit();
	});
});
</script>


<!-- //기업 채용공고 목록 끝 -->

<%@include file="../include/cfooter.jsp"%>
