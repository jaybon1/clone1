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
		class="btn btn-primary btn-block">ajaxJson1버튼</button>

<!-- 

	post타입 // 요청할 주소URI // 데이터 {"name" : "ajaxJson1"}

	type : "",
	url : "",
	data : ,
	contentType : 'application/json; charset=UTF-8',
	dataType : "text"
	
	controller이름은 TestController // 서블릿주소는 test
	
	cmd=ajaxJson1
	
	action이름은 AjaxJson1Action
	
	데이터를 AjaxJson1Action에서 출력해보세요.
	
 -->

	<script>
	
		function start() {
			
			$.ajax({

				type : "post",
				url : "/sat0613Answer/test?cmd=ajaxJson1",
				data : JSON.stringify({"name" : "ajaxJson1"}),
				contentType : 'application/json; charset=UTF-8',
				dataType : "text"

			}).done(function(result) {
				alert(result);
			}).fail(function(result) {
				alert("실패");
			});
			
		}
		
	</script>
	
	<a href="ajaxJson2.jsp">ajaxJson2로 이동</a>

</body>
</html>