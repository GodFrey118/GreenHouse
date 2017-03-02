<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta charset="utf-8">
    
<title>GreenHouse商城</title>
<script type="text/javascript" src="js/public/jquery-V2.3.0.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/jquery.superslide.2.1.1.js" charset="utf-8"></script>                           
<script charset="utf-8" type="text/javascript" src="js/public/jquery-ui-V2.3.0.js"></script> 
<link rel="stylesheet" type="text/css" href="css/public/jquery-ui-V2.3.0.css">
<script type="text/javascript" src="js/index/Seach.js"></script> 
<script type="text/javascript" src="js/index/logout.js"></script> 

<link rel="stylesheet" type="text/css"  href="css/public/common.css"/>
<link rel="stylesheet" type="text/css"  href="css/public/index.css"/>
<link rel="stylesheet" type="text/css"  href="css/public/common-V2.4.0.css"/> 
<link rel="stylesheet" type="text/css"  href="css/public/index_css.css"/>  

</head>
<body>
<div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>  

<div id="rightButton" style="right: 0px;">
    <ul id="right_ul">  
     <li id="right_kf" onclick="openChatWindow(&#39;&#39;);"></li>
        <a target="_blank" href="shopping.jsp">
     <li id="right_gw">
        <div class="nums">0</div>
     </li>
        </a>
         <li id="right_weixin" class="right_ico"></li>
         <li id="right_tip" style="margin-top: 90px; top: -10px; display: none;" class="png">
            <div class="con ovf  ">
                <div class="fl arr" style="top:80px"><div class="fl arr_i"></div></div>
                 <ul>
                    <li>
                    <p>
                    <a href="#" target="_brank"><img style="width: 118px; height: 118px;" src="./index_files/syewmsz_0.jpg"></a></p><p class="f14 fyh tec">
                    <a href="#" target="_brank"><font color="#5B5B5B">山山商城微信</font></a>
                    </p>
                    </li>
                </ul>
            </div>
        </li>
        <li id="right_sc" onclick="addBookmark()"></li>
        <li><div id="backToTop" style="display: block;"><a href="#" onfocus="this.blur();" class="backToTop_a png"></a></div></li>
    </ul>
</div>
<div class="ui-header header">
<div class="index_tbar ">
      <div class=" grid ">
           <div class="fl collect" onclick="addBookmark()">
           <img src="./index_files/icon-star.gif">收藏山山
           </div>
           <div class="fr">
                <c:choose>
				<c:when test="${loginUser eq null}">
					<span id="loginForm" class="fl name sn-login-info">您好！ 欢迎来山山商城购物！<a href="login_user.jsp" class="sn-login">请登录</a> <a href="page/register.jsp" class="sn-register">免费注册</a><i class="sn-separator"></i></span>
				</c:when>
				<c:otherwise>
				<span class="fl name sn-login-info" style='color:green;'>欢迎  ${loginUser } 使用本网站 &nbsp &nbsp &nbsp &nbsp<a href="#" class="sn-login">个人信息</a> 
				<a href='login_user.jsp' onclick='logout()' class="sn-register">退出</a><i class="sn-separator"></i></span>
				
				</c:otherwise>
			</c:choose>
                
                <span class="fl op">            
                </span>
                <ul id="nav" class="fl">
                 <li class="line">|</li>
	                    <li class="col-con">
	                      <div class="ui-dropdown login-menu">     
                              <a href="page/sale_goods.jsp" class="ui-dropdown-hd">我的订单 <b></b></a> 
                              <ul class="unstyled fr ui-dropdown-menu">
                                  <li><a href="user_trade.jsp">已买到的商品</a></li>
                                  <li><a href="#">已卖出的商品</a></li>
                              </ul>        
	                      </div>
	                    </li>
                        <li class="line">&nbsp;&nbsp;|</li>
	                    <li class="col-con">
	                      <div class="ui-dropdown">
	                          <a href="#" class="ui-dropdown-hd">收藏夹 <b></b></a>
	                          <ul class="unstyled fr ui-dropdown-menu">
	                              <li><a href="#">收藏的宝贝</a></li>
	                              <li><a href="#">收藏的店铺</a></li>
	                          </ul>
	                      </div>
	                    </li>
                                       <li class="line1">|</li>
                   <li class="col-con2">
                       <div class="ui-dropdown">
                        <a href="#" class="ui-dropdown-hd"><span class="fl">手机山山</span><span class=" phon fl"></span></a>
                        <ul class="unstyled fr ui-dropdown-menu weixin">
                              <li>
                                 <div class="con fl">
                                 <div class="fl"><img src="./index_files/erweima.jpg" width="76px" height="76px"></div>
                                 <div class="fl font">扫描我即刻下载<br><font color="#FF0000" class="f14 b">山山商城客户端</font></div>
                                 <div class="clear bt">
                                 <a href="#"><img src="./index_files/an_icon.jpg"></a> <a href="#"><img src="./index_files/ap_icon_kf.jpg"></a>
                                 </div>
                                 </div>
                              </li>
                            
                          </ul>
                       </div>   
                  </li>
                <li class="line1">|</li>
                    <li class="col-con">
                      <div class="ui-dropdown">
                          <a href="#" class="ui-dropdown-hd">客户服务 <b></b></a>
                          <ul class="unstyled fr ui-dropdown-menu ques">
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
<div class="grid clear ">
     <div class="top-con fl">
          <div class="logo fl"> 
            <a href="./index_files/index.html"><img width="380px" height="100px" src="./index_files/site_logo.jpg"></a>
          </div>
          
          <div class="fl">
          		<form target="_blank" method="get" id="keyword_form" action="http://search.shanshan360.com/index.php">
	                <div class="search-bar fl">
	                     <div class="form">
	                         <input type="text" name="keyword" id="keyword" value="畲葛山黄粿" class="sSearch-con-input text f1" accesskey="s" tabindex="9" autocomplete="off" autofocus     x-webkit-speech="" x-webkit-grammar="builtin:search"> 
	                         <input type="submit" value="搜索" class="button cur sSearch-con-btn f1">
	                     </div>
	                </div> 
                </form>
                <div class="clear hotwords fl">  
            	 	<strong>热门搜索：</strong>       
		            			<a href="#" target="_blank">青钱柳原叶</a>
		            			<a href="#" target="_blank">土家鸡</a>
		            			<a href="#" target="_blank">红心萝卜脆宝</a> 
                </div>
          </div>
            
          <div class="top_button fl">
                <a href="#">
                   <div class="fl top-bt"><img src="./index_files/icon-meber.jpg">我的山山 </div>
                 </a>
               <div class="fl  ui-dropdown2">
               
               <a target="_blank" href="shopping.jsp" class="ui-dropdown-hd2">
                 <div class="top-bt fl">
                   <div class="fl buy">
                   <img src="./index_files/icon-buy2.png">
                   </div><div class="fl">购物车</div>
                   <div id="carts" class="num-bg fl">0</div>
                 </div>
               </a>
              
               <!-- <ul class="unstyled fr ui-dropdown-menu2">
                   <li>
                     <div style="display:block;" class="con fl hide carts_show_g" id="null_cart">
                        <div class="fl"><img src="./index_files/b-y.jpg"></div>
                        <div class="fl cart_show">你的购物车是空的，赶快去购物吧！</div>
                     </div>
                   
                     <font  style="display:none;" id="show_cart_1" class="fyh f14 ml5 fl show_cart">最新加入的商品</font>
                     <div class="left1left1 clear1 pro-list1" id="pro-list">
                     </div>
                   <div style="display:none;" id="shop" class="js1 clear1 left1">
                   <p>共 <font class="cff6">1</font> 件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 共计<font class="cff6 ">￥</font>
                   <font class="f-s cff6 f18 t_money_0">39.</font>
                   <font class="f13 f-s cff6 t_money_1">00</font></p>
                   <p class="ter"><a target="_blank" href="#">
                   <button type="button" class="choose_btn f14 fyh">去购物车结算</button>
                   </a></p>
                   </div>    
                   </li>
               </ul> -->
               <ul class="unstyled fr ui-dropdown-menu2">
                   <li>
                   <div id="null_cart" style="display:block;" class="con fl hide carts_show_g">
                        <div class="fl"><img src="./index_files/b-y.jpg"></div>
                        <div class="fl cart_show">你的购物车是空的，赶快去购物吧！</div>
                   </div>
                   
                   <font style="display:none;" class="fyh f14 ml5 fl show_cart">最新加入的商品</font>
                   <div class="fl clear pro-list" id="pro-list"> 
	                   <!--<div class="left">
			                    <div class="tit carts_177721">
			                       <div class="left ml5">小计：￥39.00</div>
			                   </div>
			                   <div class="pro-con1 left1 carts_177721">
			                       <span class="left1 img"><img style="width:50px;height:50px;" src="./index_store_files/small_201507291048161158.jpg"></span>
			                       <span class="left1 pro-name1 lh18">野生仙人掌果 仙人果 2斤装 海南水果新鲜热带水果  偏远地区不发货</span>
			                       <span class="left1  pri lh18"><p>
			                       <font class="cff6 f14">￥39.00</font>*1</p>
			                       <p class="ter">
			                       <a href="javascript:;" cart_id="177721" class="delete_cart">删除</a></p></span>
			                   </div> 
	                   </div>-->
                   </div>
                   <div style="display:none;" id="shop" class="js clear fl">
                   <p>共 <font class="cff6">1</font> 件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 共计<font class="cff6 ">￥</font>
                   <font class="f-s cff6 f18 t_money_0">39.</font>
                   <font class="f13 f-s cff6 t_money_1">00</font></p>
                   <p class="ter"><a target="_blank" href="shopping.jsp">
                   <button type="button" class="choose_btn  f14 fyh">去购物车结算</button>
                   </a></p></div>
                   </li>
                </ul>
            </div>
         </div>
     </div>
