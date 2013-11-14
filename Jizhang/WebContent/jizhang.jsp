<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	welcome:<%=session.getAttribute("name") %>
	
	<form method="post" action="chakan.jsp">
		<table>
			<tr>
				<td>money:</td>
				<td><input type="text" name="money" /></td>
			</tr>
			<tr>
				<td>website:</td>
				<td><input type="text" name="website" /></td>
			</tr>
			<tr>
				<td>interest:</td>
				<td><input type="text" name="interest" />%</td>
				<td>
					<input type="radio" name="interest1" value="month" checked="checked"/>month
					<input type="radio" name="interest1" value="year" />year
					
				</td>
			</tr>
			<tr>
				<td>duration:</td>
				<td><input type="text" name="duration" /></td>
				<td>
					<input type="radio" name="dura" value="month" />day
					<input type="radio" name="dura" value="year" checked="checked"/>month
					
				</td>
			</tr>
			<tr>
				<td>type:</td>
				<td><select>
						<option value="1">month</option>
						<option value="2">year</option>
						<option value="3">season</option>
				</select></td>

			</tr>
			<tr>
				<td rowspan="2"><input type="submit" value="submit" /></td>
			</tr>
		</table>


	</form>
</body>
</html>