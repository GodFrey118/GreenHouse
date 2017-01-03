<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta charset="UTF-8">
<title>银行信用管理系统</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<link href="admin_css/main.css" rel="stylesheet" type="text/css" />
<link href="admin_css/manage.css" rel="stylesheet" type="text/css" />
</head>
<body class="easyui-layout" style="width: 960px; margin: 0px auto;">
	<div data-options="region:'north'" style="height: 65px;">
		<div id="header">
			<div id="top_login">
				<label> 欢迎【<span>${loginUser.username}</span>】使用GreenHouse管理系统</label>
			</div>
		</div>
	</div>
	<div data-options="region:'south'" style="height: 130px;">
		<div id="footer">
			<p class="">
				24小时客户服务热线：010-68988888 &#160;&#160;&#160;&#160; <a href="#">常见问题解答</a> &#160;&#160;&#160;&#160;
				咨询热线：010-627488888 <br /> 文明办网文明上网举报电话：010-627488888 &#160;&#160;&#160;&#160; 举报邮箱： <a href="#">jubao@jb-aptech.com.cn</a>
			</p>
			<p class="copyright">
				Copyright &copy; 1999-2009 News China gov, All Right Reserver <br /> GreenHouse 版权所有
			</p>
		</div>
	</div>
	<div data-options="region:'east',title:'工具栏'" style="width: 182px;">
		<div class="easyui-calendar"
			style="width: 180px; height: 180px; border: 0px; border-bottom: 1px solid #94BAE7"></div>
	</div>
	<div data-options="region:'west',title:'导航栏', collapsible:false" style="width: 160px;">
		<div id="sideNav">
			<div title="用户管理" data-options="iconCls:'icon-mini-add'">
				<ul class="treeNav">
					<li><span>用户信息</span></li>
					<li><span>用户编辑</span></li>
					<li><span>用户添加</span></li>
				</ul>
			</div>
			<div title="店铺管理" data-options="iconCls:'icon-mini-add'">
				<ul class="treeNav">
					<li><span>店铺信息</span></li>
					<li><span>店铺编辑</span></li>
					<li><span>店铺添加</span></li>
				</ul>
			</div>
			<div title="订单管理" data-options="iconCls:'icon-mini-add'">
				<ul class="treeNav">
					<li><span>订单信息</span></li>
					<li><span>订单编辑</span></li>
				</ul>
			</div>
			<div title="商品管理" data-options="iconCls:'icon-mini-add'">
				<ul class="treeNav">
					<li><span>商品信息</span></li>
					<li><span>商品编辑</span></li>
				</ul>
			</div>
			<div title="商品类型管理" data-options="iconCls:'icon-mini-add'">
				<ul class="treeNav">
					<li><span>商品类型信息</span></li>
					<li><span>商品类型编辑</span></li>
					<li><span>商品类型添加</span></li>
				</ul>
			</div>
		</div>
	</div>
	<div
		data-options="region:'center', title:'主界面', tools: [{    
	    iconCls:'icon-full',    
	    handler:function(){full();}    
	  },{    
	    iconCls:'icon-unfull',    
	    handler:function(){unfull();}    
	  }]   ">
		<div id="main" style="width: 500px; height: 250px;">
			<div title="欢迎">
				<h1 style="width: 100%; text-align: center; margin-top: 80px">
					<label> 欢迎【<span>${loginUser.username}</span>】使用GreenHouse管理系统
					</label>
				</h1>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="admin_js/manage.js"></script>
</body>
</html>