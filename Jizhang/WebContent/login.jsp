<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<link type="text/css" href="css/style.css" rel="stylesheet"/>
<title>登陆</title>
<script>
	function validate(){
			var user = $("#id").val();
			var pwd = $("#pwd").val();
			var pattern = new RegExp("[^0-9A-Za-z]");
			if(user.trim()==""){
				alert("用户名不能为空");
				$("#id").focus();
				return false;
			}
			if(pwd.trim()==""){
				alert("密码不能为空");
				$("#pwd").focus();
				return false;
			}
			if(user.length<3||user.length>20){
				alert("用户名长度为3-20位数字和字母组成");
				$("#id").val("");
				$("#id").focus();
				return false;
			}
			if(pwd.length<3||pwd.length>20){
				alert("密码长度为3-20位数字和字母组成");
				$("#pwd").val("");
				$("#pwd").focus();
				return false;
			}
			if(pattern.test(user)){
				alert("用户名只能由数字和字母组成");
				$("#id").val("");
				$("#id").focus();
				return false;
			}
			if(pattern.test(pwd)){
				alert("密码只能由数字和字母组成");
				$("#pwd").val("");
				$("#pwd").focus();
				return false;
			}
			return true;
			
		}
	$(function(){
		$("#submit").mouseover(function(){
			$(this).css("background-color:white");
		});
	});


</script>
<style>
body {
	text-align: center;
	font-weight: bold;
	font-family: KaiTi;
}

#id,#pwd {
	width: 200px;
	height: 20px;
}

#submit {
	font-family: KaiTi;
	hover: cursor;
}

#container {
	border: 1px solid #cccccc;
	width: 300px;
	margin: 0 auto;
	margin-top: 20%;
	background-color: #f5f5f5;
}
</style>
</head>
<body>
	<%
		if(session.getAttribute("name")!=null){
			session.setAttribute("name", null);
		}
	%>
	<div id="container">
	<form id="login" method="post" action="/Jizhang/login" onsubmit="return validate()">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="id"  id="id"/></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="pwd" id="pwd"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="登陆" id="submit" />&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="register.jsp">注册</a></td>
				
			</tr>
		</table>
	</form>
	</div>

</body>

</html>