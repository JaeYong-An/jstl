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
	<!-- 메누판을 체크박스 형태로 만들어 스텝6으로 전송 -->
	<!-- 스텝6에서 주문자명, 메뉴 출력 -->
	<form action="step-6.jsp" method="post">
		주문자명 : <input type="text" name="name"><br>
		<input type="checkbox" name="menu" value="차돌짬뽕">차돌짬뽕 <br>
		<input type="checkbox" name="menu" value="순두부찌개">순두부찌개 <br>
		<input type="checkbox" name="menu" value="돈가스">돈가스 <br>
		<input type="checkbox" name="menu" value="쫄면">쫄면<br>
		<input type="checkbox" name="menu" value="우동">우동<br>
		<button type="submit">전송</button>
	</form>
</body>
</html>