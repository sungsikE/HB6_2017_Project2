<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프</title>
<link rel="stylesheet" href="css/all.css"></link>
<script src="js/mktwebside.js"></script>
<style type="text/css">
	#mktweb{
		position: absolute;
		width: 100%;
		z-index: 0 ;
	}
	#lmsweb{
		position: relative;
		float: right ;
		width: 30% ;
		z-index: 0 ;
	}
	#login{
		margin-left:0px;
		margin-top:0px;
		height: 0px;
		width: 0px;
	}
	@MEDIA screen and (max-width: 767px) {
	#mktweb{
		display: none;
	}
	#lmsweb{
		float: left;
		width: 90%;
		height: 500px;
		overflow: scroll;
	}
	.all a{
		margin-left:0px;
	}
	div.lmsnavi{
	margin-left: 0px;
	margin-top: 25px ;
	}
}	
</style>
</head>
<body>
<div id="mktweb"><c:import url="startweb.do"  charEncoding="utf-8"></c:import></div>
<div id="lmsweb" class="all">
<a href="logout.do" class="logout">logout</a>
<div class="lmsnavi">현재위치: <a href="lmsindex.do">LMS</a>/이메일상담</div>
<h2>이메일 상담 목록</h2>
	<table>
		 <tr>
		   <th>번호</th>
		   <th>제목</th>
		   <th>내용</th>
		 </tr>
		 <c:forEach items="${list }" var="bean">
		 <tr>
		   <td><a href="b01detail.do?idx=${bean.emailId }">${bean.emailId }</a></td>
		   <td>
		   		<c:choose>
           			<c:when test="${fn:length(bean.title) > 10}">
            			<c:out value="${fn:substring(bean.title,0,9)}"/>...
           			</c:when>
           			<c:otherwise>
            			<c:out value="${bean.title}"/>
           			</c:otherwise> 
          		</c:choose>
		   </td>
		   <td>
		   		<c:choose>
           			<c:when test="${fn:length(bean.content) > 14}">
            			<c:out value="${fn:substring(bean.content,0,13)}"/>...
           			</c:when>
           			<c:otherwise>
            			<c:out value="${bean.content}"/>
           			</c:otherwise> 
          		</c:choose>
		   </td>
		 </tr>
		 </c:forEach>
	</table>
</div>	
</body>
</html>