<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta charset="utf-8">

<link href="css/public/topshan.css" rel="stylesheet" type="text/css">
<link href="css/public/common.css" rel="stylesheet" type="text/css">
<title>商家入驻，山山商城免费入驻火热进行中</title>
<meta name="description" content="网上商城免费加盟山山商城，通过山山商城把手中的优质农特产品推向全国全世界，实现创业梦。中国农产品网购平台_山山商城。">
<meta name="keywords" content="商家入驻,网上商城加盟,山山商城">
<script type="text/javascript" async="" charset="utf-8" src="js/public/ntkfstat.js"></script>
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
<script type="text/javascript" async="async" charset="utf-8" src="js/public/im.js" data-requiremodule="im"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/chat.in.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/mqtt31.js" data-requiremodule="MQTT"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/public/mqtt.chat.js" data-requiremodule="Connection"></script></head>

<body>
<div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
<div class="ui-header ">
<div class="index_tbar1 " style="color: #666666;font-family: Arial,&#39;&#39;;font-size: 12px;">
      <div class=" grid1 ">
           <div style="cursor: pointer;" class="left1 public_collect" onclick="addBookmark()">
           <img src="./business_files/icon-star.gif">收藏山山
           </div>
           <div class="rig">
                <span class="left1 public_name pulic_sn-login-info">Hi！<a class="sli-item" href="#"> ssgmylrktk</a>！  <a href="#" class="sli-item">积分(<em>100)</em></a>  <a href="#" class="sli-item">消息<em>(0)</em></a><a href="#" class="sn-quit">退出</a><i class="sn-separator"></i></span>
                <span class="left1 op"></span>
                <ul id="navv" class="left1">
                        <li class="line">|</li>
                        <li class="col-conn">
                          <div class="ui-dropdown11 login-menu"><a href="#">我的订单</a>  </div>
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
                          <a target="_blank" href="#">客户服务 <b></b></a>
                          <ul class="unstyled frr ui-dropdown-menu11 ques">
                              <li><a target="_blank" href="./business_files/商家入驻，山山商城免费入驻火热进行中.html">商家入驻</a></li>
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
          	            <a href="#"><img width="380px" height="100px" src="./business_files/site_logo.jpg"></a>
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
                <a href="#"><div class="left1 top-bt1"><img src="./business_files/icon-meber.jpg">我的山山 </div></a>
               <div class="left1  ui-dropdown22">
               
               <a target="_blank" href="#" class="ui-dropdown-hd22"><div class="top-bt1 left1">
               <div class="left1"><img src="./business_files/icon-buy2.png"></div><div class="left1">购物车</div><div id="carts" class="num-bg left1">0</div> </div> </a>
              
               <ul class="unstyled frr ui-dropdown-menu22">
                   <li>
                   <div class="con left1 hide">
                        <div class="left1"><img src="./business_files/b-y.jpg"></div>
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
<link href="css/public/canvassB.css" rel="stylesheet" type="text/css">
<style>
body nav a{
display: block;
font-size: 14px;
color: #FFF;
padding: 0 20px;
}
body nav a:link{
display: block;
font-size: 14px;
color: #FFF;
padding: 0 20px;
}
</style>

<script type="text/javascript" src="js/public/index.php"></script>
<script type="text/javascript" src="js/public/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/public/jQuery.blockUI.js"></script>
<script type="text/javascript" src="js/public/jquery.nicescroll.js"></script>
<script type="text/javascript" src="js/public/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="js/public/zhaoshang.js"></script>
<script type="text/javascript" src="js/public/ion.js"></script>
<script type="text/javascript" src="js/public/ecmall.js"></script>
<script type="text/javascript" src="js/public/member.js"></script>

<nav>
  <ul class="Bmain">
    <li id="B-thisnav"><a href="./business_files/商家入驻，山山商城免费入驻火热进行中.html">招商首页</a></li>
    <li><span></span><a target="_blank" href="#">了解山山</a></li>
    <li><span></span><a href="#">招商标准</a></li>
    <li><span></span><a href="#">入驻流程</a></li>
    <li><span></span><a href="#">资费标准</a></li>
    <li><span></span><a href="#">直供招商</a></li>
    <li><span></span><a href="#">全国运营中心</a></li>
  </ul>
