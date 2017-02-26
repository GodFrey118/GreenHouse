<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/perinfo/topshan.css" rel="stylesheet" type="text/css">
<link href="css/perinfo/common.css" rel="stylesheet" type="text/css">
<title>用户中心 - 个人资料</title>
<meta name="description"
	content="山山商城通过自媒体的方式，自己挖掘各地好的农特产，拍摄视频建立专辑，并在在每一个农特产品的原产地构架视频直播，全天直播原产地产品的生长及制作及包装过程，保证消费者买到的原滋原味的农特产品。 正品保障、 提供发票、 7天无理由退换货。">
<meta name="keywords"
	content="山山商城,网上购物平台,农产品网购平台,视频直播购物平台，农产品网上购物平台,休闲零食,干果炒货,茶叶,食用菌,粮油,购物商城,我要买,我要卖,免费开店">
<script type="text/javascript" async="" src="css/perinfo/pixel.php"></script>
<script type="text/javascript" async="" charset="utf-8"
	src="css/perinfo/ntkfstat.js"></script>
<script charset="utf-8" src="css/perinfo/v.htm"></script>
<script type="text/javascript" src="css/perinfo/jquery-1.js"
	charset="utf-8"></script>
<script type="text/javascript" src="css/perinfo/ss.js" charset="utf-8"></script>
<!-- 
<script type="text/javascript">
	var SITE_URL = "http://www.shanshan360.com";
	var PRICE_FORMAT = '¥%s';
	var gods_hot = "黑面菇";
	var store_hot = "";
	var gh_sk_url = "http://www.shanshan360.com/product/49734.html";
	function fuzhi_key() {
		var sgk = $("#keyword").attr("value");
		var gd_hk = "黑面菇";
		var gh_s = "黑面菇";
		var gh_sk_url = "http://www.shanshan360.com/product/49734.html";
		if (sgk == gh_s) {
			if (gh_sk_url != "") {
				window.open(gh_sk_url);
				return false;
			} else {
				$("#keyword").attr("value", gd_hk);
			}
		} else {
			if (sgk) {
				$("#keyword").attr("value", sgk);
			} else {
				if (gh_sk_url != "") {
					window.open(gh_sk_url);
					return false;
				} else {
					$("#keyword").attr("value", gd_hk);
				}
			}
		}
	}
	var timeout = 500;
	var closetimer = 0;
	var ddmenuitem = 0;

	function nav_open() {
		nav_canceltimer();
		nav_close();
		ddmenuitem = $(this).find('ul').eq(0).css('visibility', 'visible');
	}

	function nav_close() {
		if (ddmenuitem)
			ddmenuitem.css('visibility', 'hidden');
	}

	function nav_timer() {
		closetimer = window.setTimeout(nav_close, timeout);
	}

	function nav_canceltimer() {
		if (closetimer) {
			window.clearTimeout(closetimer);
			closetimer = null;
		}
	}

	$(document).ready(function() {
		$('#navv > li').bind('mouseover', nav_open);
		$('#navv > li').bind('mouseout', nav_timer);
	});

	document.onclick = nav_close;

	$(document)
			.ready(
					function() {
						/*头部用户状态*/
						$
								.ajax({
									url : "http://www.shanshan360.com/index.php?app=cart&act=ajax_get_visitor&jsoncallback=?",
									dataType : "json",
									success : function(data) {
										if (data.done) {
											/*用户登录时的状态*/
											if (data.msg.user_id > 0) {
												$("#collect_folder")
														.html(
																"<a href='/my_favorite' class='mS-mtit'>收藏夹<b></b></a><div class='mS-mcon' style='display:none;'><div class='mS-mcon-panel'><a href='/my_favorite'>收藏的商品</a><a href='/my_favorite/store'>收藏的店铺</a></div></div>");
												$('.pulic_sn-login-info')
														.html(
																"Hi！<a class='sli-item' href='/member' > "
																		+ data.msg.user_name
																				.substring(
																						0,
																						60)
																		+ "</a>！  <a href='/index.php?app=my_points' class='sli-item' >积分(<em>"
																		+ data.msg.jifen
																		+ ")</em></a>  <a href='/message/newpm' class='sli-item' >消息<em>("
																		+ data.msg.new_message
																		+ ")</em></a><a href='/member/logout' class='sn-quit'>退出</a><i class='sn-separator'></i>");
												/*判断登录后会员是否卖家*/
												if (data.msg.store_id != null) {
													$('.login-menu')
															.html(
																	'<a href="/seller_order">我的订单</a> ');
												} else {
													$('.login-menu')
															.html(
																	'<a href="/buyer_order">我的订单</a>  ');
													$('#carts')
															.html(
																	data.msg.cart_goods_kinds);
													if (data.msg.cart_goods_kinds > 0) {
														var str = '<Div class="left1left1 clear1 pro-list1" id="pro-list"> <Div class="left1">';
														$
																.each(
																		data.msg.cart_items,
																		function(
																				index,
																				value) {
																			str += '<div class="tit carts_'+value.rec_id+'">';
																			if (value.has_discount == 1) {
																				str += ' <Div class="bz left1">满减</Div><div class="left1 mr20"  style="width:130px;overflow:hidden">'
																						+ value.sales_promotion_detail[0]
																						+ '</div>';
																			}
																			str += '<Div class="left1 ml5">小计：￥'
																					+ value.to_money
																					+ '</Div></Div>';
																			str += '<Div class="pro-con1 left1 carts_'+value.rec_id+'"><span class="left1 img"><img style="width:50px;height:50px;" src="/'+value.goods_image+'" /></span>'
																					+ '<span class="left1 pro-name1 lh18">'
																					+ value.goods_name
																					+ '</span><span class="left1  pri lh18">'
																					+ '<P><font class="cff6 f14">￥'
																					+ value.discount_price
																					+ '</font>*'
																					+ value.quantity
																					+ '</P><p class="ter"><a href="javascript:;" cart_id='+value.rec_id+' class="delete_cart">删除</a></p>'
																					+ '</span></Div>';
																		});
														str += '</Div></Div><Div class="js1 clear1 left1"><P>共 <font class="cff6">'
																+ data.msg.num
																+ '</font> 件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
																+ ' 共计<Font class="cff6 ">￥</Font><font class="f-s cff6 f18 t_money_0">'
																+ data.msg.t_money[0]
																+ '.</font><Font class="f13 f-s cff6 t_money_1">'
																+ data.msg.t_money[1]
																+ '</Font></P>'
																+ '<p  class="ter"><a  target="_blank" href="/cart"><button type="button" class="choose_btn1  f14 fyh" >去购物车结算</button></a></p></Div>';
														$('.show_cart').after(
																str);
													} else {
														$('#carts')
																.html(
																		data.msg.cart_goods_kinds);
														$('.show_cart').hide();
														$('.carts_show_g')
																.removeClass(
																		'hide');
														$(".cart_show")
																.html(
																		'购物车中还没有商品，赶紧选购吧！');
													}
												}
											} else /*未登录时的状态*/
											{
												$('.pulic_sn-login-info')
														.html(
																"您好！ "
																		+ data.msg.user_name
																		+ "！<a href='/index.php?app=member&amp;act=login&amp;ret_url=' class='public-sn-login'>请登录</a> <a href='/index.php?app=member&amp;act=register&amp;ret_url=' class='public-sn-register'>免费注册</a>");
												$("[ectype='seller']").hide();
												$("[ectype='buyers']").show();
												$('#carts')
														.html(
																data.msg.cart_goods_kinds);
												if (data.msg.cart_goods_kinds > 0) {
													$('.carts_show_g')
															.addClass('hide');
													var str = '<Div class="left1left1 clear1 pro-list1" id="pro-list"> <Div class="left1">';
													$
															.each(
																	data.msg.cart_items,
																	function(
																			index,
																			value) {
																		str += '<div class="tit carts_'+value.rec_id+'">';
																		if (value.has_discount == 1) {
																			str += ' <Div class="bz left1">满减</Div><div class="left1 mr20" style="width:130px;overflow:hidden">'
																					+ value.sales_promotion_detail[0]
																					+ '</div>';
																		}
																		str += '<Div class="left1 ml5">小计：￥'
																				+ value.to_money
																				+ '</Div></Div>';
																		str += '<Div class="pro-con1 left1 carts_'+value.rec_id+'"><span class="left1 img"><img style="width:50px;height:50px;" src="/'+value.goods_image+'" /></span>'
																				+ '<span class="left1 pro-name1 lh18">'
																				+ value.goods_name
																				+ '</span><span class="left1  pri lh18">'
																				+ '<P><font class="cff6 f14">￥'
																				+ value.discount_price
																				+ '</font>*'
																				+ value.quantity
																				+ '</P><p class="ter"><a href="javascript:;" cart_id='+value.rec_id+' class="delete_cart">删除</a></p>'
																				+ '</span></Div>';
																	});
													str += '</Div></Div><Div class="js1 clear1 left1"><P>共 <font class="cff6">'
															+ data.msg.num
															+ '</font> 件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
															+ ' 共计<Font class="cff6 ">￥</Font><font class="f-s cff6 f18 t_money_0">'
															+ data.msg.t_money[0]
															+ '.</font><Font class="f13 f-s cff6 t_money_1">'
															+ data.msg.t_money[1]
															+ '</Font></P>'
															+ '<p  class="ter"><a  target="_blank" href="/cart"><button type="button" class="choose_btn1  f14 fyh" >去购物车结算</button></a></p></Div>';
													$('.show_cart').after(str);
												} else {
													$(".cart_show").html(
															'你的购物车是空的，赶快去购物吧！');
												}
											}
										}
									}
								});
					});
	$('.delete_cart')
			.live(
					'click',
					function() {
						if (confirm('你确定要删除它吗？')) {
							var rec_id = $(this).attr('cart_id');
							var tr = $('.carts_' + rec_id);
							$
									.getJSON(
											'index.php?app=cart&act=drop&rec_id='
													+ rec_id,
											function(result) {
												if (result.done) {
													//删除成功
													if (result.retval.cart.quantity == 0) {
														tr.remove(); //移除					
														$('.con').removeClass(
																'hide')
																.siblings()
																.hide();
														$('#carts')
																.html(
																		result.retval.cart.kinds);
														$('.num-bg')
																.html(
																		result.retval.cart.kinds);
														$('.nums')
																.html(
																		result.retval.cart.kinds);
														$(".cart_show")
																.html(
																		'你的购物车是空的，赶快去购物吧！');
													} else {
														var t_money = '';
														t_money = ''
																+ number_format(
																		result.retval.cart.amount,
																		2);
														var money = new Array();
														tr.remove(); //移除
														$('#carts')
																.html(
																		result.retval.cart.kinds);
														$('.num-bg')
																.html(
																		result.retval.cart.kinds);
														$('.nums')
																.html(
																		result.retval.cart.kinds);
														var money = t_money
																.split('.');
														$('.t_money_0').html(
																money[0] + '.');
														$('.t_money_1').html(
																money[1]);
													}
												}
											});
						} else {
							return;
						}
					});
