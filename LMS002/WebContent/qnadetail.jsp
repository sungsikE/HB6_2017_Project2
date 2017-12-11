<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
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
<div class="lmsnavi">현재위치: <a href="lmsindex.do">LMS</a>/<a href="qanda.do">QnA관리</a>/답변상세</div>
<h2>QnA 상세</h2>
<h3>질문</h3>
<table>
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>내용</th>
		<th>메일</th>
		<th>전화</th>
	</tr>
	<tr>
	<c:forEach items="${qdetail }" var="bean">
		<td>${bean.qnaid }</td>
		<td>${bean.author }</td>
		<td>${bean.content }</td>
		<td>${bean.email }</td>
		<td>${bean.phonenum }</td>
	</c:forEach>	
	</tr>	
</table>
<c:forEach items="${adetail }" var="bean" varStatus="loop">
	<div>답변#${loop.count }: ${bean.content }</div>
	<div>by: ${bean.author }</div>
</c:forEach>
<br>
<form action="reply.do" method="post">	
		<label for="reply">답변 작성</label><br>
		<textarea name="reply" id="reply" rows=5 cols=30></textarea>
		<c:forEach items="${qdetail }" var="bean">
		<input type="hidden" value="${bean.qnaid }" name="qid">
		</c:forEach>
		<div><button type="submit">입력</button></div>
</form>
</div>
</body>
</html>