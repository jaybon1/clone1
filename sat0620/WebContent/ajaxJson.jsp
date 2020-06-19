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
	<button onclick="ajaxTest()">제이슨 데이터 가져오기</button>
	<pre id="pre"></pre>
</body>

<script type="text/javascript">

	function ajaxTest() {
		
		var a = {
				name :"가나다"
		}
		
		console.log(JSON.stringify(a));
		$.ajax({
			
			url: "/sat0620/json",
			data : JSON.stringify(a),
			type: "post",
			dataType:"json"
			
		}).done(function(result) {
			
			alert(result.name);
			
		}).fail(function(error) {
			
			alert("실패");
			
		});
	}

</script>
</html>
