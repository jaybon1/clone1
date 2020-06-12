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
		class="btn btn-primary btn-block">ajaxTest1버튼</button>

<!-- 

	get타입 // 요청할 주소 ajaxResponse.jsp // 데이터 {"name" : "ajaxTest1"}

	type : "",
	url : "",
	data : ,
	contentType : 'text/plain; charset=UTF-8',
	dataType : "text"
	
	ajaxResponse.jsp로  데이터를 보내보세요.
	
 -->

	<script>
	
		function start() {
			
			$.ajax({
				
				type: "get",
				url: "ajaxResponse.jsp",
				data : {"name" : "ajaxTest1"},
				contentType : 'text/plain; charset=UTF-8',
				dataType: "text"
				
			}).done(function(result) {
				alert(result);
			}).fail(function(result) {
				alert("실패");
			});
			
		}
		
	</script>
	
	<a href="ajaxTest2.jsp">ajaxTest2로 이동</a>

</body>
</html>