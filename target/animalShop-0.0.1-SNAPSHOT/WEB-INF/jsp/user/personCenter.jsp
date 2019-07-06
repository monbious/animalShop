<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户修改信息 - 宠物·商城</title>
<base href="<%=basePath%>">
<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/register.css" />
</head>
<body>

	<div class="wrap">
		<div class="guimeilogo"></div>
		<div class="register">


			<div class="top">
				<h1>用户修改信息</h1>
				<a href="front/header">返回首页</a>
			</div>
			<div class="mid">
				<form action="user/personCenter" method="post">
					<input type="hidden" name="id" value="${user.id }">
					<input type="text" name="username" id="username"
						value="${user.username}" required="required" /> <input
						type="password" name="pwd" id="username" value="${user.pwd}"
						required="required" /> <input type="password" name="reppw"
						id="username" placeholder="请重复填写一下你的新密码" /> <input type="text"
						name="ques" id="username" value="${user.ques}" required="required" />

					<input type="text" name="answer" id="username"
						value="${user.answer}" required="required" /> <input
						type="submit" id="submit" value="我修改好了" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>
