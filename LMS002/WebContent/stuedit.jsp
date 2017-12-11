<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프</title>
<link rel="stylesheet" href="css/all.css"></link>
<script src="js/mktwebside.js"></script>
</head>
<body>
<div id="mktweb"><c:import url="startweb.do"  charEncoding="utf-8"></c:import></div>
<div id="lmsweb" class="all">
<div class="lmsnavi">현재위치: <a href="lmsindex.do">LMS</a>/<a href="stuedit.do">학생수정</a></div>
<h1>학생수정페이지</h1>
<form action="stuedit.do" method="post">
<%-- 	<c:forEach items="${bean }" var="bean"> --%>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="sId" value="${bean.sId }" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="sName" value="${bean.sName }" required/></td>
		</tr>
		<tr>
			<td>생일</td>
			<td><input type="date" name="birth" value="${bean.birth }" required/></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="phone" name="phone" value="${bean.phone }" required/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="email" name="email" value="${bean.email }" required/></td>
		</tr>
		<tr>
			<td>반</td>
			<td><input type="number" name="regclass" value="${bean.regclass }" required/></td>
		</tr>
		<tr>
			<td>상태</td>
			<td><input type="text" name="status" value="${bean.status }" required/></td>
		</tr>
	</table>
	<%-- </c:forEach> --%>
	<button type="submit">완료</button>
</form>
</div>
</body>
</html>