</nav>
<div class="Bbanner">
    <div class="BB-img effect">
				<div id="slideBox" class="slideBox">
					<div class="hd">
						<ul>
							<li class=""></li>
							<li class=""></li>
							<li class="on"></li>							
						</ul>
					</div>
					<div class="bd">
					<div class="tempWrap" style="overflow:hidden; position:relative; width:1920px"><ul style="width: 17280px; position: relative; overflow: hidden; padding: 0px; margin: 0px; left: -5760px;">
																			
						<li style="float: left; width: 1920px;">
                        <a href="http://www.shanshan360.com/check/operation" target="_blank">
                        <img src="./business_files/banner_upload_2.jpg" width="1920" height="260"></a></li>
                        <li style="float: left; width: 1920px;"><a href="http://www.shanshan360.com/check/busine" target="_blank">
                        <img src="./business_files/banner_upload_0.jpg" width="1920" height="260"></a></li>
                        <li style="float: left; width: 1920px;"><a href="http://www.shanshan360.com/check/check_notice" target="_blank">
                        <img src="./business_files/banner_upload_1.jpg" width="1920" height="260"></a></li>
                        <li style="float: left; width: 1920px;"><a href="http://www.shanshan360.com/check/operation" target="_blank">
                        <img src="./business_files/banner_upload_2.jpg" width="1920" height="260"></a></li>
                        <li style="float: left; width: 1920px;"><a href="http://www.shanshan360.com/check/busine" target="_blank">
                        <img src="./business_files/banner_upload_0.jpg" width="1920" height="260"></a></li>
                        <li style="float: left; width: 1920px;"><a href="http://www.shanshan360.com/check/check_notice" target="_blank">
                        <img src="./business_files/banner_upload_1.jpg" width="1920" height="260"></a></li>
                        <li style="float: left; width: 1920px;"><a href="http://www.shanshan360.com/check/operation" target="_blank">
                        <img src="./business_files/banner_upload_2.jpg" width="1920" height="260"></a></li>
                        <li style="float: left; width: 1920px;"><a href="http://www.shanshan360.com/check/busine" target="_blank">
                        <img src="./business_files/banner_upload_0.jpg" width="1920" height="260"></a></li>
                        <li style="float: left; width: 1920px;"><a href="http://www.shanshan360.com/check/check_notice" target="_blank">
                        <img src="./business_files/banner_upload_1.jpg" width="1920" height="260"></a></li></ul></div>
					</div>
				</div>
				<script type="text/javascript">jQuery(".slideBox").slide( {mainCell:".bd ul",effect:"leftLoop",autoPlay:true} );</script>
    </div>
    <div class="BBmain">
          <a href="javascript:;">了解入驻咨询</a>
          <a href="#">提交入驻申请</a>
    </div>
