<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/peraddress/topshan.css" rel="stylesheet" type="text/css">
<link href="css/peraddress/common.css" rel="stylesheet" type="text/css">
<title>用户中心 - 我的地址</title>
<meta name="description" content="山山商城通过自媒体的方式，自己挖掘各地好的农特产，拍摄视频建立专辑，并在在每一个农特产品的原产地构架视频直播，全天直播原产地产品的生长及制作及包装过程，保证消费者买到的原滋原味的农特产品。 正品保障、 提供发票、 7天无理由退换货。">
<meta name="keywords" content="山山商城,网上购物平台,农产品网购平台,视频直播购物平台，农产品网上购物平台,休闲零食,干果炒货,茶叶,食用菌,粮油,购物商城,我要买,我要卖,免费开店">
<script type="text/javascript" async="" src="css/peraddress/pixel.php"></script><script type="text/javascript" async="" charset="utf-8" src="css/peraddress/ntkfstat.js"></script><script charset="utf-8" src="css/peraddress/v.htm"></script><script type="text/javascript" src="css/peraddress/jquery-1.js" charset="utf-8"></script>
<script type="text/javascript" src="css/peraddress/ss.js" charset="utf-8"></script> 
<script type="text/javascript">
var SITE_URL = "http://www.shanshan360.com";
var PRICE_FORMAT = '¥%s';
var gods_hot = "黑面菇";
var store_hot = "";
var gh_sk_url = "http://www.shanshan360.com/product/49734.html";
function fuzhi_key(){
	var sgk 	= $("#keyword").attr("value");
	var gd_hk 	= "黑面菇";
	var gh_s	= "黑面菇";
	var gh_sk_url = "http://www.shanshan360.com/product/49734.html";
	if(sgk == gh_s){
		if(gh_sk_url != ""){
			window.open(gh_sk_url);
			return false;
		}else{
			$("#keyword").attr("value", gd_hk);
		}
	}else{
		if(sgk){
			$("#keyword").attr("value", sgk);
		}else{
			if(gh_sk_url != ""){
				window.open(gh_sk_url);
				return false;
			}else{
				$("#keyword").attr("value", gd_hk);
			}
		}
	}
}
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

