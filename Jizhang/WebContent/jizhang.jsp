<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="css/style.css" rel="stylesheet"/>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
//	var website;

	function validate(){
		var website = $("#website").val();
		var account = $("#account").val();
		var date = $("#datepicker").val();
		var money = $("#money").val();
		var interest = $("#interest").val();
		var leninterest = interest.length;
		var bonus = $("#bonus").val();
		var management = $("#management").val();
		var lenbonus = bonus.length;
		var lenmanagement = management.length;
		var duration = $("#duration").val();
		var comment = $("#comment").val();
		var pattern1 = /\D/;
		var pattern2 = /[^0-9\.]/;
		if(website.trim()==""){
			alert("平台不能为空");
			$("#website").focus();
			return false;
		}
		if(account.trim()==""){
			alert("平台帐号不能为空");
			$("#account").focus();
			return false;
		}
		if(date.trim()==""){
			alert("借出日期不能为空");
			$("#datepicker").focus();
			return false;
		}
		if(money.trim()==""){
			alert("借出金额不能为空");
			$("#money").focus();
			return false;
		}
		if(interest.trim()==""){
			alert("利率不能为空");
			$("#interest").focus();
			return false;
		}
		if(duration.trim()==""){
			alert("借出期限不能为空");
			$("#duration").focus();
			return false;
		}
		if(pattern1.test(money)){
			alert("借出金额格式不正确");
			$("#money").focus();
			return false;
		}
		if(pattern1.test(duration)){
			alert("借出期限格式不正确");
			$("#duration").focus();
			return false;
		}
		if(pattern2.test(interest)||countdot(interest)>1||interest[0]=="."||interest[leninterest-1]=="."){
			alert("利率格式不正确");
			$("#interest").focus();
			return false;
		}
		if(bonus.trim()!=""){
			if(pattern2.test(bonus)||countdot(bonus)>1||bonus[0]=="."||bonus[lenbonus-1]=="."){
				alert("奖励格式不正确");
				$("#bonus").focus();
				return false;
			}
		}
		if(management.trim()!=""){
			if(pattern2.test(management)||countdot(management)>1||management[0]=="."||management[lenmanagement-1]=="."){
				alert("管理费格式不正确");
				$("#management").focus();
				return false;
			}
		}
		if($("input").val().length>30||comment.length>30){
			alert("输入框内不能超过30个字符..");
			return false;
		}
		return true;
		
	}
	$(function() {
		$("#datepicker").datepicker();
	});

	function countdot(str){
		var count = 0;
		for(var i=0;i<str.length;i++){
			if(str[i]=="."){
				count++;
			}
		}
		return count;
	}
//	$(function(){
//		$("#website").click(function(){
//	          website = window.showModalDialog("popupwebsites.jsp","dialogWidth=300px;dialogHeight=300px");
//		});
//		$("#website").focus(function(){
//			$(this).val(website);
//		});
//	});
	

</script>
<style>
body {
	text-align: center;
	font-weight: bold;
	font-family: KaiTi;
}

#website,#account,#datepicker,#money,#interest,#bonus,#management,#duration,#type {
	
}

#submit {
	font-family: KaiTi;
	hover: cursor;
}

#container {
	border: 1px solid #cccccc;
	width: 500px;
	margin: 0 auto;
	margin-top: 10px;
	background-color: #f5f5f5;
}
span{
	color:red;
}
td{
	text-align:left;
}
.center{
	text-align:center;
}
</style>
<title>记帐</title>
</head>
<body>

	欢迎:<%=session.getAttribute("name") %>
	<%
		String name = (String)session.getAttribute("name"); 
		if(name==null||name.trim().equals("")){
			response.sendRedirect("login.jsp");
		}
	%>
	<br/>
	 <a href="login.jsp">退出登陆</a>&nbsp;&nbsp;<a href="modifyuserinfo.jsp">个人中心</a>&nbsp;&nbsp;<a href="pingtai.jsp">平台管理</a>
	<div id="container">
	<form method="post" action="/Jizhang/jizhang" onsubmit="return validate()">
	
		<table>
		
			<tr>
				<td class="center">平台<span>*</span>:</td>
				<td><input type="text" name="website" id="website"/></td>
			</tr>
			<tr>
				<td class="center">平台帐号<span>*</span>:</td>
				<td><input type="text" name="account" id="account"/></td>
			</tr>
			<tr>
				<td class="center">借出日期<span>*</span>:</td>
				<td><input type="text" name="date" id="datepicker"/></td>
			</tr>
			<tr>
				<td class="center">借出金额<span>*</span>:</td>
				<td><input type="text" name="money" id="money"/></td>
			</tr>
			<tr>
				<td class="center">利率<span>*</span>:</td>
				<td><input type="text" name="interest" id="interest"/>%</td>
				<td>
					<input type="radio" name="interest1" value="month" checked="checked"/>日利率
					<input type="radio" name="interest1" value="year" />年利率
					
				</td>
			</tr>
			<tr>
				<td class="center">奖励:</td>
				<td><input type="text" name="bonus" id="bonus"/>%</td>
				<td>(选填)</td>
			</tr>
			<tr>
				<td class="center">管理费:</td>
				<td><input type="text" name="management" id="management"/>%</td>
				<td>(选填)</td>
			</tr>
			<tr>
				<td class="center">借出期限<span>*</span>:</td>
				<td><input type="text" name="duration" id="duration"/></td>
				<td>
					<input type="radio" name="dura" value="day" />天
					<input type="radio" name="dura" value="month" checked="checked"/>月
					
				</td>
			</tr>
			<tr>
				<td class="center">还款类型<span>*</span>:</td>
				<td><select name="type" id="type">
						<option value="1">按月还款</option>
						<option value="2">到期还款</option>
						<option value="3">按季还款</option>
						<option value="4">按月还息到期还本</option>
				</select></td>

			</tr>
			<tr>
				<td class="center">状态<span>*</span>:</td>
				<td><input type="radio" name="status" value="ing" checked="checked" />还款中</td>
				<td><input type="radio" name="status" value="ed" />已还完</td>

			</tr>
			<tr>
				<td class="center">备注(选填):</td>
				<td><textarea cols="20" rows="5" name="comment" id="comment"></textarea></td>

			</tr>
			<tr>
				<td class="center">总收益(含奖励):</td>
				<td style="color:red" id="income">1000</td>

			</tr>
			<tr>
				<td colspan="4" class="center"><input type="submit" value="提交记账" /></td>
			</tr>
		</table>


	</form>
	</div>
	<br/>
	<a href="chakan.jsp">查看我的记账记录</a>
</body>
</html>