<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta charset="utf-8">
<link href="css/public/topshan.css" rel="stylesheet" type="text/css">
<link href="css/public/common.css" rel="stylesheet" type="text/css">
<title>完成付款 - 山山商城_自媒体视频直播农产品购物平台</title>
<script type="text/javascript"  src="js/public/mba.js"></script>
<script type="text/javascript"  src="js/public/mvl.js"></script>
<script type="text/javascript" src="js/public/pixel.php"></script>
<script type="text/javascript"  charset="utf-8" src="js/public/ntkfstat.js"></script>
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
<script type="text/javascript" charset="utf-8" src="js/public/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" charset="utf-8" src="js/public/chat.in.js" data-requiremodule="chatManage"></script><script type="text/javascript" charset="utf-8" src="./index_store_files/mqtt31.js" data-requiremodule="MQTT"></script>
<script type="text/javascript" charset="utf-8" src="js/public/mqtt.chat.js" data-requiremodule="Connection"></script></head>

<body><div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div><div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
<div class="ui-header ">
<div class="index_tbar1 " style="color: #666666;font-family: Arial,&#39;&#39;;font-size: 12px;">
      <div class=" grid1 ">
           <div style="cursor: pointer;" class="left1 public_collect" onclick="addBookmark()">
           <img src="./index_store_files/icon-star.gif">收藏山山
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
                          <div class="ui-dropdown11 login-menu"><a href="http://www.shanshan360.com/buyer_order">我的订单</a>  </div>
                        </li>
                		                    <li class="line">|</li>
	                    <li class="col-conn">
	                      <div class="ui-dropdown11">
	                          <a href="http://www.shanshan360.com/my_favorite" class="ui-dropdown-hd11">收藏夹 <b></b></a>
	                          <ul class="unstyled frr ui-dropdown-menu11">
	                              <li><a href="http://www.shanshan360.com/my_favorite">收藏的宝贝</a></li>
	                              <li><a href="http://www.shanshan360.com/my_favorite/store">收藏的店铺</a></li>
	                          </ul>
	                      </div>
	                    </li>
                                    
                <li class="line1">|</li>
                    <li class="col-conn">
                      <div class="ui-dropdown11">
                          <a target="_blank" href="http://www.shanshan360.com/article/service_center" class="ui-dropdown-hd11">客户服务 <b></b></a>
                          <ul class="unstyled frr ui-dropdown-menu11 ques">
                              <li><a target="_blank" href="http://www.shanshan360.com/check/notice">商家入驻</a></li>
                              <li><a target="_blank" href="http://www.shanshan360.com/article/service_center">常见问题</a></li>
                              <li><a target="_blank" href="http://www.shanshan360.com/human_rights_manage">投诉维权</a></li>
                              <li><a target="_blank" href="http://www.shanshan360.com/consultation">在线咨询</a></li>
                              <li><a target="_blank" href="http://www.shanshan360.com/gift_card/bao_zhang">保障天堂</a></li> 
                              <li><a target="_blank" href="http://www.shanshan360.com/identify">山山品控</a></li>
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
          	            <a href="http://www.shanshan360.com/"><img width="380px" height="100px" src="./index_store_files/site_logo.jpg"></a>
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
                                 	 				            				            			             
		            		
		            			<a href="http://www.shanshan360.com/index.php?app=goods&id=49967" target="_blank">青钱柳原叶</a>
		            					            				            			             
		            		
		            			<a href="http://www.shanshan360.com/index.php?app=goods&id=50022" target="_blank">土家鸡</a>
		            					            				            			             
		            		
		            			<a href="http://www.shanshan360.com/product/50023.html" target="_blank">畲葛山黄粿</a>
		            					            			            		            	 	                </div>
          </div>
          
          <div class="top_button1 left1">
                <a href="http://www.shanshan360.com/member"><div class="left1 top-bt1"><img src="./index_store_files/icon-meber.jpg">我的山山 </div></a>
               <div class="left1  ui-dropdown22">
               
               <a target="_blank" href="http://www.shanshan360.com/cart" class="ui-dropdown-hd22"><div class="top-bt1 left1"><div class="left1"><img src="./index_store_files/icon-buy2.png"></div><div class="left1">购物车</div><div id="carts" class="num-bg left1">0</div> </div> </a>
              
               <ul class="unstyled frr ui-dropdown-menu22">
                   <li>
                   <div class="con left1 hide">
                        <div class="left1"><img src="./index_store_files/b-y.jpg"></div>
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
 <link href="css/public/ecmall.css" rel="stylesheet" type="text/css">
