<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	html, body {
		margin : 0;
		height : 100%;
		overflow : hidden;
	}
	#mainHdr {
		border : 1px solid silver;
		background-color : white;
		height : 20%;
		width : 100%; 
	}
	#mainContainer {
		height : 64%;
		width : 100%;
		display : flex;
		flex-direction : row;
	}
	#mainNav {
		border : 1px solid silver;
		background-color : grey;
		height : 100%;
		width : 30%; 
	}
	#mainSctn {
		border : 1px solid silver;
		background-color : yellow;
		height : 100%;
		width : 60%; 
	}
	#mainAsd {
		border : 1px solid silver;
		background-color : grey;
		height : 100%;
		width : 10%;
	}
</style>
</head>
<body>
<header id="mainHdr">
Top panel
</header>
<div id="mainContainer">
	<nav id="mainNav">
		Nav panel
	</nav>
	<section id="mainSctn">
	</section>
	<aside id="mainAsd">
	</aside>
</div>
<footer id="mainFtr">
</footer>
</body>
</html>