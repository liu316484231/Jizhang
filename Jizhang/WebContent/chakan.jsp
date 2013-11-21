<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.xiaodai.dao.JizhangDBUtil,java.util.*,com.xiaodai.bean.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/style.css" rel="stylesheet"/>
<title>记帐明细</title>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name = (String)session.getAttribute("name"); 
		System.out.println(name);
		if(name==null||name.trim().equals("")){
			response.sendRedirect("login.jsp");
			return;
		}
		ArrayList <UserJizhangBean> list = JizhangDBUtil.showUserJizhang(name);
	%>
<style>
body {
	text-align: center;
	font-weight: bold;
	font-family: KaiTi;
	font-size:16px;
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
	width: 80%;
	margin: 0 auto;
	margin-top: 10px;
	background-color: #f5f5f5;
}
table{
	margin:0 auto;
}
</style>
<script>
	function del(id){
		if(window.confirm("确定删除该记账条目嘛，删除后不可恢复")){
			document.location="/Jizhang/deletejizhang?id="+id; 
		}else{
			return;
		}
	}
</script>
</head>
<body>

  欢迎:<%=session.getAttribute("name") %>&nbsp;&nbsp;<a href="login.jsp">退出登录</a><br/>


<a href="#">首页</a>&nbsp;&nbsp;<a href="jizhang.jsp">快速记帐</a>&nbsp;&nbsp;<a style="color:red">记账记录</a>&nbsp;&nbsp;<a href="modifyuserinfo.jsp">个人中心</a>&nbsp;&nbsp;<a href="showwebsites.jsp">平台管理</a>&nbsp;&nbsp;<a href="pingtai.jsp">添加平台</a>
 

 <div id="container">
   您的记帐明细如下:
 <table border="1px solid black">
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
 		<th>操作</th>
 		
 	</tr>
	<%for(int i=0;i<list.size();i++){%>
		<tr>
		<%int index=list.get(i).getId(); %>
		<% int id = list.get(i).getId(); 
			System.out.println(id);
		%>
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
			<td><a href="/Jizhang/modifyjizhanginfo.jsp?id=<%=list.get(i).getId() %>&amp;websitename=<%=list.get(i).getWebsitename() %>&amp;account=<%=list.get(i).getAccount() %>&amp;date=<%=list.get(i).getDate() %>&amp;money=<%=list.get(i).getMoney() %>&amp;interest=<%=list.get(i).getInterest() %>&amp;bonus=<%=list.get(i).getBonus() %>&amp;management=<%=list.get(i).getManagement() %>&amp;durationdays=<%=list.get(i).getDurationdays() %>&amp;durationmonths=<%=list.get(i).getDurationmonths() %>&amp;repaymentmode=<%=list.get(i).getRepaymentmode() %>&amp;status=<%=list.get(i).getStatus()%>&amp;comment=<%=list.get(i).getComment() %> ">修改</a>
				<br/><a href="javascript:del(<%=list.get(i).getId() %>)">删除</a>
			</td>
		</tr>
	<%} %>
	
	</table>
	</div>
</body>

</html>