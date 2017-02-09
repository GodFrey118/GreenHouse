<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7 charset=utf-8">

<title>申请开店第二步 - 山山商城_自媒体视频直播农产品购物平台</title>
<meta name="keywords" content="山山商城,网上购物平台,农产品网购平台,视频直播购物平台，农产品网上购物平台,休闲零食,干果炒货,茶叶,食用菌,粮油,购物商城,我要买,我要卖,免费开店">
<link href="css/public/common-V2.3.0.css" rel="stylesheet" type="text/css">
<link href="css/public/specialSell-V2.3.0.css" rel="stylesheet" type="text/css">
<link href="css/public/width1190-V2.3.0.css" rel="stylesheet" type="text/css">
<link href="css/apply_css/common.css" rel="stylesheet" type="text/css">
<link href="css/public/ecmall.css" rel="stylesheet" type="text/css">
<link href="css/public/ckgwc.css" rel="stylesheet" type="text/css">
<script type="text/javascript" async="" src="js/public/pixel.php"></script>
<script type="text/javascript" async="" charset="utf-8" src="js/public/ntkfstat.js"></script>
<script charset="utf-8" src="js/public/v.js"></script><script type="text/javascript">

var SITE_URL = "http://www.shanshan360.com";
var PRICE_FORMAT = '¥%s';
var gods_hot = "黑面菇";
var store_hot = "";

</script>
<script type="text/javascript" src="js/public/index.php"></script>
<script type="text/javascript" src="js/public/jquery-V2.3.0.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/jquery-v1.7.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/ecmall.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/common.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="js/public/mlselection.js"></script>
<script charset="utf-8" type="text/javascript" src="js/public/jquery.validate.js"></script><!--<editmode></editmode>-->
<link href="css/public/canvassB.css" rel="stylesheet" type="text/css">
<script type="text/javascript" async="async" charset="utf-8" src="js/public/im.js" data-requiremodule="im"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/chat.in.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/mqtt31.js" data-requiremodule="MQTT"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/mqtt.chat.js" data-requiremodule="Connection"></script>
</head>

<body>
<div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
<div class="main_shanshan">
<div id="site-nav">
	<div id="sn-con">
    	<div class="sn-container clearfix">
        	<p class="sn-login-info">Hi！<a class="sli-item" href="#"> ssgmylrktk</a>！  <a href="#" class="sli-item">积分(<em>100)</em></a>  <a href="#" class="sli-item">消息<em>(0)</em></a><a href="#" class="sn-quit">退出</a><i class="sn-separator"></i></p>
            <ul class="sn-quick-menu">
            	<li class="myShanshan" ectype="buyers">
                	<div class="mS-menu">
                    	<a href="#" class="mS-mtit">
                        	我的山山
                            <b></b>
                        </a>
                        <div class="mS-mcon" style="display: none;">
                        	<div class="mS-mcon-panel">
                            	<a href="#">已买到的商品</a>
                                <a href="#">已卖出的商品</a>
                            </div>
                        </div>
                    </div>
                </li>
               
                <li class="sqm-cart" ectype="buyers">
                	<a href="#" class="mS-mtit mS-menu">
                    	<i class="sqm-cart-ico"><img src="./apply_files/cart.png"></i>
                                                               购物车 <span>0</span> 件</a>
                </li>
                <li class="sqm-enshrine" ectype="buyers">
                	<div class="mS-menu" id="collect_folder">
                    	
                    </div>
                </li>
               
                <li class="sqm-cart" ectype="seller" style="display: none;">
                   	<a href="#" class="mS-mtit" style="width:50px;">
                       	卖家中心
                       </a>
                </li>
                <li class="sqm-service">
                	<div class="mS-menu">
                    	<a href="#" class="mS-mtit">
                        	客户服务
                            <b></b>
                        </a>
                        <div class="mS-mcon" style="display:none;">
                        	<div class="mS-mcon-panel">
                            	<a href="#">商家入驻</a>
                                <a href="#">常见问题</a>
                                <a href="#">投诉维权</a>
                                <a href="#" target="_blank">在线咨询</a>
                                <a href="#">保障天堂</a>
                                <a href="#">山山品控</a> 
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>


