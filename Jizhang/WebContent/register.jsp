<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" href="css/style.css" rel="stylesheet"/>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>register</title>
</head>
<body>
	<form id="login" method="post" action="/Jizhang/register">
		<table>
			<tr>
				<td>id:</td>
				<td><input type="text" name="id" id="id" /></td>
			</tr>
			<tr>
				<td>password:</td>
				<td><input type="password" name="pwd" id="pwd"/></td>
			</tr>
				<tr>
				<td>email:</td>
				<td><input type="text" name="email" id="email"/></td>
			</tr>
				<tr>
				<td>phone:</td>
				<td><input type="text" name="phone" id="phone"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="submit" /></td>
			</tr>
		</table>
	</form>

</body>

<script>

</script>
</html>