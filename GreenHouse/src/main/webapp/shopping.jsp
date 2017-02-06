<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta charset="utf-8">
<link href="css/public/topshan.css" rel="stylesheet" type="text/css">
	<link href="css/public/common.css" rel="stylesheet" type="text/css">
		<title>确认购物清单 - 山山商城_自媒体视频直播购物平台</title> <script
			type="text/javascript" async="" src="js/public/mv.js"></script>
		<script type="text/javascript" async="" src="js/public/mba.js"></script>
		<script type="text/javascript" async="" src="js/public/mvl.js"></script>
		<script type="text/javascript" async="" src="js/public/pixel.php"></script>
		<script type="text/javascript" async="" charset="utf-8"
			src="js/public/ntkfstat.js"></script>
		<script charset="utf-8" src="js/public/v.js"></script>
		<script type="text/javascript" src="js/public/jquery-1.7.1.min.js"
			charset="utf-8"></script>
		<script type="text/javascript" src="js/public/ss.index-V2.4.0.js"
			charset="utf-8"></script>
		<script type="text/javascript" src="js/public/shopping.js"
			charset="utf-8"></script>
		<script type="text/javascript" async="async" charset="utf-8"
			src="js/public/zh_cn.js" data-requiremodule="lang"></script>
		<script type="text/javascript" async="async" charset="utf-8"
			src="js/public/chat.in.js" data-requiremodule="chatManage"></script>
		<script type="text/javascript" async="async" charset="utf-8"
			src="js/public/mqtt31.js" data-requiremodule="MQTT"></script>
		<script type="text/javascript" async="async" charset="utf-8"
			src="js/public/mqtt.chat.js" data-requiremodule="Connection"></script>
		<link href="css/public/shopping.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="nTalk_post_hiddenElement"
		style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
	<div class="ui-header ">
		<div class="index_tbar1 "
			style="color: #666666; font-family: Arial,&amp; amp; #39; &amp; amp; #39;; font-size: 12px;">
			<div class=" grid1 ">
				<div style="cursor: pointer;" class="left1 public_collect"
					onclick="addBookmark()">
					<img src="./shopping_files/icon-star.gif">收藏山山 
				</div>
				<div class="rig">
					<span class="left1 public_name pulic_sn-login-info">Hi！<a
						class="sli-item" href="#"> ssgmylrktk</a>！ <a href="#"
						class="sli-item">积分(<em>100)</em></a> <a href="#" class="sli-item">消息<em>(0)</em></a><a
						href="#" class="sn-quit">退出</a><i class="sn-separator"></i></span> <span
						class="left1 op"></span>
					<ul id="navv" class="left1">
						<li class="line">|</li>
						<li class="col-conn">
							<div class="ui-dropdown11 login-menu">
								<a href="#">我的订单</a>
							</div>
						</li>

						<li class="line1">|</li>
						<li class="col-conn">
							<div class="ui-dropdown11">
								<a target="_blank" href="#" class="ui-dropdown-hd11">客户服务 <b></b></a>
								<ul class="unstyled frr ui-dropdown-menu11 ques">
									<li><a target="_blank" href="#">商家入驻</a></li>
									<li><a target="_blank" href="#">常见问题</a></li>
									<li><a target="_blank" href="#">投诉维权</a></li>
									<li><a target="_blank" href="#">在线咨询</a></li>
									<li><a target="_blank" href="#">保障天堂</a></li>
									<li><a target="_blank" href="#">山山品控</a></li>
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
				<a href="#"><img width="380px" height="100px"
					src="./shopping_files/site_logo.jpg"></a>
			</div>

			<div class="left1">
				<form target="_blank" onsubmit="return fuzhi_key();" method="get"
					id="keyword_form" action="http://search.shanshan360.com/index.php">
					<div class="search-bar11 left1">
						<div class="form">
							<input type="text" class="text left1" style="color: #666666"
								name="keyword" id="keyword" value="黑面菇" accesskey="s"
								tabindex="9" autocomplete="off" autofocus="true"
								x-webkit-speech="" x-webkit-grammar="builtin:search"> <input
								type="submit" value="搜索" class="button cur left1">
						</div>
					</div>
				</form>
				<div class="clear1 hotwordss left1">
					<strong>热门搜索：</strong> <a href="#" target="_blank">青钱柳原叶</a> <a
						href="#" target="_blank">土家鸡</a> <a href="#" target="_blank">畲葛山黄粿</a>
				</div>
			</div>
			<div class="top_button1 left1">
				<a href="#"><div class="left1 top-bt1">
						<img src="./shopping_files/icon-meber.jpg">我的山山 
					</div></a>
				<div class="left1  ui-dropdown22">

					<a target="_blank"
						href="./shopping_files/确认购物清单 - 山山商城_自媒体视频直播购物平台.html"
						class="ui-dropdown-hd22">
						<div class="top-bt1 left1">
							<div class="left1">
								<img src="./shopping_files/icon-buy2.png">
							</div>
							<div class="left1">购物车</div>
							<div id="carts" class="num-bg left1">1</div>
						</div>
					</a>
					<ul class="unstyled frr ui-dropdown-menu22">
						<li>
							<div class="con left1 hide">
								<div class="left1">
									<img src="./shopping_files/b-y.jpg">
								</div>
								<div class="left1">购物车中还没有商品，赶紧选购吧！</div>
							</div> <font class="fyh f14 ml5 left1 show_cart">最新加入的商品</font>
							<div class="left1left1 clear1 pro-list1" id="pro-list">
								<div class="left1">
									<div class="tit carts_177493">
										<div class="left1 ml5">小计：￥22.00</div>
									</div>
									<div class="pro-con1 left1 carts_177493">
										<span class="left1 img"><img
											style="width: 50px; height: 50px;"
											src="./shopping_files/small_201610201737159391.jpg"></span> <span
											class="left1 pro-name1 lh18">丽水山耕 锥栗200g</span> <span
											class="left1  pri lh18"><p>
												<font class="cff6 f14">￥22.00</font>*1
											</p>
											<p class="ter">
												<a href="javascript:;" cart_id="177493" class="delete_cart">删除</a>
											</p></span>
									</div>
								</div>
							</div>
							<div class="js1 clear1 left1">
								<p>
									共 <font class="cff6">1</font>
									件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 共计<font class="cff6 ">￥</font><font
										class="f-s cff6 f18 t_money_0">22.</font> <font
										class="f13 f-s cff6 t_money_1">00</font>
								</p>
								<p class="ter">
									<a target="_blank"
										href="./shopping_files/确认购物清单 - 山山商城_自媒体视频直播购物平台.html">
										<button type="button" class="choose_btn1  f14 fyh">去购物车结算</button>
									</a>
								</p>
							</div>

						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<link href="css/public/common-V2.3.0.css" rel="stylesheet"
		type="text/css">
		<link href="css/public/specialSell-V2.3.0.css" rel="stylesheet"
			type="text/css">
			<link href="css/public/width1190-V2.3.0.css" rel="stylesheet"
				type="text/css">
				<link href="css/public/ecmall.css" rel="stylesheet" type="text/css">
					<link href="css/public/ckgwc.css" rel="stylesheet" type="text/css">
						<script type="text/javascript" src="js/public/index.php"></script>
						<script type="text/javascript"
							src="js/public/jquery-V2.3.0.min.js" charset="utf-8"></script>
						<script type="text/javascript" src="js/public/jquery-v1.7.js"
							charset="utf-8"></script>
						<script type="text/javascript" src="js/public/jquery.lazyload.js"
							charset="utf-8"></script>
						<script type="text/javascript" src="js/public/ss.index-V2.4.0.js"
							charset="utf-8"></script>

						<div class="shanshanNav">
							<div class="shanshanNav-con">
								<div class="clearfix">
									<ul class="ssNavcon-main">
										<li><a class="" href="#">首页</a></li>
										<li><a href="#" target="_blank">山山美食馆</a></li>
										<li><a href="#" target="_blank">畲乡景宁馆</a></li>
										<li><a href="#" target="_blank">基地视频</a></li>
										<li><a href="#" target="_blank">实况直播</a></li>
										<li><a href="#" target="_blank">景宁直播中心</a></li>
										<li style="display: none;"><a href="#" target="_blank">商家入驻</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="content">
							<div class="mj_con" style="width: 100%;">

								<div class="order_nav">
									<ul>
										<li><span class="order_current">1.查看购物车</span><span><img
												src="./shopping_files/nav_li_span2.gif" alt=""></span></li>
										<li><span class="order_none">2.确认订单信息</span><span><img
												src="./shopping_files/nav_li_span3.gif" alt=""></span></li>
										<li><span class="order_none">3.付款到山山商城</span><span><img
												src="./shopping_files/nav_li_span3.gif" alt=""></span></li>
										<li><span class="order_none">4.确认收货</span><span><img
												src="./shopping_files/nav_li_span3.gif" alt=""></span></li>
										<li><span class="order_none order_none2">5.评价</span></li>
									</ul>
								</div>
								<div class="status_bar">
									<div class="ck_hd"></div>
								</div>
								<div class="cart"
									style="position: relative; z-index: 10; width: 950px; margin: 0 auto;">
									` `
									<table cellspacing="0" cellpadding="0" class="order-table">
										<thead>
											<tr>
												<th class="s-chk"><span class="select-all"> <input
														type="checkbox" onclick="all_select(this)" class="all_sel"
														checked="checked"> <label for="floatBarSelectAll">全选</label></span>
													<span class="del-items mg-left" id="batchAction"
													style="position: absolute; width: 50px; margin-left: 5px; left: 60px;">
														<a href="javascript:;" name="id"
														onclick="drop_batch(this)"
														presubmit="confirm(&#39;你确定要删除它吗&#39;);"
														uri="index.php?app=cart&amp;act=piliang_drop">批量删除</a>
												</span></th>
												<th class="s-title">店铺宝贝</th>
												<th class="s-point">商城积分</th>
												<th class="s-price">单价(元)</th>
												<th class="s-amount">数量</th>
												<th class="s-agio">优惠</th>
												<th class="s-total">小计(元)</th>
												<th class="s-del"></th>
											</tr>

											<tr class="zhuanti" style="display: none;">
												<td colspan="8"><span class="promo-info"> <input
														type="checkbox" id="ZhuanTi"> <label for="ZhuanTi">专题商品</label></span>
												</td>
											</tr>
										</thead>
									</table>
									<table cellspacing="0" cellpadding="0" class="order-table">
										<tbody>
											<tr class="shop">
												<td colspan="2"><input type="checkbox" id="1898538"
													class="J_forShop J_MakePoint store_sel"
													onclick="store_select(this);" tag="22" checked="checked">
														<span class="seller"> <span>店铺：</span><a href="#">丽水山耕旗舰店</a>
															<span class="sstalking-11" style="display: inline-block;"
															title="点击这里给我发消息"></span>
													</span></td>
												<td colspan="6" class="promo-info">
													<div class="scrolling-container">
														<ul class="scrolling-promo-hint"
															id="J_ScrollingPromoHint_1898538">
														</ul>
													</div>
												</td>
											</tr>

										</tbody>
										<tbody class="J_ItemBody">
											<tr class="selected record_list" id="cart_item_177493">
												<td class="s-chk"><input type="checkbox"
													rec_id="177493"
													onclick="reload_cart_price(this,1898538,177493);"
													class="ck_item_1898538" name="cartIds" checked="checked"
													id="cartIds189853849951" value="49951"></td>
												<td class="s-title">
													<div
														style="width: 250px; height: 70px; position: relative;">
														<a href="#" target="_blank"> <img
															src="./shopping_files/small_201610201737159391.jpg"
															alt="丽水山耕 锥栗200g" class="itempic "></a>
														<div class="lookb">
															<a
																href="javascript:preview_theme('data/files/store_1898538/goods_35/small_201610201737159391.jpg');">查看大图</a>
														</div>
														<a href="#" target="_blank">丽水山耕 锥栗200g</a><br> <span>规格:锥栗
														</span>
															<div class="xb">
																<span>保障: </span> <a class="xb-" target="_blank"
																	href="#"></a>
															</div>
													</div>
												</td>
												<td class="s-point"><em><span
														id="item177493_goods_integral" tag="22">22</span></em></td>
												<td class="s-price "><del>¥40.00</del><em>¥22.00</em><span>省¥18.00元</span></td>
												<td class="s-amount "><img
													src="./shopping_files/subtract.gif"
													onclick="decrease_quantity(177493);" width="12" height="12">
														<input id="input_item_177493" value="1" orig="1"
														changed="1"
														onkeyup="change_quantity(1898538, 177493, 50047, 50097, this);"
														class="text1 width3" type="text"> <img
															src="./shopping_files/adding.gif"
															onclick="add_quantity(177493);" width="12" height="12"></td>
												<td class="s-agio"><span id="discountList_177493">
														<span class="m-promo-item"> <a
															href="javascript:viod(0)" active="卖家促销" ever_dif="18"
															title="省18元：卖家促销..."><img
																src="./shopping_files/cuxiao.png"></a>
													</span>
												</span></td>
												<td class="s-total"><span class="price2"
													id="item177493_subtotal" tag="22">¥22.00</span></td>
												<td class="s-del"><a class="fav" href="javascript:;"
													onclick="move_favorite(1898538, 177493, 49951);"><font
														color="#000000">收藏</font></a> <a class="del"
													href="javascript:;"
													onclick="drop_cart_item(1898538, 177493);"><font
														color="#000000">删除</font></a></td>
											</tr>
										</tbody>
									</table>
									<div class="comb-pay clearfix fixed-bottom" id="total_pay"
										style="box-shadow: 0; position: static; left: 0; width: 100%;">
										<div class="float-bar clearfix">
											<span class="select-all"> <input type="checkbox"
												onclick="all_select(this)" class="all_sel" checked="checked">
													<label for="floatBarSelectAll">全选</label></span> <span
												class="del-items mg-left"> <a href="javascript:;"
												name="id" onclick="drop_batch(this)"
												presubmit="confirm(&#39;你确定要删除它吗&#39;);"
												uri="index.php?app=cart&amp;act=piliang_drop">批量删除</a>
											</span> <span class="total-price">商品总价(不含运费)：<strong
												class="fontsize1" id="cart_amount">¥22.00</strong></span> <a
												name="goods_id" class="btn J_MakePoint submit_order"
												onclick="submit_order();" is_post="1"
												uri="index.php?app=order&amp;goods=cart">结 算</a>
										</div>
									</div>
								</div>


								<div class="interested" style="width: 950px; margin: 0 auto;">
									<div class="item-list-hd">
										<h3 class="tab_title">您可能感兴趣的宝贝…</h3>
										<ul class="item_tab clearfix">
											<li id="item_tabli1" class="item_current"><span>猜你喜欢的</span></li>
											<li id="item_tabli2" class=""><span>最近浏览过的</span></li>
											<li id="item_tabli3" class=""><span>最近收藏的</span></li>
										</ul>
									</div>
									<div class="item_tab_div" id="item_tab_div1" style="display: block;">
										<ul class=" pro_list_item " ectype="current_display_mode">
											<li>
												<h2>
													<a href="#" target="_blank"><img
														src="./shopping_files/small_201305141200288333.jpg"
														width="170" height="170"></a>
												</h2>
												<div class="attribute">
													<div class="title">
														<a title="" target="_blank" href="#">九洲韵 茉莉 特级花草茶 茉莉花茶
															茶叶 茉莉花茶浓香</a>
													</div>
													<div class="price">
														<p>
															价格:<em class="J_Price">¥36.00</em>元
														</p>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<div class="item_tab_div" id="item_tab_div2"
										style="display: none;">
										<ul>
											<li>
												<h2>
													<a href="#" target="_blank"><img
														src="./shopping_files/small_201610201737159391.jpg"
														width="170" height="170"></a>
												</h2>
												<div class="attribute">
													<div class="title">
														<a title="" target="_blank" href="#">丽水山耕 锥栗200g</a>
													</div>
													<div class="price">
														<p>
															价格:<em class="J_Price">¥22.00</em>元
														</p>
													</div>
												</div>
											</li>
											<li>
												<h2>
													<a href="#" target="_blank"><img
														src="./shopping_files/small_201606121425356293.jpg"
														width="170" height="170"></a>
												</h2>
												<div class="attribute">
													<div class="title">
														<a title="" target="_blank" href="#">金信香菇干货特产食用菌
															景宁土特产蘑菇 原木冬菇100g...</a>
													</div>
													<div class="price">
														<p>
															价格:<em class="J_Price">¥14.00</em>元
														</p>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<div class="item_tab_div" id="item_tab_div3"
										style="display: none;">
										<ul>
										</ul>
									</div>
								</div>

							</div>
						</div>
						<form
							action="http://www.shanshan360.com/index.php?app=order&goods=cart"
							id="orderform" method="post" style="display: none"></form>
						<div class="footer-wrap">
							<div class="noindex-space"></div>
							<div class="noindexfooter">
								<div class="index-footer">
									<div class="footer">
										<div class="shansahn-info clearfix">
											<dl>
												<dt>消费者保障</dt>
												<dd>
													<a href="#" target="_blank"><em>·</em>保障范围</a>
												</dd>
												<dd>
													<a href="#" target="_blank"><em>·</em>退货退款流程</a>
												</dd>
												<dd>
													<a href="#" target="_blank"><em>·</em>消费者维权中心</a>
												</dd>
											</dl>
											<dl>

												<dt>新手上路</dt>
												<dd>
													<a href="#" target="_blank"><em>·</em>新手学堂</a>
												</dd>
												<dd>
													<a href="#" target="_blank"><em>·</em>交易安全</a>
												</dd>
												<dd>
													<a href="#" target="_blank"><em>·</em>消费警示</a>
												</dd>
												<dd>
													<a href="#" target="_blank"><em>·</em>山山服务热线</a>
												</dd>
											</dl>
											<dl id="pay">
												<dt>支付方式</dt>
												<dd>
													<a href="#" target="_blank"><em>·</em>网上银行</a>
												</dd>
												<dd>
													<a href="#" target="_blank"><em>·</em>在线支付</a>
												</dd>
											</dl>
											<dl id="service">
												<dt>商家服务</dt>
												<dd>
													<a href="#" target="_blank"><em>·</em>商家入驻</a>
												</dd>
												<dd>
													<a href="#" target="_blank"><em>·</em>山山商城规则</a>
												</dd>
											</dl>
											<a href="#" class="shanshan-homeico"></a> <span class="shanshan-feedback ntkp">山山商城意见反馈</span>
										</div>
										<div id="copyright">
											<p class="cR-nav">
												<a href="#" target="_blank">山山简介</a> <a href="#"
													target="_blank">诚聘英才</a> <a href="#" target="_blank">联系我们</a>
												<a href="#" target="_blank">网站地图</a> <span>关注山山商城：</span> <a
													href="#" class="ssb-weibo"><img
													src="./shopping_files/ssb-weibo.jpg" alt=""></a> <a
													href="http://t.qq.com/ishanshan360" class="ssb-weibot"><img
													src="./shopping_files/ssb-weibot.jpg" alt=""></a> <a
													href="javascript:void(0);" class="ssb-weixin"><img
													src="./shopping_files/ssb-weixin.jpg" alt=""><label
														class="mbb-weixin"></label></a> <span class="ntkp ssb-weibot"><img
													src="./shopping_files/ssb-talk.jpg" alt="在线咨询"></span>
											</p>
											<p>
												Copyright©2011-2016shanshan360.com 浙江山山网络科技股份有限公司 版权所有<span
													class="statistics_code"> <script
														type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5a250090ff571028094607805af27985' type='text/javascript'%3E%3C/script%3E"));