$(document).ready(function(){
    /*头部用户状态*/
    $.ajax({
        url:"http://www.shanshan360.com/index.php?app=cart&act=ajax_get_visitor&jsoncallback=?",
        dataType:"json",
        success:function(data){
            if(data.done){
                /*用户登录时的状态*/ 
               if(data.msg.user_id > 0)
                {    
                   $("#collect_folder").html("<a href='/my_favorite' class='mS-mtit'>收藏夹<b></b></a><div class='mS-mcon' style='display:none;'><div class='mS-mcon-panel'><a href='/my_favorite'>收藏的商品</a><a href='/my_favorite/store'>收藏的店铺</a></div></div>");
                   $('.pulic_sn-login-info').html("Hi！<a class='sli-item' href='/member' > "+data.msg.user_name.substring(0,60)+"</a>！  <a href='/index.php?app=my_points' class='sli-item' >积分(<em>"+data.msg.jifen+")</em></a>  <a href='/message/newpm' class='sli-item' >消息<em>("+data.msg.new_message+")</em></a><a href='/member/logout' class='sn-quit'>退出</a><i class='sn-separator'></i>");
                      /*判断登录后会员是否卖家*/
                  if(data.msg.store_id!=null)
                    {                                       
                        $('.login-menu').html('<a href="/seller_order">我的订单</a> ');
                    }else
                    {                                      
                        $('.login-menu').html('<a href="/buyer_order">我的订单</a>  ');
                        $('#carts').html(data.msg.cart_goods_kinds);
                        if(data.msg.cart_goods_kinds > 0){
                            var str = '<Div class="left1left1 clear1 pro-list1" id="pro-list"> <Div class="left1">';
                            $.each(data.msg.cart_items,function(index, value){
                            	str += '<div class="tit carts_'+value.rec_id+'">';                             
                                if(value.has_discount == 1){
                                	str +=' <Div class="bz left1">满减</Div><div class="left1 mr20"  style="width:130px;overflow:hidden">'+value.sales_promotion_detail[0]+'</div>';                                     
                                }
                                str += '<Div class="left1 ml5">小计：￥'+value.to_money+'</Div></Div>';
                                str += '<Div class="pro-con1 left1 carts_'+value.rec_id+'"><span class="left1 img"><img style="width:50px;height:50px;" src="/'+value.goods_image+'" /></span>'
                                   + '<span class="left1 pro-name1 lh18">'+value.goods_name+'</span><span class="left1  pri lh18">'
                                          + '<P><font class="cff6 f14">￥'+value.discount_price+'</font>*'+value.quantity+'</P><p class="ter"><a href="javascript:;" cart_id='+value.rec_id+' class="delete_cart">删除</a></p>'
                                    +'</span></Div>';                            	
                            });
                            str += '</Div></Div><Div class="js1 clear1 left1"><P>共 <font class="cff6">'+data.msg.num+'</font> 件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
                               +' 共计<Font class="cff6 ">￥</Font><font class="f-s cff6 f18 t_money_0">'+data.msg.t_money[0]+'.</font><Font class="f13 f-s cff6 t_money_1">'+data.msg.t_money[1]+'</Font></P>'
                                +'<p  class="ter"><a  target="_blank" href="/cart"><button type="button" class="choose_btn1  f14 fyh" >去购物车结算</button></a></p></Div>';
                            $('.show_cart').after(str);
                        }else{
                        	$('#carts').html(data.msg.cart_goods_kinds);
                        	$('.show_cart').hide();
                        	$('.carts_show_g').removeClass('hide');
                        	$(".cart_show").html('购物车中还没有商品，赶紧选购吧！');
                        }
                    }
                }else  /*未登录时的状态*/
                {
                    $('.pulic_sn-login-info').html("您好！ "+ data.msg.user_name + "！<a href='/index.php?app=member&amp;act=login&amp;ret_url=' class='public-sn-login'>请登录</a> <a href='/index.php?app=member&amp;act=register&amp;ret_url=' class='public-sn-register'>免费注册</a>");
                    $("[ectype='seller']").hide(); 
                    $("[ectype='buyers']").show();                   
                    $('#carts').html(data.msg.cart_goods_kinds);    
                    if(data.msg.cart_goods_kinds > 0){
                    	$('.carts_show_g').addClass('hide');
                    	   var str = '<Div class="left1left1 clear1 pro-list1" id="pro-list"> <Div class="left1">';
                           $.each(data.msg.cart_items,function(index, value){
                           	str += '<div class="tit carts_'+value.rec_id+'">';                             
                               if(value.has_discount == 1){
                               	str +=' <Div class="bz left1">满减</Div><div class="left1 mr20" style="width:130px;overflow:hidden">'+value.sales_promotion_detail[0]+'</div>';                                     
                               }
                               str += '<Div class="left1 ml5">小计：￥'+value.to_money+'</Div></Div>';
                               str += '<Div class="pro-con1 left1 carts_'+value.rec_id+'"><span class="left1 img"><img style="width:50px;height:50px;" src="/'+value.goods_image+'" /></span>'
                                  + '<span class="left1 pro-name1 lh18">'+value.goods_name+'</span><span class="left1  pri lh18">'
                                         + '<P><font class="cff6 f14">￥'+value.discount_price+'</font>*'+value.quantity+'</P><p class="ter"><a href="javascript:;" cart_id='+value.rec_id+' class="delete_cart">删除</a></p>'
                                   +'</span></Div>';                            	
                           });
                           str += '</Div></Div><Div class="js1 clear1 left1"><P>共 <font class="cff6">'+data.msg.num+'</font> 件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
                              +' 共计<Font class="cff6 ">￥</Font><font class="f-s cff6 f18 t_money_0">'+data.msg.t_money[0]+'.</font><Font class="f13 f-s cff6 t_money_1">'+data.msg.t_money[1]+'</Font></P>'
                               +'<p  class="ter"><a  target="_blank" href="/cart"><button type="button" class="choose_btn1  f14 fyh" >去购物车结算</button></a></p></Div>';
                           $('.show_cart').after(str);                    
                    }else{
                    	$(".cart_show").html('你的购物车是空的，赶快去购物吧！');
                    }
                }
            }          
        }
    });          
});
$('.delete_cart').live('click',function(){
	if(confirm('你确定要删除它吗？')){
		var rec_id = $(this).attr('cart_id');
		var tr = $('.carts_' + rec_id);
		$.getJSON('index.php?app=cart&act=drop&rec_id=' + rec_id, function(result){
			if(result.done){
				//删除成功
				if(result.retval.cart.quantity == 0){					
					tr.remove();     //移除					
				    $('.con').removeClass('hide').siblings().hide();
				    $('#carts').html(result.retval.cart.kinds);
				    $('.num-bg').html(result.retval.cart.kinds);
	                $('.nums').html(result.retval.cart.kinds);			
					$(".cart_show").html('你的购物车是空的，赶快去购物吧！');
				}else{
					var t_money = '';
					t_money =''+number_format(result.retval.cart.amount,2);
					var money = new Array();				
					tr.remove();     //移除
					$('#carts').html(result.retval.cart.kinds);
					$('.num-bg').html(result.retval.cart.kinds);
		            $('.nums').html(result.retval.cart.kinds);
					var money = t_money.split('.');
					$('.t_money_0').html(money[0]+'.');
					$('.t_money_1').html(money[1]);				
				}
			}
		});
	}
	else{
		return;
	}
}); 
  </script>
