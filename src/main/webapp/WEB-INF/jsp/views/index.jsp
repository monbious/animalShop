<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/base-aa24246264.css" />
<link rel="stylesheet" type="text/css" href="css/welcome-fc9359d842.css" />
<link rel="stylesheet" type="text/css" href="css/sidebar.css" />
<link rel="stylesheet" type="text/css" href="css/content.css" />
<title>宠物·商城</title>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<!-- 头部导航 -->
	<jsp:include page="/WEB-INF/jsp/views/header.jsp"></jsp:include>
	<!--搜索框-->
	<div class="logo"></div>
	<div id="com-search">
		<div class="search">
			<div class="search-tab">
				<span class="active">喵喵</span><span class="">汪汪</span><span
					class="active">其他</span>
			</div>
			<div class="search-box">
				<form action="pro/selectAll" method="post">
					<input class="search-txt" name="q" placeholder="" type="text"> <span
						class="search-btn"></span>
					<div class="suggest-box" style="display: none;"></div>
				</form>
			</div>
			<div class="hotword">
				<a href="#" style="color: #FF3366">萨摩耶</a> <a href="#"
					style="color: #666666">成年犬粮</a> <a href="#" style="color: #FF3366">布偶猫</a>
				<a href="#" style="color: #FF3366">博美</a> <a href="#"
					style="color: #666666">小乌龟</a> <a href="#" style="color: #666666">磨牙棒</a>
				<a href="#" style="color: #666666">海棠兔</a> <a href="#"
					style="color: #666666">橘猫</a> <a href="#" style="color: #FF3366">折耳猫</a>
				<a href="#" style="color: #666666">冷血动物</a> <a href="#"
					style="color: #FF3366">龙猫</a> <a href="#" style="color: #666666">柴犬</a>
			</div>
		</div>
	</div>
	<!--导航 -->
	<div id="nav">
		<ul>
			<li><a href="front/header" class="selected">首页</a></li>
			<c:forEach items="${cateList}" var="cate">
				<li><a href="pro/${cate.cid}/selectByCid" cid="${cate.cid }">${cate.name}</a></li>
			</c:forEach>
			<input id="selcid" type="hidden" value="${cid }" />
		</ul>
	</div>
	<hr />
	<!--广告轮播图-->
	<div class="ad">
		<div class="inner">
			<img src="img/5.jpg" />
			<img src="img/4.jpg" />
			<img src="img/1.jpg" />
		</div>
	</div>
	<!--商品展示-->
	<h2>颜值萌宠</h2>
	<div id="wrap">
		<!-- 商品信息  -->
		<c:forEach items="${shopList}" var="shop">
			<div class="products">
				<!--商品图片-->
				<a href="pro/${shop.id}/selectById" class="pimg"
					style="background-image:url(${shop.img});"></a>
				<div class="info">
					<div class="part">
						<!--商品价格-->
						<div class="price">￥${shop.price}</div>
						<div class="collect">
							<!--商品收藏-->
							<i class="icon-star"></i>${shop.stock}
						</div>
					</div>
					<i class="icon-select"> <!--商品简介-->
					</i>${shop.name}
				</div>
			</div>
		</c:forEach>
	</div>
	<!-- 底部导航 -->
	<jsp:include page="/WEB-INF/jsp/views/footer.jsp"></jsp:include>
	<script type="text/javascript">
		$(function() {
			//alert("hello");
			$("#nav ul li a").each(function() {
				var selcid = $("#selcid").prop("value");
				if ($(this).attr("cid") == selcid) {
					$(this).addClass("selected");
					$("#nav ul li a:first").removeClass("selected");
				}
			})
			$("#nav ul li a").click(
					function() {
						$(this).addClass("selected").siblings().removeClass(
								"selected");
					})
			$(".search-btn").click(function(){
				var query = $.trim($(".search-txt").val());
				if(query == ""){
					
				}else{
					$(".search-box form").submit();
				}
			})
		})
	</script>
</body>
</html>