</div>
<div class="Bmain">
    <div class="zs-model1">
       <div class="zs-m">
           <h1><a href="#" target="_blank">信息公告</a></h1>
           <div class="zsm-left"><a href="#" target="_blank"><img src="./business_files/zhaoshang_03.jpg" width="128" height="120"></a></div>
           <ul>
             <li><a href="#" target="_blank"><em></em>入驻须知</a></li>
             <li><a href="#" target="_blank"><em></em>店铺类型介绍</a></li>
             <li><a href="#" target="_blank"><em></em>入驻所需材料</a></li>
             <li><a href="#" target="_blank"><em></em>资费调整公告</a></li>
             <li><a href="#" target="_blank"><em></em>专卖店店铺资质</a></li>
             <li><a class="zsmul-a" href="#" target="_blank">更多 &gt;</a></li>
           </ul>
       </div>
       <div class="zs-m">
           <h1><a href="#" target="_blank">开店商家入驻</a></h1>
           <div class="zsm-left"><a href="http://www.shanshan360.com/check" target="_blank">
           <img src="./business_files/zhaoshang_05.jpg" width="128" height="120"></a></div>
           <ul>
             <li><a href="#" target="_blank"><em></em>招商标准</a></li>
             <li><a href="#" target="_blank"><em></em>入驻流程</a></li>
             <li><a href="#" target="_blank"><em></em>资费标准</a></li>
             <li><a href="#" target="_blank"><em></em>常见问题</a></li>
           </ul>
       </div>
       <div class="zs-m">
           <h1><a href="#">直供商家入驻</a></h1>
           <div class="zsm-left"><a href="#" target="_blank"><img src="./business_files/zhaoshang_07.jpg" width="128" height="120"></a></div>
           <ul>
             <li><a href="#" target="_blank"><em></em>直供招商标准</a></li>
             <li><a href="#" target="_blank"><em></em>直供入驻流程</a></li>
             <li><a href="#" target="_blank"><em></em>直供资费标准</a></li>
             <li><a href="#" target="_blank"><em></em>直供常见问题</a></li>
           </ul>
       </div>
    </div>
    <div class="zs-model1">
       <div class="zs-m">
           <h1><a href="#" target="_blank">山山商学院</a></h1>
           <div class="zsm-left"><a href="#" target="_blank"><img src="./business_files/zhaoshang_12.jpg" width="128" height="120"></a></div>
           <ul>
             <li><a href="#" target="_blank"><em></em>新手指南</a></li>
             <li><a href="#" target="_blank"><em></em>平台规则</a></li>
             <li><a href="#" target="_blank"><em></em>课程中心</a></li>
             <li><a href="#" target="_blank"><em></em>广告营销</a></li>
           </ul>
       </div>
       <div class="zs-m">
           <h1><a href="#" target="_blank">商家品控</a></h1>
           <div class="zsm-left"><a href="#" target="_blank"><img src="./business_files/zhaoshang_13.jpg" width="128" height="120"></a></div>
           <ul>
             <li><a href="#" target="_blank"><em></em>知道行业标准</a></li>
             <li><a href="#" target="_blank"><em></em>了解品控动向</a></li>
             <li><a href="#" target="_blank"><em></em>学习优秀商家</a></li>
             <li><a href="#" target="_blank"><em></em>关注商家品控</a></li>
           </ul>
       </div>
       <div class="zs-m">
           <h1><a href="javascript:;" style="color:#FFF;">联系我们</a></h1>
           <div class="zsm-left"><a href="javascript:;"><img src="./business_files/zhaoshang_15.jpg" width="128" height="120"></a><a class="zsm-zixun" href="javascript:;" style="color:#FFF;">在线咨询</a></div>
           <ul>
             <li><a href="javascript:;"><em></em>商家咨询：400-826-3360</a></li>
             <li><a href="javascript:;"><em></em>周一至周五 （09:00-18:00）</a></li>
             <li><a href="javascript:;"><em></em>邮箱： service@shanshan360.com</a></li>
             <li><a href="javascript:;"><em></em>地址：浙江省丽水市天宁信息产业园12栋C座3楼 招商部 323000</a></li>
           </ul>
       </div>
    </div>
    <div class="sh-title"><span>商家操作指南</span></div>
  <div class="flow-list">
     <ul>
        <li class="flow-list-k">
           <a href="#">
           <span>01</span>
           <h1><img src="./business_files/flow_03.jpg" width="163" height="36">注册山山商城账号</h1>
           <p>可进入山山商学院页面，详细了解账号申请操作</p>
           <em>立即申请&gt;&gt;</em>
           </a>
        </li>
        <li class="flow-list-r"><img src="./business_files/flow_16.jpg" width="15" height="27"></li>
        <li class="flow-list-k">
           <a href="#">
           <span>02</span>
           <h1><img src="./business_files/flow_05.jpg" width="163" height="36">申请入驻</h1>
           <p>根据您是自由品牌或代理品牌，加入山山商城店铺</p>
           <em>立即申请&gt;&gt;</em>
           </a>
        </li>
        <li class="flow-list-r"><img src="./business_files/flow_16.jpg" width="15" height="27"></li>
        <li class="flow-list-k">
           <span>03</span>
           <h1><img src="./business_files/flow_07.jpg" width="163" height="36">等待审核</h1>
           <p>1.审核资料并签订合同；<br>
