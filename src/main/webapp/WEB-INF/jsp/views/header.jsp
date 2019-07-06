<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
	<link rel="stylesheet" type="text/css" href="css/header.css"/>
 <!--头部-->
		<div class="header_wrap">			
			<ul>
				<li><a href="/">首页</a></li>
				<c:choose>
					<c:when test="${user.username!=null}">
						<li>欢迎你:<a href="user/${user.id}/toPersonCenter">${user.username}</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="user/toLog">登录</a></li>
						<li><a href="user/toReg">注册</a></li>
					</c:otherwise>
		
				</c:choose>
				
				<li>我的收藏</li>
				<li><a href="cart/selectCartAll?id=${user.id}">我的购物车</a></li>
				<li><a href="order/search?id=${user.id }">我的订单</a></li>
				<li>帮助中心</li>
				<c:if test="${user.role == 1}">
					<li><a href="main/tomain">商家后台</a></li>
				</c:if>
				<c:if test="${user.username != null }">
					<li><a href="user/loginOut">退出</a></li>
				</c:if>
			</ul>
		</div>
		