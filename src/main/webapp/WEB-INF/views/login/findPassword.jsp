<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>haru diary</title>

</head>
<body>
	<h2>비밀번호 찾기</h2>
	<form action="findPassword" method="post" name ="findPassword">
		아이디:<input type="text" name="userId" id="userId" placeholder="아이디"><br/>
		이메일:<input type="text" name="email" id="email" placeholder="이메일"><br/>
		<input type="submit" value="비밀번호 찾기">
	</form>
</body>
</html>