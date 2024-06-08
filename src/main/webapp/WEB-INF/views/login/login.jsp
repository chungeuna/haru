<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>haru diary</title>

<style type="text/css">	
a { /* a태그 밑줄 없애기 */
  text-decoration: none;
}
</style>


</head>
<body>
	<h2>로그인</h2>
	<form action="login" method="post" name ="login">
		아이디:<input type="text"  name="userId" id="userId"  placeholder="아이디"><br/>
		비밀번호:<input type="password" name="password" id="password"  placeholder="비밀번호"><br/>
		<input type="submit" value="로그인">
	</form>
	<a href="/login/findIdMove">아이디 찾기</a>|<a href="/login/findPasswordMove">비밀번호 찾기</a>|<a href="/login/memberJoinMove">회원가입</a>
</body>
</html>