<div class="header">
	<div class="headerCon clearfix">
    	<div class="shanshanLogo"><a href="#"><img src="./apply_files/logo.jpg" alt="山山商城" border="0"></a></div>
        <div class="shanshanSearch clearfix">
        <form method="get" id="keyword_form" action="http://search.shanshan360.com/index.php">
            <div class="sSearch-con">
                                <label style="visibility: visible; color: rgb(102, 102, 102);">黑面菇</label>
                                <input type="text" name="keyword" id="keyword" value="" class="sSearch-con-input" accesskey="s" tabindex="9" autocomplete="off" autofocus="true" x-webkit-speech="" x-webkit-grammar="builtin:search">
                <button type="submit" class="sSearch-con-btn"></button>
            </div>
         </form>   
        </div>
    </div>
</div>  
    <script type="text/javascript">
		$(function(){
			$(".mcate-item-bd a").css({color: '#FFFFFF','font-size': '12px',padding: '0 7px','white-space':' nowrap'});
			var _url=window.location.href;
			if(/app/.test(_url) && !/app=default/.test(_url)){
				$(".nav_allpro").mouseover(function(){
				
					$("#mallCate-bd").css('display','block');
					$("#_cate_xialaico").attr('class','cate_xialaico2');
				
				}).mouseout(function(){
					$("#_cate_xialaico").attr('class','cate_xialaico');
					$("#mallCate-bd").css('display','none');
				});
			}
		});
	</script>
    <nav>
  <ul class="Bmain">
    <li><a href="#">招商首页</a></li>
    <li><span></span><a target="_blank" href="#">了解山山</a></li>
    <li><span></span><a href="#">招商标准</a></li>
    <li><span></span><a href="#">入驻流程</a></li>
    <li><span></span><a href="#">资费标准</a></li>
    <li><span></span><a href="#">直供招商</a></li>
    <li><span></span><a href="#">全国运营中心</a></li>
  </ul>
