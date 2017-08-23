<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/list.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/adminform.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	


<style> textarea {width:300px; overflow:visible} </style>


<script>
    function resize(obj) {
      obj.style.height = "1px";
      obj.style.height = (20+obj.scrollHeight)+"px";
    }
</script>




</head>
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="container">

		<hr class="nav-line">


		<div class="row">
			<div id="lab" class="col-lg-12">
				<h2>연구실 - 연구실이름/연구내용으로 구분</h2>
				<form class="login-form" id="login-form" name="loginform"
					method="post"
					action="${pageContext.servletContext.contextPath }/organz/insert?type=연구실">
					<div class="form-group">
						<input type="hidden" id="tabnm" name="tabnm" value="lab">

						연구실 이름: <input type="text" class="form-control" id="orgnzNm"
							name="orgnzNm"> <br> 연구실 영문명 이름 : <input type="text"
							class="form-control" id="engOrgnzNm" name="engOrgnzNm"> <br>
						기관구분 : <select name="orgnzDstnct">
							<option value="">기관구분</option>
							<option value="대학교">대학교</option>
							<option value="대학원">대학원</option>
							<option value="학과">학과</option>
							<option value="연구실" selected="selected">연구실</option>
						</select> <br> 연구실 url 주소 : <input type="text" class="form-control"
							id="hmpageUrl" name="hmpageUrl"> <br> 연구실 전화번호 : <input
							type="text" class="form-control" id="telNo" name="telNo">
						<br> 연구실 팩스번호 : <input type="text" class="form-control"
							id="faxNo" name="faxNo"> <br> 주소 : <input
							type="text" class="form-control" id="addr" name="addr"> <br>
						세부주소 : <input type="text" class="form-control" id="detailAddr"
							name="detailAddr"> <br> 부모기관번호 : <input type="text"
							class="form-control" id="prntsOrgnzNo" name="prntsOrgnzNo">
						<br> <br> 교수님 성명: <input type="text"
							class="form-control" id="mapProfNm" name="mapProfNm"> <br>
						연구실 소개:
						<textarea class="form-control" onkeydown="resize(this)" onkeyup="resize(this)" id="labIntro" name="labIntro"></textarea>
						<br> 연구원 수(박사/석박사/석사): <input type="text"
							class="form-control" id="rsrchrInfoText" name="rsrchrInfoText">
						<br> 국내외 구분: <select name="hmnbrdDstnct">
							<option value=""> 국내외구분</option>
							<option value="국내" selected="selected">국내</option>
							<option value="국외">국외</option>
						</select> <br> <br>
					</div>
					<hr>
					<button type="submit" class="form-control">입력</button>
				</form>
				<hr>
				<form class="resrch-form" id="resrch-form" name="resrch-form"
					method="post"
					action="${pageContext.servletContext.contextPath }/organz/insert?type=연구실">
					<input type="hidden" id="tabnm" name="tabnm" value="lab">
					연구실 번호 : <input type="text" class="form-control" id="orgnzNo"
						name="orgnzNo"> <br> 실적구분 : <select
						name="acrsltDstnct">
						<option value=""> 실적구분</option>
						<option value="논문">논문</option>
						<option value="세미나">세미나</option>
						<option value="학회">학회</option>
						<option value="특허">특허</option>
						<option value="프로젝트">프로젝트</option>
						<option value="기타">기타</option>
					</select> <br> <br> 연구년도 :<input type="text" class="form-control"
						id="resrchYycl" name="resrchYycl"> <br> 연구내용:
					<textarea 
						class="form-control" onkeydown="resize(this)" onkeyup="resize(this)" id="resrchText" name="resrchText"></textarea>
					<br>

					<button type="submit" class="form-control">입력</button>
				</form>
			</div>
		</div>


	</div>

	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/list.js"></script>
</body>
</html>