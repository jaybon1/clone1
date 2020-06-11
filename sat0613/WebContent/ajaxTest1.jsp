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
		class="btn btn-primary btn-block">ajax버튼</button>

	<div id="my"></div>

	<script>
		function start() {
			$.ajax({
				url : "/blog/user?cmd=ajax",
				data : {"name" : "홍길동"},
				type : "GET",
				contentType : 'application/json; charset=UTF-8',
				dataType : "text" // json, text 등
			}).done(
					
				function(result) {
					alert(result);
				}
				
			).fail(

				function() {
					alert("실패");
				}

			).always(
					
				function() {
					alert("종료");
				}
				
			);
		}
	</script>
</body>
</html>