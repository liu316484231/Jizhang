<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<link type="text/css" href="css/style.css" rel="stylesheet"/>
<title>login</title>
</head>
<body>
	<%
		if(session.getAttribute("name")!=null){
			session.setAttribute("name", null);
		}
	%>
	<form id="login" method="post" action="/Jizhang/login">
		<table>
			<tr>
				<td>id:</td>
				<td><input type="text" name="id"  id="id"/></td>
			</tr>
			<tr>
				<td>password:</td>
				<td><input type="password" name="pwd" id="pwd"/></td>
			</tr>
			<tr>
				<td ><input type="submit" value="login" /></td>
				<td ><a href="register.jsp">register</a></td>
			</tr>
		</table>
	</form>
	
</body>
<script>

</script>
</html>