</script> <script src="./shopping_files/h.js" type="text/javascript"></script></span>
											</p>
											<p>增值电信业务经营许可证：浙B2-20120027</p>
											<p>企业法人营业执照注册号：331127000009583</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="rightButton" style="right: 0px;">
							<ul id="right_ul">
								<li id="right_kf" onclick="openChatWindow(&#39;&#39;);"></li>
								<a target="_blank" href="./shopping_files/shopping.jsp"><li
									id="right_gw">
										<div class="nums">1</div>
								</li></a>
								<li id="right_weixin" class="right_ico"></li>
								<li id="right_tip" style="margin-top: 90px" class="png">
									<div class="con ovf">
										<div class="fl arr" style="top: 80px">
											<div class="fl arr_i"></div>
										</div>
										<ul>
											<li>
												<p>
													<a href="" target="_brank"><img
														style="width: 118px; height: 118px;"
														src="./shopping_files/syewmsz_0.jpg"></a>
												</p>
												<p class="f14 fyh tec">
													<a href="" target="_brank"><font color="#5B5B5B">山山商城微信</font></a>
												</p>
											</li>
										</ul>
									</div>
								</li>
								<li id="right_sc" onclick="addBookmark()"></li>
								<li><div id="backToTop" style="display: none;">
										<a href="javascript:;" onfocus="this.blur();"
											class="backToTop_a png"></a>
									</div></li>
							</ul>
						</div>
						<script type="text/javascript" src="js/public/ss.common-V2.3.0.js"></script>
						<script type="text/javascript" src="js/public/inject_img_ad.js"
							charset="utf-8"></script>
						<script type="text/javascript" src="js/public/ecmall.js"
							charset="utf-8"></script>
						<script type="text/javascript" src="js/public/common.js"
							charset="utf-8"></script>
						<script type="text/javascript" src="js/public/common_head.js"
							charset="utf-8"></script>
						<script type="text/javascript" charset="utf-8" src=""></script>
						<script type="text/javascript" src="js/public/cart.js"
							charset="utf-8"></script>
						<script type="text/javascript" src="js/public/EmbedCS.js"></script>
</body>
</html>