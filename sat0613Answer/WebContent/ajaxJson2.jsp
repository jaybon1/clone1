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
		class="btn btn-primary btn-block">ajaxJson2버튼</button>

<!-- 

	post타입 // 요청할 주소URI // 데이터 {"name" : "ajaxJson2"}

	type : "",
	url : "",
	data : ,
	contentType : 'application/json; charset=UTF-8',
	dataType : "json"
	
	controller이름은 TestController // 서블릿주소는 test
	
	cmd=ajaxJson2
	
	action이름은 AjaxJson2Action
	
	데이터를 다시 이 페이지로 받아보세요. (받을 데이터 = {"task" : "ajaxJson2return"}  )
	
 -->

	<script>
	
			function start() {
				
				$.ajax({

					type : "post",
					url : "/sat0613Answer/test?cmd=ajaxJson2",
					data : JSON.stringify({"name" : "ajaxJson2"}),
					contentType : 'application/json; charset=UTF-8',
					dataType : "json"

				}).done(function(result) {
					console.log(result);
					alert(result);
				}).fail(function(result) {
					alert("실패");
				});
				
			}

	</script>

</body>
</html>