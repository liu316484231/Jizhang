<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<base target="_self">
<title>平台管理</title>
<style>
body {
	text-align: center;
	font-weight: bold;
	font-family: KaiTi;
}

#submit ,#cancel{
	font-family: KaiTi;
	hover: cursor;
}

.container {
	border: 1px solid #cccccc;
	width: 300px;
	margin: 0 auto;
	margin-top: 10px;
	background-color: #f5f5f5;
}
</style>
<script>
function onsubmit(){
	window.returnValue=$("#website").val();
	window.close();
	
}
function onclose(){
	
	window.close();

}
function validate(){
	
}
</script>
</head>
<body>
	欢迎:<%=session.getAttribute("name") %>
	<%
		String name = (String)session.getAttribute("name"); 
		if(name==null||name.trim().equals("")){
			//response.sendRedirect("login.jsp");
		}
	%>&nbsp;&nbsp;<a href="login.jsp">退出登陆</a><br/>
	
	<a href="#">首页</a>&nbsp;&nbsp;<a href="jizhang.jsp">快速记帐</a>&nbsp;&nbsp;<a href="chakan.jsp">记账记录</a>&nbsp;&nbsp;<a href="modifyuserinfo.jsp">个人中心</a>&nbsp;&nbsp;<a href="showwebsites.jsp">平台管理</a>&nbsp;&nbsp;<a style="color:red;">添加平台</a>
	
	
	<div class="container">
	<h3>添加平台</h3>
	<form id="login" method="post" action="" onsubmit="return onsubmit()">
		<table>
			<tr>
				<td>平台:</td>
				<td><input type="text" name="website"  id="website"/></td>
			</tr>
			<tr>
				<td>平台管理费(%):</td>
				<td><input type="text" name="management" id="management"/></td>
			</tr>
			<tr>
				<td>平台网址:(http://)</td>
				<td><input type="text" name="url" id="url"/></td>
			</tr>
			<tr>
				<td>备注:</td>
				<td><textarea cols="15" rows="5" name="comment" id="comment"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="添加" id="submit" /></td>
				
				
			</tr>
		</table>
	</form>
	</div>

</body>
</html>