<script type="text/javascript" async="async" charset="utf-8" src="css/peraddress/zh_cn.js" data-requiremodule="lang"></script><script type="text/javascript" async="async" charset="utf-8" src="css/peraddress/chat.js" data-requiremodule="chatManage"></script><script type="text/javascript" async="async" charset="utf-8" src="css/peraddress/mqtt31.js" data-requiremodule="MQTT"></script><script type="text/javascript" async="async" charset="utf-8" src="css/peraddress/mqtt.js" data-requiremodule="Connection"></script></head>

<body><div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
<div class="ui-header ">
<div class="index_tbar1 " style="color: #666666;font-family: Arial,'';font-size: 12px;">
      <div class=" grid1 ">
           <div style="cursor: pointer;" class="left1 public_collect" onclick="addBookmark()">
           <img src="css/peraddress/icon-star.gif">收藏山山
           </div>
           <div class="rig">
                <span class="left1 public_name pulic_sn-login-info">Hi！<a class="sli-item" href="http://www.shanshan360.com/member"> nihaovovol</a>！  <a href="http://www.shanshan360.com/index.php?app=my_points" class="sli-item">积分(<em>100)</em></a>  <a href="http://www.shanshan360.com/message/newpm" class="sli-item">消息<em>(0)</em></a><a href="http://www.shanshan360.com/member/logout" class="sn-quit">退出</a><i class="sn-separator"></i></span>
                <span class="left1 op"></span>
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
          	            <a href="http://www.shanshan360.com/"><img src="css/peraddress/site_logo.jpg" height="100px" width="380px"></a>
                      </div>
          
          <div class="left1">
          		<form target="_blank" onsubmit="return fuzhi_key();" method="get" id="keyword_form" action="http://search.shanshan360.com/index.php">
                <div class="search-bar11 left1">
                     <div class="form">
                         <input class="text left1" style="color: #666666 " name="keyword" id="keyword" value="黑面菇" accesskey="s" tabindex="9" autocomplete="off" autofocus="true" x-webkit-speech="" x-webkit-grammar="builtin:search" type="text"> 
	                     <input value="搜索" class="button cur left1" type="submit">
                     </div>
                </div> 
                </form>
                <div class="clear1 hotwordss left1">
                     <strong>热门搜索：</strong>	
                                 	 				            				            			             
		            		
		            			<a href="http://www.shanshan360.com/index.php?app=goods&amp;id=49967" target="_blank">青钱柳原叶</a>
		            					            				            			             
		            		
		            			<a href="http://www.shanshan360.com/index.php?app=goods&amp;id=50022" target="_blank">土家鸡</a>
		            					            				            			             
		            		
		            			<a href="http://www.shanshan360.com/product/50023.html" target="_blank">畲葛山黄粿</a>
		            					            			            		            	 	                </div>
          </div>
          
          <div class="top_button1 left1">
                <a href="http://www.shanshan360.com/member"><div class="left1 top-bt1"><img src="css/peraddress/icon-meber.jpg">我的山山 </div></a>
               <div class="left1  ui-dropdown22">
               
               <a target="_blank" href="http://www.shanshan360.com/cart" class="ui-dropdown-hd22"><div class="top-bt1 left1"><div class="left1"><img src="css/peraddress/icon-buy2.png"></div><div class="left1">购物车</div><div id="carts" class="num-bg left1">0</div> </div> </a>
              
               <ul class="unstyled frr ui-dropdown-menu22">
                   <li>
                   <div class="con left1 hide">
                        <div class="left1"><img src="css/peraddress/b-y.jpg"></div>
                        <div class="left1">购物车中还没有商品，赶紧选购吧！</div>
                   </div>
                   
                   <font class="fyh f14 ml5 left1 show_cart" style="display: none;">最新加入的商品</font>
                         
                   </li>
                </ul>
               </div>
          </div>
     </div>
</div>

