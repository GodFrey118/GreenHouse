<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/peraddress/topshan.css" rel="stylesheet" type="text/css">
<link href="css/peraddress/common.css" rel="stylesheet" type="text/css">
<title>用户中心 - 我的地址</title>
<meta name="description"
	content="山山商城通过自媒体的方式，自己挖掘各地好的农特产，拍摄视频建立专辑，并在在每一个农特产品的原产地构架视频直播，全天直播原产地产品的生长及制作及包装过程，保证消费者买到的原滋原味的农特产品。 正品保障、 提供发票、 7天无理由退换货。">
<meta name="keywords"
	content="山山商城,网上购物平台,农产品网购平台,视频直播购物平台，农产品网上购物平台,休闲零食,干果炒货,茶叶,食用菌,粮油,购物商城,我要买,我要卖,免费开店">
<script type="text/javascript" async="" src="css/peraddress/pixel.php"></script>
<script type="text/javascript" async="" charset="utf-8"
	src="css/peraddress/ntkfstat.js"></script>
<script charset="utf-8" src="css/peraddress/v.htm"></script>
<script type="text/javascript" src="css/peraddress/jquery-1.js"
	charset="utf-8"></script>
<script type="text/javascript" src="css/peraddress/ss.js"
	charset="utf-8"></script>


<script type="text/javascript" async="async" charset="utf-8"
	src="css/peraddress/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="css/peraddress/chat.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="css/peraddress/mqtt31.js" data-requiremodule="MQTT"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="css/peraddress/mqtt.js" data-requiremodule="Connection"></script>
</head>

