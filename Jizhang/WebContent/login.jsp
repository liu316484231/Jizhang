<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
		<td>id:</td><td><input type="text" name="id" /></td>
	</tr>
	<tr>
		<td>password:</td><td><input type="password" name="pwd" /></td>
	</tr>
	<tr><td rowspan="2" ><input type="submit" value="login"/></td></tr>
	</table>  
	</form>
	<table border="1px solid red">
	<%for(int i=0;i<10;i++){%>
		<tr>
			<td><%=i %></td>
			<td>bb</td>
			<td>cc</td>
			<td>dd</td>
		</tr>
	<%} %>
	<%out.print("<h1>xxx</h1>"); %>
	<p>aaa</p>
	</table>
</body>
</html>