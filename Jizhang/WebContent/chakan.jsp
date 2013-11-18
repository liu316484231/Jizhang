<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.xiaodai.dao.JizhangDBUtil,java.util.*,com.xiaodai.bean.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/style.css" rel="stylesheet"/>
<title>记帐明细</title>
</head>
<body>
	<%
		String name = (String)session.getAttribute("name"); 
		System.out.println(name);
		if(name==null||name.trim().equals("")){
			response.sendRedirect("login.jsp");
			return;
		}
		ArrayList <UserJizhangBean> list = JizhangDBUtil.showUserJizhang(name);
	%>
  欢迎:<%=session.getAttribute("name") %><br/>
  您的记帐明细如下:
  <a href="jizhang.jsp">返回继续添加记帐</a>&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="login.jsp">退出登录</a>
 <br/>
 <br/>
 <br/>
 <table style="border:1px solid red;margin:0 auto;" border="solid">
 	<tr>
 		<th>序号</th>
 		<th>平台</th>
 		<th>平台帐号</th>
 		<th>借出日期</th>
 		<th>借出金额</th>
 		<th>年利率</th>
 		<th>奖励</th>
 		<th>管理费</th>
 		<th>借出期限(月)</th>
 		<th>借出期限(天)</th>
 		<th>还款方式</th>
 		<th>状态</th>
 		<th>备注</th>
 		
 	</tr>
	<%for(int i=0;i<list.size();i++){%>
		<tr>
			<td><%=i+1 %></td>
			<td><%=list.get(i).getWebsitename() %></td>
			<td><%=list.get(i).getAccount() %></td>
			<td><%=list.get(i).getDate() %></td>
			<td><%=list.get(i).getMoney() %>元</td>
			<td><%=list.get(i).getInterest() %>%</td>
			<td><%=list.get(i).getBonus() %>%</td>
			<td><%=list.get(i).getManagement() %>%</td>
			<td><%=list.get(i).getDurationmonths() %>月</td>
			<td><%=list.get(i).getDurationdays() %>天</td>
			<td><%=list.get(i).getRepaymentmode() %></td>
			<td><%=list.get(i).getStatus() %></td>
			<td><%=list.get(i).getComment() %></td>
		</tr>
	<%} %>
	
	</table>
</body>
</html>