</div>
 <div class="nav-bar clear ovf">
     <div class="container ovf">
          
          <div class="menu">
              <div class="all-sort"><h2><a href="javascript:void(0);">全部商品分类</a></h2></div>
              <div class="nav">
                  <ul class="clearfix">
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
</div> 
<div class="csliderMain">
     <div class="banner" style="overflow: hidden; position: relative;">
          <ul class="bannerpic" style="width: 0px; position: relative; height: 450px;">
               <li style="opacity: 1; left: 0px; top: 0px; z-index: 6; position: absolute; width: 0px; display: none;">         
               <div style="float:left; position:absolute"><img alt="" src="./index_files/SHANSHAN_IMG_52_5832281.jpg"></div>
               <div class="linka"><a target="_blank" href="#"><img alt="" src="./index_files/SHANSHAN_IMG_52_5832281.jpg"></a></div>
               </li>
            
               <li style="opacity: 1; left: 0px; top: 0px; z-index: 6; position: absolute; width: 0px; display: none;">         
               <div style="float:left; position:absolute"><img alt="" src="./index_files/SHANSHAN_IMG_48_7929873.jpg"></div>
               <div class="linka"><a target="_blank" href="#"><img alt="" src="./index_files/SHANSHAN_IMG_48_7929873.jpg"></a></div>
               </li>
            
               <li style="opacity: 1; left: 0px; top: 0px; z-index: 6; position: absolute; width: 0px; display: list-item;">         
               <div style="float:left; position:absolute"><img alt="" src="./index_files/SHANSHAN_IMG_50_3231601.jpg"></div>
               <div class="linka"><a target="_blank" href="#"><img alt="" src="./index_files/SHANSHAN_IMG_50_3231601.jpg"></a></div>
               </li>
            
               <li style="opacity: 1; left: 0px; top: 0px; z-index: 6; position: absolute; width: 0px; display: none;">         
               <div style="float:left; position:absolute"><img alt="" src="./index_files/SHANSHAN_IMG_51_8596581.jpg"></div>
               <div class="linka"><a target="_blank" href="#"><img alt="" src="./index_files/SHANSHAN_IMG_51_8596581.jpg"></a></div>
               </li>
              
          </ul>
          <a class="prev" href="javascript:void(0)" style="opacity: 0.1; display: none;"></a>
          <a class="next" href="javascript:void(0)" style="opacity: 0.1; display: none;"></a>
          <div class="num mSlider_nav_orange">
              <ul>
              <li class="">1</li>
              <li class="">2</li>
              <li class="on">3</li>
              <li class="">4</li>
              <li class="">5</li>
              </ul>
          </div>
     
         
     </div>
</div> 
                    
