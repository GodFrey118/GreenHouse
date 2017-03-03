<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta charset="utf-8">

<link href="css/public/topshan.css" rel="stylesheet" type="text/css">
<link href="css/public/common.css" rel="stylesheet" type="text/css">
<link href="css/public/order_detail.css" rel="stylesheet" type="text/css">
<link href="css/public/buy_ordergoods.css" rel="stylesheet" type="text/css">   
<title>用户中心 - 我的交易</title>
<meta name="keywords" content="山山商城,网上购物平台,农产品网购平台,视频直播购物平台，农产品网上购物平台,休闲零食,干果炒货,茶叶,食用菌,粮油,购物商城,我要买,我要卖,免费开店">
<script type="text/javascript" src="js/public/pixel.php"></script>
<script type="text/javascript" charset="utf-8" src="js/public/ntkfstat.js"></script>
<script charset="utf-8" src="js/public/v.js"></script>
<script type="text/javascript" src="js/public/jquery-1.7.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/ss.index-V2.4.0.js" charset="utf-8"></script> 

<script type="text/javascript">

var timeout         = 500;
var closetimer		= 0;
var ddmenuitem      = 0;

function nav_open()
{	nav_canceltimer();
	nav_close();
	ddmenuitem = $(this).find('ul').eq(0).css('visibility', 'visible');}

function nav_close()
{if(ddmenuitem) ddmenuitem.css('visibility', 'hidden');}

function nav_timer()
{closetimer = window.setTimeout(nav_close, timeout);}

function nav_canceltimer()
{	if(closetimer)
	{	window.clearTimeout(closetimer);
		closetimer = null;}}

$(document).ready(function()
{	$('#navv > li').bind('mouseover', nav_open);
	$('#navv > li').bind('mouseout',  nav_timer);});

document.onclick = nav_close;
</script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/chat.in.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/mqtt31.js" data-requiremodule="MQTT"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/mqtt.chat.js" data-requiremodule="Connection"></script>
</head>

<body>
<div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
<div class="ui-header ">
<div class="index_tbar1 " style="color: #666666;font-family: Arial,&#39;&#39;;font-size: 12px;">
      <div class=" grid1 ">
           <div style="cursor: pointer;" class="left1 public_collect" onclick="addBookmark()">
           <img src="user_trade_files/icon-star.gif">收藏山山
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
                        <li class="col-conn">
                          <div class="ui-dropdown11 login-menu"><a href="user_trade_files/用户中心 - 我的交易.html">我的订单</a>  </div>
                        </li>
                		                    <li class="line">|</li>
	                    <li class="col-conn">
	                      <div class="ui-dropdown11">
	                          <a href="#" class="ui-dropdown-hd11">收藏夹 <b></b></a>
	                          <ul class="unstyled frr ui-dropdown-menu11">
	                              <li><a href="#">收藏的宝贝</a></li>
	                              <li><a href="#">收藏的店铺</a></li>
	                          </ul>
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
          	            <a href="#"><img width="380px" height="100px" src="user_trade_files/site_logo.jpg"></a>
                      </div>
          
          <div class="left1">
          		<form target="_blank" onsubmit="return fuzhi_key();" method="get" id="keyword_form" action="http://search.shanshan360.com/index.php">
                <div class="search-bar11 left1">
                     <div class="form">
                         <input type="text" class="text left1" style="color: #666666 " name="keyword" id="keyword" value="黑面菇" accesskey="s" tabindex="9" autocomplete="off" autofocus="true" x-webkit-speech="" x-webkit-grammar="builtin:search"> 
	                     <input type="submit" value="搜索" class="button cur left1">
                     </div>
                </div> 
                </form>
                <div class="clear1 hotwordss left1">
                     <strong>热门搜索：</strong>	
		            			<a href="#" target="_blank">青钱柳原叶</a>		            				            			             	
		            			<a href="#" target="_blank">土家鸡</a>
		            			<a href="#" target="_blank">畲葛山黄粿</a>
		        </div>
          </div>
          
          <div class="top_button1 left1">
                <a href="#"><div class="left1 top-bt1"><img src="user_trade_files/icon-meber.jpg">我的山山 </div></a>
               <div class="left1  ui-dropdown22">
               
              
               <ul class="unstyled frr ui-dropdown-menu22">
                   <li>
                   <div class="con left1 hide">
                        <div class="left1"><img src="user_trade_files/b-y.jpg"></div>
                        <div class="left1">购物车中还没有商品，赶紧选购吧！</div>
                   </div>
                   
                   <font class="fyh f14 ml5 left1 show_cart" style="display: none;">最新加入的商品</font>
                         
                   </li>
                </ul>
               </div>
          </div>
     </div>