<body>
	<div id="nTalk_post_hiddenElement"
		style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
	<div class="ui-header ">
		<div class="index_tbar1 "
			style="color: #666666; font-family: Arial, ''; font-size: 12px;">
			<div class=" grid1 ">
				<div style="cursor: pointer;" class="left1 public_collect"
					onclick="addBookmark()">
					<img src="css/peraddress/icon-star.gif">收藏山山
				</div>
				<div class="rig">
					<c:choose>
						<c:when test="${loginUser eq null}">
							<span id="loginform" class="fl name sn-login-info">您好！
								欢迎来山山商城购物！<a href="login_user.jsp" class="sn-login">请登录</a> <a
								href="page/register.jsp" class="sn-register">免费注册</a><i
								class="sn-separator"></i>
							</span>
						</c:when>
						<c:otherwise>
							<span class="fl name sn-login-info" style='color: green;'>欢迎
								${loginUser } 使用本网站 &nbsp &nbsp &nbsp &nbsp<a href="#"
								class="sn-login">个人信息</a> <a href='login_user.jsp'
								onclick='logout()' class="sn-register">退出</a><i
								class="sn-separator"></i>
							</span>

						</c:otherwise>
					</c:choose>
					<ul id="navv" class="left1">
						<li class="line">|</li>
						<li class="col-conn">
							<div class="ui-dropdown11 login-menu">
								<a href="http://www.shanshan360.com/buyer_order">我的订单</a>
							</div>
						</li>
						<li class="line">|</li>
						<li class="col-conn">
							<div class="ui-dropdown11">
								<a href="http://www.shanshan360.com/my_favorite"
									class="ui-dropdown-hd11">收藏夹 <b></b></a>
								<ul class="unstyled frr ui-dropdown-menu11">
									<li><a href="http://www.shanshan360.com/my_favorite">收藏的宝贝</a></li>
									<li><a href="http://www.shanshan360.com/my_favorite/store">收藏的店铺</a></li>
								</ul>
							</div>
						</li>
						
						<li class="line1">|</li>
						<li class="col-conn">
							<div class="ui-dropdown11">
								<a target="_blank"
									href="http://www.shanshan360.com/article/service_center"
									class="ui-dropdown-hd11">客户服务 <b></b></a>
								<ul class="unstyled frr ui-dropdown-menu11 ques">
									<li><a target="_blank"
										href="http://www.shanshan360.com/check/notice">商家入驻</a></li>
									<li><a target="_blank"
										href="http://www.shanshan360.com/article/service_center">常见问题</a></li>
									<li><a target="_blank"
										href="http://www.shanshan360.com/human_rights_manage">投诉维权</a></li>
									<li><a target="_blank"
										href="http://www.shanshan360.com/consultation">在线咨询</a></li>
									<li><a target="_blank"
										href="http://www.shanshan360.com/gift_card/bao_zhang">保障天堂</a></li>
									<li><a target="_blank"
										href="http://www.shanshan360.com/identify">山山品控</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="grid1 clear1 ">
		<div class="top-conn left1">
			<div class="logon left1">
				<a href="http://www.shanshan360.com/"><img
					src="css/peraddress/site_logo.jpg" height="100px" width="380px"></a>
			</div>

			<div class="left1">
				<form target="_blank" onsubmit="return fuzhi_key();" method="get"
					id="keyword_form" action="http://search.shanshan360.com/index.php">
					<div class="search-bar11 left1">
						<div class="form">
							<input class="text left1" style="color: #666666" name="keyword"
								id="keyword" value="黑面菇" accesskey="s" tabindex="9"
								autocomplete="off" autofocus="true" x-webkit-speech=""
								x-webkit-grammar="builtin:search" type="text"> <input
								value="搜索" class="button cur left1" type="submit">
						</div>
					</div>
				</form>
				<div class="clear1 hotwordss left1">
					<strong>热门搜索：</strong> <a
						href="http://www.shanshan360.com/index.php?app=goods&amp;id=49967"
						target="_blank">青钱柳原叶</a> <a
						href="http://www.shanshan360.com/index.php?app=goods&amp;id=50022"
						target="_blank">土家鸡</a> <a
						href="http://www.shanshan360.com/product/50023.html"
						target="_blank">畲葛山黄粿</a>
				</div>
			</div>

			<div class="top_button1 left1">
				<a href="http://www.shanshan360.com/member"><div
						class="left1 top-bt1">
						<img src="css/peraddress/icon-meber.jpg">我的山山
					</div></a>
				<div class="left1  ui-dropdown22">

					<a target="_blank" href="http://www.shanshan360.com/cart"
						class="ui-dropdown-hd22"><div class="top-bt1 left1">
							<div class="left1">
								<img src="css/peraddress/icon-buy2.png">
							</div>
							<div class="left1">购物车</div>
							<div id="carts" class="num-bg left1">0</div>
						</div> </a>

					<ul class="unstyled frr ui-dropdown-menu22">
						<li>
							<div class="con left1 hide">
								<div class="left1">
									<img src="css/peraddress/b-y.jpg">
								</div>
								<div class="left1">购物车中还没有商品，赶紧选购吧！</div>
							</div> <font class="fyh f14 ml5 left1 show_cart" style="display: none;">最新加入的商品</font>

						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<link href="css/peraddress/common-V2.css" rel="stylesheet"
		type="text/css">
	<link href="css/peraddress/specialSell-V2.css" rel="stylesheet"
		type="text/css">
	<link href="css/peraddress/width1190-V2.css" rel="stylesheet"
		type="text/css">
	<link href="css/peraddress/common.css" rel="stylesheet" type="text/css">
	<link href="css/peraddress/user.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="css/peraddress/index.js"></script>
	<script type="text/javascript" src="css/peraddress/jquery-V2.js"
		charset="utf-8"></script>
	<script type="text/javascript" src="css/peraddress/imglazyload.js"
		charset="utf-8"></script>
	<!--<script type="text/javascript" src="http://www.shanshan360.com/includes/libraries/javascript/jquery-v1.7.js" charset="utf-8"></script>-->
	<script type="text/javascript" src="css/peraddress/menu.js"></script>
	<script type="text/javascript" src="css/peraddress/member.js"
		charset="utf-8"></script>
	<script charset="utf-8" type="text/javascript"
		src="css/peraddress/dialog.js" id="dialog_js"></script>
	<link href="css/peraddress/dialog.css" rel="stylesheet" type="text/css">
	<script charset="utf-8" type="text/javascript"
		src="css/peraddress/jquery_002.js"></script>
	<script charset="utf-8" type="text/javascript"
		src="css/peraddress/jquery.js"></script>
	<script charset="utf-8" type="text/javascript"
		src="css/peraddress/mlselection.js"></script>
	<link rel="stylesheet" type="text/css" href="css/peraddress/jquery.css">
	<script type="text/javascript">
		//<!CDATA[
		var SITE_URL = "http://www.shanshan360.com";
		var PRICE_FORMAT = '¥%s';
		var gods_hot = "黑面菇";
		var store_hot = "";
		function fuzhi_key() {
			var sgk = $("#ghsk").attr("value");
			var gd_hk = "黑面菇";
			if (sgk) {
				$("#ghsk").attr("value", sgk);
			} else {
				$("#ghsk").attr("value", gd_hk);
			}
		}
		//]]>
	</script>

	<div class="shanshanNav">
		<div class="shanshanNav-con">
			<div class="clearfix">
				<ul class="ssNavcon-main">
					<li><a class="" href="index.jsp">首页</a></li>
					<li><a href="http://ssmss.shanshan360.com/" target="_blank">山山美食馆</a></li>
					<li><a
						href="http://www.shanshan360.com/index.php?app=store&amp;id=1896664"
						target="_blank">畲乡景宁馆</a></li>
					<li><a
						href="http://www.shanshan360.com/index.php?module=specialpage&amp;id=2"
						target="_blank">基地视频</a></li>
					<li><a
						href="http://www.shanshan360.com/index.php?module=specialpage&amp;id=3"
						target="_blank">实况直播</a></li>
					<li><a
						href="http://www.shanshan360.com/index.php?module=specialpage&amp;id=193"
						target="_blank">景宁直播中心</a></li>
					<li style="display: none;"><a
						href="http://www.shanshan360.com/check/notice" target="_blank">商家入驻</a></li>
				</ul>
			</div>
		</div>
	</div>
	<link href="css/peraddress/wodezhanghu.css" rel="stylesheet"
		type="text/css">
	<style type="text/css">
