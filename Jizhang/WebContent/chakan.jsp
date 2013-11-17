<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.xiaodai.dao.JizhangDBUtil,java.util.*,com.xiaodai.bean.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/style.css" rel="stylesheet"/>
<title>details</title>
</head>
<body>
	<%
		String name = (String)session.getAttribute("name"); 
		if(name==null||name.trim().equals("")){
			response.sendRedirect("login.jsp");
		}
		ArrayList <UserJizhangBean> list = JizhangDBUtil.showUserJizhang(name);
	%>
  welcome:<%=session.getAttribute("name") %><br/>
  your account lists:
  <a href="jizhang.jsp">back to add another entry</a>&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="login.jsp">log out</a>
 <br/>
 <br/>
 <br/>
 <table style="border:1px solid red;margin:0 auto;" border="solid">
 	<tr>
 		<th>num</th>
 		<th>website name</th>
 		<th>account</th>
 		<th>date</th>
 		<th>money</th>
 		<th>year interest rate</th>
 		<th>bonus rate</th>
 		<th>management rate</th>
 		<th>duration months</th>
 		<th>duration days</th>
 		<th>repayment mode</th>
 		<th>status</th>
 		<th>comment</th>
 		
 	</tr>
	<%for(int i=0;i<list.size();i++){%>
		<tr>
			<td><%=i+1 %></td>
			<td><%=list.get(i).getWebsitename() %></td>
			<td><%=list.get(i).getAccount() %></td>
			<td><%=list.get(i).getDate() %></td>
			<td><%=list.get(i).getMoney() %></td>
			<td><%=list.get(i).getInterest() %></td>
			<td><%=list.get(i).getBonus() %></td>
			<td><%=list.get(i).getManagement() %></td>
			<td><%=list.get(i).getDurationmonths() %></td>
			<td><%=list.get(i).getDurationdays() %></td>
			<td><%=list.get(i).getRepaymentmode() %></td>
			<td><%=list.get(i).getStatus() %></td>
			<td><%=list.get(i).getComment() %></td>
		</tr>
	<%} %>
	
	</table>
</body>
</html>