</div>

<link href="css/public/common-V2.3.0.css" rel="stylesheet" type="text/css">
<link href="css/public/specialSell-V2.3.0.css" rel="stylesheet" type="text/css">
<link href="css/public/width1190-V2.3.0.css" rel="stylesheet" type="text/css">
<link href="css/public/common.css" rel="stylesheet" type="text/css">
<link href="css/public/user.css" rel="stylesheet" type="text/css">                                                                                                 
<script type="text/javascript" src="js/public/index.php"></script>
<script type="text/javascript" src="js/public/jquery-V2.3.0.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/imglazyload.loadscript.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/menu.js"></script>
<script type="text/javascript" src="js/public/member.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="js/public/dialog.js" id="dialog_js"></script>
<link href="css/public/dialog.css" rel="stylesheet" type="text/css">
<script charset="utf-8" type="text/javascript" src="js/public/jquery.ui.js"></script>
<script charset="utf-8" type="text/javascript" src="js/public/zh-CN.js"></script>
<script charset="utf-8" type="text/javascript" src="js/public/jquery.validate.js"></script>
<link rel="stylesheet" type="text/css" href="css/public/jquery.ui.css">
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
		    	<li style="display: none;"><a href="#" target="_blank">商家入驻</a></li>			    			    	           				    	           				    	           	</ul>
        </div>
    </div>
</div>

    <div class="content">
    	<div class="con_main">        	 
             <div class="buyer_center">
             	<div class="bc_nav">
                	<div class="bc_nav_l fl">
<span>您现在的位置:</span>	
		<a href="#">首页</a><span> &gt; </span> 
		    		<a href="#" class="bcv_current">我是买家</a>
			
</div>                </div>
                
                <div class="bc_content">
                	<div class="bcc_wrap">
                	<div class="bcc_wrap_title">我是买家</div>
<ul>
     <li class="mainmenu">
    <dl>
      <dt>
        	
         
                  	<a class="mntitle" href="#">我的购物车</a>
         	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>       
            <span class="expanded_ico"></span>
            <a class="mntitle" href="#">我的交易</a>
      </dt>
         <dd class="my_trade" style="display:block;">
             <ul class="childul">
                <li><a href="user_trade.jsp" class="curitem">已经购买的商品</a></li>
                <li><a href="#">评价管理</a></li>
                <li><a href="#">我的团购</a></li>
             </ul>
      </dd>
        </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
         <a class="mntitle" href="#" style="background: rgb(231, 247, 229);">我的收藏</a>	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
         <a class="mntitle" href="#" style="background: rgb(231, 247, 229);">我是会员</a>  	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
         <a class="mntitle" href="#">购买过的店铺</a>	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
         <a class="mntitle" href="#">我的积分</a>
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
        <a class="mntitle" href="#">我的优惠券</a>    	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
         <span class="collapsed_ico"></span>
         <a class="mntitle" href="#">安全中心</a>	
      </dt>
         <dd class="safety_center" style="display:none;">
             <ul class="childul">
                 <li><a href="#">登录密码</a></li>
                 <li><a href="#">支付密码</a></li>
                 <li><a href="#">邮箱验证</a></li>
                 <li><a href="#">手机验证</a></li>
                 <li><a href="#">安全提问</a></li>
             </ul>
      </dd>
        </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>        
         <span class="expanded_ico"></span>
         <a class="mntitle" href="#">我的账户</a> 	
      </dt>
         <dd class="my_account" style="display:block;">
             <ul class="childul">
                <li><a href="#">个人资料</a></li>
                <li><a href="#">充值</a></li>
                <li><a href="#">我的地址</a></li>
                <li><a href="#">短消息</a></li>
                <li><a href="#">好友</a></li>
             </ul>
      </dd>
        </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
         <span class="collapsed_ico"></span>
         <a class="mntitle" href="javascript:;">退款维权</a>    	
      </dt>
         <dd class="refund_rights" style="display:none;">
             <ul class="childul">
                 <li><a href="#">退款管理</a></li>
                 <li><a href="#">维权管理</a></li>
             </ul>
      </dd>
        </dl>
  </li>
  </ul>
  </div>
      <div class="fr bcc_main">            	
           <div class="bought_products">
              <div class="bp_nav">
                 <div class="bp_nav_inside">
	 	 	 		<a href="#">我的交易</a><span> &gt; </span> 
		 	 	    <a class="bpv_current">已购买的商品</a>	
