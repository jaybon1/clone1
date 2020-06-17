<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>

<div class="container">
  <form action="/test/test?cmd=inter" method="post">
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">번역기</span>
      </div>
      <input name="X-Naver-Client-Id" value="LMRJKMfBfDZYA35262l9" type="hidden">
      <input name="X-Naver-Client-Secret" value="R4OoO0jDuE" type="hidden">
      <input name="source" value="ko" type="hidden">
      <input name="target" value="en" type="hidden">
      <input name="text" type="text" class="form-control" placeholder="검색어를 입력하세요">
	  <input type="submit" value="번역하기">
    </div>
  </form>
<br>
<br>
<br>
<textarea class="form-control" rows="5" id="comment" name="text"></textarea>
</div>

<br>
<script type="text/javascript">
	
	var data = {
		source: "ko",
		target: "zh-CN",
		text : "한국에 오신 것을 환영합니다. 제 이름은 김성수 입니다.",
		ClientId: "LMRJKMfBfDZYA35262l9",
		ClientSecret: "R4OoO0jDuE"
	}
	
	$.ajax({
		
		url: "/test/test?cmd=inter",
		type: "post",
		data: data,
		ContentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : "json"
		
	}).done(function(res) {
		
		alert(res.message.result.translatedText);
		
	}).fail(function(error) {
		alert("실패");
	});

</script>

</body>
</html>