<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta charset="utf-8">
<script type="text/javascript" src="js/public/mlselection.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/jquery.validate.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/dialog.js" id="dialog_js" charset="utf-8"></script>
<link href="css/public/dialog.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/public/jquery.ui.js" id="dialog_js" charset="utf-8"></script>
<link href="css/public/topshan.css" rel="stylesheet" type="text/css">
<link href="css/public/common.css" rel="stylesheet" type="text/css">
<link href="css/public/common-V2.3.0.css" rel="stylesheet" type="text/css">
<link href="css/public/specialSell-V2.3.0.css" rel="stylesheet" type="text/css">
<link href="css/public/width1190-V2.3.0.css" rel="stylesheet" type="text/css">
<link href="css/public/ecmall.css" rel="stylesheet" type="text/css">
<link href="css/public/ckgwc.css" rel="stylesheet" type="text/css">
<link href="css/public/ckgwc.css" rel="stylesheet" type="text/css">
<title>确认收货人资料和送货方式 - 山山商城_自媒体视频直播农产品购物平台</title>
<script type="text/javascript" src="js/public/pixel.php"></script>
<script type="text/javascript" charset="utf-8" src="js/public/ntkfstat.js"></script>
<script charset="utf-8" src="js/public/v.js"></script>
<script type="text/javascript" src="js/public/jquery-1.7.1.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/ss.index-V2.4.0.js" charset="utf-8"></script> 
<style type="text/css">
.back {
    background: url("http://www.shanshan360.com/themes/mall/default/styles/default/images/back.png") no-repeat scroll 0 3px transparent;
    padding-left: 16px;
	color:#3366CC;
	text-decoration:none;
	margin-right:10px;
}
.tips{
	background-color:transparent;
	border:medium none;
	color:#404040;
	line-height:18px;
	background: url("http://www.shanshan360.com/themes/mall/default/styles/default/images/goods_tishi.gif") no-repeat scroll 0 0 transparent;
	padding:2px 10px 2px 18px;
	margin-top:5px;
}
.n-st-conus span, .n-st-conus a{float:Left; vertical-align:middle; height:22px; line-height:22px;padding-right: 5px;}
</style>
 <style>
                        #notice-m {width:112px;height:auto;line-height:20px;padding:3px;text-align:left;border:1px solid #F4C88B;background:#FFF9DF;color:#6A6A68;margin-top:7px;float:right;}
                        #notice-m a {color:#3465CE;text-decoration:none;}
                    </style>
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
<script type="text/javascript" async="async" charset="utf-8" src="js/public/zh_cn.js" data-requiremodule="lang"></script><script type="text/javascript" async="async" charset="utf-8" src="./index_store_files/chat.in.js" data-requiremodule="chatManage"></script><script type="text/javascript" async="async" charset="utf-8" src="./index_store_files/mqtt31.js" data-requiremodule="MQTT"></script><script type="text/javascript" async="async" charset="utf-8" src="./index_store_files/mqtt.chat.js" data-requiremodule="Connection"></script></head>

<body><div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
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
                <i class="sn-separator"></i>
                <span class="left1 op"></span>
                <ul id="navv" class="left1">
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
                         <input type="text" class="text left1" style="color: #666666 " name="keyword" id="keyword" value="黑面菇" accesskey="s" tabindex="9" autocomplete="off"  x-webkit-speech="" x-webkit-grammar="builtin:search"> 
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
                <a href="http://www.shanshan360.com/member">
                <div class="left1 top-bt1">
                <img src="./index_store_files/icon-meber.jpg">我的山山 </div>
                </a>
               <div class="left1  ui-dropdown22">
               
               <a target="_blank" href="http://www.shanshan360.com/cart" class="ui-dropdown-hd22">
               
               </a>
              
               <ul class="unstyled frr ui-dropdown-menu22">
                   
                </ul>
               </div>
          </div>
     </div>
