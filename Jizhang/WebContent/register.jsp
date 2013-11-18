<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/style.css" rel="stylesheet"/>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>注册</title>
</head>
<body>
	<form id="login" method="post" action="/Jizhang/register">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="id" id="id" /></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="pwd" id="pwd"/></td>
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
				<td colspan="2"><input type="submit" value="提交" /></td>
			</tr>
		</table>
	</form>

</body>

<script>

</script>
</html>