.msg-full {
	padding: 0px 0 10px;
	width: 100%;
	display: block;
	padding-top: 10px;
}

.msg-full .ok {
	line-height: 30px !important;
	padding: 0 10px 0 32px !important;
	background-color: #FCFFE0;
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/images/skin/2013/msg_icon.png)
		-50px 8px no-repeat;
	border: 1px solid #CEDBA0;
	color: #8DAE1A;
}
</style>

	<div class="content">
		<div class="con_main">

			<div class="buyer_center">
				<div class="bc_nav">
					<div class="bc_nav_l fl">
						<span>您现在的位置:</span> <a href="index.jsp">首页</a><span> &gt;
						</span> <a href="javascript:void(0)" class="bcv_current">我是买家</a>

					</div>
				</div>
			</div>
			<div class="bc_content">
				<div class="bcc_wrap">
					<div class="bcc_wrap_title">我是买家</div>
					<ul>
						<li class="mainmenu">
							<dl>
								<dt>


									<a class="mntitle" href="shopping.jsp">我的购物车</a>

								</dt>
							</dl>
						</li>
						<li class="mainmenu">
							<dl>
								<dt>

									<span class="expanded_ico"></span> <a class="mntitle"
										href="page/perinfo.jsp">我的交易</a>

								</dt>
								<dd class="my_trade" style="display: block;">
									<ul class="childul">
										<li><a href="page/business.jsp">已经购买的商品</a></li>

									</ul>
								</dd>
							</dl>
						</li>
						<li class="mainmenu">
							<dl>
								<dt>


									<a class="mntitle" href="page/perinfo.jsp"
										style="background: rgb(231, 247, 229) none repeat scroll 0% 0%;">我的收藏</a>

								</dt>
							</dl>
						</li>
						<li class="mainmenu">
							<dl>
								<dt>


									<a class="mntitle" href="page/perinfo.jsp"
										style="background: rgb(231, 247, 229) none repeat scroll 0% 0%;">我是会员</a>

								</dt>
							</dl>
						</li>
						<li class="mainmenu">
							<dl>
								<dt>


									<a class="mntitle" href="page/perinfo.jsp"
										style="background: rgb(231, 247, 229) none repeat scroll 0% 0%;">购买过的店铺</a>

								</dt>
							</dl>
						</li>


						<li class="mainmenu">
							<dl>
								<dt>
									<span class="collapsed_ico"></span> <a class="mntitle"
										href="page/perinfo.jsp"
										style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">安全中心</a>

								</dt>

							</dl>
						</li>
						<li class="mainmenu">
							<dl>
								<dt>

									<span class="expanded_ico"></span> <a class="mntitle"
										href="page/perinfo.jsp">我的账户</a>

								</dt>
								<dd class="my_account" style="display: block;">
									<ul class="childul">
										<li><a href=page/perinfo.jsp>个人资料</a></li>
										<li><a href="page/peraddress.jsp">我的地址</a></li>
									</ul>
								</dd>
							</dl>
						</li>

					</ul>
				</div>
				<div class="fr my_account">
					<div class="my_accountcen fr">
						<div class="my_accountup">
							<form method="post" id="address_form" novalidate="novalidate" action="user/addperaddress">
								<input name="goods_id" value="" type="hidden"> <input
									name="store_id" value="" type="hidden"> <input
									name="quantity" value="" type="hidden"> <input
									name="active_id" value="" type="hidden">
								<h3>收货地址</h3>
								<div class="msg-full">
									<a name="tips" id="tips"></a>
									<p class="ok"
										style="display: none; margin-left: 0; height: 30px;"></p>
								</div>
								<h4>
									<b class="pink">新增收货地址</b>
								</h4>
								<ul>
									<li><span class="fl addrwidth">收货人姓名：</span>
										<p class="fl">
											<span class="pink">*</span> <input name="a_receiver"
												class="my_accounts" type="text"> <span
												class="field_notice">请填写您的真实姓名</span>
										</p></li>
									<li><span class="fl addrwidth">收货地址：</span>
										<p class="fl">
											<span class=" pink fl">*&nbsp;</span>
											<textarea name="a_area" rows="3" cols="60" class="fl"
												style="height: 67px; border: 1px solid #a5a5a5"></textarea>
										</p> <label></label></li>
									<li><span class="fl addrwidth">邮政编码：</span>
										<p class="fl">
											&nbsp;&nbsp;&nbsp;<input name="a_post" class="my_accounts"
												style="width: 95px;" type="text"> <span
												class="field_notice">邮政编码可以不填</span>
										</p></li>
									<li><span class="fl addrwidth">手机号码：</span>
										<p class="fl">
											<span class="pink">*</span> <input name="a_tel"
												id="phone_mob" class=" my_accounts" type="text">
										</p></li>
									<li><input class="chen" src="css/peraddress/a_03.jpg"
										value="保存" style="margin-left: 70px;" type="submit"></li>
								</ul>
							</form>
						</div>
						
						<div class="my_accountmext">
						  <form method="post" id="addresses_form"  action="user/getperaddress">
							<div class="tbl-deliver-address" id="idperaddress">
								<table class="tbl-main" cellspacing="0" cellpadding="0" border="0" id='ididid'>
									<tbody>
										<tr class="thead-tbl-grade">
											<th colspan="6" class="member_no_records padding6">您没有添加收货地址
											</th>
										</tr>
									</tbody>
								</table>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<div class="clear"></div>
	<div class="footer-wrap">
		<div class="noindex-space"></div>
		<div class="noindexfooter">
			<div class="index-footer">
				<div class="footer">
					<div class="shansahn-info clearfix">


						<dl>

							<dt>消费者保障</dt>
							<dd>
								<a href="http://www.shanshan360.com/article/540.html"
									target="_blank"><em>·</em>保障范围</a>
							</dd>
							<dd>
								<a href="http://www.shanshan360.com/article/541.html"
									target="_blank"><em>·</em>退货退款流程</a>
							</dd>
							<dd>
								<a href="http://www.shanshan360.com/article/542.html"
									target="_blank"><em>·</em>消费者维权中心</a>
							</dd>
						</dl>


						<dl>

							<dt>新手上路</dt>
							<dd>
								<a href="http://www.shanshan360.com/article/120-135.html"
									target="_blank"><em>·</em>新手学堂</a>
							</dd>
							<dd>
								<a href="http://www.shanshan360.com/article/567.html"
									target="_blank"><em>·</em>交易安全</a>
							</dd>
							<dd>
								<a href="http://www.shanshan360.com/article/547.html"
									target="_blank"><em>·</em>消费警示</a>
							</dd>
							<dd>
								<a href="http://www.shanshan360.com/article/548.html"
									target="_blank"><em>·</em>山山服务热线</a>
							</dd>
						</dl>

						<dl id="pay">

							<dt>支付方式</dt>
							<dd>
								<a href="http://www.shanshan360.com/article/569.html"
									target="_blank"><em>·</em>网上银行</a>
							</dd>
							<dd>
								<a href="http://www.shanshan360.com/article/570.html"
									target="_blank"><em>·</em>在线支付</a>
							</dd>
						</dl>


						<dl id="service">

							<dt>商家服务</dt>
							<dd>
								<a href="http://www.shanshan360.com/article/122-147.html"
									target="_blank"><em>·</em>商家入驻</a>
							</dd>
							<dd>
								<a href="http://www.shanshan360.com/article/122-150.html"
									target="_blank"><em>·</em>山山商城规则</a>
							</dd>
						</dl>

						<a href="http://www.shanshan360.com/" class="shanshan-homeico"></a>
						<span class="shanshan-feedback ntkp" onclick="openChatWindow('');">山山商城意见反馈</span>
					</div>
					<div id="copyright">
						<p class="cR-nav">


							<a
								href="http://www.shanshan360.com/index.php?module=aboutus&amp;act=index#about_floor1"
								target="_blank">山山简介</a> <a
								href="http://www.shanshan360.com/index.php?module=aboutus&amp;act=index#about_floor6"
								target="_blank">诚聘英才</a> <a
								href="http://www.shanshan360.com/index.php?module=aboutus&amp;act=index#about_floor7"
								target="_blank">联系我们</a> <a
								href="http://www.shanshan360.com/sitemap.html" target="_blank">网站地图</a>

							<span>关注山山商城：</span> <a href="http://www.weibo.com/shanshan360"
								class="ssb-weibo"><img src="css/peraddress/ssb-weibo.jpg"
								alt=""></a> <a href="http://t.qq.com/ishanshan360"
								class="ssb-weibot"><img src="css/peraddress/ssb-weibot.jpg"
								alt=""></a> <a href="javascript:void(0);" class="ssb-weixin"
								onmouseover="weixin('visible')" onmouseout="weixin('hidden')"><img
								src="css/peraddress/ssb-weixin.jpg" alt=""><label
								class="mbb-weixin"></label></a> <span class="ntkp ssb-weibot"
								onclick="openChatWindow('');"><img
								src="css/peraddress/ssb-talk.jpg" alt="在线咨询"></span>
						</p>
						<p>
							Copyright©2011-2016shanshan360.com 浙江山山网络科技股份有限公司 版权所有<span
								class="statistics_code"><script type="text/javascript">
									var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
											: " http://");
									document
											.write(unescape("%3Cscript src='"
													+ _bdhmProtocol
													+ "hm.baidu.com/h.js%3F5a250090ff571028094607805af27985' type='text/javascript'%3E%3C/script%3E"));
								</script> <script src="css/peraddress/h.js" type="text/javascript"></script></span>
						</p>
						<p>增值电信业务经营许可证：浙B2-20120027</p>
						<p>企业法人营业执照注册号：331127000009583</p>
						<!-- <a href="http://im.shanshan360.com/SShanIM/ShanShan-1.1.0.11.zip" title="山山客服" class="letserv"></a> -->
					</div>
				</div>
			</div>
		</div>
	</div>

	

	<style>