<link href="css/peraddress/common-V2.css" rel="stylesheet" type="text/css">
<link href="css/peraddress/specialSell-V2.css" rel="stylesheet" type="text/css">
<link href="css/peraddress/width1190-V2.css" rel="stylesheet" type="text/css">
<link href="css/peraddress/common.css" rel="stylesheet" type="text/css">
<link href="css/peraddress/user.css" rel="stylesheet" type="text/css">                                                                                                 
<script type="text/javascript" src="css/peraddress/index.js"></script>
<script type="text/javascript" src="css/peraddress/jquery-V2.js" charset="utf-8"></script>
<script type="text/javascript" src="css/peraddress/imglazyload.js" charset="utf-8"></script>
<!--<script type="text/javascript" src="http://www.shanshan360.com/includes/libraries/javascript/jquery-v1.7.js" charset="utf-8"></script>-->
<script type="text/javascript" src="css/peraddress/menu.js"></script>
<script type="text/javascript" src="css/peraddress/member.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="css/peraddress/dialog.js" id="dialog_js"></script><link href="css/peraddress/dialog.css" rel="stylesheet" type="text/css">
<script charset="utf-8" type="text/javascript" src="css/peraddress/jquery_002.js"></script>
<script charset="utf-8" type="text/javascript" src="css/peraddress/jquery.js"></script>
<script charset="utf-8" type="text/javascript" src="css/peraddress/mlselection.js"></script>
<link rel="stylesheet" type="text/css" href="css/peraddress/jquery.css"><script type="text/javascript">
//<!CDATA[
var SITE_URL = "http://www.shanshan360.com";
var PRICE_FORMAT = '¥%s';
var gods_hot = "黑面菇";
var store_hot = "";
function fuzhi_key(){
	var sgk = $("#ghsk").attr("value");
	var gd_hk = "黑面菇";
	if(sgk){
		$("#ghsk").attr("value", sgk);
	}else{
		$("#ghsk").attr("value", gd_hk);
	}
}
//]]>
</script>

<div class="shanshanNav">
	<div class="shanshanNav-con">
    	<div class="clearfix">
        	<ul class="ssNavcon-main">
            	<li><a class="" href="http://www.shanshan360.com/">首页</a></li>
            	           				    			    	<li><a href="http://ssmss.shanshan360.com/" target="_blank">山山美食馆</a></li>
		    			    			    	           				    			    	<li><a href="http://www.shanshan360.com/index.php?app=store&amp;id=1896664" target="_blank">畲乡景宁馆</a></li>
		    			    			    	           				    			    	<li><a href="http://www.shanshan360.com/index.php?module=specialpage&amp;id=2" target="_blank">基地视频</a></li>
		    			    			    	           				    			    	<li><a href="http://www.shanshan360.com/index.php?module=specialpage&amp;id=3" target="_blank">实况直播</a></li>
		    			    			    	           				    			    	<li><a href="http://www.shanshan360.com/index.php?module=specialpage&amp;id=193" target="_blank">景宁直播中心</a></li>
		    			    			    	           				    			    	<li style="display: none;"><a href="http://www.shanshan360.com/check/notice" target="_blank">商家入驻</a></li>
		    			    			    	           				    	           				    	           				    	           				    	            </ul>
        </div>
    </div>
</div><link href="css/peraddress/wodezhanghu.css" rel="stylesheet" type="text/css">
<style type="text/css">
 .msg-full {padding:0px 0 10px;width: 100%; display: block;padding-top:10px;}