</nav>
<link href="css/public/wyrz.css" rel="stylesheet" type="text/css">
<link href="css/public/inmustknow.css" rel="stylesheet" type="text/css">
<div class="content">
	<div class="con_main">
		<div class="ss_rz_nav">
			<ul>
				<li>1. 选择店铺类型</li>
				<li class="ss_rz_current">2. 填写店主和店铺信息</li>
				<li>3. 完成</li>
			</ul>
		</div>
		<div class="ss_dpInfo">
			<div class="ss_infoCnt">
				<form method="post" enctype="multipart/form-data" id="apply_form" novalidate="novalidate">
					<div class="ss_infoType">
						<label style="position:relative">店主姓名：
						</label> 
						<input type="text" name="owner_name" id="owner_name" value="建议使用中文" style="color:#B6B7B9"> <label></label>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<label style="position:relative">身份证号：
						</label> 
						<input type="text" name="owner_card" id="owner_card" value="输入正确的身份证号" style="color:#B6B7B9"> <label></label>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<label style="position:relative">店铺名称：
						</label> <input type="text" name="store_name" id="store_name" value="建议【店铺名+经营范围+店铺类型】" style="color:#B6B7B9">（您刚所选店铺类型是：旗舰店） <label></label>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<label>公司名称：</label>
						<input type="text" name="company_name" id="company_name" value="">
						<label></label>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType" id="region">
						<label>所在地区：</label> <input type="hidden" name="region_id" value="" class="mls_ids"> <input type="hidden" name="region_name" value="" class="mls_namess">  <select name="region" class="d_inline">
							<option value="0">请选择...</option> <option value="10701">北京</option><option value="6942">天津</option><option value="6961">河北省</option><option value="7144">山西省</option><option value="7275">内蒙古</option><option value="7389">辽宁省</option><option value="7504">吉林省</option><option value="7574">黑龙江省</option><option value="7715">上海</option><option value="7736">江苏省</option><option value="7856">浙江省</option><option value="7958">安徽省</option><option value="8076">福建省</option><option value="8171">江西省</option><option value="8282">山东省</option><option value="8440">河南省</option><option value="8618">湖北省</option><option value="8732">湖南省</option><option value="8869">广东省</option><option value="9012">广西壮族自治区</option><option value="9136">海南省</option><option value="9161">重庆市</option><option value="9202">四川省</option><option value="9405">贵州省</option><option value="9503">云南省</option><option value="9649">西藏</option><option value="9730">陕西省</option><option value="9848">甘肃省</option><option value="9950">青海省</option><option value="10001">宁夏</option><option value="10029">新疆</option><option value="10144">台湾省</option><option value="10145">澳门</option><option value="10146">香港</option>						</select> <label></label>
					</div>
					
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<label>详细地址：</label> <input type="text" name="address" id="address" value=""> <label></label>
					</div>
									
										<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<label style="position:relative">店铺二级域名：
						</label> 
						<input type="text" value="大于3个字节的英文字母" style="color:#B6B7B9" name="domain" id="domain">.shanshan360.com
						<label></label>
					</div>
					
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<label>邮政编码：</label> <input type="text" name="zipcode" id="zipcode" value="" onblur="emp();"> <label></label><span id="e">例如 :200000</span>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<label>联系电话：</label> <input type="text" name="tel" id="tel" value="" onblur="emp1();"> <label></label><span id="p">例如 :0578-5097752 或 13800138000</span>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<label>上传证件：</label> <input type="file" name="image_1"> <label></label><span>法人身份证 正面，必填，图片大小不能超过3M</span>
					</div>
						<div class="ss_line_height"></div>
					<div class="ss_infoType">
						    <input style="margin-left: 63px;" type="file" name="image_2"> <label></label><span>法人身份证 背面，必填，图片大小不能超过3M</span>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<label>上传执照：</label> <input type="file" name="image_3"> <label></label><span>企业营业执照，必填，图片大小不能超过3M</span>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<input style="margin-left: 63px;" type="file" name="image_4"> <label></label><span>组织机构代码证，必填，图片大小不能超过3M</span>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<input style="margin-left: 63px;" type="file" name="image_5"> <label></label><span>企业税务登记证，必填，图片大小不能超过3M</span>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<input style="margin-left: 63px;" type="file" name="image_6"> <label></label><span>商标注册证或受理书，必填，图片大小不能超过3M</span>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<label>其它证件：</label> <input type="file" name="image_7"> <label></label><span>有机认证/绿色认证等，图片大小不能超过3M</span>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType" id="ss_serv">
						<label style="color: #000;">服务保障：</label> 
						<input type="checkbox" onclick="return false" checked="checked" name="assu_goods" value="bz" id="assu_goods"> <label>正品保障</label> 
					<!-- 	<input type="checkbox" name="compensate" value="cs" id="compensate"/> <label>假一赔五</label> -->
						<input type="checkbox" onclick="return false" checked="checked" name="seven_back" value="th" id="seven_back"> <label>7天退换</label>
					<!--  	<input type="checkbox" name="price_differen" value="cj" id="price_differen"/> <label>差价返还</label>
						<input type="checkbox" name="soon_delivery" value="fh" id="soon_delivery"/> <label>闪电发货</label>-->
						<input type="checkbox" onclick="return false" checked="checked" name="pro_invoices" value="fp" id="pro_invoices"> <label>提供发票</label>
						<div class="ss_line_height"></div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" name="notice" value="1" id="warning"> <label for="warning">我已认真阅读并完全同意<a href="http://www.shanshan360.com/index.php?app=article&act=service_center&item=det&article_id=571" target="_blank" id="cheng">山山商城开店协议</a>中的所有条款</label>
					</div>
					<div class="ss_line_height"></div>
					<div class="ss_infoType">
						<input class="ss_immkd" type="submit" value="" style="background: url(http://www.shanshan360.com/themes/mall/default/styles/default/images/ss_submit.gif) no-repeat; width: 86px; height: 36px" onclick="return formCheck();">
					</div>
				</form>
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
			            <a href="#">网站地图</a>
			                		               		                 
		                <span>关注山山商城：</span>
		                <a href="#" class="ssb-weibo"><img src="./apply_files/ssb-weibo.jpg" alt=""></a>
		                <a href="#" class="ssb-weibot"><img src="./apply_files/ssb-weibot.jpg" alt=""></a>
		                <a href="javascript:void(0);" class="ssb-weixin"><img src="./apply_files/ssb-weixin.jpg" alt=""><label class="mbb-weixin"></label></a>
 						<span class="ntkp ssb-weibot"><img src="./apply_files/ssb-talk.jpg" alt="在线咨询"></span>					</p>
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
                     <li><p><a href="" target="_brank">
                     <img style="width: 118px; height: 118px;" src="./apply_files/syewmsz_0.jpg">
                     </a></p><p class="f14 fyh tec"><a href="" target="_brank"><font color="#5B5B5B">山山商城微信</font></a></p></li>
                 </ul>
            </div>
        </li>
                <li id="right_sc" onclick="addBookmark()"></li>
        <li><div id="backToTop" style="display: none;"><a href="javascript:;" onfocus="this.blur();" class="backToTop_a png"></a></div></li>

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
<script type="text/javascript" src="js/apply_js/apply.js" charset="utf-8"></script>
</div></body></html>