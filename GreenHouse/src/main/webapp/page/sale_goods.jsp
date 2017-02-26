<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>
	商品上下架
</title>
<base href="/GreenHouse/">

<script type="text/javascript" src="./sale_goods_files/common.js"></script>
<script type="text/javascript" src="./sale_goods_files/tbra-aio.js"></script>
<script type="text/javascript" src="./sale_goods_files/top_v4.js"></script>
<script src="./sale_goods_files/search_monitor.js"></script>
<script type="text/javascript" src="./sale_goods_files/mytaobao_bc.js"></script>
<link href="./sale_goods_files/index.css" rel="stylesheet">
<script src="./sale_goods_files/saved_resource(2)"></script>
<script src="./sale_goods_files/saved_resource(3)"></script>

<script type="text/javascript" src="./sale_goods_files/saved_resource(4)"></script>
<script type="text/javascript" src="./sale_goods_files/goods_list_v1-min.js"></script>

<link type="text/css" href="./sale_goods_files/volcano.css" rel="stylesheet">
<link type="text/css" href="./sale_goods_files/mytaobao_bc.css" rel="stylesheet">
<link type="text/css" href="./sale_goods_files/goods_list_v1-min.css" rel="stylesheet">

<link type="text/css" href="./sale_goods_files/index-min.css" rel="stylesheet">
<script type="text/javascript" src="./sale_goods_files/index-min.js"></script>
<script type="text/javascript" src="./sale_goods_files/aplus_v2.js"></script>
<link id="yui__dyn_0" type="text/css" charset="utf-8" rel="stylesheet" href="./sale_goods_files/tbra.css">
<link href="./sale_goods_files/index-min(1).css" rel="stylesheet">
<script src="./sale_goods_files/index(2).js"></script>
<script src="./sale_goods_files/index(3).js"></script>
</head>
<body>

<div id="seller-nav" role="navigation">
    <div id="site-nav-content">
                <div id="J_MobileDownload" class="mobile-download" data-spm="a1zvp">
  <span></span>
  <a class="txt" href="javascript:void(0);" target="_blank" id="J_SellerMobile" title="新增“自动回复”功能！">卖家手机端</a>
  <s class="line-border"></s>
</div>
                        <!--新加入的消息dom-->
        <div id="J_Tmsg" class="tmsg" data-spm="a1zvq"><div class="J_Menu menu" data-fn-name="fn-tmsg"><div class="menu-hd J_Tmsg_Basic tmsg_basic"><span class="J_Tmsg_Logo"><span class="J_Tmsg_Logo_Loading tmsg_logo_loading" style="display: none;"></span><span class="J_Tmsg_Logo_Icon tmsg_logo_icon iconfont"></span><span class="J_Tmsg_Logo_Text tmsg_logo_text" style="padding-left:5px;">消息</span><span class="J_Tmsg_Logo_Unread tmsg_logo_unread"></span></span><b class="tmsg_basic_arrow"></b></div><div class="menu-bd"><div class="J_Tmsg_Panel_Apps tmsg_panel_apps"><div class="J_Tmsg_Panel_Head tmsg_panel_head">   <h2 class="J_Tmsg_Panel_Title tmsg_panel_title">未读新消息</h2>   <a class="J_Tmsg_Button_ReadAll tmsg_button_read-all" data-tip="ignoreAll" title="忽略所有消息" href="https://sell.taobao.com/auction/merchandise/auction_list.htm?spm=686.1000925.a1zvx.d44.uM9HxC&amp;type=1javascript:void(0);">全部设为已读</a></div><div class="J_Tmsg_Panel_AppsBody tmsg_panel_body">   <img style="display:block;margin:30px auto" width="48" height="48" src="./sale_goods_files/T1HcvHXd4nXXb6ROYh-48-48.gif"></div><div class="J_Tmsg_Panel_Foot tmsg_panel_foot">   <a class="J_Tmsg_Button_Setting tmsg_button_setting" data-tips="setting" title="消息设置" href="https://sell.taobao.com/auction/merchandise/auction_list.htm?spm=686.1000925.a1zvx.d44.uM9HxC&amp;type=1javascript:void(0);">设置</a>   <a class="J_Tmsg_Button_Feedback tmsg_button_feedback" data-tips="feedback" title="意见反馈" href="https://ur.taobao.com/survey/view.htm?spm=1.6659421.0.0.Nmaw77&amp;id=1990&amp;scm=1229.325.1.1" target="_blank">反馈</a>   <span class="J_Tmsg_Button_CheckAll_Wrap tmsg_button_check-all_wrap">       <a class="J_Tmsg_Button_CheckAll tmsg_button_check-all" href="https://sell.taobao.com/auction/merchandise/auction_list.htm?spm=686.1000925.a1zvx.d44.uM9HxC&amp;type=1javascript:void(0);" target="_blank">查看全部</a>   </span></div></div></div></div><div class="J_Tmsg_Panels tmsg_panels" style="_display:none"><div class="J_Tmsg_Panel_Detail tmsg_panel_detail"></div><div class="J_Tmsg_Panel_history tmsg_panel_history"></div><div class="J_Tmsg_Panel_Strong tmsg_panel_strong"></div><div class="J_Tmsg_Panel_Setting tmsg_panel_setting"></div></div></div>
