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
	과일 1 : ${paramValues.food[0] }<br>
	과일 2 : ${paramValues.food[1] }<br>
	과일 3 : ${paramValues.food[2] }<br>
	과일 4 : ${paramValues.food[3] }<br>
	과일 5 : ${paramValues.food[4] }<br>
	
	<a href="step-3.jsp">step-3으로 이동]</a>
	
	<c:forEach items="${paramValues.food }" var="foods" varStatus="st">
		과일 ${st.index} : ${foods }<br>
	</c:forEach>
	
	<% 
		String friends[] = {"삼겹살","소주","족발","맥주"};
		request.setAttribute("f", friends);
		
		
	%>
	
	<c:forEach items="${requestScope.f }" var="fname">
		${fname }
	</c:forEach>
	
	<br>
	<br>
	
	<c:forEach begin="1" end="10" var="i">
		${i }
	</c:forEach>
	
	<a href="step-5.jsp">step5</a>
</body>
</html>