#rightButton {
	position: fixed;
	_position: absolute;
	bottom: 80px;
	height: 250px;
	right: 0;
	z-index: 9999;
	display: block;
	cursor: pointer
}

#right_ul {
	position: relative;
}

#right_ul li {
	margin-bottom: 1px
}

#right_kf {
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/kf.png)
		no-repeat;
	width: 66px;
	height: 66px;
}

#right_kf:hover {
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/kf2.png)
		no-repeat;
	width: 66px;
	height: 66px;
}

#right_gw {
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/gw.png)
		no-repeat;
	width: 66px;
	height: 66px;
}

#right_gw:hover {
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/gw2.png)
		no-repeat;
	width: 66px;
	height: 66px;
}

#right_gw .nums {
	width: 18px;
	height: 18px;
	background: #F00;
	color: #fff;
	position: absolute;
	line-height: 20px;
	font-size: 16px;
	text-align: center;
	margin-left: -10px;
	padding: 2px;
	margin-top: 6px
}

#right_weixin {
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/wx.png)
		no-repeat;
	width: 66px;
	height: 66px;
}

#right_sc {
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/sc.png)
		no-repeat;
	width: 66px;
	height: 66px;
}

#right_sc:hover {
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/sc2.png)
		no-repeat;
	width: 66px;
	height: 66px;
}

