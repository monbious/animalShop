<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品信息更改 </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">

  </head>
  
  <body>
    <form action="pro/update" method="post" enctype="multipart/form-data">
    		<table>
    			<tr>
    				<td>商品编号：<input type="text" name="id"  readonly value="${proList.id}"></td>
    			</tr>
    			<tr>
    				<td>商品类别：
					<select name="cid">
						<option value="100001" <c:if test="${proList.cid == 100001}">selected</c:if>>狗子</option>
						<option value="100002" <c:if test="${proList.cid == 100002}">selected</c:if>>猫猫</option>
						<option value="100003" <c:if test="${proList.cid == 100003}">selected</c:if>>兔子</option>
						<option value="100004" <c:if test="${proList.cid == 100004}">selected</c:if>>玩具</option>
						<option value="100005" <c:if test="${proList.cid == 100005}">selected</c:if>>食物</option>
						<option value="100006" <c:if test="${proList.cid == 100006}">selected</c:if>>衣物</option>
						<option value="100007" <c:if test="${proList.cid == 100007}">selected</c:if>>医疗</option>
						<option value="100008" <c:if test="${proList.cid == 100008}">selected</c:if>>清洁</option>
						<option value="100009" <c:if test="${proList.cid == 100009}">selected</c:if>>其他</option>
					</select>
					</td>
    			</tr>
    			<tr>
    				<td>商品名称：<input type="text" name="name" value="${proList.name}"></td>
    			</tr>
    			<tr>
    				<td>商品价格：<input type="text" name="price" value="${proList.price}"></td>
    			</tr>
    			<tr>
    				<td>商品库存：<input type="text" name="stock" value="${proList.stock}"></td>
    			</tr>
    			<tr>
    				<td>商品原图片:
    				<input type="text" value="${proList.img}" name="img" readonly="readonly"></td>
    			</tr>
    			<tr>
    				<td>商品图片：<input type="file" name="pic"><td>
    			</tr>
    		</table>
    		<input type="submit" value="确认">
    	</form>
  </body>
</html>
