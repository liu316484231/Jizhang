<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>details</title>
</head>
<body>
	<%
		String name = (String)session.getAttribute("name"); 
		if(name==null||name.trim().equals("")){
			response.sendRedirect("login.jsp");
		}
	%>
  welcome:<%=session.getAttribute("name") %><br/>
  your account lists:
  <a href="jizhang.jsp">back to add another entry</a>&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="login.jsp">log out</a>
 <table border="1px solid red">
	<%for(int i=0;i<10;i++){%>
		<tr>
			<td><%=i+1 %></td>
			<td>bb</td>
			<td>cc</td>
			<td>dd</td>
			<td>bb</td>
			<td>cc</td>
			<td>dd</td>
			<td>bb</td>
			<td>cc</td>
			<td>dd</td>
		</tr>
	<%} %>
	
	</table>
</body>
</html>