.msg-full .ok {line-height: 30px !important; padding: 0 10px 0 32px !important;background-color: #FCFFE0;background:url(http://www.shanshan360.com/themes/mall/default/styles/default/images/skin/2013/msg_icon.png) -50px 8px no-repeat; border: 1px solid #CEDBA0; color: #8DAE1A;}
						
</style>

<div class="content">
  <div class="con_main"> 
    
    <div class="buyer_center">
      <div class="bc_nav">
       <div class="bc_nav_l fl">
<span>您现在的位置:</span>
     	
		<a href="http://www.shanshan360.com/index.php">首页</a><span> &gt; </span> 
		    		<a href="http://www.shanshan360.com/index.php?app=member" class="bcv_current">我是买家</a>
			
</div>      </div>
    </div>
    <div class="bc_content">
	  	<div class="bcc_wrap">
	  	<div class="bcc_wrap_title">我是买家</div>
<ul>
     <li class="mainmenu">
    <dl>
      <dt>
        	
         
                  	<a class="mntitle" href="http://www.shanshan360.com/index.php?app=cart">我的购物车</a>
         	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
                    
            <span class="expanded_ico"></span>
            
         	
         
                  	<a class="mntitle" href="http://www.shanshan360.com/index.php?app=buyer_order">我的交易</a>
         	
      </dt>
         <dd class="my_trade" style="display:block;">
             <ul class="childul">
                                            <li><a href="http://www.shanshan360.com/index.php?app=buyer_order">已经购买的商品</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=buyer_evaluate">评价管理</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=buyer_groupbuy">我的团购</a></li>
                                          </ul>
      </dd>
        </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
        	
         
                  	<a class="mntitle" href="http://www.shanshan360.com/index.php?app=my_favorite">我的收藏</a>
         	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
        	
         
                  	<a class="mntitle" href="http://www.shanshan360.com/index.php?app=is_member">我是会员</a>
         	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
        	
         
                  	<a class="mntitle" href="http://www.shanshan360.com/index.php?app=buyer_order&amp;act=bought_store">购买过的店铺</a>
         	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
        	
         
                  	<a class="mntitle" href="http://www.shanshan360.com/index.php?app=my_points">我的积分</a>
         	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
        	
         
                  	<a class="mntitle" href="http://www.shanshan360.com/index.php?app=my_coupon&amp;act=new_coupon">我的优惠券</a>
         	
      </dt>
       </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
                   	             		         	<span class="collapsed_ico"></span>
	              
            
         	
         
                  	<a class="mntitle" href="http://www.shanshan360.com/index.php?app=member&amp;act=safety_center">安全中心</a>
         	
      </dt>
         <dd class="safety_center" style="display:none;">
             <ul class="childul">
                                            <li><a href="http://www.shanshan360.com/index.php?app=member&amp;act=safety_password">登录密码</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=member&amp;act=zhifupassword">支付密码</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=member&amp;act=safety_email">邮箱验证</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=member&amp;act=safety_mobile">手机验证</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=member&amp;act=safety_question">安全提问</a></li>
                                          </ul>
      </dd>
        </dl>
  </li>
    <li class="mainmenu">
    <dl>
      <dt>
                    
            <span class="expanded_ico"></span>
            
         	
         
                  	<a class="mntitle" href="http://www.shanshan360.com/index.php?app=member">我的账户</a>
         	
      </dt>
         <dd class="my_account" style="display:block;">
             <ul class="childul">
                                            <li><a href="http://www.shanshan360.com/index.php?app=member&amp;act=profile">个人资料</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=my_money&amp;act=chongzhi">充值</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=my_address">我的地址</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=message&amp;act=newpm">短消息</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=friend">好友</a></li>
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
                                            <li><a href="http://www.shanshan360.com/index.php?app=refund">退款管理</a></li>
                                                           <li><a href="http://www.shanshan360.com/index.php?app=human_rights_manage">维权管理</a></li>
                                          </ul>
      </dd>
        </dl>
  </li>
  </ul>	    </div>
    <div class="fr my_account">
      <div class="my_accountcen fr">
        <div class="my_accountup">
         <form method="post" action="index.php?app=my_address&amp;act=add" id="address_form" novalidate="novalidate">
          <input name="goods_id" value="" type="hidden">
          <input name="store_id" value="" type="hidden">
          <input name="quantity" value="" type="hidden">
          <input name="active_id" value="" type="hidden">
          <h3>收货地址</h3>
          <div class="msg-full"><a name="tips" id="tips"></a><p class="ok" style="display:none;margin-left:0; height: 30px;"></p></div>
          <h4><b class="pink">新增收货地址</b> 电话号码、手机号选填一项,邮政编码可以不填,其余均为必填项 </h4>
          <ul>
            <li><span class="fl addrwidth">收货人姓名：</span>
              <p class="fl">
                <span class="pink">*</span>
                <input name="consignee" class="my_accounts" type="text">
                <span class="field_notice">请填写您的真实姓名</span>
              </p>
               </li>
            <li><span class="fl addrwidth">所在地区：</span>
       		 <p id="region">
                  <span class="pink">*</span> 
                  <select name="region">
                    <option selected="selected">请选择...</option>
                    <option value="10701">北京</option><option value="6942">天津</option><option value="6961">河北省</option><option value="7144">山西省</option><option value="7275">内蒙古</option><option value="7389">辽宁省</option><option value="7504">吉林省</option><option value="7574">黑龙江省</option><option value="7715">上海</option><option value="7736">江苏省</option><option value="7856">浙江省</option><option value="7958">安徽省</option><option value="8076">福建省</option><option value="8171">江西省</option><option value="8282">山东省</option><option value="8440">河南省</option><option value="8618">湖北省</option><option value="8732">湖南省</option><option value="8869">广东省</option><option value="9012">广西壮族自治区</option><option value="9136">海南省</option><option value="9161">重庆市</option><option value="9202">四川省</option><option value="9405">贵州省</option><option value="9503">云南省</option><option value="9649">西藏</option><option value="9730">陕西省</option><option value="9848">甘肃省</option><option value="9950">青海省</option><option value="10001">宁夏</option><option value="10029">新疆</option><option value="10144">台湾省</option><option value="10145">澳门</option><option value="10146">香港</option>                  </select>
                  <input name="region_id" id="region_id" class="mls_id" type="hidden">
                  <input name="region_name" id="region_name" class="mls_names" type="hidden">
                  <span class="field_notice">请选择您所在的地区</span>
                  <label class="error" style="display:none" id="dist">地区信息填写不完整！ </label>
            </p>
            </li>
            <li><span class="fl addrwidth">街道地址：</span>
              <p class="fl">
                <span class=" pink fl">*&nbsp;</span>
                <textarea name="address" rows="3" cols="60" class="fl" style="height:67px;border:1px solid #a5a5a5"></textarea>
                <span class="field_notice">不需要重复填写省/市/区</span></p>
                <label></label>
            </li>
            <li> <span class="fl addrwidth">邮政编码：</span>
              <p class="fl">
                &nbsp;&nbsp;&nbsp;<input name="zipcode" class="my_accounts" style="width:95px;" type="text">
                <span class="field_notice">邮政编码可以不填</span> </p>
            </li>
            <li><span class="fl addrwidth">手机号码：</span>
              <p class="fl">
                <span class="pink">*</span>
                <input name="phone_mob" id="phone_mob" class=" my_accounts" type="text">
                <label class="field_notice">电话号码和手机号码请至少填写一项 </label>
              </p>
            </li>
            <li><span class="fl addrwidth">电话号码：</span>
              <p class="fl">
                &nbsp;&nbsp;&nbsp;<input name="phone_num" id="phoneSection" class="my_accounts" type="text">
                <span class="field_notice">格式：区号-电话号码-分机号例如0578-7894561</span>
                 </p>
            </li>
            <li><span class="fl addrwidth">设为默认：</span>
              <p class="fl addrchb">
                &nbsp;&nbsp;<input name="checked" id="" value="1" type="checkbox">&nbsp;自动保存收货地址 
                <span class="explain">&nbsp;(选择后该地址将会保存到您的收货地址列表 )&nbsp;</span>
              </p>
            </li>
            <li>
              <input class="chen" src="css/peraddress/a_03.jpg" value="保存" style="margin-left:70px;" type="submit">
            </li>
          </ul>
          </form>
        </div>
        <div class="my_accountmext">
          <div class="tbl-deliver-address">
            <table class="tbl-main" cellspacing="0" cellpadding="0" border="0">
                              				 <tbody><tr class="thead-tbl-grade">
                        <th colspan="6" class="member_no_records padding6">您没有添加收货地址
                </th></tr>
           		 
              </tbody>
            </table>
            <p class="tbl_attach1">最多保存10个有效地址</p>
          </div>
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
		              <span class="shanshan-feedback ntkp" onclick="openChatWindow('');">山山商城意见反馈</span>
		         </div>
		        <div id="copyright">
		        	<p class="cR-nav">
		             		        	   		             		        	   		            
 		        	   		             		        	   		             		        	  
 			        	    			                <a href="http://www.shanshan360.com/index.php?module=aboutus&amp;act=index#about_floor1" target="_blank">山山简介</a>
			                			                <a href="http://www.shanshan360.com/index.php?module=aboutus&amp;act=index#about_floor6" target="_blank">诚聘英才</a>
			                			                <a href="http://www.shanshan360.com/index.php?module=aboutus&amp;act=index#about_floor7" target="_blank">联系我们</a>
			                			                <a href="http://www.shanshan360.com/sitemap.html" target="_blank">网站地图</a>
			                		               		                 
		                <span>关注山山商城：</span>
		                <a href="http://www.weibo.com/shanshan360" class="ssb-weibo"><img src="css/peraddress/ssb-weibo.jpg" alt=""></a>
		                <a href="http://t.qq.com/ishanshan360" class="ssb-weibot"><img src="css/peraddress/ssb-weibot.jpg" alt=""></a>
		                <a href="javascript:void(0);" class="ssb-weixin" onmouseover="weixin('visible')" onmouseout="weixin('hidden')"><img src="css/peraddress/ssb-weixin.jpg" alt=""><label class="mbb-weixin"></label></a>
 						<span class="ntkp ssb-weibot" onclick="openChatWindow('');"><img src="css/peraddress/ssb-talk.jpg" alt="在线咨询"></span>					</p>
		            <p>Copyright©2011-2016shanshan360.com 浙江山山网络科技股份有限公司  版权所有<span class="statistics_code"><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5a250090ff571028094607805af27985' type='text/javascript'%3E%3C/script%3E"));
</script><script src="css/peraddress/h.js" type="text/javascript"></script></span></p>
		            <p>增值电信业务经营许可证：浙B2-20120027</p>
		            <p>企业法人营业执照注册号：331127000009583</p>
					<!-- <a href="http://im.shanshan360.com/SShanIM/ShanShan-1.1.0.11.zip" title="山山客服" class="letserv"></a> -->
		        </div>
		    </div>
		</div>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	/*头部用户状态*/
	$.ajax({
        url:"http://www.shanshan360.com/index.php?app=cart&act=ajax_get_visitor&jsoncallback=?",
        dataType:"json",
        success:function(data){
            if(data.done){
                /*用户登录时的状态*/ 
               if(data.msg.user_id > 0)
                {
            	   $('.sn-login-info').html("Hi！<a class='sli-item' href='/member' > "+data.msg.user_name.substring(0,60)+"</a>！  <a href='/index.php?app=my_points' class='sli-item' >积分(<em>"+data.msg.jifen+")</em></a>  <a href='/message/newpm' class='sli-item' >消息<em>("+data.msg.new_message+")</em></a><a href='/member/logout' class='sn-quit'>退出</a><i class='sn-separator'></i>");
	        	  	/*判断登录后会员是否卖家*/
                  if(data.msg.store_id!=null)
                    {
	                	$("[ectype='buyers']").hide(); 
	                	$("[ectype='seller']").show(); 
                    }else
                    {
                    	$("[ectype='seller']").hide(); 
                    	$("[ectype='buyers']").show(); 
                    	$('#carts').html(data.msg.cart_goods_kinds);
                    }
                }else  /*未登录时的状态*/
                {
                	$('.sn-login-info').html("您好！ "+ data.msg.user_name + "！<a href='/index.php?app=member&amp;act=login&amp;ret_url=' class='sn-login'>请登录</a> <a href='/index.php?app=member&amp;act=register&amp;ret_url=' class='sn-register'>免费注册</a><i class='sn-separator'></i>");
                	$("[ectype='seller']").hide(); 
                	$("[ectype='buyers']").show(); 
                	$('#carts').html(data.msg.cart_goods_kinds);
                }
            }          
        }
    });
})
</script>
  
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
     <li id="right_kf" onclick="openChatWindow('');"></li>
    
        <!--<a href="http://www.shanshan360.com/consultation" target="_blank"><li id="right_kf" ></li></a>-->
        <a target="_blank" href="http://www.shanshan360.com/cart"><li id="right_gw"><div class="nums">0</div></li></a>
            <li id="right_weixin" class="right_ico"></li>
      <li id="right_tip" style="margin-top:90px" class="png">
            <div class="con ovf  ">
                <div class="fl arr" style="top:80px"><div class="fl arr_i"></div></div>
                 <ul>
                                     <li><p><a href="" target="_brank"><img style="width: 118px; height: 118px;" src="css/peraddress/syewmsz_0.jpg"></a></p><p class="f14 fyh tec"><a href="" target="_brank"><font color="#5B5B5B">山山商城微信</font></a></p></li>
                                   </ul>
            </div>
        </li>
                <li id="right_sc" onclick="addBookmark()"></li>
        <li><div id="backToTop" style="display: block;"><a href="javascript:;" onfocus="this.blur();" class="backToTop_a png"></a></div></li>

    </ul>