</div>


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
            	    <li><a href="http://ssmss.shanshan360.com/" target="_blank">山山美食馆</a></li>
		    		<li><a href="#" target="_blank">畲乡景宁馆</a></li>
		    		<li><a href="#">基地视频</a></li>
		    		<li><a href="#" target="_blank">实况直播</a></li>
		    		<li><a href="#" target="_blank">景宁直播中心</a></li>
		    		<li style="display: none;"><a href="#" target="_blank">商家入驻</a></li>	    			    	           				    	           				    	   </ul>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/public/cart.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/EmbedCS.js"></script>

 
    <div class="content">
        <div class="mj_con">
            
            <div class="order_nav">
				<ul>
					<li><span class="order_visited">1.查看购物车</span><span><img src="./index_store_files/nav_li_span1.gif" alt=""></span></li>
					<li><span class="order_current">2.确认订单信息</span><span><img src="./index_store_files/nav_li_span2.gif" alt=""></span></li>
					<li><span class="order_none">3.付款到山山商城</span><span><img src="./index_store_files/nav_li_span3.gif" alt=""></span></li>
					<li><span class="order_none">4.确认收货</span><span><img src="./index_store_files/nav_li_span3.gif" alt=""></span></li>
					<li><span class="order_none order_none2">5.评价</span></li>
				</ul>
            </div>
            
            
		
            
            <div class="gw2_qrdd">
            	<div class="gw2_title">
                	<span class="fl"><b class="t14">确认收货地址</b></span>
                    <span class="fr"><a href="http://www.shanshan360.com/index.php?app=my_address&store_id=&quantity=&active_id=" style=" color:#3366cc;">管理收货地址 </a></span>
                    <div class="clear"></div>
                </div>
                <ul class="gw2_addrcon" id="addr" style="float: left;">
                                 	
                    <!-- 	<li id="myadds_50773" class="checked" style="float: left;">
                    	<div class="gw2_addrcon_con">
                        	<p style="margin-top:8px;">
                        	<span>福建省	宁德市	霞浦县</span><span>（何进荣 收）</span></p>
                            <p>溪南镇台江村76号</p>
                            <p>15573481850  </p>
                        </div>
                        <div class="morenaddr" ectype="50773">默认地址</div>
                        </li>  -->
                   
                    
                </ul>	

	 
                <div class="gw2_addnaddr">
                
                	<div ><span><img onClick="address_add();" src="./index_store_files/gw2_addnaddr.gif" alt="" border="0"></span></div>
              
                    <div style="display:none;" class="gw2_addrcon_btm"  id="addrForm">
                    	<p><b class="cheng" style="margin-top: 10px">新增收货地址</b><label>&nbsp;&nbsp;电话号码、手机号选填一项，邮政编码可以不填，其余均为必填项</label></p>
                         <form action="user/saveAddr" method="post" id="addr">   
                         <p><label>收货人姓名：</label>
                            <span class="red">*</span>
                            <input type="text" name="a_receiver" id="consignee" size="16">
                            <b style="font-weight:normal;" class="field_message explain"><span class="field_notice">请填写真实姓名</span></b>
                        </p>
                        <p>
                        <label>  &nbsp;&nbsp; 所在地区：</label>
                            <span class="red">*</span>
                            <span id="region">
                                <select name="a_area" onchange="hide_error();" id="sest">
                                    <option value="">请选择...</option>
                                    <option value="北京">北京</option>
                                    <option value="天津">天津</option>
                                    <option value="河北省">河北省</option>
                                    <option value="山西省">山西省</option>
                                    <option value="内蒙古">内蒙古</option>
                                    <option value="辽宁省">辽宁省</option>
                                    <option value="吉林省">吉林省</option>
                                    <option value="黑龙江省">黑龙江省</option>
                                    <option value="上海">上海</option>
                                    <option value="江苏省">江苏省</option>
                                    <option value="浙江省">浙江省</option>
                                    <option value="安徽省">安徽省</option>
                                    <option value="福建省">福建省</option>
                                    <option value="江西省">江西省</option>
                                    <option value="山东省">山东省</option>
                                    <option value="河南省">河南省</option>
                                    <option value="湖北省">湖北省</option>
                                    <option value="湖南省">湖南省</option>
                                    <option value="广东省">广东省</option>
                                    <option value="广西壮族自治区">广西壮族自治区</option>
                                    <option value="海南省">海南省</option>
                                    <option value="重庆市">重庆市</option>
                                    <option value="四川省">四川省</option>
                                    <option value="贵州省">贵州省</option>
                                    <option value="云南省">云南省</option>
                                    <option value="西藏">西藏</option>
                                    <option value="陕西省">陕西省</option>
                                    <option value="甘肃省">甘肃省</option>
                                    <option value="青海省">青海省</option>
                                    <option value="宁夏">宁夏</option>
                                    <option value="新疆">新疆</option>
                                    <option value="台湾省">台湾省</option>
                                    <option value="澳门">澳门</option>
                                    <option value="香港">香港</option></select>
                                <span class="field_message"><span class="field_notice">请选择地区</span></span>
                            </span>
                            </p>
                            <p>
                            <label style="float:left;width:81px;"><span>&nbsp;&nbsp;&nbsp;街道地址： <span class="red">*</span></span></label>
                            <textarea class="ca_textarea" name="a_street" id="address"></textarea>
                            </p>
                            <p>
                            <label>&nbsp;&nbsp;&nbsp;邮政编码：</label>
                            <span class="red">&nbsp;</span>
                            <input type="text" name="a_post" id="zipcode" size="16" style="margin-left:2px;">
                            <span class="field_message">
                            <span class="field_notice">邮政编码可以不填</span>
                            </span>
                            </p>
                            <p>
                            <label>&nbsp;&nbsp;&nbsp;手机号码：</label>
                            <span class="red">*</span>
                            <input type="text" id="a_tel" name="a_tel" size="16">
                            <span class="field_message explain"><span class="field_notice">手机号码必填</span></span>
                            </p>
                        	<p><input type="submit" name="submit"  value="确定"/><input type="submit" value="取消"/></p>
                         </form>  
                    </div>
                </div>
                
