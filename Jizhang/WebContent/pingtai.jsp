<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<base target="_self">
<title>添加平台</title>
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
	margin-top: 10%;
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
	

	<div class="container">
	<h3>添加平台</h3>
	<form id="login" method="post" action="" >
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
				<td ><input type="submit" value="添加" id="submit" onclick="onsubmit()"/></td>
				<td><a href="">返回</a></td>
				
			</tr>
		</table>
	</form>
	</div>

</body>
</html>