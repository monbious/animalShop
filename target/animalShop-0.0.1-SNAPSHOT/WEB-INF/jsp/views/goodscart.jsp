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
<link rel="stylesheet" href="css/goodscart.css" />
<!-- <script type="text/javascript" src="js/product.js"></script> -->
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

<title>购物车 宠物·商城</title>
<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">

</head>
<body>
	<!-- 头部导航 -->
	<jsp:include page="/WEB-INF/jsp/views/header.jsp"></jsp:include>

	<!-- 購物車 -->
	<div class="wrap">
		<div class="title">
			<ul>
				<li><input type="checkbox" name="" id="" value=""/> 全选</li>
				<li>商品名称</li>
				<li>品种</li>
				<li>单价</li>
				<li>数量</li>
				<li>小计（元）</li>
				<li>操作</li>
			</ul>
		</div>
		<c:choose>
			<c:when test="${cartList == null}">
					空空如也
			</c:when>
			<c:otherwise>
				<c:forEach items="${cartList}" var="cl">
					<div class="goods">
						<ul>
							<li><img src="${cl.img}"/> ${cl.name }</li>
							<li>纯良</li>
							<li class="price">${cl.price}</li>
							<li>
								<div class="count">
									<span class="s">－</span> <input type="hidden"
										value="${cl.price}" name="price" /> <input type="text"
										value="${cl.num}" name="num" class="num" /> <span class="s">＋</span>
								</div>
							</li>
							<li class="subtotal" cart_id="${cl.id }">76</li>
							<li><a href="cart/${cl.id}/deleteCart">刪除</a></li>
						</ul>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<div class="foot">
			<ul>
				<li><a href="front/header">返回首页</a></li>
				<li>总价：￥<span
					style="color: red; font-size: 30px; font-weight: 600;" id="total">11111</span></li>
				<li><a uid="${user.id }" style="cursor: pointer;">下订单</a></li>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
		$(".foot ul li:last a").click(function(){
			if($(this).attr("uid") == ""){
				alert("请先去登录！");
				return;
			}else{
				var cidStr = "";
				var numStr = "";
				$(".subtotal").each(function() {
					cidStr += $(this).attr("cart_id") + ",";
					numStr += $(this).prev().children().children("input:text").val() + ",";
				});
				$(this).prop("href", "order/addOrders?cids="+cidStr+"&nums="+numStr).trigger("click");
			}
		})
	
		$(function() {
			calc();
		})
		
		function calc(){
			var total = 0;
			$(".subtotal").each(function() {
						var tar = $(this).prev().children().children();
						var totalItem = parseFloat(tar.siblings("input:hidden").val()) * parseFloat(tar.siblings("input:text").val());
						$(this).text(totalItem);
						total += totalItem;
					});
			$("#total").text(total);
		}
		
		$(".count input:text").change(function() {
			var num = $(this).val();
			if (num < 1) {
				$(this).val(1);
			}
			if (/[^\d]/.test(num)) {
				$(this).val(1);
			}
			calc();
		})
		$(".count span:even").click(function() {
			var numInput = $(this).siblings("input:text");
			var num = numInput.val();
			if (num <= 1) {
				numInput.val("1");
			} else {
				numInput.val(numInput.val() - 1);
			}
			calc();
		})
		$(".count span:odd").click(function() {
			var numInput = $(this).siblings("input:text");
			var num = numInput.val();
			numInput.val(parseInt(numInput.val()) + parseInt(1));
			calc();
		})
	</script>
</body>
</html>
