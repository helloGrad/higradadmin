<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<script type="text/javascript">

var setPdata = function(no, name){
	console.log(no+name);
	 opener.document.getElementById("orgnzNo").value = no;
	 opener.document.getElementById("organzinput").value = name;
	 window.close();
}

</script>

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
		<p>${list.orgnzNm }<input type="button" value="선택" onclick="setPdata(${list.orgnzNo},'${list.orgnzNm }')"></p>
	</c:forEach>
	<br>
	<br>
	<input type="button" value="확인" onclick="window.close()">

</body>
</html>