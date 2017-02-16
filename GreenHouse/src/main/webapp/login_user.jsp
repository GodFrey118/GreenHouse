<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta charset="utf-8">
<meta name="robots" content="nofollow">
<link href="css/public/common.css" rel="stylesheet" type="text/css">
<link href="css/public/index.css" rel="stylesheet" type="text/css">   
<link href="css/public/common-V2.4.0.css" rel="stylesheet" type="text/css">          
<title>用户登录 - 山山商城_自媒体视频直播购物平台</title>
<meta name="keywords" content="山山商城,网上购物平台,农产品网购平台,视频直播购物平台，农产品网上购物平台,休闲零食,干果炒货,茶叶,食用菌,粮油,购物商城,我要买,我要卖,免费开店">
<script type="text/javascript" async="" src="js/public/pixel.php"></script>
<script type="text/javascript" async="" charset="utf-8" src="js/public/ntkfstat.js"></script>
<script charset="utf-8" src="js/public/v.js"></script>
<script type="text/javascript" async="" src="js/public/saved_resource"></script>
<script type="text/javascript" src="js/public/index.php"></script>
<script type="text/javascript" src="js/public/jquery-V2.3.0.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/jquery.superslide.2.1.1.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/ecmall.js"></script>  
<script type="text/javascript" src="js/public/ss.index-V2.4.0.js" charset="utf-8"></script>                                  
<script charset="utf-8" type="text/javascript" src="js/public/chk_form.js"></script>
<script type="text/javascript">
var timeout         = 500;
var closetimer        = 0;
var ddmenuitem      = 0;

function nav_open()
{    nav_canceltimer();
    nav_close();
    ddmenuitem = $(this).find('ul').eq(0).css('visibility', 'visible');}

function nav_close()
{if(ddmenuitem) ddmenuitem.css('visibility', 'hidden');}

function nav_timer()
{closetimer = window.setTimeout(nav_close, timeout);}

function nav_canceltimer()
{    if(closetimer)
    {    window.clearTimeout(closetimer);
        closetimer = null;}}

$(document).ready(function()
{    $('#nav > li').bind('mouseover', nav_open);
    $('#nav > li').bind('mouseout',  nav_timer);});

document.onclick = nav_close;
</script> 
<style>                 
#close_btn{width:30px;position:fixed;right:110px;top:10px;cursor:pointer}
#bg_div {margin:-390px auto 0px;z-index:10000;height: 400px;width:1190px;position:fixed;}
#top_nav{height:70px}
.pic img {width:150px;height:150px}
.small_img img{width:45px;height:45px}
.slide_img img{width:235px;height:470px} 
.collect{cursor:pointer}
</style>  
<script type="text/javascript" async="async" charset="utf-8" src="js/public/im.js" data-requiremodule="im"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/chat.in.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/mqtt31.js" data-requiremodule="MQTT"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/mqtt.chat.js" data-requiremodule="Connection"></script>
</head>
<body><div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div> 
<div class="ui-header header">
<div class="index_tbar ">
      <div class=" grid ">
           <div class="fr">
                <span class="fl name sn-login-info">您好！ 欢迎来山山商城购物！<a href="#" class="sn-register">免费注册</a><i class="sn-separator"></i></span>
                <span class="fl op">            
                </span>
           </div>
      </div>