<script>
  ;(function(S) {
    var version = parseFloat(S.version),
        isOnline = !~location.host.indexOf('daily.taobao.net');
    // 添加 tbc 包配置
    if (version > 1.1) {
      S.config({
        packages: [{
          name: 'tbc',
          path: isOnline ? '//g.alicdn.com/tbc/' : '//g-assets.daily.taobao.net/tbc/',
          ignorePackageNameInUri: true
        }]
      });
      // 兼容 KISSY 1.2
      if (version === 1.2) {
        S.config({
          map: [
            [/(\/tbc\/)tbc\//g, '$1']
          ]
        });
      }
    }
  })(KISSY);
</script>
<!-- <script>
  KISSY.ready(function(S) {
    var S= KISSY;
    S.use('core,dom', function(S,DOM) {
      var doc = document,
          version = parseFloat(S.version),
          isOnline = !~location.host.indexOf('daily.taobao.net'),
          isHighVersion = version >= 1.2;
      // var uv = '1.4.39',
      //   v = '3.3.14';
      var uv = '1.5.4',
          v = '3.4.6';
      var getCookie = function(name) {
        var m = doc.cookie.match('(?:^|;)\\s*' + name + '=([^;]*)');
        return (m && m[1]) ? decodeURIComponent(m[1]) : '';
      };
      
      var isLogin = function () {
        var nick = getCookie('_nk_') || getCookie('tracknick'),
            login = getCookie('_l_g_'),
            lgc = getCookie('lgc');
        return !!(login && nick || lgc);
      };
      
      var renderTmsgBase = function() {
        var tmsg = DOM.get('javascript:void(0);J_Tmsg'),
            temp = '<div class="J_Menu menu" data-fn-name="fn-tmsg">\
<div class="menu-hd J_Tmsg_Basic tmsg_basic">\
<span class="J_Tmsg_Logo">\
<span class="J_Tmsg_Logo_Loading tmsg_logo_loading"></span>\
<span class="J_Tmsg_Logo_Icon tmsg_logo_icon iconfont" style="display:none">&javascript:void(0);349;</span>\
<span class="J_Tmsg_Logo_Text tmsg_logo_text" style="padding-left:5px;">消息</span>\
<span class="J_Tmsg_Logo_Unread tmsg_logo_unread"></span>\
</span>\
<b class="tmsg_basic_arrow"></b>\
</div>\
<div class="menu-bd">\
<div class="J_Tmsg_Panel_Apps tmsg_panel_apps"></div>\
</div>\
</div>\
<div class="J_Tmsg_Panels tmsg_panels" style="_display:none">\
<div class="J_Tmsg_Panel_Detail tmsg_panel_detail"></div>\
<div class="J_Tmsg_Panel_history tmsg_panel_history"></div>\
<div class="J_Tmsg_Panel_Strong tmsg_panel_strong"></div>\
<div class="J_Tmsg_Panel_Setting tmsg_panel_setting"></div>\
</div>';
//  S.DOM.html(tmsg, temp);
        tmsg.innerHTML = temp;
      };
      
      var initTmsg = function() {
        var url = isOnline ? '//g.alicdn.com/tbc/' : '//g-assets.daily.taobao.net/tbc/',
            com = isLogin() ? ( '??umpp/' + uv + '/index-min.js,tmsg/' + v + '/index-min.js' ) : ( 'umpp/' + uv + '/index-min.js' );
        
        // 登陆用户
        if (isLogin()) {
          renderTmsgBase();
          
          S.getScript(url + com, function() {
            if (isHighVersion) {
              S.use('tbc/umpp/' + uv + '/', function() {
                S.use('tbc/tmsg/' + v + '/');
              });
            }
          });
        }
        // 访客
        else {
          if (isHighVersion) {
            S.use('tbc/umpp/' + uv + '/');
          }
          else {
            S.getScript(url + com);
          }
        }
      }();
    });
  });
</script> -->
                <ul class="quick-menu" data-spm="a1zvr">
            <li><a href="javascript:void(0);">GreenHouse网首页</a><s class="line-border"></s></li>
<li class="mytaobao">
  <div class="menu">
    <a class="menu-hd" href="javascript:void(0);" tabindex="0" aria-haspopup="menu-100" aria-label="右键弹出菜单，tab键导航，esc关闭当前菜单">我的GreenHouse<b></b></a><s class="line-border"></s>
    <div class="menu-bd" role="menu" aria-hidden="true" id="menu-100">
      <div class="menu-bd-panel">
        <div>
          <a href="javascript:void(0);">已买到的宝贝</a>
        </div>
      </div>
    </div>
  </div>
</li>
<li class="seller-center">
  <div class="menu">
    <a class="menu-hd" href="javascript:void(0);" tabindex="0" aria-haspopup="menu-101" aria-label="右键弹出菜单，tab键导航，esc关闭当前菜单">卖家中心<b></b></a><s class="line-border"></s>
    <div class="menu-bd" role="menu" aria-hidden="true" id="menu-101">
      <div class="menu-bd-panel">
        <div>
          <a href="javascript:void(0);" target="_blank">千牛手机管店</a><br>
          <a href="javascript:void(0);">已卖出的宝贝</a><br>
          <a href="javascript:void(0);">出售中的宝贝</a>
        </div>
      </div>
    </div>
  </div>
</li>
<li class="seller-service">
  <div class="menu">
    <a class="menu-hd" href="javascript:void(0);" tabindex="0" aria-haspopup="menu-102" aria-label="右键弹出菜单，tab键导航，esc关闭当前菜单">卖家服务<b></b></a><s class="line-border"></s>
    <div class="menu-bd" role="menu" aria-hidden="true" id="menu-102">
      <div class="menu-bd-panel">
        <div>
          <a href="javascript:void(0);">我的服务</a><br>
          <a href="javascript:void(0);">我的课程</a>
        </div>
      </div>
    </div>
  </div>
</li>
<li><a href="javascript:void(0);">联系客服</a></li>

                        <li class="seller-map buyer-map" data-spm="a1zvs">
    <div class="menu">
        <span class="menu-hd" tabindex="0" aria-haspopup="menu-103" aria-label="右键弹出菜单，tab键导航，esc关闭当前菜单"><b></b>卖家地图</span>
        <div class="menu-bd" role="menu" aria-hidden="true" id="menu-103">
            <div class="menu-bd-panel">
                <ul class="seller-map-wrapper clearfix">
                    <li class="seller-map-column">
                        <div class="seller-map-cell seller-map-cell-t" data-index="1" data-more="1">
                            <h2>开店&amp;入驻</h2>
                            <ol class="seller-map-item-wrapper">
                                
                                <li><a href="javascript:void(0);" target="_blank" title="账号注册">账号注册</a></li>
                                
                                <li><a href="javascript:void(0); target="_blank" title="GreenHouse开店">GreenHouse开店</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="天猫入驻">天猫入驻</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="一淘入驻">一淘入驻</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="中国质造入驻">中国质造入驻</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="极有家入驻">极有家入驻</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="拍卖会入驻">拍卖会入驻</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="供销平台入驻">供销平台入驻</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="速卖通开店">速卖通开店</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="出售闲置">出售闲置</a></li>
                                
                            </ol>
                        </div>
                        <div class="seller-map-cell seller-map-cell-m" data-index="2" data-more="1">
                            <h2>综合服务</h2>
                            <ol class="seller-map-item-wrapper">
                                
                                <li><a href="javascript:void(0);" target="_blank" title="服务市场">服务市场</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="需求定制">需求定制</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="摄影服务">摄影服务</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="装修模板">装修模板</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="GreenHouse贷款">GreenHouse贷款</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="提前收款">提前收款</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="淘工作">淘工作</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="商家服务社区">商家服务社区</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="淘模特">淘模特</a></li>
                                
                            </ol>
                        </div>
                    </li>
                    <li class="seller-map-column seller-map-column-last">
                        <div class="seller-map-cell seller-map-cell-t" data-index="1">
                            <h2>寻找货源</h2>
                            <ol class="seller-map-item-wrapper">
                                
                                <li><a href="javascript:void(0);" target="_blank" title="1688采购批发">1688采购批发</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="供销平台">供销平台</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="货源保税直邮">货源保税直邮</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="GreenHouse批发">GreenHouse批发</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="小微快采">小微快采</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="企业采购">企业采购</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="网货交易会">网货交易会</a></li>
                                
                            </ol>
                        </div>
                        <div class="seller-map-cell seller-map-cell-m" data-index="2">
                            <h2>卖家资讯</h2>
                            <ol class="seller-map-item-wrapper">
                                
                                <li><a href="javascript:void(0);" target="_blank" title="规则中心">规则中心</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="安全中心">安全中心</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="服务中心">服务中心</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="阿里研究中心">阿里研究中心</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="GreenHouse大学">GreenHouse大学</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="万堂书院">万堂书院</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="电商在线">电商在线</a></li>
                                
                                <li><a href="javascript:void(0);" target="_blank" title="天下网商">天下网商</a></li>
                                
                            </ol>
                        </div>

                    </li>
                </ul>
            </div>
        </div>
    </div>
</li>

                    </ul>
    </div>
</div>

<style>
javascript:void(0);seller-announce {
   display:none; text-align:center;width:100%;height: 30px;line-height: 30px;background: javascript:void(0);fffdc6;white-space:nowrap;overflow: hidden;text-overflow: ellipsis;font-size:12px;
}
.announce-b {
    font-family:'sellerCenter';color:javascript:void(0);0085d7;
}
</style>




<script>TB.SellerGlobal.init();document.getElementsByTagName('body')[0].className += ' new-seller ';</script>

  		





<div id="header">
    <!-- <div class="clearfix" data-spm="a1zvu">
        <h1 class="logo">
           <a href="javascript:void(0);" class="taobao-logo" target="_top">Taobao.com - 阿里巴巴旗下网站</a> 
            <a href="javascript:void(0);" class="sub-logo" target="_top">卖家中心</a>
        </h1>
                            </div> -->
    <div id="topnav" data-spm="a1zvv">
        <ul class="site-menu">
         	<li class="first"><a href="javascript:void(0);">商品上下架</a></li>
            <li><a href="index.jsp" target="_top">首页</a></li>
<!--<li><a href="javascript:void(0);" target="_blank">安全中心</a></li>
<li><a href="javascript:void(0);" target="_blank">服务中心</a></li>
<li><a href="javascript:void(0);" target="_blank">卖家论坛</a></li>
<li><a href="javascript:void(0);" target="_blank">GreenHouse大学</a></li> -->
        </ul>
        <div class="feedback">
            <span class="feedback-icon"></span>
            <a href="javascript:void(0);" target="_blank">问题反馈</a>
        </div>
    </div>
</div>

 	<div id="page">

<!-- body code begin -->
 <div id="Content">

        	<div id="nav-crumbs" class="crumbs" style="display: none;">
    		您的位置：
    		   <a href="javascript:void(0);">首页</a><span>&gt;&gt;</span>
    		   <a href="javascript:void(0);">我的GreenHouse</a><span>&gt;&gt;</span>
			   <strong id="Navigation_Title">我是卖家 &gt; 等待上架的宝贝</strong>
        </div>
    
	<div id="mytaobao-panel" class="layout grid-s140m0">
    		    	<div class="col-main">			<script type="text/javascript" src="./sale_goods_files/killie-min.js" async="true" defer="true" crossorigin=""></script>

			<div id="J_Region" class="main-wrap">
				<!-- <remark> query= [OR] cluster=ic_auction&ha3_query=query%3Dsearch_type%3A%271%27%20AND%20%28query_hit%3A%270%27%20ANDNOT%20user_type%3A%272%27%29%20AND%20auction_status%3A%27-5%27%20AND%20%28query_hit%3A%270%27%20ANDNOT%20tags%3A%27145474%27%29%20AND%20user_id%3A%27390946449%27%26%26config%3Dformat%3Aprotobuf%2Cproto_format_option%3Asummary_in_bytes%2Cfetch_summary_type%3Apk%2Cstart%3A0%2Chit%3A20%26%26sort%3D-ic_starts%28starts%2Cends%2Cduration%2Cic_tag%2C%22true%22%29%3B-auction_id%26%26kvpairs%3Dds_score_type%3Adocid%2Cfl%3Aauction_id%2Csrc%3Ahsf_sell%3Bregister_sell%3Bip_11.250.54.231%26%26filter%3Dbit_not%28options%2C%2217800491958272%22%29%20AND%20range%28reserve_price%2C%22%5B0%2C100000000%5D%22%29%20AND%20range%28sold_quantity%2C%22%5B0%2C2147483647%5D%22%29%26%26cluster%3Dic_auction%3Ahash_field%3D390946449&app=icse [OR] cluster=ic_auction&ha3_query=query%3Dsearch_type%3A%271%27%20AND%20%28query_hit%3A%270%27%20ANDNOT%20user_type%3A%272%27%29%20AND%20auction_status%3A%27-2%27%20AND%20%28query_hit%3A%270%27%20ANDNOT%20tags%3A%27145474%27%29%20AND%20user_id%3A%27390946449%27%26%26config%3Dformat%3Aprotobuf%2Cproto_format_option%3Asummary_in_bytes%2Cfetch_summary_type%3Apk%2Cstart%3A0%2Chit%3A20%26%26sort%3D-ic_starts%28starts%2Cends%2Cduration%2Cic_tag%2C%22true%22%29%3B-auction_id%26%26kvpairs%3Dds_score_type%3Adocid%2Cfl%3Aauction_id%2Csrc%3Ahsf_sell%3Bregister_sell%3Bip_11.250.54.231%26%26filter%3Drange%28quantity%2C%22%5B1%2C%29%22%29%20AND%20bit_not%28options%2C%2217800491958272%22%29%20AND%20range%28reserve_price%2C%22%5B0%2C100000000%5D%22%29%20AND%20range%28sold_quantity%2C%22%5B0%2C2147483647%5D%22%29%26%26cluster%3Dic_auction%3Ahash_field%3D390946449&app=icse [OR] cluster=ic_auction&ha3_query=query%3Dsearch_type%3A%271%27%20AND%20%28query_hit%3A%270%27%20ANDNOT%20user_type%3A%272%27%29%20AND%20%28%28%28auction_status%3A%270%27%20OR%20auction_status%3A%271%27%29%20OR%20auction_status%3A%27-9%27%29%20OR%20auction_status%3A%27-2%27%29%20AND%20%28query_hit%3A%270%27%20ANDNOT%20tags%3A%27145474%27%29%20AND%20user_id%3A%27390946449%27%26%26config%3Dformat%3Aprotobuf%2Cproto_format_option%3Asummary_in_bytes%2Cfetch_summary_type%3Apk%2Cstart%3A0%2Chit%3A20%26%26sort%3D-ic_starts%28starts%2Cends%2Cduration%2Cic_tag%2C%22true%22%29%3B-auction_id%26%26kvpairs%3Dds_score_type%3Adocid%2Cfl%3Aauction_id%2Csrc%3Ahsf_sell%3Bregister_sell%3Bip_11.250.54.231%26%26filter%3Dcontain%28quantity%2C%220%22%29%20AND%20bit_not%28options%2C%2217800491958272%22%29%20AND%20range%28reserve_price%2C%22%5B0%2C100000000%5D%22%29%20AND%20range%28sold_quantity%2C%22%5B0%2C2147483647%5D%22%29%26%26cluster%3Dic_auction%3Ahash_field%3D390946449&app=icse [OR] cluster=ic_auction&ha3_query=query%3Dsearch_type%3A%271%27%20AND%20%28query_hit%3A%270%27%20ANDNOT%20user_type%3A%272%27%29%20AND%20%28%28auction_status%3A%270%27%20OR%20auction_status%3A%271%27%29%20OR%20auction_status%3A%27-9%27%29%20AND%20%28query_hit%3A%270%27%20ANDNOT%20tags%3A%27145474%27%29%20AND%20user_id%3A%27390946449%27%26%26config%3Dformat%3Aprotobuf%2Cproto_format_option%3Asummary_in_bytes%2Cfetch_summary_type%3Apk%2Cstart%3A0%2Chit%3A20%26%26sort%3D-ic_starts%28starts%2Cends%2Cduration%2Cic_tag%2C%22true%22%29%3B-auction_id%26%26kvpairs%3Dds_score_type%3Adocid%2Cfl%3Aauction_id%2Csrc%3Ahsf_sell%3Bregister_sell%3Bip_11.250.54.231%26%26filter%3Dbit_not%28options%2C%2217800491958272%22%29%20AND%20range%28reserve_price%2C%22%5B0%2C100000000%5D%22%29%20AND%20range%28ic_starts%28starts%2Cends%2Cduration%2Cic_tag%2C%22false%22%29%2C%22%5B1487680620040%2C%29%22%29%20AND%20range%28sold_quantity%2C%22%5B0%2C2147483647%5D%22%29%26%26cluster%3Dic_auction%3Ahash_field%3D390946449&app=icse </remark> -->





 
<div id="_umfp" style="position:absolute;left:-1000px;top:-1000px;display:inline;width:1px;height:1px;overflow:hidden"><object type="application/x-shockwave-flash" data="./sale_goods_files/fp.swf" width="1" height="1" id="umFlash" class="umidWrapper"><param name="movie" value="https://s.tbcdn.cn/g/security/umflash/fp.swf?v1=2"><param name="allowScriptAccess" value="always"></object>
<img src="./sale_goods_files/clear.png">
</div>
<script type="text/javascript" src="./sale_goods_files/um.js" charset="utf-8" crossorigin=""></script>
<script type="text/javascript">
var container = document.getElementById('_umfp');
um.init({
    timeout: 3000,
    token: 'taobaosell:24440e3a83526a95754b39d01078930d',
    timestamp: '03101000515F58405049657D',
    serviceUrl: 'https://ynuf.alipay.com/service/um.json',
    appName: 'taobaosell',
    containers:{flash:container ,dcp:container}
});
</script>




<script text="javascript/text">
		var Y = YAHOO.util,D = Y.Dom, E = Y.Event;
	var mytb_menu = function(){
					document.getElementById("Navigation_Title").innerHTML = "我是卖家 > 等待上架的宝贝";
				selectItem("viewinstore");
	}
	;
	E.onDOMReady(mytb_menu);
    var EDIT_TILTE_URL = 'auction_list.json';
    var EDIT_TITLE_ACTION_TARGET = '&_output_charset=utf-8&action=goodsmanager/GoodsTitleEditAction&event_submit_do_edit_item=1';
    var EDIT_PRICE_URL = 'auction_list.json'; //'modify_item_price.htm';
    var EDIT_PRICE_ACTION_TARGET = '&_output_charset=utf-8&action=goodsmanager/GoodsPriceEditAction&event_submit_do_edit_item=1';
	var EDIT_NUM_URL = 'add_item_quantity.htm';
</script>
<script language="javascript" type="text/javascript">
 
	var result = '';
		if (result.length > 2)
	{
	  alert(result);
	}

</script>  
<div id="J_goodsInSock">
	<div class="box-diamond-white">
		<span class="mytaobao-rc-tp"><span></span></span>
						    		<div class="navigation">
        			<div class="crumbs">
                                <a href="javascript:void(0);">我是卖家</a>
                                <span>&gt;</span>
                                <a href="javascript:void(0);">宝贝管理</a>
                                <span>&gt;</span>
    							仓库中的宝贝
        			</div>
					 <div class="absright">
                            <ul>
                               <li>
                                  <div class="msg">
                                     <p class="help">
                                        <a href="javascript:void(0);" target="_blank">查看帮助</a>
                                     </p>
                                  </div>
                               </li>
                            </ul>
                     </div>

    		</div>
		
			<div id="main-content" class="mytaobao-bd">
            						<div class="msg msg-bar">
				<p class="attention">
					<b>GreenHouse提醒您：</b>
					请核对您发布的商品是否符合商品违规发布累计扣12分将做 7天。
									</p>
			</div>
						<form name="open" method="post" action="user/insertGood"  enctype="multipart/form-data" id="openid">
					        <input name="_tb_token_" type="hidden" value="pWJfb3uQ1N4GTIv5eA0S">
							<input type="hidden" name="pageName" value="goodsInStock">
							<input type="hidden" name="banner" value="$q.banner">
							<input type="hidden" name="page" value="1">
							<input type="hidden" name="orderField" value="1">
							<input type="hidden" name="orderBy" value="0">
							<input type="hidden" id="otherOrderBy" name="otherOrderBy" value="0">
							<input type="hidden" id="otherOrderBy2" name="otherOrderBy2" value="0">
							<input type="hidden" name="singleId" value="">
							<input type="hidden" name="singleIdNum" value="">
							<input type="hidden" name="singleIdMinNum" value="">
							<input type="hidden" name="x_id" value="18bd17c5f9e40f8ae105a3eb9b126c8c9">
							<input type="hidden" name="isarchive" value="false">
							<input type="hidden" name="action" value="goodsmanager/GoodsManageAction">
							<input type="hidden" name="distributionIds" value="">
							<input type="hidden" name="lastStartRow" value="$q.lastStartRow">
							<input type="hidden" name="lastStopRow" value="$q.lastStopRow">
							<input type="hidden" name="lastPageSize" value="0">
							<input type="hidden" id="J_HideCateNameInShop" name="shopCatName" value="全部分类">
				
				<div class="data-list data-list-goods" id="goods-in-stock">
						<div class="hd">
							<ul class="tabs">
								<li class="selected"><a href="javascript:void(0);" hidefocus="true">全部</a></li>
								<li><a href="javascript:void(0);" hidefocus="true">我下架的</a></li>
								<li><a href="javascript:void(0);" hidefocus="true">从未上架</a></li>
							</ul>
						</div>

					<div id="J_DataTable" class="bd">
						<div class="search-form">
							 <div class="colum">
                            	<div class="row">
                            	    <label>宝贝名称：</label>
									<input type="text" name="g_name" id="g_name" maxlength="64" >
                            	</div>
                            	<div class="row">
                            	    <label>价格：</label>
                            	    <input type="text" value="" class="search-price" name="g_price" id="search-price-from">
                            	</div>
                            	<div class="row">
                            	      <labe>商品状态：</label>
							          <select name="g_state">
										    <option value="grounding">上架</option>
										    <option value="saleOut">下架</option>
									   </select>
                            	</div>
                            </div>

        					<div class="colum">
								<div class="row">
        							<label>商家编码：</label>
        							<input type="text" name="s_id" id="outer-id" maxlength="64" />
                                </div>
								<div class="row">
                                    <label>总销量：</label>
									<input type="text" value="" class="search-num" name="g_stock" id="search-num-from">
                                </div>

                                  <div class="row indent-discount">  
                                        <label>商品图片：</label>
                                        <!-- <input type="file" id="g_pic" name="g_pic"/> -->
                                        <input name="g_pic" type="file" onchange="chgpic(this)" multiple="multiple"/><br/>
      										<img alt=""  id="g_pic"  src="images/4.5.1b.jpg" width="100px" height="100px">
                                    </div>
								  </div>
                                <div class="colum">
	                                <div class="row">
	                                    <label>宝贝类目：</label>
	            						<select name="gt_name" id="gt_name"></select>
	                                </div>
								    <div class="row itemsort rendered" id="J_ItemSort">
                                    	<label>店铺中分类：</label>
                                    	<input type="text" value=""  name="g_type" id="g_type">
                                    	<div class="row alignright">
											<button class="ss_immkd" >确定</button>
                                		</div>
                            				<div class="sim-select-icon"></div>
                            			</div>
                    				</div>
                            </div>
							<!-- <div class="tip-history">
								找不到您的宝贝？您可能长时间没有编辑过宝贝，请查看
                    			<a target="_blank" href="javascript:void(0);">历史宝贝记录&gt;&gt;</a>
                			</div> -->
						</div>
                                                <div id="J_onSaleCount_1">共有全部下架宝贝0条记录</div>
                        													<table id="J_DataTable" border="0" cellpadding="4" cellspacing="0" width="100%" style="border:1px solid javascript:void(0);DFDFDF;">
                    			<tbody><tr bgcolor="javascript:void(0);f6f6f6">
                      				<td nowrap="" align="center"><br><font color="javascript:void(0);ff6600">没有找到符合条件的宝贝！</font><br></td>
                    			</tr>
                  			</tbody></table>
											</div>
					<div class="recommend-tips">
						<b>备注：</b>
						您可以将希望上架出售的宝贝打勾，然后按
						<em>“上架”</em>
						的确认键， 您的宝贝马上就会和大家见面了。
						<br>
					</div>
					<div id="AliSoft">
						<a href="javascript:void(0);" title="卖家服务市场" target="_blank">
							<b>热门营销工具</b>
						</a>
						<a href="javascript:void(0);" title="个性化定制" target="_blank">
							<b>个性店铺设计</b>
						</a>
						<a href="javascript:void(0);" title="商品摄影服务" target="_blank">
							<b>高转化拍摄</b>
						</a>
					</div>
				</div>
			</form>
					</div>
		<span class="mytaobao-rc-bt"><span></span></span>
	</div>
	 <img src="./sale_goods_files/T1TPhsXoRlXXXXXXXX-18-18.png" alt="反馈" width="18" height="18" style="vertical-align:middle;"> 我对“仓库中的宝贝”有意见或建议，
   <a href="javascript:void(0);" target="_blank">跟GreenHouse说两句</a>
    <form action="https://sell.taobao.com/auction/merchandise/auction_list.htm?spm=686.1000925.a1zvx.d44.uM9HxC&amp;type=1" method="post" name="editForm" style="display:none" target="_blank">
		<input name="_tb_token_" type="hidden" value="pWJfb3uQ1N4GTIv5eA0S">
		<input type="hidden" name="itemNumId" value="">
		<input type="hidden" name="auto" value="">
		<input type="hidden" name="errorCodes" value="">
	    <input type="hidden" name="event_submit_do_edit_not_up_self" value="1">
    	<input type="hidden" name="action" value="EditNotUpSelfAction">
	</form>
</div>

<script language="javascript" charset="gb2312">
	function createCardElement(){
		var popupDiv=document.createElement('div');
		popupDiv.className="favorable-popup";
		popupDiv.id="favorable:icon_popup";
		popupDiv.style.display="none";
		document.body.appendChild(popupDiv);
		var content=document.createElement('div');
		content.className="favorable-popup-content";
		content.id="favorable:popup-content";
		popupDiv.appendChild(content);
		var span=document.createElement('span');
		span.id="card_info";
		span.innerHTML="";
		content.appendChild(span);
		var p=document.createElement('p')
		p.className='favorable-popup-arrow';
		popupDiv.appendChild(p);
	}
		var getSmallCardIcon = function (element){
		if (element.className == "fav-card-icon favcard-practial favcard-small favcard-small-long"){
			return true;
		}
		else{
			return false;
		}
	}
	function outString(){
		createCardElement();
		var smallCardList = YAHOO.util.Dom.getElementsBy(getSmallCardIcon, 'span');
		if (smallCardList){
			TB.widget.SimplePopup.decorate(smallCardList,  'favorable:icon_popup',{
				eventType: 'mouse',
				offset: [-25, 13],
				autoFit: false,
				onShow: function(){
					var param = this.trigger.getAttribute('cardsList');
					var container = $('favorable:popup-content');
					var sUrl = '//sell.taobao.com/auction/activity/tcp_activity_card_list.htm?property='+param;
					var request = YAHOO.util.Connect.asyncRequest('GET', sUrl,{
						success: function(o){
							$('card_info').innerHTML = o.responseText;
						}
						,failure:function(){$('card_info').innerHTML="<li>活动卡</li>";}
					}
					);
				}
			}
			);
		}

	    /*add by yansong*/
	    var D = YAHOO.util.Dom,
			 E = YAHOO.util.Event,
			 _ie = YAHOO.env.ua.ie;
		if(_ie != 6 && _ie != 7){
			var i,
				tr = D.get('J_IllegalGoods'),
				temp = null;
			temp = D.getChildren(tr);
			for(i = 0; i< temp.length; i++){
				if(temp[i].nodeName === 'TBODY'){
					tr = D.getLastChild(temp[i]);
					break;
				}
			}
			while(tr.nodeName !== 'TR'){
				tr = D.getPreviousSibling(tr);
			}
			temp = D.getChildren(tr);
			for(i = 0; i< temp.length; i++){
				if(temp[i].nodeName === 'TD'){
					temp[i].style.borderBottom = "1px solid javascript:void(0);FF8080";
				}
			}
		}
		E.on(D.getElementsByClassName('J_EditGoods', 'a', 'J_IllegalGoods'), 'click', function(evt){
			E.preventDefault(evt);
			var obj = E.getTarget(evt),
				 editForm = document.forms['editForm'],
				 reg = /javascript:void(0);(\d+?)(false|true)(\d{2})$/;
			var links = D.getAttribute(obj, 'href');
			m = links.match(reg);
			if(m[3] && (m[3]!=11 || confirm('您的自动发售权限已被取消\n如要继续编辑，建议事先备份好卡密，否则将丢失'))){
				editForm['itemNumId'].value = m[1];
				editForm['auto'].value = m[2];
				editForm['errorCodes'].value = encodeURIComponent(D.getAttribute(obj, 'data-value'));
				editForm.submit();
			}
		});

		/*end add by yansong*/
	}
	YAHOO.util.Event.onDOMReady(outString);
</script>



 
<script src="./sale_goods_files/include.js" crossorigin=""></script>
<script type="text/javascript">
    window.awAsyncInit = function() {
        AW.init({
            sourceId:242,
            bizCode:'PCAnyWhereWindow'
        })
    }
</script>

<script>
(function(){
	var S = KISSY , Event = S.Event , DOM = S.DOM , timer = null ;
	S.ready(function(S){
		S.each(S.query('.j_ColRightLink') , function(item){
			Event.on(item , 'mouseenter' , function(){
				var self = this ;
				timer = setTimeout(function(){
					DOM.addClass(self , 'col-right-hover');
					DOM.show(DOM.children(self , '.j_ColRightLinkPanel')[0]);
				} , 100);
			});
			Event.on(item , 'mouseleave' , function(){
				var self = this ;
				clearTimeout(timer);
				DOM.removeClass(self , 'col-right-hover');
				DOM.hide(DOM.children(self , '.j_ColRightLinkPanel')[0]);
			})
		});
	});
})();
</script>
<script type="text/javascript">
    Sell.Config.set('global', {
        page: 'goodsOnSale'
    });

    Sell.Config.set('QRCode', {
        getQRUrl: "/auction/json/get_qR_code.do"
    })
    Sell.Config.set('MobileDesc', {
        showTip: true     })
</script>
<script type="text/javascript" src="js/goods/jquery.min.js"></script>
<script type="text/javascript" src="js/goods/sale_goods.js"></script>

			</div>
    	</div>
    				    	<div class="col-sub">
            			


<div id="sidebar">
        <div class="app-quick-entry">
        <span class="entry-wrap">
            <span class="title">我的应用</span>
        </span>
    </div>
        <div class="app-list J_AppList"><ul data-spm="a1zvx">                <li class="category">            <div class="category-name"><span class="category-icon"></span>店铺管理<span class="icon J_AppToggle" data-id="54" unselectable="on"><b class="close"></b><b class="open"></b></span></div>            <ol class="category-app clearfix J_Category_54">                        <li class="common-app"><a href="https://openshop.taobao.com/openshop/welcome.htm" title="我要开店" data-spm="d57">我要开店</a></li>                                    </ol>        </li>                <li class="category">            <div class="category-name"><span class="category-icon"></span>交易管理<span class="icon J_AppToggle" data-id="55" unselectable="on"><b class="close"></b><b class="open"></b></span></div>            <ol class="category-app clearfix J_Category_55">                        <li class="common-app"><a href="https://trade.taobao.com/trade/itemlist/list_sold_items.htm?mytmenu=ymbb" title="已卖出的宝贝" data-spm="d28">已卖出的宝贝</a></li>                        <li class="common-app"><a href="https://rate.taobao.com/myRate.htm?banner=1&amp;mytmenu=pj" title="评价管理" data-spm="d27">评价管理</a></li>                                    </ol>        </li>                <li class="category">            <div class="category-name"><span class="category-icon"></span>物流管理<span class="icon J_AppToggle" data-id="56" unselectable="on"><b class="close"></b><b class="open"></b></span></div>            <ol class="category-app clearfix J_Category_56">                        <li class="common-app"><a href="https://wuliu.taobao.com/user/order_list_new.htm?order_status_show=send&amp;mytmenu=fh" title="发货" data-spm="d30">发货</a></li>                        <li class="common-app"><a href="https://wuliu.taobao.com/user/logis_tools.htm?mytmenu=wlgj" title="物流工具" data-spm="d32">物流工具</a></li>                        <li class="common-app"><a href="https://wlmart.wuliu.taobao.com/user/consign_setting.htm?mytmenu=fhsz" title="物流服务" data-spm="d34">物流服务</a></li>                        <li class="common-app"><a href="https://wuliu.taobao.com/kuaidi/post.htm" title="我要寄快递" data-spm="d33">我要寄快递</a></li>                                    </ol>        </li>                <li class="category">            <div class="category-name"><span class="category-icon"></span>宝贝管理<span class="icon J_AppToggle" data-id="57" unselectable="on"><b class="close"></b><b class="open"></b></span></div>            <ol class="category-app clearfix J_Category_57">                        <li class="common-app"><a href="https://upload.taobao.com/auction/sell.jhtml?mytmenu=wym" target="_blank" title="发布宝贝" data-spm="d48">发布宝贝</a></li>                        <li class="common-app"><a href="https://sell.taobao.com/auction/merchandise/auction_list.htm" title="出售中的宝贝" data-spm="d45">出售中的宝贝</a></li>                        <li class="common-app"><a href="https://sell.taobao.com/auction/merchandise/auction_list.htm?type=1" title="仓库中的宝贝" data-spm="d44">仓库中的宝贝</a></li>                        <li class="common-app"><a href="https://healthcenter.taobao.com/home/health_home.htm" title="体检中心" data-spm="d47">体检中心</a></li>                                    </ol>        </li>                <li class="category last-category">            <div class="category-name"><span class="category-icon"></span>客户服务<span class="icon J_AppToggle" data-id="58" unselectable="on"><b class="close"></b><b class="open"></b></span></div>            <ol class="category-app clearfix J_Category_58">                        <li class="common-app"><a href="https://refund.taobao.com/refund_list.htm?banner=1&amp;mytmenu=tuikuan" title="退款管理" data-spm="d79">退款管理</a></li>                        <li class="common-app"><a href="https://myseller.taobao.com/app.htm?aid=8&amp;cid=58&amp;fromopenshop=true" title="售后管理" data-spm="d8">售后管理</a></li>                        <li class="common-app"><a href="https://myseller.taobao.com/app.htm?aid=21&amp;cid=58&amp;fromopenshop=true" title="举报管理" data-spm="d21">举报管理</a></li>                        <li class="common-app"><a href="https://myseller.taobao.com/app.htm?aid=9&amp;cid=58&amp;fromopenshop=true" title="咨询回复" data-spm="d9">咨询回复</a></li>                                    <li class="normal-app"><a href="https://law.taobao.com/rulefaces/rule_url_proxy.htm" title="违规记录" data-spm="d77">违规记录</a></li>                        <li class="normal-app"><a href="https://xiaobao.taobao.com/prepay/prepay_entry.htm" title="消费者保障服务" data-spm="d80">消费者保障服务</a></li>                        <li class="normal-app"><a href="https://fundrepay.taobao.com/fund/sellerRemindList.htm" title="基金还款" data-spm="d95">基金还款</a></li>                        </ol>        </li>            </ul></div>
    </div>


        </div>
			</div>
</div>
<!-- body code end -->
   




<!-- from vmcommon -->
<div id="footer">
    <div class="footer" id="J_SiteFooter" data-spm="1997523009">
   <div class="footer-hd">
    <p><span><a href="javascript:void(0);">阿里巴巴集团</a></span><b>|</b><span><a href="javascript:void(0);">GreenHouse网</a></span><b>|</b><span><a href="javascript:void(0);">天猫</a></span><b>|</b><span><a href="javascript:void(0);">聚划算</a></span><b>|</b><span><a href="javascript:void(0);">全球速卖通</a></span><b>|</b><span><a href="javascript:void(0);">阿里巴巴国际交易市场</a></span><b>|</b><span><a href="javascript:void(0);">1688</a></span><b>|</b><span><a href="javascript:void(0);">阿里妈妈</a></span><b>|</b><span><a href="javascript:void(0);">飞猪</a></span><b>|</b><span><a href="javascript:void(0);">阿里云计算</a></span><b>|</b><span><a href="javascript:void(0);">YunOS</a></span><b>|</b><span><a href="javascript:void(0);">阿里通信</a></span><b>|</b><span><a href="javascript:void(0);">一淘</a></span><b>|</b><span><a href="javascript:void(0);">万网</a></span><b>|</b><span><a href="javascript:void(0);">高德</a></span><b>|</b><span><a href="javascript:void(0);">UC</a></span><b>|</b><span><a href="javascript:void(0);">友盟</a></span><br><span><a href="javascript:void(0);">虾米</a></span><b>|</b><span><a href="javascript:void(0);">阿里星球</a></span><b>|</b><span><a href="javascript:void(0);">来往</a></span><b>|</b><span><a href="javascript:void(0);">钉钉</a></span><b>|</b><span><a href="javascript:void(0);">支付宝</a></span><b>|</b><span><a href="javascript:void(0);">优酷</a></span><b>|</b><span><a href="javascript:void(0);">土豆</a></span><b>|</b><span><a href="javascript:void(0);">阿里健康</a></span><b>|</b><span><a href="javascript:void(0);">阿里影业</a></span><b>|</b><span><a href="javascript:void(0);">阿里体育</a></span><b>|</b><span><a href="javascript:void(0);">网商银行</a></span></p>
   </div>
   <div class="footer-bd">
    <p><span><a href="javascript:void(0);">关于GreenHouse</a></span><span><a href="javascript:void(0);">合作伙伴</a></span><span><a href="javascript:void(0);">营销中心</a></span><span><a href="javascript:void(0);">廉正举报</a></span><span><a href="javascript:void(0);">联系客服</a></span><span><a href="javascript:void(0);">开放平台</a></span><span><a href="javascript:void(0);">诚征英才</a></span><span><a href="javascript:void(0);">联系我们</a></span><span><a href="javascript:void(0);">网站地图</a></span><span><a href="javascript:void(0);">法律声明及隐私权政策</a></span><span><a href="javascript:void(0);">知识产权</a></span><b>|</b> <em>&javascript:void(0);169; 2003-2017 Taobao.com 版权所有</em></p>
    <p><span>网络文化经营许可证：<a href="javascript:void(0);">浙网文[2013]0268-027号</a></span><b>|</b><span>增值电信业务经营许可证：<a href="javascript:void(0);">浙B2-20080224</a></span><b>|</b><span>信息网络传播视听节目许可证：1109364号</span><b>|</b><span>互联网违法和不良信息举报电话:0571-81683755 blxxjb@alibaba-inc.com</span></p>
   </div>
  </div> 
<style>
javascript:void(0);footer {
    border-top: none;
}
.footer {
    width: 100%!important;
    max-width: 100%!important;
    min-height: 125px;
    margin-top: 20px;
    position: relative;
    padding-bottom: 9px;
    background-color: javascript:void(0);fff;
    font-size: 12px
}
.footer p {
    padding-bottom: 8px;
    overflow: hidden;
    *zoom: 1
}
.footer b {
    margin: 0 3px;
    font-weight: 400;
    color: javascript:void(0);ddd
}
.footer em,
.footer span {
    white-space: nowrap;
    color: javascript:void(0);9c9c9c;
}
.footer em {
    margin-left: 30px;
    font: 12px/1.5 tahoma,arial,'Hiragino Sans GB','\5b8b\4f53',sans-serif;
}
.footer span {
    margin: 0 4px;
}
.footer .footer-bd,
.footer .footer-ft,
.footer .footer-hd {
    width: 1190px;
    margin-left: auto;
    margin-right: auto;
    text-align: left;
}
.footer .footer-bd a,
.footer .footer-hd a {
    white-space: nowrap;
    color: javascript:void(0);6c6c6c;
    cursor: pointer;
    text-decoration: none
}
.footer .footer-bd a:hover,
.footer .footer-hd a:hover {
    color: javascript:void(0);f40;
    text-decoration: none;
}
.footer .footer-hd {
    padding-top: 7px;
    border-top: 1px solid javascript:void(0);ddd
}
.footer .footer-hd p {
    margin-bottom: 8px;
    line-height: 27px;
    border-bottom: 1px solid javascript:void(0);ddd
}
.footer .footer-ft {
    display: none;
}
.footer .footer-ft a {
    margin-right: 15px;
    text-decoration: none;
}
.footer .footer-ft .mod {
    height: 40px;
    display: inline-block;
    background-repeat: no-repeat
}
.footer-with-logo {
    min-height: 170px
}
</style>
    <div id="server-num">sell011250054231.eu13</div>
</div>

<script src="./sale_goods_files/saved_resource(5)"></script>

<!-- end vmcommon -->


<!-- javascript:void(0);Content End -->

</div><div class=" aw-wrapper  bluegirl small" style="top: 125px; right: 5px; opacity: 1;"><div class="aw-window lowreso-dialog small"><h3 class="aw-title aw-dragger" style="opacity: 0; padding-top: 0px; display: none; height: 0px;">猜您想问：</h3><ul class="aw-content" style="opacity: 0; height: 0px; display: none;"><li class="aw-lineitem"><a class="aw-item" href="https://sell.taobao.com/auction/merchandise/auction_list.htm?spm=686.1000925.a1zvx.d44.uM9HxC&amp;type=1javascript:void(0);" data-type="knowledge" data-idx="0" data-src="contents">仓库中的宝贝怎么少了/找不到了</a></li><li class="aw-lineitem"><a class="aw-item last" href="https://sell.taobao.com/auction/merchandise/auction_list.htm?spm=686.1000925.a1zvx.d44.uM9HxC&amp;type=1javascript:void(0);" data-type="knowledge" data-idx="1" data-src="contents">什么样的商标可以申请品牌</a></li></ul><ul class="aw-default-tool" style="width: 50px;"><li class="aw-lineitem stress tool-active-notify"><a class="aw-tool-item" href="https://sell.taobao.com/auction/merchandise/auction_list.htm?spm=686.1000925.a1zvx.d44.uM9HxC&amp;type=1javascript:void(0);"><i class="anywhere-iconfont toolicon ring-icon" style="margin-right: 0px;"></i><span class="toolwording" style="display: none;">万象提醒</span><span class="activeNotifyCount">10</span><span class="actived-corner" data-service="activeNotify"></span></a><div class="aw-hover-tip stress" data-name="tool-active-notify">万象提醒</div><div class="active-notify-tooltip"><div class="active-notify-logo-wrapper"><i class="anywhere-iconfont active-notify-logo"></i></div><i class="anywhere-iconfont active-notify-close"></i><div class="active-notify-anchor"></div><div class="active-notify-content"><div class="active-notify-content-header"></div><div class="active-notify-content-detail"></div><a href="https://sell.taobao.com/auction/merchandise/auction_list.htm?spm=686.1000925.a1zvx.d44.uM9HxC&amp;type=1javascript:void(0);" class="active-notify-content-check">查看详情</a></div></div></li><li class="aw-lineitem stress tool-connect" style="display: block;"><a class="aw-tool-item" href="https://sell.taobao.com/auction/merchandise/auction_list.htm?spm=686.1000925.a1zvx.d44.uM9HxC&amp;type=1javascript:void(0);"><i class="anywhere-iconfont toolicon" style="margin-right: 0px;"></i><span class="toolwording" style="display: none;">召唤客服</span><span class="msgCount"></span><span class="actived-corner" data-service="imDialogService"></span></a><div class="aw-hover-tip stress" data-name="tool-connect">召唤客服</div></li><li class="aw-lineitem stress tool-ser-history" style="display:none;"><a class="aw-tool-item" href="https://sell.taobao.com/auction/merchandise/auction_list.htm?spm=686.1000925.a1zvx.d44.uM9HxC&amp;type=1javascript:void(0);"><i class="anywhere-iconfont toolicon" style="margin-right: 0px;"></i><span class="toolwording" style="display: none;">服务追踪</span><span class="red-point"></span><span class="actived-corner" data-service="serviceHistory"></span></a><div class="aw-hover-tip stress" data-name="tool-ser-history">服务追踪</div></li></ul><img class="aw-logo aw-dragger" src="./sale_goods_files/TB1zXnCKVXXXXc5XVXXXXXXXXXX-50-50.png" alt="万象LOGO" style="right: 0px; display: block; width: 50px; top: -47px;"><div class="aw-anim-lge-logo"></div><div class="aw-anim-small-logo" style="display: none; background-position: 0px 0px;"></div><div class="aw-bubble-wrapper" style="display: none; right: -15px; top: -110px;"><div class="aw-bubble-text">有问题找我哦~</div><img class="aw-bubble-close" src="./sale_goods_files/TB1OE0BLVXXXXaVXXXXXXXXXXXX-18-18.png" alt="万象叉叉" style="display:none;"><img class="aw-bubble" src="./sale_goods_files/TB1molpLVXXXXaGXFXXXXXXXXXX-97-63.png" alt="万象气泡"></div></div></div>

<div class="favorable-popup" id="favorable:icon_popup" style="display: none;"><div class="favorable-popup-content" id="favorable:popup-content"><span id="card_info"></span></div><p class="favorable-popup-arrow"></p></div><div id="singleCalendar" style="z-index:999910;visibility:hidden; left:0;top:0;position:absolute;" class="ks-cal-call ks-clearfix multi-1"><div class="ks-cal-box" id="ks-cal-9507237354493272"><div class="ks-cal-hd"><a href="javascript:void(0);" class="ks-prev ">&lt;</a><a href="javascript:void(0);" class="ks-title">2017年2月</a><a href="javascript:void(0);" class="ks-next ">&gt;</a></div><div class="ks-cal-bd"><div class="ks-whd"><span>日</span><span>一</span><span>二</span><span>三</span><span>四</span><span>五</span><span>六</span></div><div class="ks-dbd ks-clearfix"><a href="javascript:void(0);" class="ks-null">0</a><a href="javascript:void(0);" class="ks-null">0</a><a href="javascript:void(0);" class="ks-null">0</a><a href="javascript:void(0);">1</a><a href="javascript:void(0);">2</a><a href="javascript:void(0);">3</a><a href="javascript:void(0);">4</a><a href="javascript:void(0);">5</a><a href="javascript:void(0);">6</a><a href="javascript:void(0);">7</a><a href="javascript:void(0);">8</a><a href="javascript:void(0);">9</a><a href="javascript:void(0);">10</a><a href="javascript:void(0);">11</a><a href="javascript:void(0);">12</a><a href="javascript:void(0);">13</a><a href="javascript:void(0);">14</a><a href="javascript:void(0);">15</a><a href="javascript:void(0);">16</a><a href="javascript:void(0);">17</a><a href="javascript:void(0);">18</a><a href="javascript:void(0);">19</a><a href="javascript:void(0);">20</a><a class="ks-selected" ks-today="" href="javascript:void(0);">21</a><a href="javascript:void(0);">22</a><a href="javascript:void(0);">23</a><a href="javascript:void(0);">24</a><a href="javascript:void(0);">25</a><a href="javascript:void(0);">26</a><a href="javascript:void(0);">27</a><a href="javascript:void(0);">28</a></div></div><div class="ks-setime hidden"></div><div class="ks-cal-ft hidden"><div class="ks-cal-time">时间：00:00 &javascript:void(0);9829;</div></div><div class="ks-selectime hidden"></div></div><!--javascript:void(0);ks-cal-box--></div><div class="mobile-desc hint-default hint-overlay hint-ext-position" style="left: 0px; top: 921px; z-index: 9999;"><div class="hint-contentbox "></div><a tabindex="0" href="javascript:void(&quot;关闭&quot;)" role="button" class="hint-ext-close" style="display: none;"><span class="hint-ext-close-x">关闭</span></a><div class="arrow arrow-left"><i class="outer"></i><i class="inner"></i></div></div><div id="J_UmppUserContainer" style="height:1px;width:1px;overflow:hidden;position:absolute;bottom:1px"><embed src="https://g.alicdn.com/tbc/umpp/1.4.35/trinity.swf" width="1" height="1" id="ks-flash-195" name="umpp-trinity-name" type="application/x-shockwave-flash" allowscriptaccess="always" flashvars="jsentry=_umpp_trinity_&amp;swfid=UM_%25E4%25BD%2595%25E8%25BF%259B%25E9%2592%25B01487680568326&amp;group=%25E4%25BD%2595%25E8%25BF%259B%25E9%2592%25B0"></div><iframe src="./sale_goods_files/ajaxconn2.html" id="J_Um_Iframe" frameborder="0" scrolling="no" width="1" height="1" style="position: absolute;"></iframe></body></html>