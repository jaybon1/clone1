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
  <form>
    <div class="input-group mb-3">
	    <div class="input-group-prepend">
	        <span class="input-group-text">원본언어</span>
	    </div>
      
		<select id="source" name="job">
		    <option value="ko">한국어</option>
		    <option value="en">영어</option>
		    <option value="ja">일본어</option>
		    <option value="zh-CN">중국어</option>
		</select>
	   	<div class="input-group-prepend">
	       <span class="input-group-text">번역언어</span>
	    </div>
		<select id="target" name="job">
		    <option value="en">영어</option>
		    <option value="ja">일본어</option>
		    <option value="zh-CN">중국어</option>
		    <option value="ko">한국어</option>
		</select>
	      <input id="text" name="text" type="text" class="form-control" placeholder="검색어를 입력하세요">
		  <input onclick="inter()" type="button" value="번역하기">
	    </div>
  </form>
<br>
<br>
<textarea class="form-control" rows="5" id="comment" name="text"></textarea>
</div>

<br>
<script type="text/javascript">

function inter() {
	if($("#text").val() == null || $("#text").val() == ""){
		alert("검색어를 입력해주세요");
		return;
	}
	
	var data = {
			source: $("#source").val(),
			target: $("#target").val(),
			text : $("#text").val(),
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
			
			$("#comment").empty();
			$("#comment").append(res.message.result.translatedText);
			
		}).fail(function(error) {
			alert("실패");
		});	
}
	


</script>

</body>
</html>