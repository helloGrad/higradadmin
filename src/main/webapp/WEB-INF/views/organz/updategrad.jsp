<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/list.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/adminform.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#hmnbrdDstnct").val("${vo.hmnbrdDstnct}").attr("selected", "selected");
	$("#orgnzDstnct").val("${vo.orgnzDstnct}").attr("selected", "selected");
	
	$("textarea.autosize").on('keydown keyup', function () {
		  $(this).height(1).height( $(this).prop('scrollHeight')+12 );	
		});
})
</script>

<style>
textarea.autosize { min-height: 50px; }
</style>
</head>
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="container">
		<!-- ///// filter (대분류) //////-->
		<div class="row">
			<div class="col-lg-4 centering">
				<a id="gradBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/organz/list">대학원</a>
				<a id="uniBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/organz/unilist">대학교</a>
				<a id="deptBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/organz/deptlist">학과</a>
				<a id="labBtn" class="btn btn-primary" href="#">연구실</a>
				
			</div>
		</div>

		<hr class="nav-line">

		<div class="row">
		
			<div id="grad" class="col-lg-12">
				<a id="insertBtn" class="btn btn-primary">+</a>
			</div>
			
			<form class="updateform" id="updateform" name="updateform"method="post" action="${pageContext.servletContext.contextPath }/organz/update">
				<input type="hidden" id="type" name="type" value="대학원">
				<input type="hidden" id="orgnzNo" name="orgnzNo" value="${vo.orgnzNo }">
				
				<div class="form-group">
				
					<label >기관구분:</label>
					<select id="hmnbrdDstnct" name="hmnbrdDstnct">
  						<option value="국내">국내</option>
  						<option value="국외">국외</option>
					</select>
					<select id="orgnzDstnct" name="orgnzDstnct">
  						<option value="대학교">대학교</option>
  						<option value="대학원">대학원</option>
  						<option value="학과">학과</option>
					</select>
					<br>
					<br>
					
					<label >기관명:</label> <input type="text" class="form-control" id="orgnzNm" name="orgnzNm" value="${vo.orgnzNm }">
					<label >기관영문명:</label> <input type="text" class="form-control" id="engOrgnzNm" name="engOrgnzNm" value="${vo.engOrgnzNm }">
					<label >홈페이지주소:</label> <input type="text" class="form-control" id="hmpageUrl" name="hmpageUrl" value="${vo.hmpageUrl }">
					<label >전화번호:</label> <input type="text" class="form-control" id="telNo" name="telNo" value="${vo.telNo }">
					<label >팩스번호:</label> <input type="text" class="form-control" id="faxNo" name="faxNo" value="${vo.faxNo }">
					<label >주소:</label> <input type="text" class="form-control" id="addr" name="addr" value="${vo.addr }">
					<label >상세주소:</label> <input type="text" class="form-control" id="detailAddr" name="detailAddr" value="${vo.detailAddr }">
					<label >부모번호:</label> <input type="text" class="form-control" id="prntsOrgnzStr" name="prntsOrgnzStr" value="${vo.prntsOrgnzNo }">
					
				</div>
				
				<button type="submit" class="btn btn-primary btn-lg">수정</button>
			</form>
			
		</div>
		


		


	</div>

	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</body>
</html>