<div class="grid">
    <div class="dh_box clear">
        <div class="ailsa-nav">
            <ul class="ailsa-nav-ul">
                 <li>
                    <div class="Anav-title" id="0">
                    </div>
                    <div class="Anav-sub">
                        <div class="Anav-subtext">

                             <a href="#">水果</a>|
                             <a href="#">蛋品</a>|
                             <a href="#">水产</a>|
                        </div>

                        <div class="Anav-sub-ad"><a href="#"><img src="./index_files/SHANSHAN_IMG_1452502334_7679640.jpg" width="370" height="350"></a></div>
                    </div>
                </li>
                   <li>
                    <div class="Anav-title" id="1"><!-- 
                    <em class="A-em2"></em>
                    <a target="_blank" href="#">粮油干货</a>
                     --></div>
                    <div class="Anav-sub">
                        <div class="Anav-subtext">

                           <a href="#">南北干货</a>|
                           <a href="#">食用油</a>|
                           <a href="#">杂粮主食</a>|
                           <a href="#">调味品</a>|
                           <a href="#">方便速食</a>|
                        </div>

                        <div class="Anav-sub-ad"><a href="#"><img src="./index_files/SHANSHAN_IMG_1452502203_4389324.jpg" width="370" height="350"></a></div>
                    </div>
                </li>
                                <li>
                    <div class="Anav-title" id="2"><!-- <em class="A-em3"></em>
                        <a target="_blank" href="#">茶叶冲饮</a> -->
                    </div>
                    <div class="Anav-sub">
                        <div class="Anav-subtext">

                            <a href="#">绿茶</a>|
                            <a href="#">黑茶</a>|
                            <a href="#">红茶</a>|
                            <a href="#">白茶</a>|
                            <a href="#">冲调饮品</a>|
                         </div>

                        <div class="Anav-sub-ad"><a href="#"><img src="./index_files/SHANSHAN_IMG_1452502213_2757415.jpg" width="370" height="350"></a></div>
                    </div>
                </li>
                                <li>
                    <div class="Anav-title" id="3"><!-- <em class="A-em4"></em>
                        <a target="_blank" href="#">休闲食品</a> -->
                    </div>
                    <div class="Anav-sub">
                        <div class="Anav-subtext">

                            <a href="#">坚果/炒货</a>|
                            <a href="#">饼干/糕点</a>|
                            <a href="#">蜜饯/果干</a>|
                            <a href="#">肉干/肉脯</a>|
                            <a href="#">糖果/巧克力/奶</a>|
                        </div>

                        <div class="Anav-sub-ad"><a href="#"><img src="./index_files/SHANSHAN_IMG_1452502191_8503348.jpg" width="370" height="350"></a></div>
                    </div>
                </li>
                <li>
                    <div class="Anav-title" id="4"><!-- <em class="A-em5" style="margin: 0px 10px 0px 20px;"></em>
                        <a target="_blank" href="#">酒水饮料</a> -->
                    </div>
                    <div class="Anav-sub" style="display: none;">
                        <div class="Anav-subtext">
                            <a href="#">白酒</a>|
                            <a href="#">葡萄酒/干红/干</a>|
                            <a href="#">黄酒</a>|
                            <a href="#">饮料/乳品</a>|
                        </div>

                        <div class="Anav-sub-ad"><a href="#"><img src="./index_files/SHANSHAN_IMG_1452502320_1961974.jpg" width="370" height="350"></a></div>
                    </div>
                </li>
                <li>
                    <div class="Anav-title" id="5"><!-- <em class="A-em6" style="margin: 0px 10px 0px 20px;"></em>
                        <a target="_blank" href="#">山山百货</a> -->
                    </div>
                    <div class="Anav-sub" style="display: none;">
                        <div class="Anav-subtext">

                           <a href="#">餐具</a>|
                           <a href="#">厨具</a>|
                           <a href="#">园艺</a>|
                        </div>

                        <div class="Anav-sub-ad"><a href=""><img src="./index_files/SHANSHAN_IMG_1460531908_4750571.jpg" width="370" height="350"></a></div>
                    </div>
                </li>
                
                <li>
                     <div class="Anav-title" id="6"><!--<em class="A-em8"></em>山山优选--></div> 
                    <div class="Anav-subB">
                        <ul class="Anav-brand">
                            <li><a href="#"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201608231401511413.jpg" alt="景宁特产 芝麻片" width="90" height="45"></a></li>
                            <li><a href="#"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201611111746491643.jpg" alt="农家黄米粿" width="90" height="45"></a></li>
                            <li><a href="#"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201604071313359696.jpg" alt="禾珍米" width="90" height="45"></a></li>
                            <li><a href="#"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201604071313359164.jpg" alt="土鸡蛋" width="90" height="45"></a></li>
                            <li><a href="#"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201604071313352189.jpg" alt="黑面菇" width="90" height="45"></a></li>
                            <li><a href="#"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201611031121506825.jpg" alt="畲乡地瓜面" width="90" height="45"></a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>   
    </div>
</div>
          