</script>-->
<script type="text/javascript" async="async" charset="utf-8"
	src="css/perinfo/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="css/perinfo/chat.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="css/perinfo/mqtt31.js" data-requiremodule="MQTT"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="css/perinfo/mqtt.js" data-requiremodule="Connection"></script>
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
					<img src="css/perinfo/icon-star.gif">收藏山山
				</div>
				<div class="rig">
					 <c:choose>
				<c:when test="${loginUser eq null}">
					<span id="loginForm" class="fl name sn-login-info">您好！ 欢迎来山山商城购物！<a href="login_user.jsp" class="sn-login">请登录</a> <a href="page/register.jsp" class="sn-register">免费注册</a><i class="sn-separator"></i></span>
				</c:when>
				<c:otherwise>
				<span class="fl name sn-login-info" style='color:green;'>欢迎  ${loginUser } 使用本网站 &nbsp &nbsp &nbsp &nbsp<a href="#" class="sn-login">个人信息</a> 
				<a href='login_user.jsp' onclick='logout()' class="sn-register">退出</a><i class="sn-separator"></i></span>
				
				</c:otherwise>
			</c:choose>
					<ul id="navv" class="left1">
						<li class="line">|</li>
						<li class="col-conn">
							<div class="ui-dropdown11 login-menu">
								<a href="page/perinfo.jsp">我的订单</a>
							</div>
						</li>
						<li class="line">|</li>
						<li class="col-conn">
							<div class="ui-dropdown11">
								<a href="http://www.shanshan360.com/my_favorite"
									class="ui-dropdown-hd11">收藏夹 <b></b></a>
								<ul class="unstyled frr ui-dropdown-menu11">
									<li><a href="page/perinfo.jsp">收藏的宝贝</a></li>
									<li><a href="page/perinfo.jsp">收藏的店铺</a></li>
								</ul>
							</div>
						</li>
						<!--  <li class="line1">|</li>
                   <Li class="col-conn2">
                       <div class="ui-dropdown11">
                        <a  href="?act=xiazai&filename=shanshan.apk" class="ui-dropdown-hd11">
                        	<span  class="left1">手机山山</span>
                        	<span class=" phon left1"></span>
                        </a>
                        <ul class="unstyled frr ui-dropdown-menu11 weixin">
                              <li>
                                 <Div class="con ">
                                 <Div class="left1"><img src="/data/siteflash/erweima.jpg"  width="85px" height="85px"/></Div>
                                 	<Div class="left1 font fyh">扫二维码<br>
										触屏版<br>
										惊喜专项
									</Div>
                                 </Div>
                              </li>
                          </ul>
                       </div>   
                  </Li>  -->
						<li class="line1">|</li>
						<li class="col-conn">
							<div class="ui-dropdown11">
								<a target="_blank"
									href="page/perinfo.jsp"
									class="ui-dropdown-hd11">客户服务 <b></b></a>
								<ul class="unstyled frr ui-dropdown-menu11 ques">
									<li><a target="_blank"
										href="page/perinfo.jsp">商家入驻</a></li>
									<li><a target="_blank"
										href="page/perinfo.jsp">常见问题</a></li>
									<li><a target="_blank"
										href="page/perinfo.jsp">投诉维权</a></li>
									<li><a target="_blank"
										href="page/perinfo.jsp">在线咨询</a></li>
									<li><a target="_blank"
										href="page/perinfo.jsp">保障天堂</a></li>
									<li><a target="_blank"
										href="page/perinfo.jsp">山山品控</a></li>
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
					src="css/perinfo/site_logo.jpg" height="100px" width="380px"></a>
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
				<a href="index.jsp"><div
						class="left1 top-bt1">
						<img src="css/perinfo/icon-meber.jpg">我的山山
					</div></a>
				<div class="left1  ui-dropdown22">

					<a target="_blank" href="shopping.jsp"
						class="ui-dropdown-hd22"><div class="top-bt1 left1">
							<div class="left1">
								<img src="css/perinfo/icon-buy2.png">
							</div>
							<div class="left1">购物车</div>
							<div id="carts" class="num-bg left1">0</div>
						</div> </a>

					<ul class="unstyled frr ui-dropdown-menu22">
						<li>
							<div class="con left1 hide">
								<div class="left1">
									<img src="css/perinfo/b-y.jpg">
								</div>
								<div class="left1">购物车中还没有商品，赶紧选购吧！</div>
							</div> <font class="fyh f14 ml5 left1 show_cart" style="display: none;">最新加入的商品</font>

						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<link href="css/perinfo/common-V2.css" rel="stylesheet" type="text/css">
	<link href="css/perinfo/specialSell-V2.css" rel="stylesheet"
		type="text/css">
	<link href="css/perinfo/width1190-V2.css" rel="stylesheet"
		type="text/css">
	<link href="css/perinfo/common.css" rel="stylesheet" type="text/css">
	<link href="css/perinfo/user.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="css/perinfo/index.js"></script>
	<script type="text/javascript" src="css/perinfo/jquery-V2.js"
		charset="utf-8"></script>
	<script type="text/javascript" src="css/perinfo/imglazyload.js"
		charset="utf-8"></script>
	<!--<script type="text/javascript" src="http://www.shanshan360.com/includes/libraries/javascript/jquery-v1.7.js" charset="utf-8"></script>-->
	<script type="text/javascript" src="css/perinfo/menu.js"></script>
	<script type="text/javascript" src="css/perinfo/member.js"
		charset="utf-8"></script>
	<script charset="utf-8" type="text/javascript"
		src="css/perinfo/jquery.js"></script>
	<script charset="utf-8" type="text/javascript"
		src="css/perinfo/mlselection.js"></script>
	<!--  <script type="text/javascript">
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
	</script>-->

	<div class="shanshanNav">
		<div class="shanshanNav-con">
			<div class="clearfix">
				<ul class="ssNavcon-main">
					<li><a class="" href="http://www.shanshan360.com/">首页</a></li>
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
	<link href="css/perinfo/wodezhanghu.css" rel="stylesheet"
		type="text/css">
	<style type="text/css">