</div>
</div>
<style>
.log_tips{
	background: none repeat scroll 0 0 #FEF2F2;
    border: 1px solid #ED6C00;
    line-height: 26px;
	margin-left: 94px;
    margin-bottom: 10px;
    position: relative;
    width: 270px;
	height: 30px;
	font-size: 14px;
	display: none;
}
.inp_de{
	border: 1px solid #CCCCCC;
    color: #999999;
    height: 40px;
    padding-left: 10px;
    width: 75px;
}
.log_tip a{
	color: #3461AD;
}
</style>
<link rel="stylesheet" type="text/css" href="css/public/common.css">
<link rel="stylesheet" type="text/css" href="css/public/reg.css">
<div style="background-color: #F2F2F2">
<div class="reg-box ovf">
     <div class="reg-top fl">
          <div class="content">
               <div class="fl reg-logo"><a href="#" target="_blank"><img src="./login_user_files/reg-logo.jpg"></a></div>
               <div class="fl reg-font f24 fyh">欢迎登录</div>
          </div> 
     </div>
     <div class="clear login_box">
     	<form method="post" id="login_form" name="login_form" onsubmit="return checkLogin();">
          <div class="login_con ovf">
               <div class="con fl">
                    <ul class="fl fl-box2"> 
                      <li class="form">
                      	<div class="log_tips">
                      		<div id="log_tips_tu" style="float: left; width: 25px; height: 50px;"><img width="25px" height="25px" src="./login_user_files/jg.png"></div>
                      		<div id="log_tips_wen" style="width: 240px;"><span class="log_tip"><a href="#">忘记登录密码？</a></span></div>
                      	</div>
                      </li>
                      <li class="form">
                           <div class="fl fl-txt f14"><font color="#FF0000">*</font>&nbsp;登录名：</div>
                           <div class="fl item-ifo">
                                 <input class="input_s1 reg-pwd f14 fuhao2 highlight2" type="text" name="user_name" tabindex="1" id="user_name" size="24" value="用户名/邮箱/已验证手机">  
                                 <i class="i-name"></i>
                           </div>
                      </li>
                      <li class="form">
                           <div class="fl fl-txt f14"><font color="#FF0000">*</font>&nbsp;登录密码：</div>
                           <div class="fl item-ifo">
                                <input type="password" name="password" id="password" size="24" class="reg-pwd input_s1" tabindex="2">
                                 <i class="i-pass"></i>
                                  <span class="tips"><a href="#">忘记登录密码？</a></span>
                                 <input _must="0" type="hidden" name="ret_url" value="%2Findex.php%3Fapp%3Dmember">
                           </div>
                      </li>
                          <li class="form ">
                          <div class="fl fl-txt f14">&nbsp;</div>
                          <div class="fl btn">
                          <button type="submit" name="login_submit" style="background-image: ../login_user_files/login_btn.gif" id="login_submit" class="iLc-submit-btn"></button>
                          <span class="tips gap"><a href="#">免费注册？</a></span>
                         </div>
                      </li>
                      <li class="form ">
                          <div class=" other fl">
                             <h1 class="f14">您可以使用以下山山商城合作伙伴的账户登录：</h1>
                             <span>
            					<a href="#"><img src="./login_user_files/weixin.png"></a>
                             	<a href="#"><img src="./login_user_files/dl_23.jpg"></a>
            					<a href="#"><img src="./login_user_files/dl_39.jpg"></a>
            					<a href="#"><img src="./login_user_files/dl_27.jpg"></a>
                             </span>
                        </div>
                      </li>
                    </ul>
                    <div class="fr">
                        	<a href="#" target="_blank">
						  	<img src="./login_user_files/118.jpg" width="414" height="253">
						  	</a>
					</div> 
               </div>
          </div> 
     	</form>
     </div>
</div>
</div>
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
		             	<a href="#" target="_blank">诚聘英才</a>
			            <a href="#" target="_blank">联系我们</a>
			            <a href="#" target="_blank">网站地图</a>  		               		                 
		                <span>关注山山商城：</span>
		                <a href="#" class="ssb-weibo"><img src="./login_user_files/ssb-weibo.jpg" alt=""></a>
		                <a href="#" class="ssb-weibot"><img src="./login_user_files/ssb-weibot.jpg" alt=""></a>
		                <a href="javascript:void(0);" class="ssb-weixin"><img src="./login_user_files/ssb-weixin.jpg" alt=""><label class="mbb-weixin"></label></a>
 						<span class="ntkp ssb-weibot"><img src="./login_user_files/ssb-talk.jpg" alt="在线咨询"></span>					</p>
		            <p>Copyright©2011-2016shanshan360.com 浙江山山网络科技股份有限公司  版权所有<span class="statistics_code"><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5a250090ff571028094607805af27985' type='text/javascript'%3E%3C/script%3E"));