<script>

$("#Save_add").click(function(){ 
 
        //验证收货人信息  
        if( $('#consignee').val() == ''){  
            alert('收货人姓名不能为空！');
            $('#consignee').focus();
            return false;
        }           
        //验证一级地区选择不能为空
        if($('#region').children('select').val() == ''){ 
            alert('所在地区不能为空！');
            $('#region').focus();
            return false;
        }        
        //验证二级地区选择不能为空
        if($('#sest').next('select').val() == ''){   
            alert('所在地区的二级地区不能为空！');
            $('#sest').next('select').focus();
            return false;
        }
        
        //验证收货地址
        if($('#address').val() == ''){  
            alert('收货地址不能为空！');
            $('#address').focus();
            return false;
        }
        
        //验证手机号码      
        var phone_mob = $('#phone_mob').val();
        var phone_tel = $('#phone_tel').val();
        var length = phone_mob.length; 
        var mobile =  /13[0-9]{9}|14[0-9]{9}|15[0-9]{9}|18[0-9]{9}|17[0-9]{9}/; 
        if(phone_mob =='' && phone_tel ==''){
            alert('手机和固话必须填写一个！');
            $('#phone_tel').val('').focus(); 
            return false; 
        } 
        if(!(length == 11 && mobile.test(phone_mob)) && phone_mob !=''){   
            alert('手机格式不正确！');
            $('#phone_mob').val('').focus(); 
            return false;  
        }
        //验证固定电话格式   
	    if(phone_tel != ''){
            var tel_reg = /(^(\d{2,4}[-_－—]?)?\d{3,8}([-_－—]?\d{3,8})?([-_－—]?\d{1,7})?$)|(^0?1[35]\d{9}$)/;
            if(!tel_reg.test(phone_tel) || (phone_tel.length < 6)){
                alert('固定电话格式不正确！');
                $('#phone_tel').val('').focus();
                return false;  
            }
            
        }       	        
});                
</script>                
                <div class="gw2_querendd">
                	<div class="gw2_querendd_top">确认订单</div>
                    <div class="gw2_querendd_btm">
                    	<table cellpadding="0" cellspacing="0" border="0" class="gqb_table">
                        	<tbody><tr>
                            	<th colspan="2" class="name" style="width:350px;border-bottom:#009900 solid 3px;text-align: center;">店铺商品</th>
                                <th class="price" style="border-bottom:#009900 solid 3px;text-align: center;">单价(元)</th>
                                <th class="shuliang" style="border-bottom:#009900 solid 3px;text-align: center;">数量</th>
                                <th class="youhui" style="border-bottom:#009900 solid 3px;text-align: center;">优惠方式</th>
                                <th class="xiaoji" style="border-bottom:#009900 solid 3px;text-align: center;">小计(元)</th>
                                <th class="peisong" style="border-bottom:#009900 solid 3px;text-align: center;">配送方式</th>
                            </tr>
                        </tbody></table>
                     </div>       
                  
                    <div class="gw2_querendd_btm">
                    	<table cellpadding="0" cellspacing="0" border="0" class="gqb_table">
                    		<tbody id="order">
                    		  
                    <!--  <tr>
                     <td style="width:350px;">
                    <span class="fl gw2_xpic"><a href="#" target="_blank"><img src="./index_store_files/small_201507291048161158.jpg" alt="野生仙人掌果 仙人果 2斤装 海南水果新鲜热带水果  偏远地区不发货" border="0" style="width:50px; height:50px;"></a></span>
                     <a href="#" class="fl gw2_xtext" target="_blank">野生仙人掌果 仙人果 2斤装 海南水果新鲜热带水果  偏远地区不发货<br>规格：默认</a>
                     <br>
                                                                    
                     </td>
                     <td style="text-align: center;width:100px;">                                                                           
                     <font style="text-decoration: line-through;">￥56.00</font><br>￥39.00</td>
                      <td style="width:100px;" align="center">
                      <label></label>
                      </td>
                     <td style="text-align: center; width:135px;"> 无优惠 </td>
                     <td style="text-align: center;width:100px;"><span id="item177937_subtotal" class="item_amount_68875" item_amount="39">￥39.00</span></td>
                     </tr>      
                     <tr class="td_jiesuan">
                            	<td colspan="3"><span>补充说明：</span><input class="message" name="postscript_68875" style="background:#fff; border:#ccc solid 1px; padding:2px 10px 2px 0; width:250px; " value="选填，可告诉卖家您对订单的特殊要求。"></td>
                                <td colspan="4" style="text-align:right;">
                                   
	                                <p style="display:inline-block;margin-top: 10px;">
	                                	店铺合计(含运费)： <span style="color:#FF5500;font:bold 18px tahoma" id="store_amount_span_68875">￥137.00</span>
	                                	<input type="hidden" name="store_amount_68875" id="store_amount_68875" value="137">
	                                	<input type="hidden" name="store_yuan_amount_68875" id="store_yuan_amount_68875" value="137">
	                                </p>
                                </td>
                            </tr>
                            <tr>      	                                
               				</tr>
                        </tbody></table>
                    </div>
                      
                    <div class="gw2_querendd_btm">
                    	<table cellpadding="0" cellspacing="0" border="0" class="gqb_table">
                    		<tbody>     
  -->
                            <tr class="td_jiesuan">
                            	<!-- <td colspan="3"><span>补充说明：</span><input class="message" name="postscript_75080" style="background:#fff; border:#ccc solid 1px; padding:2px 10px 2px 0; width:250px; " value="选填，可告诉卖家您对订单的特殊要求。"></td>
                                <td colspan="4" style="text-align:right;"> 
                                   
	                                <p style="display:inline-block;margin-top: 10px;">
	                                	合计(含运费)： <span style="color:#FF5500;font:bold 18px tahoma" id="store_amount_span_75080">￥77.80</span>
	                                	<input type="hidden" name="store_amount_75080" id="store_amount_75080" value="77.8">
	                                	<input type="hidden" name="store_yuan_amount_75080" id="store_yuan_amount_75080" value="77.8">
	                                </p>
                                </td>
                                -->
                            </tr>
                            <tr>
                            </tr>
                        </tbody>
                        </table>
                    </div>
                   
                    <div class="gw2_querendd_btm">
                    	<table cellpadding="0" cellspacing="0" border="0" class="gqb_table">
                            <tbody><tr>
                            	<td colspan="7" style="text-align:right; padding-right: 0;">
                            	<div style="padding:3px;width: 240px;float: right;background-color: #FFEBCC; border: #FCA700 solid 1px;">
                                	<p style="background:#FFFFFF;padding:5px;">
                                	<span><em style="font-weight:700;">实付款：</em><b class="red t20" id="order_amount">￥0.00</b></span><br>
                                    <span>可获得山山积分：<b id="integral_amount">0</b>点</span>
                                    <input id="Jifen" name="jifen" value="214" type="hidden">
                                    </p>
                                </div>    
                                </td>
                            </tr>
                            <tr>
                            	<td colspan="7" style="text-align:right; border-bottom:0;">
									<input name="active_id" value="0" type="hidden">
									<input type="hidden" name="order_post" value="2">	
									<input type="hidden" name="stores_id[]" value="68875">
									<input type="hidden" name="stores_id[]" value="75080">
									<input type="hidden" name="goods_id[]" value="49968">      
									<input type="hidden" name="rec_id[]" value="177938">
								    <input type="hidden" name="goods_id[]" value="49433">      
									<input type="hidden" name="rec_id[]" value="177937">
								    <input type="hidden" name="goods_id[]" value="47925">      
									<input type="hidden" name="rec_id[]" value="177935">
									<a target="_top" class="back" href="shopping.jsp">返回购物车</a>
		<img id="sub_check" src="./index_store_files/gw_tjdd.gif" alt="提交订单" onclick="submit_check1()" border="0">
        <span id="sub_loading" style="height:25px; display:none;"><img src="./index_store_files/loading-016.gif" border="0"> 订单提交中... </span>
                            		   <br>                      
                            		<p style="float:right;padding-right: 0" class="tips">若价格变动，请在提交订单后联系卖家改价，并查看已买到的商品</p>
                            	</td>
                            </tr>
                        </tbody></table>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
