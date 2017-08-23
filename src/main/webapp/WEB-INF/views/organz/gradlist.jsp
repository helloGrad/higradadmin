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

</head>
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="container">
		<!-- ///// filter (대분류) //////-->
		<div class="row">
		<h3>${list[0].orgnzDstnct } 수정하기</h3>
			<div class="col-lg-4 centering">
				<a id="gradBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/organz/list">대학원</a>
				<a id="uniBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/organz/unilist">대학교</a>
				<a id="deptBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/organz/deptlist">학과</a>
				<a id="labBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/organz/lablist">연구실</a>
				
			</div>
		</div>

		<hr class="nav-line">

		<div class="row">
		
			<div id="grad" class="col-lg-12">
				<a id="insertBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/organz/insertform?type=${list[0].orgnzDstnct}">+</a>
			</div>
			
		</div>
		<c:forEach items="${list }" var="list" varStatus="status">
			<div class="col-md-12">
				<h3>
					<a
						href="${pageContext.servletContext.contextPath }/organz/updateform?no=${list.orgnzNo}&type=${list.orgnzDstnct}">${list.orgnzNm }</a>
				</h3>
				<hr>
			</div>
		</c:forEach>


		


	</div>

	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</body>
</html>