2.山山商城将于7个工作  &nbsp;&nbsp;&nbsp;日完成审核；<br>
3.商家向山山商城支付技  &nbsp;&nbsp;&nbsp;术服务费年费</p>
        </li>
        <li class="flow-list-r"><img src="./business_files/flow_16.jpg" width="15" height="27"></li>
        <li class="flow-list-k">
           <span>04</span>
           <h1><img src="./business_files/flow_09.jpg" width="163" height="36">发布商品，开店成功</h1>
           <p>1.30天内发布满规定数量  &nbsp;&nbsp;&nbsp;的商品；<br>2.商铺上线，开张大吉</p>
        </li>
     </ul>
  </div>
    <div class="sh-title"><span>商家成长案例</span></div>

					<div class="leftLoop">
						<div class="hd">
							<a class="next"></a>
							
							<a class="prev"></a>
						</div>
						<div class="bd">
						<div class="tempWrap" style="overflow:hidden; position:relative; width:915px"><ul class="picList" style="width: 8235px; position: relative; overflow: hidden; padding: 0px; margin: 0px; left: -2745px;">						  								
						<li style="float: left; width: 204px;">
						<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_6.jpg" width="204" height="58"></a></div>
						<div class="title"><a href="#" target="_blank" title="以最高标准，重新擎起有机食品的大旗并严格定义有机食品。 坚持有机、尊重自然。 全系列有机食品皆通过国家权威机购认证，100%有机自然栽培，无农药、无化学肥料、无人工香精、无人工添加剂。                                                                                                                                                                                                                                                                        在食品安全等问题层出不穷的今日，为您提供安全高品质的有机食品新选择。将探索的方向转往养生和健康，结合有机食品口感和健康养生的理念，让更多人认识有机食品崭新的一面。"><h1>秋然记拾</h1><p>以最高标准，重新擎起有机食品的大旗并严格定义有机食品。 坚持有机、尊重自然。 全系列有机食品皆...</p></a></div>
								</li><li style="float: left; width: 204px;">
								<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_7.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="源自于神农精神的百草味正以自己独特的方式精心打造健康优质的产品，在每一款产品中都融入了精致的情感，把 “圆满”、“快乐”的味道分享给所有朋友。百草味始终坚信，食物背后的情感故事往往要大于食物的本身，真正的好味道是从体味人生中获得。百草味正在不断努力与所有的朋友一同体味这百味的人生。2011年被评为浙江省优秀特许品牌。2012年被评为中国连锁经营金麒麟奖之最具成长力品牌。"><h1>百草味</h1><p>源自于神农精神的百草味正以自己独特的方式精心打造健康优质的产品，在每一款产品中都融入了精致的...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_8.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="福建省九州韵茶叶发展有限公司秉承“韵传九洲，品味天下”的经营理念，坚持“细微之处见风范，毫厘之间定乾坤”的服务准则，以“传承九州渊源茶文化，打造华夏连锁品牌”为奋斗目标，将传统制茶工艺与现代科技相结合，严格贯彻茶叶的标准化、规范化生产流程，运用先进的管理机制和经验，致力于为消费者提供最优质的产品和最满意的服务，不断的提升“九洲韵”的企业影响力、消费者认知度及品牌美誉度。2010年，“九洲韵”品牌再次被评选为“中国消费者满意名特优品牌”、“福建百佳名茶店”等荣誉称号。"><h1>九洲韵</h1><p>福建省九州韵茶叶发展有限公司秉承“韵传九洲，品味天下”的经营理念，坚持“细微之处见风范，毫厘之间...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_9.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="百滋百特是杭州多拿滋餐饮管理有限公司旗下的一个主要品牌，该品牌前期主要专注于甜甜圈的研发和推广。百滋百特中国总店坐落在素有“东方休闲之都、生活品质之城”—中国 杭州。该品牌以“做中国最好的甜甜圈”为目标，正以一种特有的全新经营模式引领着一种新的时尚和新的生活品味。自2008年10月18日在吴山广场开出中国第一家总店到现在。现杭州市区有四家直营店，在全国也开设二十多家连锁门店，遍及杭州、富阳、瑞安、宁波、张家港、太原、开封、郑州、湖州、舟山、临安以及沙特等海外市场。"><h1>百滋百特</h1><p>百滋百特是杭州多拿滋餐饮管理有限公司旗下的一个主要品牌，该品牌前期主要专注于甜甜圈的研发和推...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_0.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="源自大自然的馈赠，对食材的坚持，是对健康对生命的一种态度。来着世界香菇、黑木耳发源地的金信视质量为生命，参与制定香菇行业标准，不断加强标准化基地建设，15年来建设了周湖香菇基地、洪山黑木耳基地等多个标准化生产基地，总面积近500亩，从源头上把关质量，为大家奉献天然纯正的优质食用菌，让大家享受每一种天赐良品。2012年8月，入驻山山商城，再创新高。"><h1>金信</h1><p>源自大自然的馈赠，对食材的坚持，是对健康对生命的一种态度。来着世界香菇、黑木耳发源地的金信视质...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="" target="_blank"><img src="./business_files/store_upload_2.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="" target="_blank" title="“草原旭日”传承蒙古族文化，发扬“民族的才是世界的”品牌理念。以求实、求新、求创造的立业观，投身于科尔沁黄牛深加工的产业中。以地方特产的美誉优势，打造了“草原旭日”风干系列产品。精选优质科尔沁黄牛，传承古老工艺制作而成，每一根牛肉干都是肉之精华，越嚼越香。饮着酒烈，品着肉香，草原会讲给你“成吉思汗”和骑兵勇士身背牛肉干远征的故事。"><h1>草原旭日</h1><p>“草原旭日”传承蒙古族文化，发扬“民族的才是世界的”品牌理念。以求实、求新、求创造的立业观，投...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_3.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="天骄集团一直专注于中华枣文化的传承与弘扬，注重产品品牌与“食药同源”文化的结合，打造出知名品牌“天娇红”，并逐渐形成以红枣加工为核心，广泛开发各类天然干果的产品结构。集团始终贯彻“以义制利，稳步发展”思想，近五年销售业绩平均以50%以上的速度增长，2010年实现销售收入 8.5亿元，以扎实的成绩跃居业界前沿。先后列入农业产业化国家级重点龙头企业、国家扶贫开发重点龙头企业、国家高新技术企业、山西省首批科技创新型企 业、全国食品安全示范单位、世界杰出华商企业 500强、全国新农村建设优秀企业 500强。“天娇红”品牌也被国家工商总局评为消费者喜爱的百强品牌，天娇红产品入选 2008年北京奥运会推荐产品。"><h1>天娇红</h1><p>天骄集团一直专注于中华枣文化的传承与弘扬，注重产品品牌与“食药同源”文化的结合，打造出知名品牌...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_4.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="婆罗皇产自于全球第二大原始热带雨林——婆罗州原始雨林，是马来西亚婆罗洲生产，原装原瓶进口中国的高等级成熟蜂蜜品牌，拥有目前世界最大的森林驻点养蜂基地，蜂场位于东马来西亚沙拉越州，横跨婆罗洲巫省、民都鲁省以及加帛省一部分，面积达200万亩，是唯一同时拥有“欧盟有机认证”、“美国有机认证”、“清真哈拉认证”的目前在国内销售的蜂蜜（含进口）。"><h1>婆罗皇</h1><p>婆罗皇产自于全球第二大原始热带雨林——婆罗州原始雨林，是马来西亚婆罗洲生产，原装原瓶进口中国的...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_5.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="上海巧罗食品有限公司是一家集研发、生产、销售为一体的巧克力企业，将把法国人称之为“黑黄金”的松露巧克力带到了中国，甄选全球优质天然可可精华，使用轻手工工艺，在保留传统手工的技术上，采用世界上先进的研磨精炼设备，将现代科技生产技术完美融入经典的手工制作。巧罗巧克力是国内最早通过QS认证的轻手工巧克力品牌和中国东方航空头等舱指定巧克力品牌，公司是台湾食品巨头统一企业——巧克力指定供应商和金帝巧克力品牌指定生产工厂，起纯正的巧克力风味、时尚典雅的包装，成为合作和馈赠的首选！"><h1>巧罗</h1><p>上海巧罗食品有限公司是一家集研发、生产、销售为一体的巧克力企业，将把法国人称之为“黑黄金”的...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_6.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="以最高标准，重新擎起有机食品的大旗并严格定义有机食品。 坚持有机、尊重自然。 全系列有机食品皆通过国家权威机购认证，100%有机自然栽培，无农药、无化学肥料、无人工香精、无人工添加剂。                                                                                                                                                                                                                                                                        在食品安全等问题层出不穷的今日，为您提供安全高品质的有机食品新选择。将探索的方向转往养生和健康，结合有机食品口感和健康养生的理念，让更多人认识有机食品崭新的一面。"><h1>秋然记拾</h1><p>以最高标准，重新擎起有机食品的大旗并严格定义有机食品。 坚持有机、尊重自然。 全系列有机食品皆...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_7.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="源自于神农精神的百草味正以自己独特的方式精心打造健康优质的产品，在每一款产品中都融入了精致的情感，把 “圆满”、“快乐”的味道分享给所有朋友。百草味始终坚信，食物背后的情感故事往往要大于食物的本身，真正的好味道是从体味人生中获得。百草味正在不断努力与所有的朋友一同体味这百味的人生。2011年被评为浙江省优秀特许品牌。2012年被评为中国连锁经营金麒麟奖之最具成长力品牌。"><h1>百草味</h1><p>源自于神农精神的百草味正以自己独特的方式精心打造健康优质的产品，在每一款产品中都融入了精致的...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_8.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="福建省九州韵茶叶发展有限公司秉承“韵传九洲，品味天下”的经营理念，坚持“细微之处见风范，毫厘之间定乾坤”的服务准则，以“传承九州渊源茶文化，打造华夏连锁品牌”为奋斗目标，将传统制茶工艺与现代科技相结合，严格贯彻茶叶的标准化、规范化生产流程，运用先进的管理机制和经验，致力于为消费者提供最优质的产品和最满意的服务，不断的提升“九洲韵”的企业影响力、消费者认知度及品牌美誉度。2010年，“九洲韵”品牌再次被评选为“中国消费者满意名特优品牌”、“福建百佳名茶店”等荣誉称号。"><h1>九洲韵</h1><p>福建省九州韵茶叶发展有限公司秉承“韵传九洲，品味天下”的经营理念，坚持“细微之处见风范，毫厘之间...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_9.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="百滋百特是杭州多拿滋餐饮管理有限公司旗下的一个主要品牌，该品牌前期主要专注于甜甜圈的研发和推广。百滋百特中国总店坐落在素有“东方休闲之都、生活品质之城”—中国 杭州。该品牌以“做中国最好的甜甜圈”为目标，正以一种特有的全新经营模式引领着一种新的时尚和新的生活品味。自2008年10月18日在吴山广场开出中国第一家总店到现在。现杭州市区有四家直营店，在全国也开设二十多家连锁门店，遍及杭州、富阳、瑞安、宁波、张家港、太原、开封、郑州、湖州、舟山、临安以及沙特等海外市场。"><h1>百滋百特</h1><p>百滋百特是杭州多拿滋餐饮管理有限公司旗下的一个主要品牌，该品牌前期主要专注于甜甜圈的研发和推...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_0.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="源自大自然的馈赠，对食材的坚持，是对健康对生命的一种态度。来着世界香菇、黑木耳发源地的金信视质量为生命，参与制定香菇行业标准，不断加强标准化基地建设，15年来建设了周湖香菇基地、洪山黑木耳基地等多个标准化生产基地，总面积近500亩，从源头上把关质量，为大家奉献天然纯正的优质食用菌，让大家享受每一种天赐良品。2012年8月，入驻山山商城，再创新高。"><h1>金信</h1><p>源自大自然的馈赠，对食材的坚持，是对健康对生命的一种态度。来着世界香菇、黑木耳发源地的金信视质...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="" target="_blank"><img src="./business_files/store_upload_2.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="" target="_blank" title="“草原旭日”传承蒙古族文化，发扬“民族的才是世界的”品牌理念。以求实、求新、求创造的立业观，投身于科尔沁黄牛深加工的产业中。以地方特产的美誉优势，打造了“草原旭日”风干系列产品。精选优质科尔沁黄牛，传承古老工艺制作而成，每一根牛肉干都是肉之精华，越嚼越香。饮着酒烈，品着肉香，草原会讲给你“成吉思汗”和骑兵勇士身背牛肉干远征的故事。"><h1>草原旭日</h1><p>“草原旭日”传承蒙古族文化，发扬“民族的才是世界的”品牌理念。以求实、求新、求创造的立业观，投...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_3.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="天骄集团一直专注于中华枣文化的传承与弘扬，注重产品品牌与“食药同源”文化的结合，打造出知名品牌“天娇红”，并逐渐形成以红枣加工为核心，广泛开发各类天然干果的产品结构。集团始终贯彻“以义制利，稳步发展”思想，近五年销售业绩平均以50%以上的速度增长，2010年实现销售收入 8.5亿元，以扎实的成绩跃居业界前沿。先后列入农业产业化国家级重点龙头企业、国家扶贫开发重点龙头企业、国家高新技术企业、山西省首批科技创新型企 业、全国食品安全示范单位、世界杰出华商企业 500强、全国新农村建设优秀企业 500强。“天娇红”品牌也被国家工商总局评为消费者喜爱的百强品牌，天娇红产品入选 2008年北京奥运会推荐产品。"><h1>天娇红</h1><p>天骄集团一直专注于中华枣文化的传承与弘扬，注重产品品牌与“食药同源”文化的结合，打造出知名品牌...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_4.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="婆罗皇产自于全球第二大原始热带雨林——婆罗州原始雨林，是马来西亚婆罗洲生产，原装原瓶进口中国的高等级成熟蜂蜜品牌，拥有目前世界最大的森林驻点养蜂基地，蜂场位于东马来西亚沙拉越州，横跨婆罗洲巫省、民都鲁省以及加帛省一部分，面积达200万亩，是唯一同时拥有“欧盟有机认证”、“美国有机认证”、“清真哈拉认证”的目前在国内销售的蜂蜜（含进口）。"><h1>婆罗皇</h1><p>婆罗皇产自于全球第二大原始热带雨林——婆罗州原始雨林，是马来西亚婆罗洲生产，原装原瓶进口中国的...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_5.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="上海巧罗食品有限公司是一家集研发、生产、销售为一体的巧克力企业，将把法国人称之为“黑黄金”的松露巧克力带到了中国，甄选全球优质天然可可精华，使用轻手工工艺，在保留传统手工的技术上，采用世界上先进的研磨精炼设备，将现代科技生产技术完美融入经典的手工制作。巧罗巧克力是国内最早通过QS认证的轻手工巧克力品牌和中国东方航空头等舱指定巧克力品牌，公司是台湾食品巨头统一企业——巧克力指定供应商和金帝巧克力品牌指定生产工厂，起纯正的巧克力风味、时尚典雅的包装，成为合作和馈赠的首选！"><h1>巧罗</h1><p>上海巧罗食品有限公司是一家集研发、生产、销售为一体的巧克力企业，将把法国人称之为“黑黄金”的...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_6.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="以最高标准，重新擎起有机食品的大旗并严格定义有机食品。 坚持有机、尊重自然。 全系列有机食品皆通过国家权威机购认证，100%有机自然栽培，无农药、无化学肥料、无人工香精、无人工添加剂。                                                                                                                                                                                                                                                                        在食品安全等问题层出不穷的今日，为您提供安全高品质的有机食品新选择。将探索的方向转往养生和健康，结合有机食品口感和健康养生的理念，让更多人认识有机食品崭新的一面。"><h1>秋然记拾</h1><p>以最高标准，重新擎起有机食品的大旗并严格定义有机食品。 坚持有机、尊重自然。 全系列有机食品皆...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_7.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="源自于神农精神的百草味正以自己独特的方式精心打造健康优质的产品，在每一款产品中都融入了精致的情感，把 “圆满”、“快乐”的味道分享给所有朋友。百草味始终坚信，食物背后的情感故事往往要大于食物的本身，真正的好味道是从体味人生中获得。百草味正在不断努力与所有的朋友一同体味这百味的人生。2011年被评为浙江省优秀特许品牌。2012年被评为中国连锁经营金麒麟奖之最具成长力品牌。"><h1>百草味</h1><p>源自于神农精神的百草味正以自己独特的方式精心打造健康优质的产品，在每一款产品中都融入了精致的...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_8.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="福建省九州韵茶叶发展有限公司秉承“韵传九洲，品味天下”的经营理念，坚持“细微之处见风范，毫厘之间定乾坤”的服务准则，以“传承九州渊源茶文化，打造华夏连锁品牌”为奋斗目标，将传统制茶工艺与现代科技相结合，严格贯彻茶叶的标准化、规范化生产流程，运用先进的管理机制和经验，致力于为消费者提供最优质的产品和最满意的服务，不断的提升“九洲韵”的企业影响力、消费者认知度及品牌美誉度。2010年，“九洲韵”品牌再次被评选为“中国消费者满意名特优品牌”、“福建百佳名茶店”等荣誉称号。"><h1>九洲韵</h1><p>福建省九州韵茶叶发展有限公司秉承“韵传九洲，品味天下”的经营理念，坚持“细微之处见风范，毫厘之间...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_9.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="百滋百特是杭州多拿滋餐饮管理有限公司旗下的一个主要品牌，该品牌前期主要专注于甜甜圈的研发和推广。百滋百特中国总店坐落在素有“东方休闲之都、生活品质之城”—中国 杭州。该品牌以“做中国最好的甜甜圈”为目标，正以一种特有的全新经营模式引领着一种新的时尚和新的生活品味。自2008年10月18日在吴山广场开出中国第一家总店到现在。现杭州市区有四家直营店，在全国也开设二十多家连锁门店，遍及杭州、富阳、瑞安、宁波、张家港、太原、开封、郑州、湖州、舟山、临安以及沙特等海外市场。"><h1>百滋百特</h1><p>百滋百特是杭州多拿滋餐饮管理有限公司旗下的一个主要品牌，该品牌前期主要专注于甜甜圈的研发和推...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_0.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="源自大自然的馈赠，对食材的坚持，是对健康对生命的一种态度。来着世界香菇、黑木耳发源地的金信视质量为生命，参与制定香菇行业标准，不断加强标准化基地建设，15年来建设了周湖香菇基地、洪山黑木耳基地等多个标准化生产基地，总面积近500亩，从源头上把关质量，为大家奉献天然纯正的优质食用菌，让大家享受每一种天赐良品。2012年8月，入驻山山商城，再创新高。"><h1>金信</h1><p>源自大自然的馈赠，对食材的坚持，是对健康对生命的一种态度。来着世界香菇、黑木耳发源地的金信视质...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="" target="_blank"><img src="./business_files/store_upload_2.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="" target="_blank" title="“草原旭日”传承蒙古族文化，发扬“民族的才是世界的”品牌理念。以求实、求新、求创造的立业观，投身于科尔沁黄牛深加工的产业中。以地方特产的美誉优势，打造了“草原旭日”风干系列产品。精选优质科尔沁黄牛，传承古老工艺制作而成，每一根牛肉干都是肉之精华，越嚼越香。饮着酒烈，品着肉香，草原会讲给你“成吉思汗”和骑兵勇士身背牛肉干远征的故事。"><h1>草原旭日</h1><p>“草原旭日”传承蒙古族文化，发扬“民族的才是世界的”品牌理念。以求实、求新、求创造的立业观，投...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_3.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="天骄集团一直专注于中华枣文化的传承与弘扬，注重产品品牌与“食药同源”文化的结合，打造出知名品牌“天娇红”，并逐渐形成以红枣加工为核心，广泛开发各类天然干果的产品结构。集团始终贯彻“以义制利，稳步发展”思想，近五年销售业绩平均以50%以上的速度增长，2010年实现销售收入 8.5亿元，以扎实的成绩跃居业界前沿。先后列入农业产业化国家级重点龙头企业、国家扶贫开发重点龙头企业、国家高新技术企业、山西省首批科技创新型企 业、全国食品安全示范单位、世界杰出华商企业 500强、全国新农村建设优秀企业 500强。“天娇红”品牌也被国家工商总局评为消费者喜爱的百强品牌，天娇红产品入选 2008年北京奥运会推荐产品。"><h1>天娇红</h1><p>天骄集团一直专注于中华枣文化的传承与弘扬，注重产品品牌与“食药同源”文化的结合，打造出知名品牌...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_4.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="婆罗皇产自于全球第二大原始热带雨林——婆罗州原始雨林，是马来西亚婆罗洲生产，原装原瓶进口中国的高等级成熟蜂蜜品牌，拥有目前世界最大的森林驻点养蜂基地，蜂场位于东马来西亚沙拉越州，横跨婆罗洲巫省、民都鲁省以及加帛省一部分，面积达200万亩，是唯一同时拥有“欧盟有机认证”、“美国有机认证”、“清真哈拉认证”的目前在国内销售的蜂蜜（含进口）。"><h1>婆罗皇</h1><p>婆罗皇产自于全球第二大原始热带雨林——婆罗州原始雨林，是马来西亚婆罗洲生产，原装原瓶进口中国的...</p></a></div>
								</li><li style="float: left; width: 204px;">
									<div class="pic"><a href="#" target="_blank"><img src="./business_files/store_upload_5.jpg" width="204" height="58"></a></div>
									<div class="title"><a href="#" target="_blank" title="上海巧罗食品有限公司是一家集研发、生产、销售为一体的巧克力企业，将把法国人称之为“黑黄金”的松露巧克力带到了中国，甄选全球优质天然可可精华，使用轻手工工艺，在保留传统手工的技术上，采用世界上先进的研磨精炼设备，将现代科技生产技术完美融入经典的手工制作。巧罗巧克力是国内最早通过QS认证的轻手工巧克力品牌和中国东方航空头等舱指定巧克力品牌，公司是台湾食品巨头统一企业——巧克力指定供应商和金帝巧克力品牌指定生产工厂，起纯正的巧克力风味、时尚典雅的包装，成为合作和馈赠的首选！"><h1>巧罗</h1><p>上海巧罗食品有限公司是一家集研发、生产、销售为一体的巧克力企业，将把法国人称之为“黑黄金”的...</p></a></div>
								</li></ul></div>
						</div>
					</div>
