<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>haru diary</title>

<style type="text/css">	
a { /* a�±� ���� ���ֱ� */
  text-decoration: none;
}
</style>


</head>
<body>
	<h2>�α���</h2>
	<form action="login" method="post" name ="login">
		���̵�:<input type="text" name="id"><br/>
		��й�ȣ:<input type="password" name="pw"><br/>
		<input type="submit" value="�α���">
	</form>
	<a href="/login/findIdMove">���̵� ã��</a>|<a href="/login/findPasswordMove">��й�ȣ ã��</a>|<a href="/login/memberJoinMove">ȸ������</a>
</body>
</html>