</script><script src="js/public/h.js" type="text/javascript"></script></span></p>
		            <p>增值电信业务经营许可证：浙B2-20120027</p>
		            <p>可信网站 中网验证可信网站编码： e12061933110026523308174</p>
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
        <a target="_blank" href="#"><li id="right_gw"><div class="nums">0</div></li></a>
            <li id="right_weixin" class="right_ico"></li>
      <li id="right_tip" style="margin-top:90px" class="png">
            <div class="con ovf  ">
                <div class="fl arr" style="top:80px"><div class="fl arr_i"></div></div>
                 <ul>
                    <li><p><a href="" target="_brank"><img style="width: 118px; height: 118px;" src="./login_user_files/syewmsz_0.jpg"></a></p><p class="f14 fyh tec"><a href="" target="_brank"><font color="#5B5B5B">山山商城微信</font></a></p></li>
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
<script type="text/javascript">
$(function(){
	/*用户名删除小按钮*/
	$('#user_name').keyup(function(){
         if($(this).val())
         {
            $('.nickx').show();
         }else{
        	$('.nickx').hide();
         }
    });

	/*点击用户名删除小按钮*/
	$('.nickx').click(function(){
		$('#user_name').val('');
		$('.nickx').hide();
    });
	
});

/*点击用户名登录*/
function checkLogin()
{
	var username = $('#user_name').val();
	var password = $('#password').val();
    if(username=='用户名/邮箱/已验证手机')
	{
    	$(".log_tips").show();
    	$('.nickx').css('top','40px');
        $(".log_tip").html("请输入账户名");
        $('.nickx').css('top','80px');
        return false;
    }
	if(!username&&!password)
    {
		$(".log_tips").show();
    	$('.nickx').css('top','40px');
        $(".log_tip").html("请输入账户名和密码");
        $('.nickx').css('top','80px');
        return false;
    }
    if(!username)
    {
		$(".log_tips").show();
    	$('.nickx').css('top','40px');
        $(".log_tip").html("请输入账户名");
        $('.nickx').css('top','80px');
        return false;
    }
    if(!password)
    {
		$(".log_tips").show();
    	$('.nickx').css('top','40px');
        $(".log_tip").html("请输入密码");
        $('.nickx').css('top','80px');
        return false;
    }
    
    var flag = true;
    	
	//查询用户名
    $.ajax({
	    url:"/index.php?app=default&act=out_check_user_name",
	    dataType:"json",
	    async:false,  // 设置同步方式
        cache:false,
	    data:{user_name:username},
	    success:function(data){
	        if(data.retval=='false')
	        {
	        	$(".log_tips").show();
	        	$('.nickx').css('top','80px');
	            $(".log_tip").html("该账户名不存在 <a target='_blank' href='/find_password'>忘记会员名?</a>");
	            flag = false;
		    }else{

		    	//验证用户名与密码
			    $.ajax({
				    url:"/index.php?app=default&act=out_check_user",
				    dataType:"json",
				    async:false,  // 设置同步方式
			        cache:false,
				    data:{user_name:username,password:password},
				    success:function(data){
				        if(data.retval=='false')
				        {
				        	$(".log_tips").show();
				        	$('.nickx').css('top','106px');
				        	$('.log_tips').css('height','50px');
				            $(".log_tip").html("您输入的密码和账户名不匹配，请重新输入。 <a target='_blank' href='/find_password'>忘记密码</a>或 <a target='_blank' href='/find_password'>账户名</a>?");
				            flag = false;
					    }else{
					       						}
				    }
				});
				
			}
	    }
	});

    if(!flag)
    return false;

};
</script></body></html>