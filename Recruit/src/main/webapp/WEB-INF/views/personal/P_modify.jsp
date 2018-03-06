<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/pheader.jsp"%>

<!-- Main content -->
<!-- 기업 채용공고 목록 -->
<div class="col-md-9">
	<h1>이력서 목록</h1>
	<table class="table table-bordered">
		<%-- <tr>
			<th>순번</th>
			<th>이력서 제목</th>
			<th>수정/삭제</th>
		</tr>
		
		<tr>
			<td>${ResumeVO.bno}</td>
			<td><a href="/personal/detail">${ResumeVO.title}</a></td>			
			<th>
				<form>
					<input class="btn btn-success" type='button' value='수정'
						onClick="javascript:self.location='/personal/modify';">
						<input class="btn btn-danger" type='button' value='삭제'
						onClick="javascript:self.location='/personal/modify';">
				</form>
			</th>
		</tr> --%>
		
		<form role = "form" method="post">
			<input type='hidden' name='bno' value="${ResumeVO.bno}">		
		</form>
		
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail1">Title</label>
				<input type="text" name='title' class="form-control" value="${Resume.title}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Content</label>
				<textarea class="form-control" name="content" rows="3" readonly="readonly">${Resume.content}</textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Writer</label>
				<input type="text" name="writer" class="form-control" value="${Resume.title}" readonly="readonly">
			</div>
		</div>
		
		<div class="box-footer">
			<button type="submit" class="btn btn-warning">Modify</button>
			<button type="submit" class="btn btn-danger">Remove</button>
			<button type="submit" class="btn btn-primary">List All</button>
		</div>
		
		<!-- <tr>
			<td>3</td>
			<td><a href="C_detail.html">(주)케이티넥스알 인턴사원 모집</td>
			<td>~3/02(금)</a>
			</td>
			<td>72</td>
			<td style="text-align: center">6</td>
			<td>모집중</td>
			<th>
				<form>
					<input class="btn btn-success" type='button' value='수정'
						onClick="javascript:self.location='/rpjt/modify';">
					<input class="btn btn-danger" type='button' value='삭제'
					onClick="javascript:self.location='/rpjt/modify';">
				</form>
				
			</th>
		</tr>
		<tr>
			<td>2</td>
			<td><a href="C_detail.html">PHP개발자 / 웹,앱 개발 / 유지보수 / 퍼블리셔
					경력자 채용</a></td>
			<td>~3/02(금)</td>
			<td>72</td>
		<td style="text-align: center">4</td>
			<td>모집중</td>
			<th>
				<form>
					<input class="btn btn-success" type='button' value='수정'
						onClick="javascript:self.location='/rpjt/modify';">
					<input class="btn btn-danger" type='button' value='삭제'
					onClick="javascript:self.location='/rpjt/modify';">
				</form>
			</th>
		</tr>
		<tr>
			<td>1</td>
			<td><a href="C_detail.html">웹 프로그래머 / 시스템 엔지니어 / VOC 경력 및
					신입사원 모집</a></td>
			<td>~2/9(금)</td>
			<td>72</td>
			<td style="text-align: center">54</td>
			<td>모집마감</td>
			<th>
				<form>
					<input class="btn btn-success" type='button' value='수정'
						onClick="javascript:self.location='/rpjt/modify';">
					<input class="btn btn-danger" type='button' value='삭제'
					onClick="javascript:self.location='/rpjt/modify';">
				</form>
			</th>
		</tr> -->
	</table>
</div>
<!-- //기업 채용공고 목록 끝 -->

<%@include file="../include/cfooter.jsp"%>

