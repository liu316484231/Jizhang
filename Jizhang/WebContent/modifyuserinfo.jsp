<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.xiaodai.dao.*,java.util.*,com.xiaodai.bean.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>修改用户信息</title>
<%
		String name = (String)session.getAttribute("name"); 
		if(name==null||name.trim().equals("")){
			response.sendRedirect("login.jsp");
		}
		UserBean user = DBUtil.selectUser(name);
		String password = user.getPassword();
		String email = user.getEmail();
		int phone = user.getPhone();
	%>
<style>
body {
	text-align: center;
	font-weight: bold;
	font-family: KaiTi;
}

#id,#pwd,#pwd2,#pwd3,#email,#phone {
	width: 200px;
	height: 20px;
}

#submit {
	font-family: KaiTi;
	width: 70px;
	height: 30px;
}

#container {
	border: 1px solid #cccccc;
	width: 350px;
	margin: 0 auto;
	margin-top: 10px;
	background-color: #f5f5f5;
}
</style>
<script>
function validate(){
	
	var user = $("#id").val();
	var pwd = $("#pwd").val();
	var pwd2 = $("#pwd2").val();
	var pwd3 = $("#pwd3").val();
	var email = $("#email").val();
	var phone = $("#phone").val();
	var pattern = new RegExp("[^0-9A-Za-z]");
	var emailpattern = /^[-_A-Za-z0-9]+@([_A-Za-z0-9]+.)+[A-Za-z0-9]{2,3}$/;
	var phonenum = new RegExp("[^0-9]");

	if(pwd.trim()==""||pwd2.trim()==""||pwd3.trim()==""){
		alert("密码不能为空");
		return false;
	}
	if(pwd2.length<6||pwd2.length>20){
		alert("密码长度为6-20位数字和字母组成");
		$("#pwd2").val("");
		$("#pwd2").focus();
		return false;
	}
	if(pwd!=<%=password%>){
		alert("原密码输入不正确");
		$("#pwd").val("");
		$("#pwd").focus();
		return false;
	}
	if(pattern.test(pwd2)){
		alert("密码只能由数字和字母组成");
		$("#pwd2").val("");
		$("#pwd2").focus();
		return false;
	}
	if(pwd2!=pwd3){
		alert("俩次输入的新密码不同");
		$("#pwd2").val("");
		$("#pwd3").val("");
		$("#pwd2").focus();
		return false;
	}
	if(email.trim()!=""&&!emailpattern.test(email)){
		alert("邮箱格式不正确");
		$("#email").val("");
		$("#email").focus();
		return false;
	}
	if(phone.trim()!=""&&phonenum.test(phone)){
		alert("电话只能由数字组成");
		$("#phone").val("");
		$("#phone").focus();
		return false;
	}
	return true;
	

}

 
</script>
</head>
<body>
	欢迎:<%=session.getAttribute("name") %>&nbsp;&nbsp; <a href="login.jsp">退出登陆</a>
	<br/>
	<a href="#">首页</a>&nbsp;&nbsp;<a href="jizhang.jsp">快速记帐</a>&nbsp;&nbsp;<a href="chakan.jsp">记账记录</a>&nbsp;&nbsp;<a style="color:red">个人中心</a>&nbsp;&nbsp;<a href="showwebsites.jsp">平台管理</a>&nbsp;&nbsp;<a href="pingtai.jsp">添加平台</a>
<div id="container">
	<h3>修改您的个人信息</h3>
	<hr/>
	<form id="login" method="post" action="/Jizhang/modifyuserinfo" onsubmit="return validate()">
		<table>
			<tr>
				<td>用户名:</td>
				<td><%=session.getAttribute("name") %></td>
			</tr>
			<tr>
				<td>原密码:</td>
				<td><input type="password" name="pwd" id="pwd"/></td>
			</tr>
			<tr>
				<td>新密码:</td>
				<td><input type="password" name="pwd2" id="pwd2"/></td>
			</tr>
			<tr>
				<td>确认新密码:</td>
				<td><input type="password" name="pwd3" id="pwd3"/></td>
			</tr>
				<tr>
				<td>原邮箱:</td>
				<td><%=email %></td>
			</tr>
			<tr>
				<td>新邮箱:</td>
				<td><input type="text" name="email" id="email"/></td>
			</tr>
				<tr>
				<td>原电话:</td>
				<td><%=phone %></td>
			</tr>
				<tr>
				<td>新电话:</td>
				<td><input type="text" name="phone" id="phone"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="提交修改" id="submit"/></td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>