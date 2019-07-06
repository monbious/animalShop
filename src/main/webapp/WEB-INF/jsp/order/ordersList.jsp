<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>管理员 订单页面</title>
<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link href="css/cart.css" rel="stylesheet" type="text/css" />
<link href="css/products.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<div class="container cart">
		<div class="span24">
			<div class="step step1">
				<ul>
					<li style="color: red;">全部订单</li>
				</ul>
			</div>
			<table>
				<tbody>
					<c:forEach items="${info.list}" var="order">
						<tr>
							<th colspan="5">用户:${order.uid }&nbsp;&nbsp;&nbsp;&nbsp;订单编号:${order.oid }&nbsp;&nbsp;&nbsp;&nbsp;订单金额（含运费15.0）:<font
								color="red">${order.payment + order.postfee } </font>
								&nbsp;&nbsp;&nbsp;&nbsp;<font color="red"> 交易成功 </font>
								<span class="deleteOrder" oid="${order.oid }" style="color: red;float: right;cursor: pointer;">删除</span>
							</th>
						</tr>
						<tr>
							<th>图片</th>
							<th>商品</th>
							<th>价格</th>
							<th>数量</th>
							<th>小计</th>
						</tr>
						<c:forEach items="${order.ods }" var="od">
							<tr>
								<td width="60"><img
									src="${od.img }" />
								</td>
								<td>${od.sname }</td>
								<td>${od.price }</td>
								<td class="quantity" width="60">${od.num }</td>
								<td width="140"><span class="subtotal">￥${od.totalfee }</span></td>
							</tr>
						</c:forEach>
					</c:forEach>
					<tr>
						<th colspan="5">
							<div class="pagination">
								当前 ${info.pageNum } 页,共  ${info.pages } 页,共 ${info.total}条记录
    							<input id="first" type="button" onclick="javascript:window.location.href='/order/search?pn=1';" value="首页" />
    							<input id="prev" havePrev=${info.hasPreviousPage }  type="button" value="上一页"/>
    							<c:forEach items="${info.navigatepageNums}" var="nav">
    								<input type="button" value="${nav }" onclick="javascript:window.location.href='/order/search?pn=${nav }';"/>
    							</c:forEach>
				    			<input id="next" haveNext=${info.hasNextPage }  type="button" value="下一页"/>
				    			<input id="last" type="button" onclick="javascript:window.location.href='/order/search?pn=${info.pages }';" value="末页" />
				    			<input id="pageNum" type="hidden" value="${info.pageNum }"/>
				    			<input id="userid" type="hidden" value="${user.id }"/>
							</div>
						</th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript">
	  $(function(){
		  var pageNum = $("#pageNum").val();
		  var uid = $("#userid").val();
		  $("#prev").click(function(){
			  if($(this).attr("havePrev")){
				  window.location.href="/order/search?pn=" + (pageNum - 1);
			  }else{
				  $("#first").trigger("click");
			  }
		  })
		  $("#next").click(function(){
			  if($(this).attr("haveNext")){
				  window.location.href="/order/search?pn=" + (parseInt(pageNum) + 1);
			  }else{
				  $("#last").trigger("click");
			  }
		  })
		  $(".deleteOrder").click(function(){
			  var oid=$(this).attr("oid");
			  if(confirm("确认删除【"+oid+"】吗？")){
					//确认，发送ajax请求删除即可
					$.ajax({
						url: "/order/delete",
						data: {"oid":oid},
						type: "GET",
						success: function(result){
							window.location.href="/order/search?pn=" + pageNum;
						}
					});
				}		 
		  })
	  })
    </script>
</body>
</html>