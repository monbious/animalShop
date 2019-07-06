<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML >
<html>
<head>
<base href="<%=basePath%>">

<title>登录 -宠物·商城</title>
<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/login.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<div class="wrap">
		<div class="guimeilogo"></div>
		<div class="login">
			<div class="top">
				<h1>宠物商城</h1>
				<a href="user/toReg">新用户注册</a>
			</div>
			<div class="mid">
				<form action="user/login" method="post">
					<input type="text" name="username" id="username"
						required="required" placeholder="用户名" /> <input type="password"
						name="pwd" id="password" required="required" placeholder="密码" /> <input
						type="submit" id="submit" value="立即登录" />
						<p align="center">${msg}</p>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$("#username").val("");
			$("#password").val("");
			//alert("123");
		});
	</script>
</body>
</html>