<link href="css/public/ckgwc.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/public/index.php"></script>
<script type="text/javascript" src="js/public/jquery-V2.3.0.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/jquery-v1.7.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/jquery.lazyload.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/ss.index-V2.4.0.js" charset="utf-8"></script>
<div class="shanshanNav">
	<div class="shanshanNav-con">
    	<div class="clearfix">
        	<ul class="ssNavcon-main">
            	<li><a class="" href="http://www.shanshan360.com/">首页</a></li>
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
    
        <div class="mj_con">
            <div class="order_nav">
				<ul>
					<li><span class="order_visited">1.查看购物车</span><span>
                    <img src="./index_store_files/nav_li_span4.gif" alt=""></span></li>
					<li><span class="order_visited">2.确认订单信息</span><span>
                    <img src="./index_store_files/nav_li_span1.gif" alt=""></span></li>
					<li><span class="order_current">3.付款到山山商城</span><span>
                    <img src="./index_store_files/nav_li_span2.gif" alt=""></span></li>
					<li><span class="order_none">4.确认收货</span><span>
                    <img src="./index_store_files/nav_li_span3.gif" alt=""></span></li>
					<li><span class="order_none order_none2">5.评价</span></li>
				</ul>
    </div>
            <div class="order_confire">
                <ul>
                    <em><a href="user_trade.jsp">查看订单状态</a></em>
                    <li><span>订单已提交，请尽快付款！</span></li>
                    <li><p>您的订单总金额：<b id="money">¥${sessionScope.sum}</b>，使用平台优惠券0。实际支付：¥${sessionScope.sum}</p><p>您的订单已生效，可以选择以下支付方式完成订单。</p></li>
                </ul>
                <div class="clr"></div>
            </div>        
            <form action="#" method="POST">               
            <div class="order_pay_cnt">
               <p>账户可用余额：<em id="money_1">0.00</em>元</p> 
               <label>${sessionScope.errorMsg}</label>  
            </div>        
        </form>
             
 	   <form action="user/money_1?saleMoney=${sessionScope.sum}" method="post" id="goto_pay1"> 
            <script type="text/javascript" src="js/index/com_payment.js"></script>   
            <div class="item-list-hd">
                <h3 class="tab_title">还差一步，请立即支付：</h3>
            </div>                                            
            <div class="item_tab_div" id="item_tab_div1" style="margin-bottom:90px">
				<div class="clearfix" style="border-bottom:#1FA72C dotted 1px;">
			<div style="width:100%; height:40px;"><p style="height:40px; line-height:40px; padding-left:20px; font-size:14px; color:#f00;">支付平台：</p></div>
					<ul class="icon_box" style="padding-top:10px;">	   
					   <li> 
						   <input type="radio" value="24">
							<span class="action-rt">
                            <img src="./index_store_files/logo.gif" alt="邮政银行-" title="邮政银行-" width="158" height="56">
							</span>  
                       </li>				   
					   <li> 
					   <input type="radio" checked="checked" value="5">
							<span class="action-rt">
                            <img src="./index_store_files/logo(1).gif" alt="支付宝-请您仔细确认您购买的产品，确认无误再通过支付宝支付。山山商城感谢您对本站的支持！" title="支付宝-请您仔细确认您购买的产品，确认无误再通过支付宝支付。山山商城感谢您对本站的支持！" width="158" height="56">
							</span>
                           </li>  			   
					   <li> 
					<input  type="radio"  value="13">
					<span class="action-rt">
                    <img src="./index_store_files/logo(2).gif" alt="微支付-" title="微支付-" width="158" height="56">
					</span>
                    </li>
					</ul>
				</div>
                <input name="abc_only" type="hidden" value="0">
                <div class="clr"></div>
				<div class="ico_btn">
					<input id="" class="icn_btn" style="background: #FF8F00" type="submit" value="确认支付">
				</div>
            </div>
            
     </form>
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
		                       		                         <dd><a href="http://www.shanshan360.com/article/540.html" target="_blank"><em>·</em>保障范围</a></dd>
		                       		                         <dd><a href="http://www.shanshan360.com/article/541.html" target="_blank"><em>·</em>退货退款流程</a></dd>
		                       		                         <dd><a href="http://www.shanshan360.com/article/542.html" target="_blank"><em>·</em>消费者维权中心</a></dd>
		                       		                    </dl>
		                		              		               	 		               	   
		                     
		                    <dl>
					        					            
		                      <dt>新手上路</dt>
		                       		                         <dd><a href="http://www.shanshan360.com/article/120-135.html" target="_blank"><em>·</em>新手学堂</a></dd>
		                       		                         <dd><a href="http://www.shanshan360.com/article/567.html" target="_blank"><em>·</em>交易安全</a></dd>
		                       		                         <dd><a href="http://www.shanshan360.com/article/547.html" target="_blank"><em>·</em>消费警示</a></dd>
		                       		                         <dd><a href="http://www.shanshan360.com/article/548.html" target="_blank"><em>·</em>山山服务热线</a></dd>
		                       		                    </dl>
		                		              		               	 		               	   
		                    					        <dl id="pay">
					        					            
		                      <dt>支付方式</dt>
		                       		                         <dd><a href="http://www.shanshan360.com/article/569.html" target="_blank"><em>·</em>网上银行</a></dd>
		                       		                         <dd><a href="http://www.shanshan360.com/article/570.html" target="_blank"><em>·</em>在线支付</a></dd>
		                       		                    </dl>
		                		              		               	 		               	   
		                     
					        <dl id="service">
					        					            
		                      <dt>商家服务</dt>
		                       		                         <dd><a href="http://www.shanshan360.com/article/122-147.html" target="_blank"><em>·</em>商家入驻</a></dd>
		                       		                         <dd><a href="http://www.shanshan360.com/article/122-150.html" target="_blank"><em>·</em>山山商城规则</a></dd>
		                       		                    </dl>
		                		              		               	 		               
		              <a href="http://www.shanshan360.com/" class="shanshan-homeico"></a>
		              <span class="shanshan-feedback ntkp">山山商城意见反馈</span>
		         </div>
		        <div id="copyright">
		        	<p class="cR-nav">
		             		        	   		             		        	   		             		        	   		             		        	   		             		        	   			        	    			                <a href="http://www.shanshan360.com/index.php?module=aboutus&act=index#about_floor1" target="_blank">山山简介</a>
			                			                <a href="http://www.shanshan360.com/index.php?module=aboutus&act=index#about_floor6" target="_blank">诚聘英才</a>
			                			                <a href="http://www.shanshan360.com/index.php?module=aboutus&act=index#about_floor7" target="_blank">联系我们</a>
			                			                <a href="http://www.shanshan360.com/sitemap.html" target="_blank">网站地图</a>
			                		               		                 
		                <span>关注山山商城：</span>
		                <a href="http://www.weibo.com/shanshan360" class="ssb-weibo"><img src="./index_store_files/ssb-weibo.jpg" alt=""></a>
		                <a href="http://t.qq.com/ishanshan360" class="ssb-weibot"><img src="./index_store_files/ssb-weibot.jpg" alt=""></a>
		                <a href="javascript:void(0);" class="ssb-weixin"><img src="./index_store_files/ssb-weixin.jpg" alt=""><label class="mbb-weixin"></label></a>
 						<span class="ntkp ssb-weibot"><img src="./index_store_files/ssb-talk.jpg" alt="在线咨询"></span>					</p>
		            <p>Copyright©2011-2016shanshan360.com 浙江山山网络科技股份有限公司  版权所有<span class="statistics_code"><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5a250090ff571028094607805af27985' type='text/javascript'%3E%3C/script%3E"));
</script><script src="./index_store_files/h.js" type="text/javascript"></script></span></p>
		            <p>增值电信业务经营许可证：浙B2-20120027</p>
		            <p>企业法人营业执照注册号：331127000009583</p>
					<!-- <a href="http://im.shanshan360.com/SShanIM/ShanShan-1.1.0.11.zip" title="山山客服" class="letserv"></a> -->
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
                  <li><p><a href="" target="_brank"><img style="width: 118px; height: 118px;" src="./index_store_files/syewmsz_0.jpg"></a></p><p class="f14 fyh tec"><a href="" target="_brank"><font color="#5B5B5B">山山商城微信</font></a></p></li>
                 </ul>
            </div>
        </li>
                <li id="right_sc" onclick="addBookmark()"></li>
        <li><div id="backToTop"><a href="javascript:;" onfocus="this.blur();" class="backToTop_a png"></a></div></li>

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
<style type="text/css">
.psbcbank_coupon{margin:10px 0 0 17px;}
.coupon_error{color:#F00;}
</style>
<script type="text/javascript" src="js/public/imglazyload.loadscript.min.js" charset="utf-8"></script>

</body></html>