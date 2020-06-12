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
		class="btn btn-primary btn-block">ajaxTest9버튼</button>

<!-- 

	get타입 // 요청할 주소 ajaxResponse4.jsp?data=ajaxTest9

	type : "",
	url : "",
	contentType : 'text/plain; charset=UTF-8',
	dataType : "text"
	
	ajaxResponse4.jsp로  데이터를 보내보세요.
	
 -->

	<script>
	
	function start() {
		
		$.ajax({

			type : "get",
			url : "ajaxResponse4.jsp?data=ajaxTest9",
			data : {"name" : "ajaxTest9"},
			contentType : 'text/plain; charset=UTF-8',
			dataType : "text"

		}).done(function(result) {
			alert(result);
		}).fail(function(result) {
			alert("실패");
		});

	
}
		
	</script>
	
	<a href="ajaxJson1.jsp">ajaxJson1로 이동</a>

</body>
</html>