<div class="container ovf clear"> 
     <div class="yh fl ovf">
           <ul class="tab">
              <li id="tab_to_1" class="q"><a href="#" key="1" class="countDownTime" onmouseover="tab(&#39;tab&#39;,4,1)">热卖商品</a></li>
              <li id="tab_to_2" class="no"><a href="#" key="2" class="countDownTime" onmouseover="tab(&#39;tab&#39;,4,2)">促销特惠</a></li>         
           	  <li class="time time_1" style="display: none;">
           	      <span>剩余：</span>	             
	              <span class="number day">4</span><span>天</span>
	              <span class="number hour">13</span><span>时</span>
	              <span class="number min">01</span><span>分</span>
	              <span class="number sec">36</span><span>秒</span><span>结束</span>
	          </li>                                  
           	  <li class="time time_2" style="">
           	      <span>剩余：</span>	             
	              <span class="number day">1</span><span>天</span>
	              <span class="number hour">4</span><span>时</span>
	              <span class="number min">22</span><span>分</span>
	              <span class="number sec">5</span><span>秒</span><span>结束</span>
	          </li>            
          </ul>
            <div class="tab_mo ovf fl">
             	<div levetime="46896" end_time="1483059024" id="tab_mo_1" style="display: none;">
                   <ul>
                  	 <li>                    
                      <p class="picb">
                        <a target="_blank" href="#">
                          <img style="width:208px;height:208px;" alt="山东烟台红富士   栖霞山东苹果  5斤装大果 包邮" src="./index_files/small_201611041502121525.jpg">
                        </a>
                      </p>
                      <p class="name">山东烟台红富士   栖霞山东苹果  5斤装大果 包邮<br></p>
                      <p class="price">
                      	<font class="fyh f15">促销价：</font>
                      	<font class="cff6" style="font-family:楷体_GB2312;font-size:12px;">￥</font>
                      	<font class="f-s cff6 f16">30.</font>
                      	<font class="f-s cff6 f14">00</font></p>
                      </li>
                      <li>                    
                      <p class="picb">
                        <a target="_blank" href="#">
                           <img style="width:208px;height:208px;" alt="河北皇冠梨酥梨香梨雪花梨新鲜水果5斤包邮" src="./index_files/small_201606291055145047.jpg">
                        </a>
                      </p>
                      <p class="name">河北皇冠梨酥梨香梨雪花梨新鲜水果5斤包邮<br></p>
                      <p class="price">
                      	<font class="fyh f15">促销价：</font>
                      	<font class="cff6" style="font-family:楷体_GB2312;font-size:12px;">￥</font>
                      	<font class="f-s cff6 f16">28.</font>
                      	<font class="f-s cff6 f14">00</font>
                      </p>
                      </li>
                      <li>                    
                      <p class="picb"><a target="_blank" href="#"><img style="width:208px;height:208px;" alt="野生青钱柳 原叶茶罐装50g" src="./index_files/small_201611041142232648.jpg"></a></p>
                      <p class="name">野生青钱柳 原叶茶罐装50g<br></p>
                      <p class="price">
                      	<font class="fyh f15">促销价：</font>
                      	<font class="cff6" style="font-family:楷体_GB2312;font-size:12px;">￥</font>
                      	<font class="f-s cff6 f16">78.</font><font class="f-s cff6 f14">00</font>
                      </p>
                      </li>
                      <li>                    
                      <p class="picb">
                      	<a target="_blank" href="#">
                      		<img style="width:208px;height:208px;" alt="野生青钱柳 嫩叶茶罐装50g" src="./index_files/small_201611041147398420.jpg">
                      	</a>
                      </p>
                      <p class="name">野生青钱柳 嫩叶茶罐装50g<br></p>
                      <p class="price">
                      	<font class="fyh f15">促销价：</font>
                      	<font class="cff6" style="font-family:楷体_GB2312;font-size:12px;">￥</font>
                      	<font class="f-s cff6 f16">98.</font><font class="f-s cff6 f14">00</font>
                      </p>
                      </li>                           
                   </ul>
              </div>
                 <div levetime="51753" end_time="1483063200" id="tab_mo_2" style="display: block;">
                   <ul>
                  	  <li>                    
                      <p class="picb">
                      	<a target="_blank" href="#">
                      		<img style="width:208px;height:208px;" alt="香菇 光面菇 景宁 厂家直销 江浙沪包邮 A2-250g" src="./index_files/small_201611081456294514.jpg">
                     	</a>
                      </p>
                      <p class="name">香菇 光面菇 景宁 厂家直销 江浙沪包邮 A2-250g<br></p>
                      <p class="price"><font class="fyh f15">促销价：</font>
                      	<font class="cff6" style="font-family:楷体_GB2312;font-size:12px;">￥</font>
                      	<font class="f-s cff6 f16">30.</font><font class="f-s cff6 f14">00</font>
                      </p>
                      </li>
                      <li>                    
                      <p class="picb">
                        <a target="_blank" href="#"><img style="width:208px;height:208px;" alt="生态放养斑嘴野鸭 单只2-2.5斤 仅发江浙沪" src="./index_files/small_201611041126429065.jpg"></a></p>
                      <p class="name">生态放养斑嘴野鸭 单只2-2.5斤 仅发江浙沪<br></p>
                      <p class="price">
                      	<font class="fyh f15">促销价：</font>
                      	<font class="cff6" style="font-family:楷体_GB2312;font-size:12px;">￥</font>
                      	<font class="f-s cff6 f16">120.</font><font class="f-s cff6 f14">00</font>
                      </p>
                      </li>
                      <li>                    
                      <p class="picb">
                      <a target="_blank" href="#"><img style="width:208px;height:208px;" alt="食用菌 干货 白背黑木耳 绒毛 多糖 BH2 袋装250g" src="./index_files/small_201611081513441146.jpg"></a></p>
                      <p class="name">食用菌 干货 白背黑木耳 绒毛 多糖 BH2 袋装250g<br></p>
                      <p class="price">
                      <font class="fyh f15">促销价：</font>
                      <font class="cff6" style="font-family:楷体_GB2312;font-size:12px;">￥</font>
                      <font class="f-s cff6 f16">34.</font><font class="f-s cff6 f14">00</font>
                      </p>
                      </li>
                      <li>                    
                      <p class="picb">
                      <a target="_blank" href="#"><img style="width:208px;height:208px;" alt="香菇 黑面菇 景宁 厂家直销 江浙沪包邮 A2-250g" src="./index_files/small_201611081527334897.jpg"></a></p>
                      <p class="name">香菇 黑面菇 景宁 厂家直销 江浙沪包邮 A2-250g<br></p>
                      <p class="price">
                      <font class="fyh f15">促销价：</font>
                      <font class="cff6" style="font-family:楷体_GB2312;font-size:12px;">￥</font>
                      <font class="f-s cff6 f16">35.</font><font class="f-s cff6 f14">00</font>
                      </p>
                      </li>                               
                   </ul>
              </div>        
        </div>
      </div>
      <div class="fl in-rp">
           <div class="con fl">
                <span>
                     <font class="fl fyh f16 b">山山快报</font>
                     <font class="fr"><a target="_blank" href="#">更多快报&gt;&gt;</a></font>
                </span>
                <ul class="news clear fl">
                    <li><a target="_blank" href="#">○开启全农星时代</a></li>
                    <li><a target="_blank" href="#">○买家通知</a></li>
                    <li><a target="_blank" href="#">○浙江山山网络科技股份有限公司入</a></li>            
                </ul>
           </div>
      </div>
      <div class=" fl">
           <div class="full-screen-slider">
               <div class="hd3">
                  <ul class="num"><li class="on">1</li></ul>                
               </div>
               <div class="bd2">
                <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                <ul id="slides" style="width: 235px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">
                    <li style="float: left; width: 235px;"><a target="_blank" href="#"><img src="./index_files/125.jpg" width="235" height="185"></a></li>
                                                                                 
                </ul>
                </div>
                </div>
            </div>
      </div>    
          <div class="clear ads fl">
           <a href="#" target="_blank"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201611301617484367.jpg" alt="" border="0" width="1190" height="100"></a>
          </div>      
      <div>
      <div class="fl fl-con">                       
           <div class="tit fl" style="background:;">       
                <div class="fl f14"><img src="./index_files/small_SHANSHAN_IMG_shanshan_1_201604111047493882.jpg"></div>
                <div class="fl fyh f22 b">生鲜食品</div>
                <div class="fr display">
                   <a href="#" target="_blank">水果</a>|
                   <a href="#" target="_blank">鸡蛋</a>|
                   <a href="#" target="_blank">水产</a>|
                   <a href="#" style="color: red;">更多</a>
                </div>
           </div>
           <div class="clear">
                <div class="fl-pic fl">
                     <div class="hd2">
                      <ul><li class="on">1</li></ul>
                     </div>
                     <div class="flpic">  
                     <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                     <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                     <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                     <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                     <ul id="slides2" style="width: 235px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">                                  
                          <li style="float: left; width: 235px;">
                             <a href="#" target="_blank"><img alt="畲葛山黄粿" src="./index_files/SHANSHAN_IMG_shanshan_1_201611301619404198.jpg"></a>
                          </li>
                     </ul>
                     </div>
                     </div>
                     </div>
                     </div>
                     </div>
                </div>
                <div class="fl pro-tj">
                     <ul id="goods">            
                             <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201611031142157009.jpg">  </a>  
                                   <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(50050,49954);" spec_id="50050" goods_id="49954">加入购物车</span>                               </p>
                               <p class="name"><a href="#">雪莲果 云南高原特产雪莲果 红泥雪莲果  9斤装</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">26.</font><font class="f-s cff6 f14">80</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                             <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201610270954245633.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(50059,49963);" spec_id="50059" goods_id="49963">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">黄心猕猴桃 奇异果 新鲜水果 黄心奇异果 12个装约1200</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">29.</font><font class="f-s cff6 f14">80</font>
                               </font>
                               </p>                               
                      <p></p>
                             </li>
                             <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201609191702194594.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49991,49895);" spec_id="49991" goods_id="49895">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">蟹齐阁阳澄湖大闸蟹现货礼盒装 母蟹10只 2.4-2.2两</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">168.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>        
                      <p></p>
                             </li>
                             <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/small_201611041429556196.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(50084,49988);" spec_id="50084" goods_id="49988">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">洪湖无铅松花皮蛋农家散养鸭皮蛋 变蛋 灰包蛋皮蛋20枚</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">35.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>         
                      <p></p>
                             </li>
                             <li>
                               <p class="pic"><a href="#" target="_blank">
                                <img src="./index_files/small_201610201737159391.jpg">  </a>  
                                <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(50047,49951);" spec_id="50047" goods_id="49951">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">丽水山耕 锥栗200g</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">22.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>        
                      <p></p>
                             </li>
                             <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/small_201512081855188366.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(36552,36481);" spec_id="36552" goods_id="36481">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">陕西特产 正宗洛川苹果 新鲜红富士24个75mm果径 脆甜</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">98.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>      
                      <p></p>
                             </li>
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/small_201610261729404248.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(50052,49956);" spec_id="50052" goods_id="49956">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">人参果 云南石林人参果 香艳梨人参果蔬菜 尖果型 长果</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">26.</font><font class="f-s cff6 f14">80</font>
                               </font>
                               </p>                    
                      <p></p>
                             </li>
                    </ul>
                </div>
           </div>
      </div>
     <div class="fr fr-con">
           <div class="tit fl" style="background:;"><div class="fyh f19">生鲜精选</div></div>
          <div class="demo clear fl ">      
               <div class="hd">
                <ul class="num"><li class="on">1</li></ul>
               </div>
               <div class="bd">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:205px">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:205px">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:205px">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:205px">
                    <ul class="infoList" style="width: 205px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">                           
                               <li style="float: left; width: 205px;">       
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201512081855188366.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">陕西特产 正宗洛川苹果 新鲜红富士24</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">98.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                          <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201512081900353299.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">河北特产 中华名果 正宗赵县雪花梨 新</a></p>     
                                           <p>
                                             <font class="f-s cff6 f16"><em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                             <font class="f-s cff6 f16">168.</font>
                                             <font class="f-s cff6 f14">00</font></font></p>    
                                           </div>
                                         </div>
                                          <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201610261804529920.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">新鲜火龙果 越南进口白心火龙果 5斤装</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">39.</font><font class="f-s cff6 f14">90</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                          <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201610270936581605.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">新鲜石榴 云南蒙自甜石榴  5斤装 单果</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">39.</font><font class="f-s cff6 f14">90</font>
                                           </font></p>    
                                           </div>
                                         </div>
                                          <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201606291055145047.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">河北皇冠梨酥梨香梨雪花梨新鲜水果5斤</a></p>     
                                           <p><font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">28.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                          <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201610201837098254.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">丽水山耕 鱼腥草80g</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">18.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>                                                                                                                                              
                               </li>         
                    </ul>
                    </div>
                    </div>
                    </div>
                    </div>
               </div>
          </div> 
 
    </div>
    </div>
      
              <div>
      <div class="fl fl-con">                       
           <div class="tit fl" style="background:;">       
                <div class="fl f14"><img src="./index_files/small_SHANSHAN_IMG_floor_2_1_201404030214155636.jpg"></div>
                <div class="fl fyh f22 b">粮油干货</div>
                <div class="fr display">
                   <a href="#" target="_blank">香菇</a>|
                   <a href="#" target="_blank">木耳</a>|
                   <a href="#" target="_blank">杂粮主食</a>|
                   <a href="#" style="color: red;">更多</a>
               </div>
           </div>
           <div class="clear">
                <div class="fl-pic fl">
                     <div class="hd2">
                      <ul><li class="on">1</li></ul>
                     </div>
                     <div class="flpic">  
                     <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                     <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                     <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                     <ul id="slides2" style="width: 235px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">                                  
                           <li style="float: left; width: 235px;">
                             <a href="#" target="_blank"><img alt="光面菇11" src="./index_files/SHANSHAN_IMG_shanshan_1_201611301621405047.jpg"></a>
                           </li>
                       </ul>
                       </div>
                       </div>
                       </div>
                     </div>
                   
                </div>
                <div class="fl pro-tj">
                     <ul id="goods_1">            
                            <!-- <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/small_201606081530082797.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49858,49765);" spec_id="49858" goods_id="49765">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">景宁特产高山 杂粮黑米黑糯米紫糯米新黑米2公斤装</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">29.</font><font class="f-s cff6 f14">90</font>
                               </font>
                               </p>        
                      <p></p>
                             </li>
                               <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/small_201606081627576462.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49867,49774);" spec_id="49867" goods_id="49774">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">金信食用菌类干景宁灰树花多糖土特产干货舞茸250g袋包</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">35.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>          
                      <p></p>
                             </li> -->
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                                <img src="./index_files/small_201606121425356293.jpg">  </a>  
                                <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49874,49781);" spec_id="49874" goods_id="49781">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">金信香菇干货特产食用菌 景宁土特产蘑菇 椴木冬菇100g</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">14.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                                <img src="./index_files/small_201606131146379480.jpg">  </a>  
                                <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49889,49796);" spec_id="49889" goods_id="49796">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">景宁特产高山农家自种黄豆15年新黄豆非转基因500g豆浆</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">16.</font><font class="f-s cff6 f14">80</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                                <img src="./index_files/small_201606131450468016.jpg">  </a>  
                                <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49891,49798);" spec_id="49891" goods_id="49798">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">【金信】山珍 菌类 灰树花 干货 多糖 土特产舞茸 HSH </a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">15.</font><font class="f-s cff6 f14">80</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/small_201606131647411793.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49894,49801);" spec_id="49894" goods_id="49801">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">景宁特产农家自晒土豆片干 土豆干干菜干货   马铃薯片</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">16.</font><font class="f-s cff6 f14">90</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/small_201606131701434029.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49896,49803);" spec_id="49896" goods_id="49803">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">金信食用菌景宁黑木耳干货 小碗耳 原木黑木耳 素中之</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">16.</font><font class="f-s cff6 f14">80</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/small_201511051656461041.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49600,49507);" spec_id="49600" goods_id="49507">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">景宁特产红米玄米 红糙米1000g</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">14.</font><font class="f-s cff6 f14">90</font>
                               </font>
                               </p>
                                 
                      <p></p>
                            </li>
                    </ul>
                </div>
           </div>
      </div>
     <div class="fr fr-con">
           <div class="tit fl" style="background:;"><div class="fyh f19">山货热销</div></div>
          <div class="demo clear fl ">      
               <div class="hd">
                <ul class="num"><li class="on">1</li></ul>
               </div>
               <div class="bd">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:205px">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:205px">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:205px">
                    <ul class="infoList" style="width: 205px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">         
                       <li style="float: left; width: 205px;">       
                            <div class="pro fl">
                                <div class="fl pic cur small_img">
                                   <a target="_blank" href="#"><img src="./index_files/small_201606141335524637.jpg"></a></div>
                                   <div class="fl con">
                                   <p class="lh18 name"> <a target="_blank" href="#">茶树菇 景宁 厂家直销 250g</a></p>     
                                   <p><font class="f-s cff6 f16">
                                   <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                   <font class="f-s cff6 f16">33.</font><font class="f-s cff6 f14">00</font>
                                   </font>
                                   </p>    
                                 </div>
                                    </div>
                                         <div class="pro fl">
                                         <div class="fl pic cur small_img">
                                         <a target="_blank" href="#"><img src="./index_files/small_201606141537066948.jpg"></a></div>
                                         <div class="fl con">
                                         <p class="lh18 name"> <a target="_blank" href="#">木耳 白木耳 银耳 大朵 无硫 景宁 厂</a></p>     
                                         <p>
                                         <font class="f-s cff6 f16">
                                         <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                         <font class="f-s cff6 f16">24.</font><font class="f-s cff6 f14">00</font>
                                         </font>
                                         </p>    
                                         </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201611041210057387.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="http://www.shanshan360.com/index.php?app=goods&id=49972">乐旁黑松露酱180g原味/牛肉味两种口味</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">338.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201606081524177844.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">农家猴头菇 景宁特产 厂家直销   250g</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">29.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201606141111099397.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">金信木耳干货黑木耳春耳景宁特产黑木</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">12.</font><font class="f-s cff6 f14">80</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201606141335524637.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">茶树菇 景宁 厂家直销 250g</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">33.</font><font class="f-s cff6 f14">00</font>
                                           </font></p>    
                                           </div>
                                         </div>                                                                                                                                             
                               </li>        
                    </ul></div></div></div>
               </div>
          </div> 
         
    </div>
    </div>
      
              <div>
      <div class="fl fl-con">                       
           <div class="tit fl" style="background:;">       
                <div class="fl f14"><img src="./index_files/small_SHANSHAN_IMG_shanshan_1_201604111058182131.jpg"></div>
                <div class="fl fyh f22 b">休闲零食</div>
                <div class="fr display">
                    <a href="#" target="_blank">巴旦木</a>|
                    <a href="#" target="_blank">巧克力</a>|
                    <a href="#" target="_blank">松子</a>|
                    <a href="#" style="color: red;">更多</a>
                </div>
           </div>
           <div class="clear">
                <div class="fl-pic fl">
                     <div class="hd2">
                      <ul><li class="on">1</li></ul>
                     </div>
                     <div class="flpic">  
                     <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                     <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                     <ul id="slides2" style="width: 235px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">                                  
                             <li style="float: left; width: 235px;">
                             <a href="#" target="_blank"><img alt="红心萝卜脆" src="./index_files/SHANSHAN_IMG_shanshan_2_201611301620557427.jpg"></a>
                             </li>
                     </ul></div></div>
                     </div>
                </div>
                <div class="fl pro-tj">
                     <ul id="goods_2">            
                            <!-- <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201610201656443517.jpg">  </a>  
                                <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(50037,49941);" spec_id="50037" goods_id="49941">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">丽水山耕 松阳香肠400g</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">48.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>    
                      <p></p>
                             </li> -->
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201610201734584852.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(50046,49950);" spec_id="50046" goods_id="49950">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">丽水山耕 状元黑香肠 400g</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">48.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201610201743213162.jpg">  </a>  
                                <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(50048,49952);" spec_id="50048" goods_id="49952">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">丽水山耕 余叶香榧 100g</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">38.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>       
                      <p></p>
                             </li>
                               <li>
                               <p class="pic"><a href="#" target="_blank">
                                  <img src="./index_files/small_201408141521013637.jpg">  </a>  
                                  <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(47955,47862);" spec_id="47955" goods_id="47862">加入购物车</span>
                               </p>
                               <p class="name"><a href="#">蒙歌尔品牌&nbsp;原味奶酥&nbsp;300g&nbsp;新品特价&nbsp;热卖</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">33.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>         
                      <p></p>
                             </li>
                               <li>
                                <p class="pic"><a href="#" target="_blank">
                                  <img src="./index_files/small_201506121515436147.jpg">  </a>  
                                  <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(40004,39933);" spec_id="40004" goods_id="39933">加入购物车</span>                               </p>
                               <p class="name"><a href="#">内蒙风味零食 风干 小吃 蒙歌尔散装原味牛肉粒250g 两</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">66.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/small_201309261001494559.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(41637,41565);" spec_id="41637" goods_id="41565">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">内蒙古牛肉干 蒙歌尔风干手撕特价 特产零食独立真空促</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">45.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/SHANSHAN_IMG_shanshan_1_201511161445491101.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(39978,39907);" spec_id="39978" goods_id="39907">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">内蒙古特产零食 蒙歌尔香辣牛板筋238g 4袋包邮</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">53.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>      
                      <p></p>
                             </li>
                              <li>
                               <p class="pic"><a href="#" target="_blank">
                                 <img src="./index_files/small_201506121432376555.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(39922,39851);" spec_id="39922" goods_id="39851">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">【内蒙古特产食品】蒙歌尔 好吃的零食奶酪奶干150g  1</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">18.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>                            
                      <p></p>
                      </li>
                    </ul>
                </div>
           </div>
      </div>
     <div class="fr fr-con">
           <div class="tit fl" style="background:;"><div class="fyh f19">热卖零食</div></div>
          <div class="demo clear fl ">      
               <div class="hd">
                <ul class="num"><li class="on">1</li></ul>
               </div>
               <div class="bd">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:205px">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:205px">
                    <ul class="infoList" style="width: 205px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">         
                               <li style="float: left; width: 205px;">       
                                          <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201309111427343801.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">内蒙古特产零食 正品手撕风干牛肉干 </a></p>     
                                           <p><font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">58.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201309061641337569.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">内蒙古正品休闲食品 蒙歌尔 特产手撕</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">66.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201309111425154174.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">好吃的零食牛肉干 蒙歌尔手撕风干牛肉</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">95.</font><font class="f-s cff6 f14">00</font></font></p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201409241154078241.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">【内蒙古特产】蒙歌尔香辣牛肉238g 独</a></p>     
                                           <p><font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">53.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201409241154077838.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">内蒙古特产零食 蒙歌尔手撕风干香辣牛</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">58.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201309061640047485.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">内蒙古特产零食 蒙歌尔有机正品风干手</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">53.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>                                                                                                                                                
                               </li>            
                    </ul></div></div>
               </div>
          </div> 
          
    </div>
    </div>
      
                
              <div class="clear ads fl">
               <a href="#" target="_blank"><img src="./index_files/SHANSHAN_IMG_shanshan_2_201611301617489134.jpg" alt="" border="0" width="1190" height="100"></a>
              </div>    
              

              <div>
      <div class="fl fl-con">                       
           <div class="tit fl" style="background:;">       
                <div class="fl f14"><img src="./index_files/small_SHANSHAN_IMG_shanshan_1_201604111058326208.jpg"></div>
                <div class="fl fyh f22 b">酒水茶饮</div>
                <div class="fr display">
                  <a href="#" target="_blank">啤酒</a>|
                  <a href="#" target="_blank">白酒</a>|
                  <a href="#" target="_blank">绿茶</a>|
                  <a href="#" target="_blank">黑茶</a>|
                  <a href="#" style="color: red;">更多</a>
                </div>
           </div>
           <div class="clear">
                <div class="fl-pic fl">
                     <div class="hd2">
                      <ul><li class="on">1</li></ul>
                     </div>
                     <div class="flpic">  
                     <div class="tempWrap" style="overflow:hidden; position:relative; width:235px">
                     <ul id="slides2" style="width: 235px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">                                  
                        <li style="float: left; width: 235px;">
                             <a href="http://www.shanshan360.com/product/49705.html" target="_blank">
                             <img alt="金边玫瑰花茶" src="./index_files/SHANSHAN_IMG_shanshan_3_201611301620171108.jpg"></a>
                             </li>
                     </ul></div>
                     </div>    
                </div>
                <div class="fl pro-tj">
                     <ul id="goods_3">            
                           <!--  <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201511061104387723.jpg">  </a>  
                                <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49629,49536);" spec_id="49629" goods_id="49536">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">畲茗工坊 春茶新茶有机茶绿茶茶叶景宁惠明茶特产金奖</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">99.</font><font class="f-s cff6 f14">90</font>
                               </font>
                               </p>     
                      <p></p>
                             </li> -->
                               <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201606081444235742.jpg">  </a>  
                                  <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49850,49757);" spec_id="49850" goods_id="49757">加入购物车</span>                               </p>
                               <p class="name"><a href="#">景宁特产山岗野花百花土蜂蜜500g</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">118.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                               <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201511061014301862.png">  </a>  
                                <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49624,49531);" spec_id="49624" goods_id="49531">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">景宁特产奇尔红茶金奖惠明茶叶红茶 茶叶盒铁罐包装50g</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">138.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>
                                 
                      <p></p>
                             </li>
                               <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201610201645278406.jpg">  </a>  
                                  <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(50034,49938);" spec_id="50034" goods_id="49938">加入购物车</span>                               </p>
                               <p class="name"><a href="#">丽水山耕 遂昌金银花 30g</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">15.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>      
                      <p></p>
                             </li>
                               <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201606071434078754.jpg">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49837,49744);" spec_id="49837" goods_id="49744">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">2016年春季新茶绿茶散装罐装白玉仙茶明前特级茶叶</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">190.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>      
                      <p></p>
                             </li>
                               <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201606081514398204.jpg">  </a>  
                                  <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49853,49760);" spec_id="49853" goods_id="49760">加入购物车</span>                               </p>
                               <p class="name"><a href="#">景宁绿茶 金奖惠明茶2015新茶叶一级 惠明寺50g袋装 香</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">49.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>            
                      <p></p>
                             </li>
                               <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201606141410007840.jpg">  </a>  
                                <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49913,49820);" spec_id="49913" goods_id="49820">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">景宁绿茶 金奖惠明茶叶玉簪102g礼盒高山香浓型 产地直</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">668.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>        
                      <p></p>
                             </li>
                               <li>
                               <p class="pic"><a href="#" target="_blank">
                               <img src="./index_files/small_201511060949405047.png">  </a>  
                                 <span class="f15 fyh" style="cursor: pointer" onclick="add_to_cart(49618,49525);" spec_id="49618" goods_id="49525">加入购物车</span>                               
                               </p>
                               <p class="name"><a href="#">岚香品正宗白毫银针景宁特产金奖惠明茶茶叶兰花香两罐</a></p>
                               <p class="price">
                               <font class="f-s cff6 f16">
                               <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                               <font class="f-s cff6 f16">45.</font><font class="f-s cff6 f14">00</font>
                               </font>
                               </p>      
                      <p></p>
                             </li>
                    </ul>
                </div>
           </div>
      </div>
     <div class="fr fr-con">
           <div class="tit fl" style="background:;"><div class="fyh f19">品牌推荐</div></div>
          <div class="demo clear fl ">      
               <div class="hd">
                <ul class="num"><li class="on">1</li></ul>
               </div>
               <div class="bd">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:205px">
                    <ul class="infoList" style="width: 205px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">         
                               <li style="float: left; width: 205px;">       
                                      <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201606121148382624.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">景宁绿茶 金奖惠明茶2015新茶叶三级惠</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">36.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201409241336089562.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">景宁特产畲峡谷正宗铁皮石斛花23g四年</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">105.</font><font class="f-s cff6 f14">80</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201511060949405047.png"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">岚香品正宗白毫银针景宁特产金奖惠明</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">45.</font>
                                           <font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/SHANSHAN_IMG_shanshan_1_201409050935475264.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">2016年新茶叶绿茶 惠明茶 明前特级春</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">89.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201606071452439780.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">景宁红茶 惠明茶叶惠明寺150g礼盒高山</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">298.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>
                                           <div class="pro fl">
                                           <div class="fl pic cur small_img">
                                           <a target="_blank" href="#"><img src="./index_files/small_201606131651272017.jpg"></a></div>
                                           <div class="fl con">
                                           <p class="lh18 name"> <a target="_blank" href="#">正宗景宁绿茶叶新茶 慧明红珍品礼盒奖</a></p>     
                                           <p>
                                           <font class="f-s cff6 f16">
                                           <em class="tm-yen" style="font-family:楷体_GB2312;font-size:12px;">￥</em>
                                           <font class="f-s cff6 f16">148.</font><font class="f-s cff6 f14">00</font>
                                           </font>
                                           </p>    
                                           </div>
                                         </div>                                                                                                                                             
                               </li>              
                    </ul></div>
               </div>
          </div> 
    </div>
    </div>
      <div class="clear ads fl">
       <a href="#" target="_blank"><img src="./index_files/SHANSHAN_IMG_shanshan_3_201611301617482170.jpg" alt="" border="0" width="1190" height="100"></a>
      </div>    
         
      <div class="meishi-box clear fl">
           <div class="tit">
               <div class="fl f14">
					<img src="./index_files/7.jpg">
				</div>
               <div class="fl fyh f22 b">美食生活</div>
           </div>
           <div class="meishi-con clear fl ovf">
                <ul>  
                                   <li>
                      <div> <a target="_blank" href="#"><img style="width:267px;height:230px;" alt="拥抱大米" src="./index_files/SHANSHAN_IMG_1460355776_1484105.jpg"></a></div>
                      <div class="con con-bg clear">
                          <span class="content fl ovf">
                                <div class="fyh f16 c6b fl tit ">  <a target="_blank" href="#">拥抱大米</a></div>
                                <div class="clear lh18 c5f">
                                    <a target="_blank" href="#">呐 我不在身边的时候 你有没有好好吃饭？  &gt;&gt;</a>
                                </div>
                          </span>
                      </div>
                   </li>
                                      <li>
                      <div> <a target="_blank" href="#"><img style="width:267px;height:230px;" alt="「你饿不饿？我煮碗面给你吃」" src="./index_files/SHANSHAN_IMG_1452147351_7129490.jpg"></a></div>
                      <div class="con con-bg clear">
                          <span class="content fl ovf">
                                <div class="fyh f16 c6b fl tit ">  <a target="_blank" href="#">「你饿不饿？我煮碗面给你吃」</a></div>
                                <div class="clear lh18 c5f">
                                    <a target="_blank" href="#">  &gt;&gt;</a>
                                </div>
                          </span>
                      </div>
                   </li>
                                      <li>
                      <div> <a target="_blank" href="#"><img style="width:267px;height:230px;" alt="跟我们一起下乡看直播咯！" src="./index_files/SHANSHAN_IMG_1452147367_9096807.jpg"></a></div>
                      <div class="con con-bg clear">
                          <span class="content fl ovf">
                                <div class="fyh f16 c6b fl tit ">  <a target="_blank" href="#">跟我们一起下乡看直播咯！</a></div>
                                <div class="clear lh18 c5f">
                                    <a target="_blank" href="#">  &gt;&gt;</a>
                                </div>
                          </span>
                      </div>
                   </li>
                                      <li class="last">
                      <div> <a target="_blank" href="#"><img style="width:267px;height:230px;" alt="we are 伐木累~" src="./index_files/SHANSHAN_IMG_1452147380_5896665.jpg"></a></div>
                      <div class="con con-bg clear">
                          <span class="content fl ovf">
                                <div class="fyh f16 c6b fl tit ">  <a target="_blank" href="#">we are 伐木累~</a></div>
                                <div class="clear lh18 c5f">
                                    <a target="_blank" href="#">  &gt;&gt;</a>
                                </div>
                          </span>
                      </div>
                   </li>
                </ul>
           </div>
      </div> 
