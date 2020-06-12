<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

	<button onclick="start()" type="button"
		class="btn btn-primary btn-block">ajaxTest2버튼</button>

<!-- 

	get타입 // 요청할 주소 ajaxResponse1.jsp // 데이터 {"name" : "ajaxTest2"}

	type : "",
	url : "",
	data : ,
	contentType : 'text/plain; charset=UTF-8',
	dataType : "text"
	
	ajaxResponse1.jsp로  데이터를 전송하고
	
	데이터를 다시 이 페이지로 받아보세요. (받을 데이터 = ajaxTest2return)
	
 -->

	<script>

			function start() {
				
				$.ajax({
					
					type: "get",
					url: "ajaxResponse1.jsp",
					data : {"name" : "ajaxTest2"},
					contentType : 'text/plain; charset=UTF-8',
					dataType: "text"
					
				}).done(function(result) {
					alert(result);
				}).fail(function(result) {
					alert("실패");
				});
				
			}

	</script>
	
	<a href="ajaxTest3.jsp">ajaxTest3로 이동</a>

</body>
</html>