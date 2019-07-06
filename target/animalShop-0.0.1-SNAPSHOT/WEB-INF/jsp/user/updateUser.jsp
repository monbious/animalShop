<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"views/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
		<title>修改 - 贵美·商城</title>
		<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
			type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
	</head>
	<body>
			<div class="guimeilogo"></div>
			<div class="login">
				<div class="top">
					<h1>修改用户名</h1>
					<a href="user/search">返回</a>
				</div>
				<div class="mid">
					<form action="/user/updateUser" method="post">
					<input type="hidden" name="id" value="${user.id }"/>
					<input type="text" name="username" id="password" value="${user.username}" placeholder="输入新用户名" required="required" />
					<input type="password" name="pwd" id="password" placeholder="输入新密码" required="required" ><br/>
					<input type="text" name="ques" value="${user.ques}" id="password" placeholder="输入新的寻回密码问题" required="required" ><br/>
					<input type="text" name="answer" value="${user.answer }" id="password" placeholder="输入新的答案" required="required" ><br/>
					<input type="submit" id="submit" value="确定"/>
				    </form>
				</div>
			</div>
  </body>
</html>
