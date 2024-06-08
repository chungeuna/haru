<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>haru diary</title>
<script>
</script>
</head>

<body>
  <h2>환영합니다</h2>
  <form name="memberJoin" method="post" action="memberJoin">
    <p>이름</p>
    <input type="text" name="name" placeholder="이름">
    <p>아이디</p>
    <span>
      <input type="text" name="userId" id="userId" placeholder="아이디" >
	  <input type="button" value="중복확인" onclick="userId">
	  <label style="display:none">사용할 수 있는 아이디입니다.</label>
	</span>
    <p>비밀번호</p>
    <input type="password" name="password" id="password" placeholder="비밀번호">
	<p>비밀번호확인</p>
    <input type="password" name="confirmPassowrd" id="confirmPassowrd" placeholder="비밀번호">
	<p>이메일</p>
    <input type="text" name="email" placeholder="이메일">
	<p>성별</p>
	<label>남자<input type="radio" name="usergender" value="M" checked></label>
	<label>여자<input type="radio" name="usergender" value="F" checked></label>
	<p>생년월일</p>
    <input type="text" name="birthDate" placeholder="생년월일">
	<p>
		<input type="submit" value="가입하기">
	</p>	
  </form>
</body>
</html>