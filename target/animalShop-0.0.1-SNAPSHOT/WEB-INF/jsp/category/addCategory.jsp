<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品种类添加</title>
    <link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	input {
			width: 100px;
     }
	</style>
  </head>
  
  <body>
  <form action="category/addCategory" method="post" >
  		姓名：<input type="text" name="name"><br/><br/>
    	新种类编号：<input type="text" name="cid"><br/><br/>
    	新种类的父编号：<input type="text" name="parentid"><br/><br/>
    	
    	<input type="submit" value="添加新种类"/>
    </form>
  </body>
</html>