<div id="footer" class="floor" style="visibility: visible; display: block; opacity: 1; ">
    <div class="shansahn-info clearfix">
                      
             <dl>
        
            <dt>消费者保障</dt>
                          <dd><a target="_blank" href="#"><em>·</em>保障范围</a></dd>
                          <dd><a target="_blank" href="#"><em>·</em>退货退款流程</a></dd>
                          <dd><a target="_blank" href="#"><em>·</em>消费者维权中心</a></dd>
                    </dl>
                           
                <dl>
        
            <dt>新手上路</dt>
                          <dd><a target="_blank" href="#"><em>·</em>免费注册</a></dd>
                          <dd><a target="_blank" href="#"><em>·</em>新手学堂</a></dd>
                          <dd><a target="_blank" href="#"><em>·</em>交易安全</a></dd>
                          <dd><a target="_blank" href="#"><em>·</em>消费警示</a></dd>
                          <dd><a target="_blank" href="#"><em>·</em>山山服务热线</a></dd>
                    </dl>
                                  <dl id="pay">
        
            <dt>支付方式</dt>
                          <dd><a target="_blank" href="#"><em>·</em>网上银行</a></dd>
                          <dd><a target="_blank" href="#"><em>·</em>在线支付</a></dd>
                    </dl>
                           
        <dl id="service">
        
            <dt>商家服务</dt>
                          <dd><a target="_blank" href="#"><em>·</em>商家入驻</a></dd>
                          <dd><a target="_blank" href="#"><em>·</em>山山商城规则</a></dd>
                    </dl>
                        
       <div style="float:left;overflow:hidden;_width:250px;_height:990px;"><a href="./index_files/index.html" class="shanshan-homeico"></a>
       <span class="shanshan-feedback ntkp" onclick="openChatWindow(&#39;&#39;);">山山商城意见反馈</span></div>
   </div>
   
   <div id="copyright">
        <p class="cR-nav">
        		<a href="#" target="_blank">山山简介</a>
	        	<a href="#" target="_blank">诚聘英才</a>
	        	<a href="#" target="_blank">联系我们</a>
	        	<a href="#" target="_blank">网站地图</a>
	        			          		        
           <span>关注山山商城：</span>
           <a target="_blank" href="#" class="ssb-weibo"><img src="./index_files/ssb-weibo.jpg" alt=""></a>
           <a target="_blank" href="#" class="ssb-weibot"><img src="./index_files/ssb-weibot.jpg" alt=""></a>
           <a href="javascript:void(0);" class="ssb-weixin" onmouseover="weixin(&#39;visible&#39;)" onmouseout="weixin(&#39;hidden&#39;)"><img src="./index_files/ssb-weixin.jpg" alt=""><label class="mbb-weixin"></label></a>
           <span class="ntkp ssb-weibot" onclick="openChatWindow(&#39;&#39;);"><img src="./index_files/ssb-talk.jpg" alt="在线咨询">
           </span>
        </p>
        <p>Copyright©2011-2016shanshan360.com 浙江山山网络科技股份有限公司  版权所有<span class="statistics_code">
        </span></p>
        <p>增值电信业务经营许可证：浙B2-20120027
         
        </p>
        <p>企业法人营业执照注册号：331127000009583</p>
     
<p><a target="_blank" href="#">
         <img src="./index_files/gongshang.png" alt="" border="0"></a>
        <a id="_pingansec_bottomimagelarge_shiming" href="#" target="_blank"><img src="./index_files/bottom_small_img.png" alt="实名认证" title="实名认证"></a>
		</p>
    </div>
</div>
</div>

<div id="cart_tan">
	<div id="cart_tan_top"><a onclick="close_cart_tan();"><b>X</b>关闭</a></div>
	<div id="cart_tan_zhong">
		<span><img src="./index_files/sc_success.gif">产品已经成功加入购物车！</span>
	</div>
	<div id="cart_tan_di">
		<a target="_blank" href="shopping.jsp">
			<img src="./index_files/sc_btn.gif">
		</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="index.jsp">再逛逛</a>
	</div>
	<div id="cart_tan_di">
		温馨提示：请在<a target="_blank" style="color:red;" href="#">个人资料</a>中填写QQ，方便卖家及时联系。
	</div>
</div>
<script type="text/javascript" src="js/index/tupian.js"></script>
<script type="text/javascript" src="js/index/index.js"></script> 

</body>
</html>
