<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>后台主页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="icon" href="img/middle_11708952955513dc6d648ca_700_525.jpg"
	type="image/x-icon">
<style>
a {
	display: block;
	height: 18px;
	text-decoration: none;
}
</style>
<link rel="stylesheet" href="easyui/themes/default/easyui.css"
	type="text/css"></link>
<link rel="stylesheet" href="easyui/themes/icon.css" type="text/css"></link>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>

</head>
<script type="text/javascript"><%--
 	  function jump(){
 			$('#center').panel({
 				href:'category/toAddCategory'
 			});
 		}  该方法是正确的  结合下面的这个页面信息  使用javascript;void（0）不让a做任何操作;做页面时，如果想做一个链接点击后不做任何事情，或者响应点击而完成其他事情.
 		function showUrl(url){
 			$('#center').panel({
 				href:url
 			});
 		} --%>
	function showUrl(title, url) {

		if ($('#tt').tabs('exists', title)) {
			$('#tt').tabs('select', title);
		} else {
			$('#tt').tabs('add',{
								title : title,
								content : '<iframe frameborder=0 style=width:100%;height:100%; src='
										+ url + '></iframe>',
								closable : true
							});
		}
	}
</script>
<body style="margin: 0px; padding: 0px">
	<div id="cc" class="easyui-layout" style="width: 100%; height: 100%;">
		<div region="west" split="true" title="操作菜单" style="width: 200px;">
			<div id="aa" class="easyui-accordion"
				style="width: 191px; height: 100%;">
				<!-- <div title="类别管理" style="overflow: auto; padding: 10px;">
					<a href="javascript:showUrl('查询类别详细信息','category/searchCategory')">查询类别详细信息</a>
					<a href="javascript:showUrl('增加类别','category/toAddCategory')">增加类别</a>
					<a href="javascript:showUrl('修改类别','category/searchCategory')">修改类别</a>
					<a href="javascript:showUrl('删除类别','category/searchCategory')">删除类别</a>
				</div> -->
				<div title="商品管理" selected="true"
					style="overflow: auto; padding: 10px;">
					<a href="javascript:showUrl('查询商品详细信息','pro/search')">查询商品详细信息</a>
					<a href="javascript:showUrl('添加商品','pro/toAdd')">添加商品</a> <a
						href="javascript:showUrl('修改商品','pro/search')">修改商品</a> <a
						href="javascript:showUrl('删除商品','pro/search')">删除商品</a>
				</div>
				<!-- <div title="用户管理" selected="true"
					style="overflow: auto; padding: 10px;">
					<a href="javascript:showUrl('查询用户详细信息','user/search')">查询用户以及管理员的详细信息</a>
					<a href="javascript:showUrl('添加新用户','user/toReg')">添加新管理员</a> <a
						href="javascript:showUrl('修改用户信息','user/search')">修改新管理员的role信息</a>

				</div>
				<div title="订单管理" selected="true"
					style="overflow: auto; padding: 10px;">
					<a href="javascript:showUrl('查询用户订单详细信息','order/search')">查询用户订单信息</a>
				</div>
				<div title="商品首页" selected="true"
					style="overflow: auto; padding: 10px;">
					<a href="front/header">返回商品首页</a>
				</div> -->
			</div>
		</div>
		<div region="center" title="操作区域"
			style="padding: 5px; background: #eee;">
			<div id="tt" class="easyui-tabs" fit="true"
				style="width: 500px; height: 250px; margin: 0px; padding: 0px">
			</div>
		</div>
	</div>
</body>
</html>
