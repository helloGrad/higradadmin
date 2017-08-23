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
					action="${pageContext.servletContext.contextPath }/organz/update?type=연구실">
					<div class="form-group">
					
						<input type="hidden" id="orgnzNo" name="orgnzNo" value="${organzLabList.orgnzNo }">
						연구실 이름: <input type="text" class="form-control" id="orgnzNm"
							name="orgnzNm" value="${organzLabList.orgnzNm }"><br> 
						연구실 영문명 이름 : <input type="text" class="form-control" id="engOrgnzNm" name="engOrgnzNm" value="${organzLabList.engOrgnzNm }"> <br>
						기관구분 : <select name="orgnzDstnct">
							<option value="">기관구분</option>
							<option value="대학교">대학교</option>
							<option value="대학원">대학원</option>
							<option value="학과">학과</option>
							<option value="연구실" selected="selected">연구실</option>
						</select> <br> 
						연구실 url 주소 : <input type="text" class="form-control"
							id="hmpageUrl" name="hmpageUrl" value="${organzLabList.hmpageUrl }"> <br> 
							연구실 전화번호 : <input
							type="text" class="form-control" id="telNo" name="telNo" value="${organzLabList.telNo }">
						<br> 연구실 팩스번호 : <input type="text" class="form-control"
							id="faxNo" name="faxNo" value="${organzLabList.faxNo }"> <br> 
							주소 : <input
							type="text" class="form-control" id="addr" name="addr" value="${organzLabList.addr }"> <br>
						세부주소 : <input type="text" class="form-control" id="detailAddr"
							name="detailAddr" value="${organzLabList.detailAddr }"> <br> 
							부모기관번호 : <input type="text"
							class="form-control" id="prntsOrgnzNo" name="prntsOrgnzNo" value="${organzLabList.prntsOrgnzNo }">
						<br> <br> 교수님 성명: <input type="text"
							class="form-control" id="mapProfNm" name="mapProfNm" value="${organzLabList.mapProfNm}"> <br>
						연구실 소개:
						<textarea 
							class="form-control" onkeydown="resize(this)" onkeyup="resize(this)"  id="labIntro" name="labIntro">${organzLabList.labIntro}</textarea>
						<br> 연구원 수(박사/석박사/석사): <input type="text"
							class="form-control" id="rsrchrInfoText" name="rsrchrInfoText" value="${organzLabList.rsrchrInfoText}"><br>
							
			
							
							<c:if test="${organzLabList.hmnbrdDstnct == '국내' }">
							국내외 구분: <select name="hmnbrdDstnct">
							<option value=""> 국내외구분</option>
							<option value="국내" selected="selected">국내</option>
							<option value="국외">국외</option>
							</select> 
							</c:if>
							<c:if test="${organzLabList.hmnbrdDstnct == '국외' }">
							국내외 구분: <select name="hmnbrdDstnct">
							<option value=""> 국내외구분</option>
							<option value="국내">국내</option>
							<option value="국외" selected="selected">국외</option>
							</select> 
							</c:if>
						
					
						<br> <br>
					</div>
					<hr>
					<button type="submit" class="form-control">수정</button>
				</form>
				<hr>
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