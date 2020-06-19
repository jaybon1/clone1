<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<button onclick="ajaxTest()">데이터 가져오기</button>
	<pre id="pre"></pre>
</body>

<script type="text/javascript">

	function ajaxTest() {
		
		$.ajax({
			
			url: "/sat0620/jtos",
			type: "get"
			
		}).done(function(result) {
			
			alert(result);
			
		}).fail(function(error) {
			
		});
	}

</script>

</html>