<script type="text/javascript">jQuery(".leftLoop").slide({mainCell:".bd ul",effect:"leftLoop",vis:3,scroll:1,autoPlay:true});</script>
</div>
<div class="BB-foot">
   <div class="Bmain">请帮助我们提高！<a target="_blank" href="#">商家入驻页面用户反馈</a></div>
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
		             	<a href="#" target="_blank">山山简介</a>
			            <a href="#" target="_blank">诚聘英才</a>
			            <a href="#" target="_blank">联系我们</a>
			            <a href="#" target="_blank">网站地图</a>		               		                 
		                <span>关注山山商城：</span>
		                <a href="#" class="ssb-weibo"><img src="./business_files/ssb-weibo.jpg" alt=""></a>
		                <a href="#" class="ssb-weibot"><img src="./business_files/ssb-weibot.jpg" alt=""></a>
		                <a href="javascript:void(0);" class="ssb-weixin">
                        <img src="./business_files/ssb-weixin.jpg" alt=""><label class="mbb-weixin"></label></a>
						<span class="ntkp ssb-weibot"><img src="./business_files/ssb-talk.jpg" alt="在线咨询"></span></p>
		            <p>Copyright©2011-2016shanshan360.com 浙江山山网络科技股份有限公司  版权所有</p>
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
                    <li><p><a href="" target="_brank">
                    <img style="width: 118px; height: 118px;" src="./business_files/syewmsz_0.jpg"></a></p><p class="f14 fyh tec">
                    <a href="" target="_brank"><font color="#5B5B5B">山山商城微信</font></a></p></li>
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
<span class="statistics_code" style="visibility:hidden;"><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5a250090ff571028094607805af27985' type='text/javascript'%3E%3C/script%3E"));
</script><script src="js/public/h.js" type="text/javascript"></script></span>

</body></html>