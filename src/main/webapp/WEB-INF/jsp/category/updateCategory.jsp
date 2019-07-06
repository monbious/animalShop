<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品种类更改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">
	<style type="text/css">
	input {
			width: 100px;
     }
	</style>
  </head>
  
  <body>
  <form action="category/${category.cid}/updateCategory" method="post" >
  		姓名：<input type="text" name="name" value="${category.name}"><br/><br/>
    	新种类编号：<input type="text" name="cid" value="${category.cid}"><br/><br/>
    	新种类的父编号：<input type="text" name="parentid" value="${category.parentid}"><br/><br/>
    	<input type="submit" value="确认"/>
    </form>
  </body>
</html>