</div>

</div>
<div class="trade_clock">我的交易提醒：<a href="#">待付款（<em id="a1">3 </em>）</a> <a href="#">待确认收货（<em> 0 </em>）</a> <a href="#">待评价（<em> 0 </em>）</a>
  </div>
  <div class="bp_allorder">	
              <div class="msg ash-bin">
              <a class="J_MakePoint" href="#">订单回收站</a>
              <img src="user_trade_files/new.png" alt="" border="0" class="new-flag">
              </div>
	             <ul class="tabpanel clearfix">
                    <li class="current">
                      <div class="ordertype" id="">                                  
                           <a href="javascript:void(0);" class="ordertype-default">全部订单<i class="trigger"></i></a>
                           <p class="ordertype-whole" style="display:none;">
                           <a href="#">全部订单</a>
                           <a href="#">三个月内</a>
                           <a href="#">半年内</a>
                           <a href="#">一年内</a>                                                
                           </p>	
                       </div>
                     </li>
                     <li class="leading-tip">
                     <div class="tm-bubble">
                          <p class="title">三个月前的订单也在"全部订单"里哦！查购物历史，更方便！</p>
                          <s class="triangle"></s>
                     </div>    
                     </li>
                     <div class="clear"></div>
                     </ul>
                       <form method="get" id="J_QueryConditionForm" class="skin-gray clearfix bought-search">
                                    <label>商品名称：</label>
                                    <input type="text" maxlength="30" value="" name="goods_name" id="J_BaobeiName" style="width:320px;">
                                    <button type="submit" class="J_MakePoint button search-btn">搜索</button>
                                    <span id="J_SearchBoxToggle">
                                        <a class="more-filter" href="javascript:void(0);">更多筛选条件</a>
                                        <a class="less-filter" href="javascript:void(0);">精简筛选条件</a>
                                    </span>
                                    <a style="margin-left:170px;" href="http://www.shanshan360.com/index.php?app=my_money&act=buyer">查看操作日志</a>
                                    <ul class="search-filter" id="J_MoreControl">
                                        <li class="col1"> 
                                            <label>成交时间：</label>
							                                            从 <input type="text" value="" name="add_time_from" id="add_time_from" size="8" class="hasDatepicker">
							                                            到 <input type="text" value="" name="add_time_to" id="add_time_to" size="8" class="hasDatepicker">
                                        </li>
                                        <li class="col2">
                                        	<label for="J_NickName"> 卖家昵称：</label>&nbsp;&nbsp;<input type="text" value="" id="J_NickName" size="12" name="seller_name">
                                        </li>
                                        <li class="col3">
                                            <label>评价状态：</label>
                                            <select name="evalu_statu" class="J_NiceSelect" id="J_ReviewStatus">
                                                <option value="all">全部</option><option value="no_evaluate">未评价</option><option value="already_evaluate">已评价</option>                                            </select>
                                        </li>
                                        <li class="col1 ">
                                            <label>交易状态：</label>
                                            <select name="type" class="J_NiceSelect" id="J_TradeStatus">
                                                <option value="all">所有订单</option><option value="pending">待付款的</option><option value="accepted">待发货的</option><option value="shipped">已发货的</option><option value="finished">已完成的</option><option value="canceled">已取消的</option><option value="refund">退款中的</option>                                            </select>
                                        </li>
                                        <input type="hidden" name="page" value="">
                                  
                                        </ul>
                                        <input type="hidden" name="app" value="buyer_order">
                    					<input type="hidden" name="act" value="index">
                                </form>
      
                                <div class="baobei_order">
                                <form id="form_all_confirm" method="post" action="http://www.shanshan360.com/index.php?app=cashier" target="_blank">
                                	<table cellpadding="0" cellspacing="0" border="0" class="baobei_order_table">
                                    	                                  	
                                    	<tbody><tr class="col-name">
                                            <th></th>
                                            <th class="baobei">商品</th>
                                            <th class="price">单价(元)</th>
                                            <th class="quantity">数量</th>
                                            <th class="after-service">售后</th>
                                            <th class="amount">实付款(元)</th>
                                            <th class="trade-status">
                                                <div class="trade-status">
                                                    <select name="type" id="J_TradeStatusHandle">
                                                        <option value="all">所有订单</option><option value="pending">待付款的</option><option value="accepted">待发货的</option><option value="shipped">已发货的</option><option value="finished">已完成的</option><option value="canceled">已取消的</option><option value="refund">退款中的</option>                                                    </select>
                                                </div>
                                            </th>
                                            <th class="remark">交易操作</th>
                                            <th class="other">其它操作</th>
                                        </tr>
                                        <tr class="sep-row">
                                        	<td colspan="9"></td>
                                        </tr>
                                        
                                        <tr class="toolbar skin-gray" id="sep-row">
                                            <td colspan="6">
                                                <label><input type="checkbox" class="checkall">全选</label>                          
                                                <a class="J_MakePoint toolbtn long-toolbtn all_confirm" href="javascript:void(0);">批量确认收货</a>
                                                <a class="J_MakePoint toolbtn long-toolbtn merge_pay" href="javascript:void(0);">合并付款</a>
                                            </td>
                                            <td colspan="3" class="last-col">
                                            <div class="last_col_fenye">
                                            
                                            </div>
                                            </td>
                                        </tr > 
                          
                                        <tr class="sep-row">
                                        	<td colspan="9"></td>
                                        </tr>
                                        <tr class="toolbar skin-gray">
                                            <td colspan="3">
                                                <label><input type="checkbox" class="checkall">全选</label>
                                                <a class="J_MakePoint toolbtn long-toolbtn all_confirm" href="javascript:void(0);">批量确认收货</a>
                                                <a class="J_MakePoint toolbtn long-toolbtn merge_pay" href="javascript:void(0);">合并付款</a>
                                            </td>
                                            <td colspan="6" class="last-col">
											
                                            </td>
                                        </tr>                                        
                                        
                                    </tbody></table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                        <div class="clear"></div>
                         
                    </div>       
                </div>       
             </div>      
        </div>
    </div>
    <div class="clear"></div>
    <iframe id="iframe_post" name="iframe_post" src="about:blank" frameborder="0" width="0" height="0"></iframe>
