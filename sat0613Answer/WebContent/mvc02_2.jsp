<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<br /> 
		<br />
		<h1>mvc02_2 페이지 입니다</h1>
		
	<!-- today 파라미터 출력하기 -->
	<div>
	
<%-- 	<%=request.getParameter("today")%> --%>

	${param.today}
	
	</div>
		
	</div>
	
	<a href="mvc03_1.jsp">mvc03_1로 이동</a>
</body>
</html>