<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
		<title>后台提示的登录 -宠物·商城</title>
		<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
		
	</head>
	<body>
		
		<div class="wrap">
			<div class="guimeilogo"></div>
			
			<div class="login">
			
				<div class="top">
					<h1>宠物商城</h1>
					
				</div>
				
				<div class="mid">
					<form action="" method="post">
					
					
					
					<input type="submit" id="submit" value="${TiShi}"/>
					
				    </form>
				</div>
				
			</div>
			
		</div>
	</body>
</html>