<div class="footer-wrap">
	<div class="noindex-space"></div>
	<div class="noindexfooter">
		<div class="index-footer">
		    <div class="footer">
		         <div class="shansahn-info clearfix">  
		                <dl>		        					            
		                   <dt>消费者保障</dt>
		                       <dd><a href="#" target="_blank"><em>·</em>保障范围</a></dd>
		                       <dd><a href="#" target="_blank"><em>·</em>退货退款流程</a></dd>
		                       <dd><a href="#" target="_blank"><em>·</em>消费者维权中心</a></dd>
		                    </dl>
		                    <dl>				            
		                    <dt>新手上路</dt>
		                       <dd><a href="#" target="_blank"><em>·</em>新手学堂</a></dd>
		                       <dd><a href="#" target="_blank"><em>·</em>交易安全</a></dd>
		                       <dd><a href="#" target="_blank"><em>·</em>消费警示</a></dd>
		                       <dd><a href="#" target="_blank"><em>·</em>山山服务热线</a></dd>
		                   </dl>
		                		              		               	 		               	   
		                   <dl id="pay">				            
		                   <dt>支付方式</dt>
		                       <dd><a href="#" target="_blank"><em>·</em>网上银行</a></dd>
		                       <dd><a href="#" target="_blank"><em>·</em>在线支付</a></dd>
		                   </dl>
					       <dl id="service">				            
		                      <dt>商家服务</dt>
		                       	<dd><a href="#" target="_blank"><em>·</em>商家入驻</a></dd>
		                       	<dd><a href="#" target="_blank"><em>·</em>山山商城规则</a></dd>
		                   </dl>	              		               	 		               
		              <a href="#" class="shanshan-homeico"></a>
		              <span class="shanshan-feedback ntkp">山山商城意见反馈</span>
		         </div>
		        <div id="copyright">
		        	<p class="cR-nav">
		             	<a href="#" target="_blank">山山简介</a>
			            <a href="#" target="_blank">诚聘英才</a>
			            <a href="#" target="_blank">联系我们</a>
			            <a href="#" target="_blank">网站地图</a>    		               		                 
		                <span>关注山山商城：</span>
		                <a href="#" class="ssb-weibo"><img src="user_trade_files/ssb-weibo.jpg" alt=""></a>
		                <a href="#" class="ssb-weibot"><img src="user_trade_files/ssb-weibot.jpg" alt=""></a>
		                <a href="javascript:void(0);" class="ssb-weixin"><img src="user_trade_files/ssb-weixin.jpg" alt=""><label class="mbb-weixin"></label></a>
 						<span class="ntkp ssb-weibot"><img src="user_trade_files/ssb-talk.jpg" alt="在线咨询"></span>					</p>
		            <p>Copyright©2011-2016shanshan360.com 浙江山山网络科技股份有限公司  版权所有<span class="statistics_code"><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5a250090ff571028094607805af27985' type='text/javascript'%3E%3C/script%3E"));
