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

<meta charset="UTF-8">
<title>商品详情</title>
<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/product.css" />
<script type="text/javascript" src="js/product.js">
	
</script>

</head>

<body>
	<!-- 头部导航 -->
	<jsp:include page="/WEB-INF/jsp/views/header.jsp"></jsp:include>
	<div class="wrap">
		<img src="${product.img }" />
		<div class="description">

			<form action="cart/addCart" method="post">
				<input type="hidden" name="uid" value="${user.id }">
				<input type="hidden" name="name" value="${product.name}" /> <input
					type="hidden" name="img" value="${product.img}" /> <input
					type="hidden" name="stock" value="${product.stock}" /> <input
					type="hidden" name="price" value="${product.price}" /> <input
					type="hidden" name="sid" value="${product.id}" />
				<h2>${product.name}</h2>
				<div class="old_price">
					原价： <span> ￥${product.price} </span>
				</div>
				<div class="price">
					折扣价： <span> ￥${product.price} </span>
				</div>

				<div>尺码：均码</div>

				<div class="count">
					数量： <span class="s" style="cursor: pointer;">－</span> <input type="text" value="1"
						name="num" class="num" /> <span class="s" style="cursor: pointer;">＋</span>
				</div>

				<div>
					<input type="submit" value="加入购物车" class="goods_cart" /> <input
						type="button" value="立即购买" class="goods_cart2" />
				</div>

			</form>
		</div>

	</div>
</body>

</html>
