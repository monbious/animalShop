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
<link rel="stylesheet" type="text/css" href="css/login.css" />
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
				<table border="1" width="100%">
					<tr style="background-color: #ccc">

						<td>订单编号</td>
						<td>商品名称</td>
						<td>商品价格</td>
						<td>商品图片</td>
						<td>共支付</td>
					</tr>
					<c:forEach items="${orderDlist}" var="ordD">
						<tr>
							<td>${ordD.oid }</td>
							<td>${ordD.sname }</td>
							<td>${ordD.price}</td>
							<td>${ordD.img }</td>
							<td>${ordD.totalFee }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