.msg-full {
	padding: 30px 0 10px;
	width: 100%;
	display: block;
	margin-top: 20px;
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
						<span>您现在的位置:</span> <a
							href="index.jsp">首页</a><span>
							&gt; </span> <a href="page/perinfo.jsp"
							class="bcv_current">我是买家</a>

					</div>
					<!--  <div class="bc_nav_r fr"><a href="#">卖家中心 <em>></em> </a></div> -->
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
				<div class="fr gerenxx">
					<div class="gerenxxup" id="result">
						<p class="gr" id="grxx01">
							<a href="page/perinfo.jsp">基本信息</a>
						</p>
					</div>
					<div class="gerenxxnext">
						<div class="my_accountup" id="con_grxx0_1" style="display: block;">
							<form method="post" enctype="multipart/form-data"
								id="profile_form">
								<ul>
									<li><span class="fl pink">*</span><span class="fl">
											&nbsp;昵称：</span>
										<p class="fl">
											<input name="nick_name" id="nick_name" class="my_accounts"
												value="nihaovovol" type="text"> <span
												class="realname_err"></span>
										</p></li>
									<li><span class="fl">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
										<p class="fl">
											<span class="fl pink">*</span> &nbsp;性别：
										</p>
										<p>
											<label> <input name="gender" checked="checked"
												id="RadioGroup1_0" type="radio"> 男
											</label> <label> <input name="gender" value="2"
												id="RadioGroup1_1" type="radio"> 女
											</label>
										</p></li>
									<li><span class="fl">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
										class="fl pink">*</span><span class="fl">&nbsp;生日：</span>
										<p class="fl nyrdata">
											<select name="SYear" id="SYear">
												<option value="2017" selected="selected">2017</option>
												<option value="2016">2016</option>
												<option value="2015">2015</option>
												<option value="2014">2014</option>
												<option value="2013">2013</option>
												<option value="2012">2012</option>
												<option value="2011">2011</option>
												<option value="2010">2010</option>
												<option value="2009">2009</option>
												<option value="2008">2008</option>
												<option value="2007">2007</option>
												<option value="2006">2006</option>
												<option value="2005">2005</option>
												<option value="2004">2004</option>
												<option value="2003">2003</option>
												<option value="2002">2002</option>
												<option value="2001">2001</option>
												<option value="2000">2000</option>
												<option value="1999">1999</option>
												<option value="1998">1998</option>
												<option value="1997">1997</option>
												<option value="1996">1996</option>
												<option value="1995">1995</option>
												<option value="1994">1994</option>
												<option value="1993">1993</option>
												<option value="1992">1992</option>
												<option value="1991">1991</option>
												<option value="1990">1990</option>
												<option value="1989">1989</option>
												<option value="1988">1988</option>
												<option value="1987">1987</option>
											</select>&nbsp;年 <select id="SMonth" name="SMonth">
												<option value="1">1</option>
												<option value="2" selected="selected">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
											</select>&nbsp;月 <select id="SDay" name="SDay">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option selected="selected" value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
											</select>&nbsp;日
										</p></li>
									<li><span class="fl">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ：</span>
										<p class="fl">
											<input name="im_qq" id="_fm.d._0.po" class="my_accounts"
												style="width: 150px;" type="text">&nbsp;&nbsp;仅作为买卖双方的沟通工具，山山商城不会主动泄露买家个人资料。

										</p></li>
									<li><span class="fl">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;居住地：</span>
										<p class="fl" id="region">
											<input name="region_name" value="" class="mls_names"
												type="hidden"> <select onchange="hide_error();">
												<option selected="selected">请选择...</option>
												<option value="10701">北京</option>
												<option value="6942">天津</option>
												<option value="6961">河北省</option>
												<option value="7144">山西省</option>
												<option value="7275">内蒙古</option>
												<option value="7389">辽宁省</option>
												<option value="7504">吉林省</option>
												<option value="7574">黑龙江省</option>
												<option value="7715">上海</option>
												<option value="7736">江苏省</option>
												<option value="7856">浙江省</option>
												<option value="7958">安徽省</option>
												<option value="8076">福建省</option>
												<option value="8171">江西省</option>
												<option value="8282">山东省</option>
												<option value="8440">河南省</option>
												<option value="8618">湖北省</option>
												<option value="8732">湖南省</option>
												<option value="8869">广东省</option>
												<option value="9012">广西壮族自治区</option>
												<option value="9136">海南省</option>
												<option value="9161">重庆市</option>
												<option value="9202">四川省</option>
												<option value="9405">贵州省</option>
												<option value="9503">云南省</option>
												<option value="9649">西藏</option>
												<option value="9730">陕西省</option>
												<option value="9848">甘肃省</option>
												<option value="9950">青海省</option>
												<option value="10001">宁夏</option>
												<option value="10029">新疆</option>
												<option value="10144">台湾省</option>
												<option value="10145">澳门</option>
												<option value="10146">香港</option>
											</select>

										</p></li>

									<li><span class="fl">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;家乡：</span>
										<p class="fl" id="region_1">
											<input name="con_region_name" value="" class="mls_namess"
												type="hidden"> <select onchange="hide_error();">
												<option selected="selected">请选择...</option>
												<option value="10701">北京</option>
												<option value="6942">天津</option>
												<option value="6961">河北省</option>
												<option value="7144">山西省</option>
												<option value="7275">内蒙古</option>
												<option value="7389">辽宁省</option>
												<option value="7504">吉林省</option>
												<option value="7574">黑龙江省</option>
												<option value="7715">上海</option>
												<option value="7736">江苏省</option>
												<option value="7856">浙江省</option>
												<option value="7958">安徽省</option>
												<option value="8076">福建省</option>
												<option value="8171">江西省</option>
												<option value="8282">山东省</option>
												<option value="8440">河南省</option>
												<option value="8618">湖北省</option>
												<option value="8732">湖南省</option>
												<option value="8869">广东省</option>
												<option value="9012">广西壮族自治区</option>
												<option value="9136">海南省</option>
												<option value="9161">重庆市</option>
												<option value="9202">四川省</option>
												<option value="9405">贵州省</option>
												<option value="9503">云南省</option>
												<option value="9649">西藏</option>
												<option value="9730">陕西省</option>
												<option value="9848">甘肃省</option>
												<option value="9950">青海省</option>
												<option value="10001">宁夏</option>
												<option value="10029">新疆</option>
												<option value="10144">台湾省</option>
												<option value="10145">澳门</option>
												<option value="10146">香港</option>
											</select>

										</p></li>
									<li><input id="_submit"
										style="margin-left: 120px; height: 27px; width: 97px; border: 0px; background: url(http://www.shanshan360.com/themes/mall/default/styles/default/images/ss_n_btn.png) no-repeat -6px -93px; cursor: pointer;"
										type="button"> <span
										style="height: 22px; background: #fff2f2; border: #ff8080 solid 1px; display: none; padding: 3px 10px 3px 25px; height: 22px; line-height: 22px; margin: 1px 2px;"
										id="warning"></span></li>
								</ul>
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
								class="ssb-weibo"><img src="css/perinfo/ssb-weibo.jpg"
								alt=""></a> <a href="http://t.qq.com/ishanshan360"
								class="ssb-weibot"><img src="css/perinfo/ssb-weibot.jpg"
								alt=""></a> <a href="javascript:void(0);" class="ssb-weixin"
								onmouseover="weixin('visible')" onmouseout="weixin('hidden')"><img
								src="css/perinfo/ssb-weixin.jpg" alt=""><label
								class="mbb-weixin"></label></a> <span class="ntkp ssb-weibot"
								onclick="openChatWindow('');"><img
								src="css/perinfo/ssb-talk.jpg" alt="在线咨询"></span>
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
								</script> <script src="css/perinfo/h.js" type="text/javascript"></script></span>
						</p>
						<p>增值电信业务经营许可证：浙B2-20120027</p>
						<p>企业法人营业执照注册号：331127000009583</p>
						<!-- <a href="http://im.shanshan360.com/SShanIM/ShanShan-1.1.0.11.zip" title="山山客服" class="letserv"></a> -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- <script type="text/javascript">
		$(document)
				.ready(
						function() {
							/*头部用户状态*/
							$
									.ajax({
										url : "http://www.shanshan360.com/index.php?app=cart&act=ajax_get_visitor&jsoncallback=?",
										dataType : "json",
										success : function(data) {
											if (data.done) {
												/*用户登录时的状态*/
												if (data.msg.user_id > 0) {
													$('.sn-login-info')
															.html(
																	"Hi！<a class='sli-item' href='/member' > "
																			+ data.msg.user_name
																					.substring(
																							0,
																							60)
																			+ "</a>！  <a href='/index.php?app=my_points' class='sli-item' >积分(<em>"
																			+ data.msg.jifen
																			+ ")</em></a>  <a href='/message/newpm' class='sli-item' >消息<em>("
																			+ data.msg.new_message
																			+ ")</em></a><a href='/member/logout' class='sn-quit'>退出</a><i class='sn-separator'></i>");
													/*判断登录后会员是否卖家*/
													if (data.msg.store_id != null) {
														$("[ectype='buyers']")
																.hide();
														$("[ectype='seller']")
																.show();
													} else {
														$("[ectype='seller']")
																.hide();
														$("[ectype='buyers']")
																.show();
														$('#carts')
																.html(
																		data.msg.cart_goods_kinds);
													}
												} else /*未登录时的状态*/
												{
													$('.sn-login-info')
															.html(
																	"您好！ "
																			+ data.msg.user_name
																			+ "！<a href='/index.php?app=member&amp;act=login&amp;ret_url=' class='sn-login'>请登录</a> <a href='/index.php?app=member&amp;act=register&amp;ret_url=' class='sn-register'>免费注册</a><i class='sn-separator'></i>");
													$("[ectype='seller']")
															.hide();
													$("[ectype='buyers']")
															.show();
													$('#carts')
															.html(
																	data.msg.cart_goods_kinds);
												}
											}
										}
									});
						})
	</script>
 -->
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
									src="css/perinfo/syewmsz_0.jpg"></a>
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
	<!--  <script type="text/javascript">
		$(document)
				.ready(
						function(e) {
							/*头部用户状态*/
							$
									.ajax({
										url : "http://www.shanshan360.com/index.php?app=cart&act=ajax_get_visitor&jsoncallback=?",
										dataType : "json",
										success : function(data) {
											if (data.done) {
												/*用户登录时的状态*/
												if (!data.msg.store_id) {
													$('.nums').html(
															data.msg.num);
												} else /*未登录时的状态*/
												{
													$('.nums').html('0');

												}
											}
										}
									});

							$("#rightButton").css("right", "0px");

							var button_toggle = true;
							$(".right_ico").live(
									"mouseover",
									function() {
										var tip_top;
										var show = $(this).attr('show');
										var hide = $(this).attr('hide');
										tip_top = show == 'tel' ? 65 : -10;
										button_toggle = false;
										$("#right_tip").css("top", tip_top)
												.show().find(".flag_" + show)
												.show();
										$(".flag_" + hide).hide();

									}).live("mouseout", function() {
								button_toggle = true;
								hideRightTip();
							});

							$("#right_tip").live("mouseover", function() {
								button_toggle = false;
								$(this).show();
							}).live("mouseout", function() {
								button_toggle = true;
								hideRightTip();
							});

							function hideRightTip() {
								setTimeout(function() {
									if (button_toggle)
										$("#right_tip").hide();
								}, 500);
							}

							$("#backToTop").live("click", function() {
								var _this = $(this);
								$('html,body').animate({
									scrollTop : 0
								}, 500, function() {
									_this.hide();
								});
							});

							$(window).scroll(function() {
								var htmlTop = $(document).scrollTop();
								if (htmlTop > 0) {
									$("#backToTop").fadeIn();
								} else {
									$("#backToTop").fadeOut();
								}
							});
						});
	</script>-->

	<script type="text/javascript" src="css/perinfo/ss_002.js"></script>
	<script type="text/javascript" src="css/perinfo/inject_img_ad.js"
		charset="utf-8"></script>
	<script type="text/javascript" src="css/perinfo/ecmall.js"
		charset="utf-8"></script>
	<script type="text/javascript" src="css/perinfo/common.js"
		charset="utf-8"></script>
	<script type="text/javascript" src="css/perinfo/common_head.js"
		charset="utf-8"></script>
	<!--  <script language="javascript" type="text/javascript">
NTKF_PARAM = {
	siteid:"ss_1000",
	settingid: "ss_1000_9999",
	uid: "1899451",
	uname: "nihaovovol",
		userlevel: '0',
	};
function openChatWindow(id){
	if(id != ""){
		NTKF_PARAM.sellerid = "ss_"+id;
		NTKF.im_openInPageChat && NTKF.im_openInPageChat("ss_"+id+"_9999");
	}else{
		NTKF.im_openInPageChat("ss_1000_9999");
	}
}
</script>-->
	<script type="text/javascript" charset="utf-8" src=""></script>
	<script type="text/javascript">
		(function() {
			try {
				var viz = document.createElement("script");
				viz.type = "text/javascript";
				viz.async = true;
				viz.src = ("https:" == document.location.protocol ? "https://cn-tags.vizury.com"
						: "http://cn-tags.vizury.com")
						+ "/analyze/pixel.php?account_id=VIZVRM2706";

				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(viz, s);
				viz.onload = function() {
					try {
						pixel.parse();
					} catch (i) {
					}
				};
				viz.onreadystatechange = function() {
					if (viz.readyState == "complete"
							|| viz.readyState == "loaded") {
						try {
							pixel.parse();
						} catch (i) {
						}
					}
				};
			} catch (i) {
			}
		})();
	</script>


	<script type="text/javascript" src="css/perinfo/ion.js"></script>
	<script>
		$(function() {
			// 隐藏和显示的切换
			$("#LookOrderInfo").click(function() {
				$(".hidden").toggle();
			});
			$("#tk_nice_select").click(function() {
				$(".list_con").toggle();
			});

			$('input[ectype="change_avatar"]').change(function() {

				var src = getFullPath($(this)[0]);
				$('img[ectype="avatar"]').attr('src', src);
				$('input[ectype="change_avatar"]').removeAttr('name');
				$(this).attr('name', 'portrait');
			});

			/*  $("#_submit").click(function(){
				$("#profile_form").submit();
			});  */

			regionInit("region");
			regionInit_1("region_1");
			/* $("#profile_form").validate({
			     errorPlacement: function(error, element){
			         $(element).next(".realname_err").append(error); 
			     },
			     onkeyup : false,
			     rules : {
			         real_name : {
			             required : true
			         },
			     	nick_name : {
			             required : true
			         }
			     },
			     messages : {
			         real_name : {
			             required : '请输入真实的姓名'
			         },
			     	nick_name : {
			             required : '请输入您的昵称'
			         }
			     }
			 }); */

			/*日期选择*/
			var byear = 2017;
			var bmonth = 02;
			var yearid = $('#SYear') //年所在的控件
			var monthid = $('#SMonth') //月所在的控件
			var dayid = $('#SDay') //天所在的控件
			var myDate = new Date();
			var year = myDate.getFullYear();
			//yearid.html('')
			for (var i = year; i >= (year - 30); i--) {
				if (i == byear) {
					yearid.append('<option value="'+i+'" selected="selected">'
							+ i + '</option>');
				} else {
					yearid.append('<option value="'+i+'">' + i + '</option>');
				}
			}

			for (var i = 1; i <= 12; i++) {
				if (i == bmonth) {
					monthid.append('<option value="'+i+'" selected="selected">'
							+ i + '</option>');
				} else {
					monthid.append('<option value="'+i+'">' + i + '</option>');
				}
			}
			daylist();

			monthid.change(function() {
				$('#SDay').html('');
				daylist();
				constellation();

			});
			dayid.change(function() {
				constellation();
			});
			constellation();
		});

		function daylist() {
			var bday = 24;
			var dayid = $('#SDay')
			var yearValue = $('#SYear').val()
			var monthValue = parseInt($('#SMonth').val())
			var dayvalue;
			//$('#SDay').html('')

			if (monthValue == 1 || monthValue == 3 || monthValue == 5
					|| monthValue == 7 || monthValue == 8 || monthValue == 10
					|| monthValue == 12) {
				dayvalue = 31
			} else if (monthValue == 4 || monthValue == 6 || monthValue == 11
					|| monthValue == 9) {
				dayvalue = 30
			} else if (monthValue == 2) {

				if (yearValue % 4 == 0
						&& (yearValue % 100 != 0 || yearValue % 400 == 0)) { //闰年
					dayvalue = 29
				} else {
					dayvalue = 28
				}

			}

			for (var i = 1; i <= dayvalue; i++) {
				if (i == bday) {
					dayid.append('<option selected="selected" value="'+i+'">'
							+ i + '</option>');
				} else {
					dayid.append('<option value="'+i+'">' + i + '</option>');
				}
			}
		}
		function constellation() {
			var mon = $('#SMonth').val();
			var d = $('#SDay').val();
			if (mon == 1 && d >= 20 || mon == 2 && d <= 18) {
				$("#constellation").val('shuiping');
			}
			if (mon == 2 && d >= 19 || mon == 3 && d <= 20) {
				$("#constellation").val('shuangyu');
			}
			if (mon == 3 && d >= 21 || mon == 4 && d <= 19) {
				$("#constellation").val('baiyang');
			}
			if (mon == 4 && d >= 20 || mon == 5 && d <= 20) {
				$("#constellation").val('jingniu');
			}
			if (mon == 5 && d >= 21 || mon == 6 && d <= 21) {
				$("#constellation").val('shuangzi');
			}
			if (mon == 6 && d >= 22 || mon == 7 && d <= 22) {
				$("#constellation").val('juxie');
			}
			if (mon == 7 && d >= 23 || mon == 8 && d <= 22) {
				$("#constellation").val('shizi');
			}
			if (mon == 8 && d >= 23 || mon == 9 && d <= 22) {
				$("#constellation").val('chunv');
			}
			if (mon == 9 && d >= 23 || mon == 10 && d <= 22) {
				$("#constellation").val('tianping');
			}
			if (mon == 10 && d >= 23 || mon == 11 && d <= 21) {
				$("#constellation").val('tianxie');
			}
			if (mon == 11 && d >= 22 || mon == 12 && d <= 21) {
				$("#constellation").val('renma');
			}
			if (mon == 12 && d >= 22 || mon == 1 && d <= 19) {
				$("#constellation").val('moxie');
			}
		}

		function hide_error() {
			$('.region').find('.error').hide();
		}

		//提交
		/* $('#_submit').click(function(){

		

		 }); */
		$(document)
				.ready(
						function() {
							$('#_submit')
									.click(
											function() {
												var html = '<div class="msg-full"><p class="ok">修改个人信息成功。</p></div> ';
												var nick_name = $('#nick_name')
														.val();
												if (nick_name == '') {
													msg("请输入您的昵称");
													return false;
												}
												var real_name = $('#real_name')
														.val();
												if (real_name == '') {
													msg("请输入真实的姓名");
													return false;
												}
												$
														.ajax({
															url : 'index.php?app=member&act=profile',
															data : $(
																	'#profile_form')
																	.serialize(),
															type : "post",
															cache : false,
															success : function(
																	data) {
																$('#result')
																		.after(
																				html);
																setTimeout(
																		reload,
																		1000);
																//	alert('修改个人信息成功');
																//window.location.reload(); 
															}
														});
												return false;
											});
						});

		function reload() {
			window.location.reload();
		}

		function msg(msg) {
			$('#warning').show();
			$('#warning').text(msg);
			window.setTimeout(function() {
				$('#warning').hide();
			}, 4000)
		}
	</script>
</body>
</html>