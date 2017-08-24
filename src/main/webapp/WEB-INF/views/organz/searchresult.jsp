<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

</head>
<body>

	<br>
	<b><font size="5" color="gray">기관 정보 검색</font></b>
	<br>
	<br>
	<form name="organzsearch" id="organzsearch" method="post">
		<input type="text" id="stext" name="stext"> <input
			type="submit" value="검색하기">
	</form>
	<br>
	<br>

	<c:forEach items="${list }" var="list" varStatus="status">

		<a href="${pageContext.servletContext.contextPath }/noti/update?no=${list.slctnNotiNo}&tabnm=${list.slctnNotiDstnct}">${list.orgnzNm }</a>

	</c:forEach>
	<br>
	<br>
	<input type="button" value="확인" onclick="setOrganzData()">


</body>
</html>