<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta content="text/html; charset=UTF-8">
<title>GreenHouse网站后台管理</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<link href="css/admin/admin.css" rel="stylesheet" type="text/css" />
</head>
<body class="easyui-layout" id="layoutBody">   
    <div data-options="region:'north'" style="height:140px;">
    	<div id="header">
			<div id="welcome">欢迎使用GreenHouse后台系统</div>
			<div id="nav">
				<div id="logo">
					<img src="images/logo.jpg" alt="" />
				</div>
				<div id="a_b01">
					<img src="images/a_b01.gif" alt="" />
				</div>
			</div>
	</div>
    </div>   
  	<div data-options="region:'west',title:'菜单栏', collapsible:false" style="width:180px;" >
  		<div id="leftSider">   
		    <div title="用户管理" data-options="iconCls:'icon-man'"> 
		  		<ul class="menutree">  
		  			<li>   
                        <span>用户信息</span>   
                    </li>  
             	</ul>   
		    </div>   
		    <div title="店铺管理" data-options="iconCls:'icon-man'">   
		        <ul class="menutree">  
                    <li>   
                        <span>店铺信息</span>   
                    </li>   
             	</ul>   
		    </div>   
		    <div title="商品管理" data-options="iconCls:'icon-man'">   
		        <ul class="menutree">  
		  			<li>   
                        <span>商品信息</span>   
                    </li>  
             	</ul>   
    		</div>   
    		 <div title="订单管理" data-options="iconCls:'icon-man'">   
		        <ul class="menutree">  
		  			<li>   
                        <span>订单信息</span>   
                    </li>  
             	</ul>   
    		</div>   
    		 <div title="商品类型管理" data-options="iconCls:'icon-man'">   
		        <ul class="menutree">  
		  			<li>   
                        <span>商品类型</span>   
                    </li>  
                     <li>   
                        <span>添加商品类型</span>   
                    </li> 
             	</ul>   
    		</div>   
		</div> 
  	</div>   
    <div data-options="region:'center'">
    	<div id="main">   
		    <div title="主界面">   
		       <h1>欢迎使用GreenHouse后台系统</h1>
		    </div>   
		</div>  
    </div> 
    
    <!-- 子窗口的对话框 -->
    <div id="userInfo"></div>
    <div id="storeInfo"></div>
    <div id="goodInfo"></div>
    
      <!-- 子窗口的对话框 -->
    <div id="orderInfo"></div>
    <div id="goodTypeInfo"></div>
    <div id="addGoodType"></div>
    
	<script type="text/javascript" src="easyui//jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/admin/admin.js"></script>
</body>
	
</html>