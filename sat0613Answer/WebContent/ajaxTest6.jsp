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
		class="btn btn-primary btn-block">ajaxTest6버튼</button>

<!-- 

	post타입 // 요청할 주소 ajaxResponse3.jsp // 데이터 {"name" : "ajaxTest6"}

	type : "",
	url : "",
	data : ,
	contentType : 'text/plain; charset=UTF-8',
	dataType : "text"
	
	ajaxResponse3.jsp로  데이터를 전송하고
	
	데이터를 다시 이 페이지로 받아보세요. (받을 데이터 = ajaxTest6return)
	
 -->

	<script>
	
		function start() {
			
			$.ajax({

				type : "post",
				url : "ajaxResponse3.jsp",
				data : {"name" : "ajaxTest6"},
				contentType : 'text/plain; charset=UTF-8',
				dataType : "text"

			}).done(function(result) {
				alert(result);
			}).fail(function(result) {
				alert("실패");
			});
			
		}
		
	</script>
	
	<a href="ajaxTest7.jsp">ajaxTest7로 이동</a>

</body>
</html>