</script><script src="user_trade_files/h.js" type="text/javascript"></script></span></p>
		            <p>增值电信业务经营许可证：浙B2-20120027</p>
		            <p>企业法人营业执照注册号：331127000009583</p>
		        </div>
		    </div>
		</div>
	</div>
</div>

<style>   
#rightButton{position:fixed; _position:absolute; bottom:80px; height:250px; right:0; z-index:9999; display:block; cursor:pointer}
#right_ul{position:relative;}
#right_ul li{margin-bottom:1px}
#right_kf{  background:url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/kf.png) no-repeat; width:66px; height:66px; }
#right_kf:hover{  background:url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/kf2.png) no-repeat; width:66px; height:66px; }
#right_gw{  background:url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/gw.png) no-repeat; width:66px; height:66px;}
#right_gw:hover{  background:url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/gw2.png) no-repeat; width:66px; height:66px; }
#right_gw .nums{width:18px;height:18px; background:#F00; color:#fff; position:absolute; line-height:20px; font-size:16px; text-align:center;margin-left:-10px;padding:2px;margin-top:6px}
#right_weixin{  background:url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/wx.png) no-repeat; width:66px; height:66px;}
#right_sc{  background:url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/sc.png) no-repeat; width:66px; height:66px;}
#right_sc:hover{  background:url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/sc2.png) no-repeat; width:66px; height:66px; }
#right_weixin:hover{  background:url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/wx2.png) no-repeat; width:66px; height:66px;}
#right_ul li#right_gw{*margin-bottom:-1px}
#right_tip{width:156px;background:#fff;position:absolute;margin-top:-350px; border:1px #B0B0B0 solid; right:80px; display:none; z-index:999999; padding-top:10px;}
#right_tip .con{width:119px;margin:0 auto;}
#right_tip .con .arr{position:absolute;top:520px;left:156px}
#right_tip .con li{width:119px;float:left;border-bottom:1px #B0B0B0 solid;padding-bottom:10px;margin-bottom:10px;}
#right_tip .con li p img{margin-bottom:10px}
#right_tip .con li.last{border-bottom:none}
#right_tip .con  .t1 img {margin-right:11px; float:left}
#right_tip .con  .t1 font{color:#6c6c6c;margin-top:60px; width:85px;}
#right_tip .con  .t2 font{color:#6c6c6c;margin-top:14px; width:85px;}
#right_tip .con  .t2 font a{color:#6c6c6c; text-decoration:underline}
#right_tip .con  .t1{margin-bottom:22px}
#backToTop{z-index:999999; display:none;margin-top:-335px;*margin-top:-336px}
a.backToTop_a{  background:url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/gtop.png) no-repeat; width:66px; height:66px; display:block; }
a.backToTop_a:active{  background:url(http://www.shanshan360.com/themes/mall/default/styles/default/v2.4/images/gtop2.png) no-repeat; }
#right_tip .con .arr{position:absolute;top:520px;left:156px;border-width:10px; border-color:transparent transparent transparent #B0B0B0; border-style:dashed dashed dashed solid; border-right:none;}
.arr_i{position:absolute; top:-10px;
 *top:-10px;
left:-11px;
display:block;
height:0;
width:0;
font-size: 0;
line-height: 0;
border-color:transparent transparent  transparent #fff  ;
 border-style:dashed dashed dashed solid ;
 border-width:10px;
 }
</style>  

<div id="rightButton" style="right: 0px;">
    <ul id="right_ul">  
     <li id="right_kf"></li>
        <a target="_blank" href="shopping.jsp"><li id="right_gw"></li></a>
            <li id="right_weixin" class="right_ico"></li>
      <li id="right_tip" style="margin-top:90px" class="png">
            <div class="con ovf  ">
                <div class="fl arr" style="top:80px"><div class="fl arr_i"></div></div>
                 <ul>
                     <li><p><a href="" target="_brank"><img style="width: 118px; height: 118px;" src="user_trade_files/syewmsz_0.jpg"></a></p><p class="f14 fyh tec"><a href="" target="_brank"><font color="#5B5B5B">山山商城微信</font></a></p></li>
                </ul>
            </div>
        </li>
                <li id="right_sc" onclick="addBookmark()"></li>
        <li><div id="backToTop" style="display: block;"><a href="javascript:;" onfocus="this.blur();" class="backToTop_a png"></a></div></li>
    </ul>
</div>
<script type="text/javascript">     
$(document).ready(function(e) {              

    $("#rightButton").css("right", "0px");
    
    var button_toggle = true;
    $(".right_ico").live("mouseover", function(){
        var tip_top;
        var show= $(this).attr('show');
        var hide= $(this).attr('hide');
        tip_top = show == 'tel' ?  65 :  -10;
        button_toggle = false;
        $("#right_tip").css("top" , tip_top).show().find(".flag_"+show).show();
        $(".flag_"+hide).hide();
        
    }).live("mouseout", function(){
        button_toggle = true;
        hideRightTip();
    });
    
    
    $("#right_tip").live("mouseover", function(){
        button_toggle = false;
        $(this).show();
    }).live("mouseout", function(){
        button_toggle = true;
        hideRightTip();
    });
    
    function hideRightTip(){
        setTimeout(function(){        
            if( button_toggle ) $("#right_tip").hide();
        }, 500);
    }
    
    $("#backToTop").live("click", function(){
        var _this = $(this);
        $('html,body').animate({scrollTop: 0}, 500 ,function(){
            _this.hide();
        });
    });

    $(window).scroll(function(){
        var htmlTop = $(document).scrollTop();
        if( htmlTop > 0){
            $("#backToTop").fadeIn();    
        }else{
            $("#backToTop").fadeOut();
        }
    });
});
</script> 

<script type="text/javascript" src="js/public/ss.common-V2.3.0.js"></script>
<script type="text/javascript" src="js/public/inject_img_ad.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/ecmall.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/common.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/common_head.js" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8" src=""></script>

<script type="text/javascript" src="js/public/EmbedCS.js"></script>
<script type="text/javascript">
$(function(){
    $('#add_time_from').datepicker({dateFormat: 'yy-mm-dd'});
    $('#add_time_to').datepicker({dateFormat: 'yy-mm-dd'});
});
</script>
<script type="text/javascript" src="js/index/user_trade.js"></script>
<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all ui-helper-hidden-accessible"></div>

</body></html>