</div>
<script type="text/javascript">     
$(document).ready(function(e) {              
    /*头部用户状态*/
    $.ajax({
        url:"http://www.shanshan360.com/index.php?app=cart&act=ajax_get_visitor&jsoncallback=?",
        dataType:"json",
        success:function(data){
            if(data.done){              
                /*用户登录时的状态*/ 
               if(!data.msg.store_id)
                {   
                   $('.nums').html(data.msg.num);
                }else  /*未登录时的状态*/
                {
                	$('.nums').html('0');
                  
                }
            }          
        }
    });   



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

<script type="text/javascript" src="css/peraddress/ss_002.js"></script>
<script type="text/javascript" src="css/peraddress/inject_img_ad.js" charset="utf-8"></script>
<script type="text/javascript" src="css/peraddress/ecmall.js" charset="utf-8"></script>
<script type="text/javascript" src="css/peraddress/common.js" charset="utf-8"></script>
<script type="text/javascript" src="css/peraddress/common_head.js" charset="utf-8"></script>
<script language="javascript" type="text/javascript">
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
</script>
<script type="text/javascript" charset="utf-8" src=""></script>
<script type="text/javascript">
(function() {
    try {
        var viz = document.createElement("script");
        viz.type = "text/javascript";
        viz.async = true;
        viz.src = ("https:" == document.location.protocol ?"https://cn-tags.vizury.com" : "http://cn-tags.vizury.com")+ "/analyze/pixel.php?account_id=VIZVRM2706";

        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(viz, s);
        viz.onload = function() {
            try {
                pixel.parse();
            } catch (i) {
            }
        };
        viz.onreadystatechange = function() {
            if (viz.readyState == "complete" || viz.readyState == "loaded") {
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


<script type="text/javascript">
//<!CDATA[
$(function(){
    regionInit("region");
    //设置默认地址
    
    // 手机号码验证 
    jQuery.validator.addMethod("isMobile", function(value, element) { 
      var length = value.length; 
      //var mobile = /13[0-9]{9}|14[0-9]{9}|170[0-9]{8}|15[0-9]\d{8}|18[0-9]\d{8}/; 
      var mobile = /13[0-9]{9}|14[0-9]{9}|15[0-9]{9}|18[0-9]{9}|17[0-9]{9}/;
      return this.optional(element) || (length == 11 && mobile.test(value)); 
    }, "请填写正确的手机号码"); 

    $(".thead-tbl-address").not('.addrcurrent').hover(function(){
        var addr_id = $(this).attr("addrid");
        $(this).css("background","none repeat scroll 0 0 #E4F2D8");
        $(this).children(".thead-tbl-status").html("<a href='javascript:set_addr("+addr_id+");'>默认地址</a>");
        
    },function(){
        //if(!$(this).is('.addrcurrent')){
        	$(this).removeAttr("style");
        	$(this).children(".thead-tbl-status").empty();
        //};
    	
    });
    $("form select").live("change",function(){
    	var value = $(this).val();
        var val = $("#region_name").val();
        if(val.length > 0){            
        	$.getJSON('/index.php?app=anonymous&act=region_zipcode',{
        		'region_id':value,'region':val
                },
                function(data){
                    if(data.done && data.retval!=''){
                        var zip =   data.retval;
                        $("input[name='zipcode']").attr('value',zip);
                    }else{
                    	$("input[name='zipcode']").removeAttr('value');
                    }
            });
        }
    });
    /*jQuery.validator.addMethod("isTel", function(value,element) { 
  	  var length = value.length; 
  	  var tel = /^((0\d{2,3})-)(\d{7,8})(-(\d{3,4}))?$/; 
  	  return this.optional(element) || (tel.test(value)); 
  	}, "请正确填写您的电话号码 比如 027-12345678"); */
    $('#address_form').validate({
        errorPlacement: function(error, element){
            var _message_box = $(element).parent('p');
            _message_box.find('.field_notice').hide();
            _message_box.after().append(error);
        },
      /*  success       : function(label){
            label.addClass('validate_right').text('OK!');
        },*/
        
        onkeyup : false,
        rules : {
            consignee : {
                required : true
            },
            region : {
                required : true,
                min   : 1
            },
            address   : {
                required : true
            },

            phone_mob : {
                required : check_phone,
                isMobile: true
            },
            zipcode : {
            	min   : 6 ,
				maxlength   : 6
            }
        },
        messages : {
            consignee : {
                required : '请填写收货人姓名 '
            },
            region : {
                required : '请选择所在地区 ',
                min  : '请选择所在地区'
            },
            address   : {
                required : '<br>请填写街道地址'
            },

            phone_mob : {
                required : '电话号码和手机号码请至少填写一项 ',
                digits :   '请填写正确的手机号码'
            },
            zipcode : {
            	min  : '邮政编码由6位数字组成',
           	    maxlength  : '邮政编码由6位数字组成'
           }
        },
        groups:{
            phone:'phone_num phone_mob'
        },
        submitHandler: function(form) {  //通过之后回调
        	var region_id=$('[name="region_id"]').val();
		  	 $.ajax({
		  		  url:"/index.php?app=my_address&act=ajax_region",
		  		    dataType:"json",
		  		    type:'get',
		  		    data:{'value':region_id},
		  		    async:true,  // 设置同步方式
		  	        cache:false,
		  	       success:function(data){
		  	    	   if(data){
		  	              $("#dist").show();
		  	             $(window).scrollTop(0); 
		  	    	   }else{
        	var param = $("#address_form").serialize();
        	  $.ajax({
      		    url:"/index.php?app=my_address&act=check_address",
      		    dataType:"json",
      		    type:'post',
      		    async:true,  // 设置同步方式
      	        cache:false,
      	       success:function(data){
      	            if(!data)
 		            {
      	              $("#dist").hide();
 		        	  alert('您最多可以添加十个有效地址');
 			         }else{
 			        	 $.ajax({
 			                   url : "/index.php?app=my_address&act=add",
 			                   type : "post",
 			                   cache : false,
 			               //  dataType : "json",
 			                   data: param,
 			                   success : function(data) {
 			                      $(".ok").show().html('添加地址成功');
 			                      $(window).scrollTop(0); 
 			                      setTimeout(reload,2000)
 			                      }
 			                   }); 
 			  	    	    }
 			  	         }
 			           });
 			       }
      	          }
        	  });
         },
        invalidHandler: function(form, validator) {  //不通过回调
         	$(".ok").hide();   
            return false;
            } 
    });
});
function reload(){
	window.location.href="/index.php?app=my_address"; 
}

function set_addr(id)
{
	$.getJSON('/index.php?app=my_address&act=set_default',{
        'addr_id':id
        },
        function(data){
            if(data.done){
                if(data.retval==1){
                    alert(data.msg);
                    window.location.reload();
                }else if(data.retval<1){
                	alert(data.msg);
                }
            }
    });
}

function check_phone(){
    return ($('[name="phone_num"]').val() == ''  && $('[name="phone_mob"]').val() == '');
}
function hide_error(){
    $('#region').find('.error').hide();
}

$(function () {
    $("a.address").click(function () {
        var addr_id = $(this).attr("addr_id");
        if (confirm("真的要删除吗？")) {
           $.get("/index.php?app=my_address&act=drop", {"addr_id": addr_id}, function (data, status) {
                if (status == "success") {
                  $("tr.thead-tbl-address").filter('tr[addrid='+addr_id+']').remove();
                	// alert("删除成功！");
                 //  window.location.reload();  
                }else{
                	 alert("删除失败！");
                }
           });
       }
   });
});


//]]>
</script></body></html>