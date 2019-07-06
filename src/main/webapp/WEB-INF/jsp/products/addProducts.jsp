<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加商品信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">

  </head>
  
  <body>
    <form action="pro/add" method="post" enctype="multipart/form-data">
    		<table>
    			<tr>
    				<td>商品类别：
					<select name="cid">
						<option value="100001">狗子</option>
						<option value="100002">猫</option>
						<option value="100003">兔子</option>
						<option value="100004">玩具</option>
						<option value="100005">食物</option>
						<option value="100006">衣物</option>
						<option value="100007">医疗</option>
						<option value="100008">清洁</option>
						<option value="100009">其他</option>
					</select>
					</td>
    			</tr>
    			<tr>
    				<td>商品名称：<input type="text" name="name"></td>
    			</tr>
    			<tr>
    				<td>商品价格：<input type="text" name="price"></td>
    			</tr>
    			<tr>
    				<td>商品库存：<input type="text" name="stock"></td>
    			</tr>
    			<tr>
    				<td>商品图片：<input type="file" name="pic"></td><%-- name的值不要与实体里那个图片属性名的一致  --%>
    			</tr>
    		</table>
    		<input type="submit" value="添加商品">
    	</form>
  </body>
</html>
