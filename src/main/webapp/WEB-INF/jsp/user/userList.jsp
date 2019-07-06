<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>用户列表</title>
<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/cart.css" rel="stylesheet" type="text/css" />
<link href="css/products.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="container cart">
		<div class="span24">
			<div class="step step1">数据库user表中的数据条数:${size }</div>
			<table>
				<tr>
					<td>用户名</td>
					<td>密码</td>
					<td>问题</td>
					<td>答案</td>
					<td>角色</td>
					<td>操作</td>
				</tr>
				<c:forEach items="${userList}" var="user">
					<tr>
						<td>${user.username }</td>
						<td>${user.pwd }</td>
						<td>${user.ques}</td>
						<td>${user.answer }</td>
						<td>${user.role }</td>
						<td><a href="user/toReg">添加</a>
						<!-- 执行跳转注册页面的方法 --> <a href="user/toUpdate?id=${user.id}">修改</a>
							<a href="user/${user.id}/deleteUser">删除</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>