#right_weixin:hover {
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/wx2.png)
		no-repeat;
	width: 66px;
	height: 66px;
}

#right_ul li#right_gw {
	*margin-bottom: -1px
}

#right_tip {
	width: 156px;
	background: #fff;
	position: absolute;
	margin-top: -350px;
	border: 1px #B0B0B0 solid;
	right: 80px;
	display: none;
	z-index: 999999;
	padding-top: 10px;
}

#right_tip .con {
	width: 119px;
	margin: 0 auto;
}

#right_tip .con .arr {
	position: absolute;
	top: 520px;
	left: 156px
}

#right_tip .con li {
	width: 119px;
	float: left;
	border-bottom: 1px #B0B0B0 solid;
	padding-bottom: 10px;
	margin-bottom: 10px;
}

#right_tip .con li p img {
	margin-bottom: 10px
}

#right_tip .con li.last {
	border-bottom: none
}

#right_tip .con  .t1 img {
	margin-right: 11px;
	float: left
}

#right_tip .con  .t1 font {
	color: #6c6c6c;
	margin-top: 60px;
	width: 85px;
}

#right_tip .con  .t2 font {
	color: #6c6c6c;
	margin-top: 14px;
	width: 85px;
}

#right_tip .con  .t2 font a {
	color: #6c6c6c;
	text-decoration: underline
}

