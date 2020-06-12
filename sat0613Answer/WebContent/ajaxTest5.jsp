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
		class="btn btn-primary btn-block">ajaxTest5버튼</button>

<!-- 

	post타입 // 요청할 주소 ajaxResponse2.jsp // 데이터 {"name" : "ajaxTest5"}

	type : "",
	url : "",
	data : ,
	contentType : 'text/plain; charset=UTF-8',
	dataType : "text"
	
	ajaxResponse2.jsp로  데이터를 보내보세요.
	
 -->

	<script>
	
		function start() {
			
			$.ajax({

				type : "post",
				url : "ajaxResponse2.jsp",
				data : {"name" : "ajaxTest5"},
				contentType : 'text/plain; charset=UTF-8',
				dataType : "text"

			}).done(function(result) {
				alert(result);
			}).fail(function(result) {
				alert("실패");
			});

			
		}
		
	</script>
	
	<a href="ajaxTest6.jsp">ajaxTest6로 이동</a>

</body>
</html>