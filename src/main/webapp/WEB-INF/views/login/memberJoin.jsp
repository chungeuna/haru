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
  <h2>ȯ���մϴ�</h2>
  <form name="memberJoin" method="post" action="memberJoin">
    <p>�̸�</p>
    <input type="text" name="name" placeholder="�̸�">
    <p>���̵�</p>
    <span>
      <input type="text" name="userId" id="userId" placeholder="���̵�" >
	  <input type="button" value="�ߺ�Ȯ��" onclick="userId">
	  <label style="display:none">����� �� �ִ� ���̵��Դϴ�.</label>
	</span>
    <p>��й�ȣ</p>
    <input type="password" name="password" id="password" placeholder="��й�ȣ">
	<p>��й�ȣȮ��</p>
    <input type="password" name="confirmPassowrd" id="confirmPassowrd" placeholder="��й�ȣ">
	<p>�̸���</p>
    <input type="text" name="email" placeholder="�̸���">
	<p>����</p>
	<label>����<input type="radio" name="usergender" value="M" checked></label>
	<label>����<input type="radio" name="usergender" value="F" checked></label>
	<p>�������</p>
    <input type="text" name="birthDate" placeholder="�������">
	<p>
		<input type="submit" value="�����ϱ�">
	</p>	
  </form>
</body>
</html>