<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/style.css" rel="stylesheet"/>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>注册</title>
<script>
	function validate(){
			var user = $("#id").val();
			var pwd = $("#pwd").val();
			var pwd2 = $("#pwd2").val();
			var email = $("#email").val();
			var phone = $("#phone").val();
			var pattern = new RegExp("[^0-9A-Za-z]");
			var emailpattern = /^[-_A-Za-z0-9]+@([_A-Za-z0-9]+.)+[A-Za-z0-9]{2,3}$/;
			var phonenum = new RegExp("[^0-9]");
			if(user.trim()==""){
				alert("用户名不能为空");
				$("#id").focus();
				return false;
			}
			if(pwd.trim()==""){
				alert("密码不能为空");
				$("#pwd").focus();
				return false;
			}
			if(user.length<3||user.length>20){
				alert("用户名长度为3-20位数字和字母组成");
				$("#id").val("");
				$("#id").focus();
				return false;
			}
			if(pwd.length<6||pwd.length>20){
				alert("密码长度为6-20位数字和字母组成");
				$("#pwd").val("");
				$("#pwd").focus();
				return false;
			}
			if(pattern.test(user)){
				alert("用户名只能由数字和字母组成");
				$("#id").val("");
				$("#id").focus();
				return false;
			}
			if(pattern.test(pwd)){
				alert("密码只能由数字和字母组成");
				$("#pwd").val("");
				$("#pwd").focus();
				return false;
			}
			if(pwd!=pwd2){
				alert("俩次输入的密码不同");
				$("#pwd").val("");
				$("#pwd2").val("");
				$("#pwd").focus();
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
<style>
body {
	text-align: center;
	font-weight: bold;
	font-family: KaiTi;
	margin:0px;
	padding:0px;
	background-image:url("image/back2.gif");
}

#id,#pwd,#pwd2,#email,#phone {
	width: 200px;
	height: 20px;
}

#submit {
	font-family: KaiTi;
	width: 60px;
	height: 30px;
}

#container {
	position:relative;
	top:15%;
	margin:0 auto;
	border: 5px solid #cccccc;
	width: 350px;
	background-color: #f5f5f5;
}
#wrapper{
	margin:0 auto;
	width:600px;
	height:474px;
	background-image:url("image/background.jpg");
	margin-top:50px;
	border: 3px solid black;
}
#footer{
	position:absolute;
	bottom:0px;
	background-color:#2f2f2f;
	width:100%;
	height:100px;
}
#inner{
	position:relative;
	top:60px;
	width:80%;
	margin:0 auto;
	color:white;
	text-align:center;
	font-family:宋体;
	font-size:12px;
	font-weight:normal;
}
</style>
</head>
<body>
<div id="wrapper">
<div id="container">
	<h3>注册小贷记账</h3>
	<hr/>
	<form id="login" method="post" action="/Jizhang/register" onsubmit="return validate()">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="id" id="id" /></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="pwd" id="pwd"/></td>
			</tr>
			<tr>
				<td>确认密码:</td>
				<td><input type="password" name="pwd2" id="pwd2"/></td>
			</tr>
				<tr>
				<td>邮箱(选填):</td>
				<td><input type="text" name="email" id="email"/></td>
			</tr>
				<tr>
				<td>电话(选填):</td>
				<td><input type="text" name="phone" id="phone"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="提交" id="submit"/></td>
			</tr>
		</table>
	</form>
</div>
</div>
<div id="footer">
	<div id="inner">
		关注我们&nbsp;&nbsp;&nbsp;&nbsp;关于我们&nbsp;&nbsp;&nbsp;&nbsp;诚聘英才&nbsp;&nbsp;&nbsp;&nbsp;使用说明<br/>
		Copyright@小贷800
	
	</div>

</div>
</body>

<script>

</script>
</html>