<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 스클립틀릿 방식은 파라미터 값이 문자열로 인식, 연산불가능 -->
	<%= request.getParameter("name") %>
	<%= request.getParameter("age")+1 %>

	<!-- EL방식은 내부적으로 형변환을 하여 연산이 가능함 -->
	이름은 ${param.name }<br>
	나이는 ${param.age+1 }
	<hr>
	<!-- 나이가 18살 미만이면 미성년자 입니다. 라고 출력 -->
	<c:if test="${param.age<18 }">
		${param.name }은 미성년자
	</c:if>
	
	<!-- choose를 사용하여 다중 조건 처리 -->
	<c:choose>
		<c:when test="${param.age>=19 }">
			<h3>${param.name }은 성인</h3>
		</c:when>
		<c:when test="${param.age>=13 }">
			<h3>${param.name }은 청소년</h3>
		</c:when>
		<c:when test="${param.age>=5 }">
			<h3>${param.name }은 어린이</h3>
		</c:when>
		<c:otherwise>
			<h3>${param.name }은 유아</h3>
		</c:otherwise>
	</c:choose>
	
	<form action="step-4.jsp">
		<input type="checkbox" name="food" value="바나나">바나나<br>
		<input type="checkbox" name="food" value="딸기">딸기<br>
		<input type="checkbox" name="food" value="귤">귤<br>
		<input type="checkbox" name="food" value="사과">사과<br>
		<input type="checkbox" name="food" value="복숭아">복숭아<br>
		<button type="submit">전송</button>
	</form>
</body>
</html>