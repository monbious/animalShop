<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>商品列表</title>
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
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<div class="container cart">
		<div class="span24">
			<div class="step step1"></div>
			<table>
				<tbody>
					<tr>
						<th>商品编号</th>
						<th>商品类别编号</th>
						<th>商品名称</th>
						<th>商品价格</th>
						<th>商品库存</th>
						<th>商品图片</th>
						<th>操作</th>
					</tr>
					<c:forEach items="${info.list}" var="pro">
						<tr>
							<td>${pro.id }</td>
							<td>${pro.cid }</td>
							<td>${pro.name}</td>
							<td>${pro.price }</td>
							<td>${pro.stock }</td>
							<td><img src="/${pro.img}" width="50px" height="50px"></td>
							<td><a href="/pro/toAdd">添加</a> <a
								href="/pro/${pro.id }/toUpdate">修改</a> <a
								href="/pro/${pro.id }/deletePro">删除</a></td>
						</tr>
					</c:forEach>
					<tr align="right">
						<td colspan="7">当前 ${info.pageNum } 页,共 ${info.pages } 页,共
							${info.total}条记录 <input id="first" type="button"
							onclick="javascript:window.location.href='/pro/search?pn=1';"
							value="首页" /> <input id="prev" havePrev=${info.hasPreviousPage }
							type="button" value="上一页" /> <c:forEach
								items="${info.navigatepageNums}" var="nav">
								<input type="button" value="${nav }"
									onclick="javascript:window.location.href='/pro/search?pn=${nav }';" />
							</c:forEach> <input id="next" haveNext=${info.hasNextPage } type="button"
							value="下一页" /> <input id="last" type="button"
							onclick="javascript:window.location.href='/pro/search?pn=${info.pages }';"
							value="末页" /> <input id="pageNum" type="hidden"
							value="${info.pageNum }" />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			var pageNum = $("#pageNum").val();
			$("#prev").click(function() {
				if ($(this).attr("havePrev")) {
					window.location.href = "/pro/search?pn=" + (pageNum - 1);
				} else {
					$("#first").trigger("click");
				}
			})
			$("#next").click(
					function() {
						if ($(this).attr("haveNext")) {
							window.location.href = "/pro/search?pn="
									+ (parseInt(pageNum) + 1);
						} else {
							$("#last").trigger("click");
						}
					})
		})
	</script>
</body>
</html>
