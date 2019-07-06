<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/cart.css" />
<link rel="stylesheet" type="text/css" href="css/header.css"/>
<title>订单页面</title>
<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/views/header.jsp" />
	<div class="container cart">
		<div class="span24">
			<div class="step step1">
				<ul>
					<li style="color: red;">生成订单成功</li>
				</ul>
			</div>
				<table>
					<tbody>
					<tr>
						<th colspan="5">订单编号:${order.oid }&nbsp;&nbsp;&nbsp;&nbsp;</th>
					</tr>
					<tr>
						<th>图片</th>
						<th>商品</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
					</tr>
						<c:forEach items="${ods}" var="od">
						<tr>
							<td width="60">
								<img src="${od.img }"/>
							</td>
							<td>
								${od.sname }
							</td>
							<td>
								${od.price }
							</td>
							<td class="quantity" width="60">
								${od.num }
							</td>
							<td width="140">
								<span class="subtotal">￥${od.totalfee }</span>
							</td>
						</tr>
						</c:forEach>
						<tr align="right">
						<th colspan="5">运费：￥15.0</th>
						</tr>
				</tbody>
			</table>
				<dl id="giftItems" class="hidden" style="display: none;">
				</dl>
				<div class="total">
					<em id="promotion"></em>
					商品金额: <strong id="effectivePrice">￥${order.payment + 15 }元</strong>
				</div>
			<form id="orderForm" action="/order/search" method="get">
				<input type="hidden" name="id" value="${order.uid }"/>
				<div class="span24">
					<hr />
					<p>
						选择银行：<br/>
						<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked"/>工商银行
						<img src="/bank_img/icbc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行
						<img src="/bank_img/bc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行
						<img src="/bank_img/abc.bmp" align="middle"/>
						<br/>
						<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行
						<img src="/bank_img/bcc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="PINGANBANK-NET"/>平安银行
						<img src="/bank_img/pingan.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行
						<img src="/bank_img/ccb.bmp" align="middle"/>
						<br/>
						<input type="radio" name="pd_FrpId" value="CEB-NET-B2C"/>光大银行
						<img src="/bank_img/guangda.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C"/>招商银行
						<img src="/bank_img/cmb.bmp" align="middle"/>
					</p>
					<hr />
					<p style="text-align:right">
						<a href="javascript:document.getElementById('orderForm').submit();">
							<img src="/img/finalbutton.gif" width="204" height="51" border="0" />
						</a>
					</p>
				</div>
			</form>
		</div>
	</div>
</body>
</html>