<form action="./index_store_files/确认收货人资料和送货方式 - 山山商城_自媒体视频直播农产品购物平台.html" id="orderform" method="post" style="display:none">
<input type="hidden" name="goods_id[]" value="49968">
<input type="hidden" name="rec_id[]" value="177938">
<input type="hidden" name="goods_id[]" value="49433">
<input type="hidden" name="rec_id[]" value="177937">
<input type="hidden" name="goods_id[]" value="47925">
<input type="hidden" name="rec_id[]" value="177935">
<input type="hidden" name="stores_id[]" value="68875">
<input type="hidden" name="stores_id[]" value="75080">
<input type="hidden" name="order_post" value="1">
</form>
    <div class="clear"></div>
<div class="footer-wrap">
	<div class="noindex-space"></div>
	<div class="noindexfooter">
		<div class="index-footer">
		    <div class="footer">
		         <div class="shansahn-info clearfix">  
		                    <dl>				            
		                      <dt>消费者保障</dt>
		                       	<dd><a href="#" target="_blank"><em>·</em>保障范围</a></dd>
		                       	<dd><a href="#"><em>·</em>退货退款流程</a></dd>
		                       	<dd><a href="#"><em>·</em>消费者维权中心</a></dd>
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
		                <a href="#" class="ssb-weibo"><img src="./index_store_files/ssb-weibo.jpg" alt=""></a>
		                <a href="#" class="ssb-weibot"><img src="./index_store_files/ssb-weibot.jpg" alt=""></a>
		                <a href="javascript:void(0);" class="ssb-weixin"><img src="./index_store_files/ssb-weixin.jpg" alt=""><label class="mbb-weixin"></label></a>
 						<span class="ntkp ssb-weibot"><img src="./index_store_files/ssb-talk.jpg" alt="在线咨询"></span>					</p>
		            <p>Copyright©2011-2016shanshan360.com 浙江山山网络科技股份有限公司  版权所有<span class="statistics_code">
		            <script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5a250090ff571028094607805af27985' type='text/javascript'%3E%3C/script%3E"));
</script>
<script src="js/public/h.js" type="text/javascript"></script></span></p>
		            <p>增值电信业务经营许可证：浙B2-20120027</p>
		            <p>企业法人营业执照注册号：331127000009583</p>
		        </div>
		    </div>
		</div>
	</div>
</div>



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
<script type="text/javascript" src="js/index/confirm_order.js"></script>
<script type="text/javascript" src="js/index/index.js"></script>
</body></html>