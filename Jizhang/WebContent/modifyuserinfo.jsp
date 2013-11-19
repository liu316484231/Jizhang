<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<title>修改用户信息</title>
<style>
body {
	text-align: center;
	font-weight: bold;
	font-family: KaiTi;
}

#id,#pwd,#pwd2,#pwd3,#email,#phone {
	width: 200px;
	height: 20px;
}

#submit {
	font-family: KaiTi;
	width: 60px;
	height: 30px;
}

#container {
	border: 1px solid #cccccc;
	width: 350px;
	margin: 0 auto;
	margin-top: 10%;
	background-color: #f5f5f5;
}
</style>
</head>
<body>
	欢迎:<%=session.getAttribute("name") %>
	<%
		String name = (String)session.getAttribute("name"); 
		if(name==null||name.trim().equals("")){
			//response.sendRedirect("login.jsp");
		}
	%>
<div id="container">
	<h3>修改您的个人信息</h3>
	<hr/>
	<form id="login" method="post" action="/Jizhang/register" onsubmit="return validate()">
		<table>
			<tr>
				<td>用户名:</td>
				<td><%=session.getAttribute("name") %></td>
			</tr>
			<tr>
				<td>原密码:</td>
				<td><input type="password" name="pwd" id="pwd"/></td>
			</tr>
			<tr>
				<td>新密码:</td>
				<td><input type="password" name="pwd2" id="pwd2"/></td>
			</tr>
			<tr>
				<td>确认新密码:</td>
				<td><input type="password" name="pwd3" id="pwd3"/></td>
			</tr>
				<tr>
				<td>邮箱(选填):</td>
				<td><input type="text" name="email" id="email"/></td>
			</tr>
				<tr>
				<td>电话(选填):</td>
				<td><input type="text" name="phone" id="phone"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="提交" id="submit"/></td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>