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
<title>种类列表</title>
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
	<font color="red">${jinggao}</font>
	<div class="container cart">
		<div class="span24">
			<div class="step step1">数据库category表中的数据条数:${size }</div>
			<table>
				<tr>
					<td>种类编号</td>
					<td>种类父编号</td>
					<td>名字</td>
					<td>操作</td>
				</tr>
				<c:forEach items="${categoryList}" var="cgl">
					<tr>
						<td>${cgl.cid}</td>
						<td>${cgl.parentid}</td>
						<td>${cgl.name}</td>
						<td><a href="category/toAddCategory">添加种类</a>
						<!-- 执行跳转注册页面的方法 --> <a href="category/${cgl.cid}/toUpdate">修改种类</a>
							<a href="category/${cgl.cid}/deleteCategory">删除种类</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>