#right_tip .con  .t1 {
	margin-bottom: 22px
}

#backToTop {
	z-index: 999999;
	display: none;
	margin-top: -335px;
	*margin-top: -336px
}

a.backToTop_a {
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/gtop.png)
		no-repeat;
	width: 66px;
	height: 66px;
	display: block;
}

a.backToTop_a:active {
	background:
		url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/gtop2.png)
		no-repeat;
}

#right_tip .con .arr {
	position: absolute;
	top: 520px;
	left: 156px;
	border-width: 10px;
	border-color: transparent transparent transparent #B0B0B0;
	border-style: dashed dashed dashed solid;
	border-right: none;
}

.arr_i {
	position: absolute;
	top: -10px;
	*top: -10px;
	left: -11px;
	display: block;
	height: 0;
	width: 0;
	font-size: 0;
	line-height: 0;
	border-color: transparent transparent transparent #fff;
	border-style: dashed dashed dashed solid;
	border-width: 10px;
}
</style>

	<div id="rightButton" style="right: 0px;">
		<ul id="right_ul">
			<li id="right_kf" onclick="openChatWindow('');"></li>

			<!--<a href="http://www.shanshan360.com/consultation" target="_blank"><li id="right_kf" ></li></a>-->
			<a target="_blank" href="http://www.shanshan360.com/cart"><li
				id="right_gw"><div class="nums">0</div></li></a>
			<li id="right_weixin" class="right_ico"></li>
			<li id="right_tip" style="margin-top: 90px" class="png">
				<div class="con ovf  ">
					<div class="fl arr" style="top: 80px">
						<div class="fl arr_i"></div>
					</div>
					<ul>
						<li><p>
								<a href="" target="_brank"><img
									style="width: 118px; height: 118px;"
									src="css/peraddress/syewmsz_0.jpg"></a>
							</p>
							<p class="f14 fyh tec">
								<a href="" target="_brank"><font color="#5B5B5B">山山商城微信</font></a>
							</p></li>
					</ul>
				</div>
			</li>
			<li id="right_sc" onclick="addBookmark()"></li>
			<li><div id="backToTop" style="display: block;">
					<a href="javascript:;" onfocus="this.blur();"
						class="backToTop_a png"></a>
				</div></li>

		</ul>
	</div>
	<script type="text/javascript" charset="utf-8" src=""></script>
	<script type="text/javascript" src="js/peraddress.js"></script>
</body>
</html>