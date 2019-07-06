<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>注册 - 宠物·商城</title>
		<base href="<%=basePath%>">
     	<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="css/register.css"/>
	</head>
	<body>
		
		<div class="wrap">
			<div class="guimeilogo"></div>
			<div class="register">
			
			
				<div class="top">
					<h1>新用户注册</h1>
					<a target="" href="user/toLog">已有账号</a>
				</div>
				
				
				<div class="mid">
					<form action="user/reg" method="post">
					
					<input type="text" name="username" id="username" placeholder="亲，您的用户名" required="required" />
					
					<input type="password" name="pwd" id="username" placeholder="密码" required="required" />
					
					<input type="password" name="reppw" id="username" placeholder="重复密码" required="required" />
				
					<input type="text" name="ques" id="username" placeholder="亲，您寻回密码的问题" required="required" />
					
					<input type="text" name="answer" id="username" placeholder="亲，您的答案" required="required" />
					
					<input type="submit" id="submit" value="注册" />
					
				    </form>
				</div>
			</div>
		</div>
	</body>
</html>
