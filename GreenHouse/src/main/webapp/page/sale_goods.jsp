<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<title>详情页面</title>
<base href="/GreenHouse/">
<link type="text/css" rel="stylesheet" href="css/saleGoods.css">
</head>

<body>
<header>
	<div class="header1">
        <div class="header1_1">
        	<ul>
                <li>你好！XXX欢迎您！</li>
            </ul>
            <ul>
                <li><a href="#">网站导航</a></li>
                <li><a href="#">帮助中心</a></li>
                <li><span></span><a href="#">个人应用</a>
                	<ul class="hidden1">
                    	<li><a href="#">个人中心</a></li>
                        <li><a href="#">我的订单</a></li>
                        <li style="cursor:pointer">注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</li>
                    </ul>
                </li>
                <li>HI~请[<a href="login_user.jsp">登录</a>]&nbsp;&nbsp;<a href="register.html" style="color:#FD843D">[免费注册]</a></li>
            </ul>
        </div>
    
    </div>
    <!-- logo与搜索部分 -->
    <div class="header2">
    	<div class="header2_1">
        	<img/>
            <!--<p><input placeholder="请输入关键词..."/><a href="#">搜索</a></p>-->
        </div>
    </div>
</header>

<article>
    <div class="article1_1">
            <ul class="ul1_1">
                <li><span></span></li>
                <li><a href="#">首页</a></li>
                <li>功能中心</li>
                <li></li>
            </ul>
        </div>
        
        <div class="article1_2">
            <!-- 左侧部分： 头像以及功能选项 -->
            <div class="article1_2_1">
                <!-- 头像部分 -->
                <div class="userPic">
                    <img src="images/footer1.png"/>
                    <!-- <span><a href="#">更改头像</a><input id="chaPic" type="file" value="更换头像"/></span> -->
                </div>
                <!--  功能选项部分 -->
                <div class="userMenu">
                    <ul class="ul2_1">
                        <li>功能中心</li>
                        <li class="huise"><a href="#">我要发布</a></li>
                        <li ><a href="#">我要求购</a></li>
                        <li ><a href="#">我的发布</a></li>
                        <li ><a href="#">我的求购</a></li>
                    </ul>
                </div>
            </div>
            <!-- 右侧部分： 详细信息 -->
            <div class="article1_2_2">
                <span>我要发布</span>
                <!-- <form style="display:none">
                    <ul>
                        <li>用&nbsp;户&nbsp;&nbsp;名：<input/></li>
                        <li>手机号码：<input/></li>
                        <li>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input/></li>
                        <li>Q&nbsp;Q号码：<input/></li>
                        <li>电子邮箱：<input/></li>
                        <li>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<input/></li>
                        <li>个人简介：<textarea></textarea></li>
                        <li><input type="button" value="保存"/></li>
                    </ul>
                </form>
                <form style="display:none">
                    <ul>
                        <li>原&nbsp;密&nbsp;&nbsp;码：<input type="password"/></li>
                        <li>新&nbsp;密&nbsp;&nbsp;码：<input type="password"/></li>
                        <li>确认密码：<input type="password"/></li>
                        <li><input type="button" value="保存"/></li>
                    </ul>
                </form> -->
                <form id="form3"   enctype="multipart/form-data" method="post">
                    			<div class="row">
                            	    <label>宝贝名称：</label>
									<input type="text" name="g_name" id="g_name" maxlength="64" >
                            	</div>
                            	<div class="row">
                            	    <label>价格：</label>
                            	    <input type="text" value="" name="g_price" >
                            	</div>
                            	<div class="row">
                            	      <label>商品状态：</label>
							          <select name="g_state">
										    <option >上架</option>
										    <option >下架</option>
									   </select>
                            	</div>
								<div class="row">
        							<label>商家编码：</label>
        							<input type="text" name="s_id" id="outer-id" maxlength="64" />
                                </div>
								<div class="row">
                                    <label>总销量：</label>
									<input type="text" value="" name="g_stock" >
                                </div>

                                  <div class="row">  
                                        <label>商品图片：</label>
                                        <!-- <input type="file" id="g_pic" name="g_pic"/> -->
                                        <input name="g_picPath" type="file" onchange="chgpic(this)" multiple="multiple"/><br/>
      										<img alt=""  id="g_pic"  src="images/4.5.1b.jpg" width="100px" height="100px">
                                    </div>
	                                <div class="row">
	                                    <label>宝贝类目：</label>
	            						<select id="gt_id" name="gt_id"></select>
	                                </div>
								    <div class="row" id="J_ItemSort">
                                    	<label>店铺中分类：</label>
                                    	<input type="text" value=""  name="g_type" id="g_type"/>
                            		</div>
                            		<!-- <div class="row"> -->
											<!-- <input type="submit" value="确定"/> -->
											<a style="margin-top:20px;padding:3px 5px;background:blue;" href="javascript:void(0)" id="tijiao1">确定</a>
									<!-- </div> -->
       					</form>
       				</div>
            </div>
</article>

<footer>
	<div class="footer1_1">
        <div class="footer2_1">
            <ul>
                <li><img src="images/footer1.png"/></li>
                <li>
                	<ul>
                    	<li class="zi1">关于我们</li>
                        <li><a class="zi2" href="#">公司简介</a></li>
                        <li><a class="zi2" href="#">联系方式</a></li>
                    </ul>
                </li>
                <li>
                	<ul>
                    	<li class="zi1">交易保障</li>
                        <li><a class="zi2" href="#">网站协议</a></li>
                        <li><a class="zi2" href="#">支付方式</a></li>
                    </ul>
                </li>
                <li>
                	<ul>
                    	<li class="zi1">关注我们</li>
                        <li><a class="zi2" href="#">用户意见反馈</a></li>
                        <li><a class="zi2" href="#">分享给好友</a></li>
                    </ul>
                </li>
                <li>
                	<ul>
                    	<li class="zi1">联系我们</li>
                        <li style="color:#E75E08;font-weight:bold;">150-0895-9836</li>
                    </ul>
                </li>
            </ul>
    	</div>
        <div class="footer2_2">
        	<ul>
            	<li><a href="#">首页</a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">平台公告</a></li>
                <li><a href="#">支付方式</a></li>
                <li><a href="#">联系方式</a></li>
                <li><a href="#">客服中心</a></li>
                <li><a href="#">联系合作</a></li>
                <li><a href="#">网站导航</a></li>
                <li><a href="#">公司资质</a></li>
            </ul>
            <span>Copyright 2017 lsy 版权所有</span>
        </div>
    </div>
</footer>
	<script type="text/javascript" src="easyui/jquery.min.js" ></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js" ></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js" ></script>
	<script type="text/javascript" src="js/goods/saleGoods.js"></script>
</body>
</html>
