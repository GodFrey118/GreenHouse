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
<title>用户注册 - 山山商城_自媒体视频直播购物平台</title>
<meta name="description" content="山山商城通过自媒体的方式，自己挖掘各地好的农特产，拍摄视频建立专辑，并在在每一个农特产品的原产地构架视频直播，全天直播原产地产品的生长及制作及包装过程，保证消费者买到的原滋原味的农特产品。 正品保障、 提供发票、 7天无理由退换货。">
<meta name="keywords" content="山山商城,网上购物平台,农产品网购平台,视频直播购物平台，农产品网上购物平台,休闲零食,干果炒货,茶叶,食用菌,粮油,购物商城,我要买,我要卖,免费开店">
<script type="text/javascript" async="" charset="utf-8" src="js/public/ntkfstat.js"></script>
<script charset="utf-8" src="js/public/v.js"></script>
<script type="text/javascript" async="" src="js/public/saved_resource"></script>
<script type="text/javascript" src="js/public/index.php"></script>
<script type="text/javascript" src="js/public/jquery-V2.3.0.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/jquery.superslide.2.1.1.js" charset="utf-8"></script>
<script type="text/javascript" src="js/public/ecmall.js"></script>  
<script type="text/javascript" src="js/public/ss.index-V2.4.0.js" charset="utf-8"></script>                                  
<script charset="utf-8" type="text/javascript" src="js/public/jquery-ui-1.10.0.js"></script><script src="./register_files/jquery-ui-1.10.0(1).js" type="text/javascript"></script>
<script charset="utf-8" type="text/javascript" src="js/public/chk_form.js"></script>
<link rel="stylesheet" type="text/css" href="css/public/jquery-ui.css">
<script type="text/javascript" src="js/index/Seach.js"></script> 
<style>                 
#close_btn{width:30px;position:fixed;right:110px;top:10px;cursor:pointer}
#bg_div {margin:-390px auto 0px;z-index:10000;height: 400px;width:1190px;position:fixed;}
#top_nav{height:70px}
/*#close_btn{position:fixed;right:184px;top:10px;cursor:pointer}*/
.pic img {width:150px;height:150px}
.small_img img{width:45px;height:45px}
.slide_img img{width:235px;height:470px} 
.collect{cursor:pointer}
</style>  
<script type="text/javascript" async="async" charset="utf-8" src=".js/public/im.js" data-requiremodule="im"></script>
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
                <span class="fl name sn-login-info">您好！ 欢迎来山山商城购物！<a href="login_user.jsp" class="sn-login">请登录</a> <a href="page/register" class="sn-register">免费注册</a><i class="sn-separator"></i></span>  
           </div>
      </div>
</div>
</div>
<link rel="stylesheet" type="text/css" href="css/public/common.css">
<link rel="stylesheet" type="text/css" href="css/public/reg.css">
<script type="text/javascript" src="js/public/my_cookie.js" charset="utf-8"></script>
<div style="background-color: #F2F2F2">
<div class="reg-box ovf">
     <div class="reg-top fl">
          <div class="content">
               <div class="fl reg-logo"><a href="#" target="_blank"><img style="width: 155px;" src="./register_files/reg_logo.jpg"></a></div>
               <div class="fl reg-font f24 fyh">欢迎注册</div>
          </div>
          <div class="clear fr">
          我已经注册，现在就<a href="login_user.jsp">登录</a>
          </div>
     </div>
     <div class="clear reg-box2" id="register_all_boder">
          <div class="fl fl-box">
          	<form action="user/register" method="post" id="register_form" name="register_form">
               <ul>
                  <li class="form">
                     <div class="fl fl-txt f14"><font color="#FF0000">*</font>&nbsp;账号名：</div>
                     <div class="fl item-ifo">
                           <input class="input_s1 f14 fuhao2" onpaste="return false" id="user_name" name="user_name" maxlength="40" type="text" value="邮箱/用户名/手机号" autocomplete="off">  
                           <div class="zc_houl">
							   <p id="user" class="zc_houl1 hide">请输入用户名/邮箱/手机号。</p>
							</div>
                           <label id="user_succeed" class="succeed hide"></label>
                           <i id="user_tu" class="i-name"></i>
                           <input id="email_prefit" style="display: none;">
	                       <div class="nomad-email-suggest" style="position: absolute;  top: 3px; min-width: 165px; z-index: 999; display: none;">
	                           <ul class="reg_name_ui ovf">
	                           		<li class="" data-index="0"><span class="e_name"></span><span class="e_ext"></span></li>
	                              	<li class="" data-index="1"><span class="e_name"></span><span class="e_ext">@163.com</span></li>
									<li class="" data-index="2"><span class="e_name"></span><span class="e_ext">@qq.com</span></li>
									<li class="" data-index="3"><span class="e_name"></span><span class="e_ext">@126.com</span></li>
									<li class="" data-index="4"><span class="e_name"></span><span class="e_ext">@hotmail.com</span></li>
									<li class="" data-index="5"><span class="e_name"></span><span class="e_ext">@gmail.com</span></li>
									<li class="" data-index="6"><span class="e_name"></span><span class="e_ext">@yahoo.com</span></li>
									<li class="" data-index="7"><span class="e_name"></span><span class="e_ext">@263.com</span></li>
									<li class="" data-index="8"><span class="e_name"></span><span class="e_ext">@sohu.com</span></li>
									<li class="" data-index="9"><span class="e_name"></span><span class="e_ext">@sina.com</span></li>
									<li class="" data-index="10"><span class="e_name"></span><span class="e_ext">@188.com</span></li>
									<li class="" data-index="11"><span class="e_name"></span><span class="e_ext">@139.com</span></li>
	                           </ul>
	                       </div>
	                       <div id="recommend_name" style="display:none;">
	                       		<h5>推荐您使用：</h5>
	                       		<div class="re_item"><input onclick="selectMe(this);" name="re_name" type="radio" value="苹果">苹果 </div>
	                       </div>
                     </div>
                  </li>
                  <li class="form">
                  	 <div id="big_small_t" class="fl item-ifo" style="display: none;">键盘大写锁定已打开，请注意大小写</div>
                     <div class="fl fl-txt f14"><font color="#FF0000">*</font>&nbsp;请设置密码：</div>
                     <div class="fl item-ifo">
                          <input id="password" name="password" value="" type="password" class="reg-pwd input_s1" tabindex="2">
                          <div class="zc_houl">
							   <p id="pass" class="zc_houl1" style="display: none;"></p>
						  </div>
						  <div id="pass_img_div" style="margin-left:160px; display:none;"><label class="pwd-safe safe3"><span class="fl" style="margin-left:1px;">安全程度：</span><b></b></label><img style="margin-top: 6px;margin-left: -85px;" id="pass_img" src="./register_files/zc_1_03.jpg"></div>
                          <i id="pass_tu" class="i-pass"></i>
                          <label id="pass_succeed" class="hide succeed"></label>
                     </div>
                  </li>
                  <li class="form">
                     <div class="fl fl-txt f14"><font color="#FF0000">*</font>&nbsp;请确认密码：</div>
                     <div class="fl item-ifo">
                          <input type="password" id="password_confirm" name="password_confirm" class="reg-pwd input_s1" tabindex="2">
                          <div class="zc_houl">
							   <p id="pass_conf" class="zc_houl1" style="display: none;"></p>
						  </div>
                          <i id="pass_conf_tu" class="i-pass"></i>
                          <label id="pass_conf_succeed" class="hide succeed"></label>
                     </div>
                  </li>
                  <li style="display: none;" id="have_to_phone" have_to_phone="0"></li>
                  <li style="display: none;" id="have_to_email" have_to_email="0"></li>
                                                                       <li id="captcha_li" class="form">
                     <div class="fl fl-txt f14"><font color="#FF0000">*</font>&nbsp;验证码：</div>
                      <div class="fl  code-t">
                     	<input type="text" class="code_s1" name="captcha" id="captcha" tabindex="2">
                     	<div class="zc_houl" style="margin-left: 270px; position: absolute;">
	                     
							<p id="captcha_t" class="zc_houl1" style="display: none;"></p>
						 </div>
                     	<label id="captcha_t_succeed" class="hide succeed"></label>
                     </div>
                     <label class="code"><img style="margin-top: 10px;" id="captcha_img" src="./register_files/index(1).php"></label>
                     <label class="code-tt">&nbsp;看不清？<a id="captcha_hh" href="javascript:change_captcha($('#captcha_img'));">换一张</a></label>
                 </li>  
                                  <li id="moblie_code_li" class="form hide">
                     <div class="fl fl-txt f14"><font color="#FF0000">*</font>&nbsp;短信验证码：</div>
                     <div class="fl  code-t">
                     	<input type="text" class="code_s1" name="moblie_code" id="moblie_code" tabindex="2">
	                     <div class="zc_houl" style="margin-left: 270px; position: absolute;">
	                     
							<p id="moblie" class="zc_houl1" style="display: none;"></p>
						 </div>
						 <label id="moblie_succeed" class="hide succeed"></label>
                     </div>
                     <a id="time_left_show" style="cursor: pointer;" class="bttn2 fl btn-sl" onclick="resend_code();" type="button"><span>获取验证码</span></a>
                    <div id="J_PhoneCheckCodeTriggerTip" style="display: none;margin-left: 113px;margin-top: 37px;position: absolute;">
	                	验证码已发送，请查收！
	            	</div>
                 </li>
                  <li class="form check">
                      <div class="fl fl-txt f14">&nbsp;</div>
                      <div class="fl item-ifo ">
                           <input name="agree" type="checkbox" class="inputcheckbox" checked="checked" id="readme">
                           <label class="xy">我已阅读并同意<a href="javascript:void(0);" id="open" is_t="0" onclick="xieyi(&#39;open&#39;);">《山山用户注册协议》</a></label>
                           <label id="readme_t" class="reg_error hide">请接受服务条款</label>
                      </div>
                  </li> 
                  <li class="form">
                      <div class="fl fl-txt f14">&nbsp;</div>
                      <div class="fl item-ifo">
                          <a id="sub" href="javascript:void(0);"><img src="./register_files/reg-btn.gif"></a>
                      </div>
                  </li> 
               </ul>
             </form>
          </div>
          
          <div class="fl phone">
         	 <a href="#"><img src="./register_files/107.jpg" width="362" height="272" border="0"></a>
          </div>
     </div>
</div>

<div class="thickbox" style="display: none;">
      <div class="thicktitle"><span>山山商城用户注册协议</span></div>
      	<div class="thickcon">
            <div class="protocol-con">
             	<h1 style="font-family: 微软雅黑; font-size: 16px; text-align: center;">《山山商城服务协议》</h1>
				<p>&nbsp;</p>
				<p>本协议由您与山山商城平台的经营者共同缔结，山山商城的销售渠道包括旗舰店、专卖店及自营店等模式。本协议具有合同效力，您必须完全同意本协议，才能够享受本网站提供的服务。您在山山商城登录即表示您完全接受本协议的全部条款。</p>
				<p><br><strong>一、服务条款的确认和接纳</strong><br>1、本协议内容包括协议正文及所有山山商城已经发布的或将来可能发布的各类规则。所有规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何山山商城提供的服务均受本协议约束。<br> 2.您应当在使用山山商城服务之前认真阅读全部协议内容。如您对协议有任何疑问的，应向山山商城咨询。但无论您事实上是否在使用山山商城服务之前认真阅读了本协议内容，只要您使用山山商城服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得山山商城对您问询的解答等理由，主张本协议无效，或要求撤销本协议。<br> 3.您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用山山商城服务。<br> 4.山山商城有权根据需要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在网站公布后，立即自动生效。如您不同意相关变更，应当立即停止使用山山商城服务。您继续使用山山商城服务的，即表示您接受经修订的协议和规则。山山商城网站各项服务的所有权和运作权归本网站拥有。</p>
				<p>&nbsp;</p>
				<p><strong>二、用户管理</strong><br><strong>（一）用户资格</strong><br>只有符合下列条件之一的人员或实体才能申请成为本网站用户，可使用本网站的服务。<br>1.年满十八岁，并具有民事权利能力和民事行为能力的自然人；<br>2.未满十八岁，但监护人（包括但不仅限于父母）予以书面同意的自然人；<br>3.根据中国法律或设立地法律、法规和/或规章成立并合法存在的公司、企事业单位、社团组织和其他组织。无民事行为能力人、限制民事行为能力人以及无经营或特定经营资格的组织不当注册为本网站用户或超过其民事权利或行为能力范围从事交易的，其与本网站之间的协议自始无效，本网站一经发现，有权立即注销该用户，并追究其使用本网站“服务”的一切法律责任。<br>若您不具备前述主体资格，则您及您的监护人应承担因此而导致的一切后果，且山山商城有权注销（永久冻结）您的山山商城账户，并向您及您的监护人索偿。<br><strong>（二）账户</strong><br> 在您签署本协议，完成会员注册程序或以其他山山商城允许的方式实际使用山山商城服务时，山山商城会向您提供唯一编号的山山商城账户（以下亦称账户）。<br> 您可以对账户设置会员名和密码，通过该会员名密码或与该会员名密码关联的其它用户名密码登录山山商城。您设置的会员名不得侵犯或涉嫌侵犯他人合法权益。如您连续一年未使用您的会员名和密码登录山山商城，或您设置的会员名涉嫌侵犯他人合法权益，山山商城有权终止向您提供山山商城服务，注销您的账户。账户注销后，相应的会员名将开放给任意用户注册登记使用。<br> 您应对您的账户（会员名）和密码的安全，以及对通过您的账户（会员名）和密码实施的行为负责。除非有法律规定或司法裁定，且征得山山商城的同意，否则，账户（会员名）和密码不得以任何方式转让、赠与或继承（与账户相关的财产权益除外）。如果发现任何人不当使用您的账户或有任何其他可能危及您的账户安全的情形时，您应当立即以有效方式通知山山商城，要求山山商城暂停相关服务。您理解山山商城对您的请求采取行动需要合理时间，山山商城对在采取行动前已经产生的后果（包括但不限于您的任何损失）不承担任何责任。<br> 为方便您使用山山商城服务，您同意并授权山山商城将您在注册、使用山山商城服务过程中提供、形成的信息传递给向您提供其他服务的山山商城关联公司或其他组织，或从提供其他服务的山山商城关联公司或其他组织获取您在注册、使用其他服务期间提供、形成的信息。</p>
				<p><br><strong>（三）会员</strong><br> 山山商城的会员包括买家用户和卖家用户。<br>山山商城对会员的管理依据国家法律、地方法律和国际法律等标准。<br>在您按照注册页面提示填写信息、阅读并同意本协议并完成全部注册程序后或以其他山山商城允许的方式实际使用山山商城服务时，您即成为山山商城会员（亦称会员）。<br> 在注册时，您应当按照法律法规要求，或注册页面的提示准确提供，并及时更新您的资料，以使之真实、及时，完整和准确。如有合理理由怀疑您提供的资料错误、不实、过时或不完整的，山山商城有权向您发出询问及/或要求改正的通知，并有权直接做出删除相应资料的处理，直至中止、终止对您提供部分或全部山山商城服务。山山商城对此不承担任何责任，您将承担因此产生的任何直接或间接支出。<br> 您应当准确填写并及时更新您提供的电子邮件地址、联系电话、联系地址、邮政编码等联系方式，以便山山商城或其他会员与您进行有效联系，因通过这些联系方式无法与您取得联系，导致您在使用山山商城服务过程中产生任何损失或增加费用的，应由您完全独自承担。<br> 您在使用山山商城服务过程中，所产生的应纳税赋，以及一切硬件、软件、服务及其它方面的费用，均由您独自承担。</p>
				<p>&nbsp;</p>
				<p><strong>三、山山商城服务</strong><br>1.通过山山商城及其关联公司提供的山山商城服务和其它服务，会员可在山山商城上发布交易信息、查询商品和服务信息、达成交易意向并进行交易、对其他会员进行评价、参加山山商城组织的活动以及使用其它信息服务及技术服务。<br> 2.您在山山商城上交易过程中与其他会员发生交易纠纷时，一旦您或其它会员任一方或双方共同提交山山商城要求调处，则山山商城有权根据单方判断做出调处决定，您了解并同意接受山山商城的判断和调处决定。<br> 3.您了解并同意，山山商城有权应政府部门（包括司法及行政部门）的要求，向其提供您在山山商城填写的注册信息和交易记录等必要信息。如您涉嫌侵犯他人知识产权，则山山商城亦有权在初步判断涉嫌侵权行为存在的情况下，向权利人提供您必要的身份信息。</p>
				<p>&nbsp;</p>
				<p><strong>四、山山商城服务使用规范</strong><br>1.在山山商城上使用山山商城服务过程中，您承诺遵守以下约定：<br>a)在使用山山商城服务过程中实施的所有行为均遵守国家法律、法规等规范性文件及山山商城各项规则的规定和要求，不违背社会公共利益或公共道德，不损害他人的合法权益，不违反本协议及相关规则。您如果违反前述承诺，产生任何法律后果的，您应以自己的名义独立承担所有的法律责任，并确保山山商城免于因此产生任何损失。<br>b)在与其他会员交易过程中，遵守诚实信用原则，不采取不正当竞争行为，不扰乱网上交易的正常秩序，不从事与网上交易无关的行为。<br>c)不发布国家禁止销售的或限制销售的商品或服务信息（除非取得合法且足够的许可），不发布涉嫌侵犯他人知识产权或其它合法权益的商品或服务信息，不发布违背社会公共利益或公共道德或山山商城认为不适合在山山商城上销售的商品或服务信息，不发布其它涉嫌违法或违反本协议及各类规则的信息。<br>d)不以虚构或歪曲事实的方式不当评价其他会员，不采取不正当方式制造或提高自身的信用度，不采取不正当方式制造或提高（降低）其他会员的信用度；<br>e)不对山山商城上的任何数据作商业性利用，包括但不限于在未经山山商城事先书面同意的情况下，以复制、传播等任何方式使用山山商城站上展示的资料。<br> f)不使用任何装置、软件或例行程序干预或试图干预山山商城的正常运作或正在山山商城上进行的任何交易、活动。您不得采取任何将导致不合理的庞大数据负载加诸山山商城网络设备的行动。<br>2.您了解并同意：<br>a)山山商城有权对您是否违反上述承诺做出单方认定，并根据单方认定结果适用规则予以处理或终止向您提供服务，且无须征得您的同意或提前通知予您。<br> b)基于维护山山商城交易秩序及交易安全的需要，山山商城有权在发生恶意购买等扰乱市场正常交易秩序的情形下，执行关闭相应交易订单等操作。<br>c)经国家行政或司法机关的生效法律文书确认您存在违法或侵权行为，或者山山商城根据自身的判断，认为您的行为涉嫌违反本协议和/或规则的条款或涉嫌违反法律法规的规定的，则山山商城有权在山山商城上公示您的该等涉嫌违法或违约行为及山山商城已对您采取的措施。<br> d)对于您在山山商城上发布的涉嫌违法或涉嫌侵犯他人合法权利或违反本协议和/或规则的信息，山山商城有权不经通知您即予以删除，且按照规则的规定进行处罚。<br> e)对于您在山山商城上实施的行为，包括您未在山山商城上实施但已经对山山商城及其用户产生影响的行为，山山商城有权单方认定您行为的性质及是否构成对本协议和/或规则的违反，并据此作出相应处罚。您应自行保存与您行为有关的全部证据，并应对无法提供充要证据而承担的不利后果。<br> f)对于您涉嫌违反承诺的行为对任意第三方造成损害的，您均应当以自己的名义独立承担所有的法律责任，并应确保山山商城免于因此产生损失或增加费用。<br>g)如您涉嫌违反有关法律或者本协议之规定，使山山商城遭受任何损失，或受到任何第三方的索赔，或受到任何行政管理部门的处罚，您应当赔偿山山商城因此造成的损失及（或）发生的费用，包括合理的律师费用。</p>
				<p>&nbsp;</p>
				<p><strong>五、特别授权</strong><br>您完全理解并不可撤销地授予山山商城及其关联公司下列权利：<br>1.您完全理解并不可撤销地授权山山商城或山山商城授权的第三方或您与山山商城一致同意的第三方，根据本协议及山山商城规则的规定，处理您在山山商城上发生的所有交易及可能产生的交易纠纷。您同意接受山山商城或山山商城授权的第三方或您与山山商城一致同意的第三方的判断和调处决定。该决定将对您具有法律约束力。<br>2.一旦您向山山商城及（或）其关联公司，包括但不限于支付宝、网上银行等作出任何形式的承诺，且相关公司已确认您违反了该承诺，则山山商城有权立即按您的承诺或协议约定的方式对您的账户采取限制措施，包括中止或终止向您提供服务，并公示相关公司确认的您的违约情况。您了解并同意，山山商城无须就相关确认与您核对事实，或另行征得您的同意，且山山商城无须就此限制措施或公示行为向您承担任何的责任。<br> 3.一旦您违反本协议，或与山山商城签订的其他协议的约定，山山商城有权以任何方式通知山山商城关联公司，要求其对您的权益采取限制措施，包括但不限于要求支付宝公司将您账户内的款项支付给山山商城指定的对象，要求关联公司中止、终止对您提供部分或全部服务，且在其经营或实际控制的任何网站公示您的违约情况。<br>4.对于您提供的资料及数据信息，您授予山山商城及其关联公司独家的、全球通用的、永久的、免费的许可使用权利(并有权在多个层面对该权利进行再授权)。<br>此外，山山商城及其关联公司有权(全部或部份地)使用、复制、修订、改写、发布、翻译、分发、执行和展示您的全部资料数据（包括但不限于注册资料、交易行为数据及全部展示于山山商城的各类信息）或制作其派生作品，并以现在已知或日后开发的任何形式、媒体或技术，将上述信息纳入其它作品内。</p>
				<p>&nbsp;</p>
				<p><strong>六、责任范围和责任限制</strong><br>1.山山商城负责按"现状"和"可得到"的状态向您提供山山商城服务。但山山商城对山山商城服务不作任何明示或暗示的保证，包括但不限于山山商城服务的适用性、没有错误或疏漏、持续性、准确性、可靠性、适用于某一特定用途。同时，山山商城也不对山山商城服务所涉及的技术及信息的有效性、准确性、正确性、可靠性、质量、稳定、完整和及时性作出任何承诺和保证。<br> 2.您了解山山商城上的信息系用户自行发布，且可能存在风险和瑕疵。山山商城仅作为交易地点。山山商城仅作为您获取物品或服务信息、物色交易对象、就物品和/或服务的交易进行协商及开展交易的场所，但山山商城无法控制交易所涉及的物品的质量、安全或合法性，商贸信息的真实性或准确性，以及交易各方履行其在贸易协议中各项义务的能力。您应自行谨慎判断确定相关物品及/或信息的真实性、合法性和有效性，并自行承担因此产生的责任与损失。<br> 3.除非法律法规明确要求，或出现以下情况，否则，山山商城没有义务对所有用户的注册数据、商品（服务）信息、交易行为以及与交易有关的其它事项进行事先审查：<br> a)山山商城有合理的理由认为特定会员及具体交易事项可能存在重大违法或违约情形。<br> b)山山商城有合理的理由认为用户在山山商城的行为涉嫌违法或不当。<br> 4.山山商城或山山商城授权的第三方或您与山山商城一致同意的第三方有权基于您不可撤销得授权受理您与其他会员因交易产生的争议，并有权单方判断与该争议相关的事实及应适用的规则，进而作出处理决定，包括但不限于调整相关订单的交易状态，指令支付宝公司将争议货款的全部或部分支付给交易一方或双方。该处理决定对您有约束力。如您未在限期内执行处理决定的，则山山商城有权利（但无义务）直接使用您支付宝账户内的款项，或您向山山商城及其关联公司交纳的保证金代为支付。您应及时补足保证金并弥补山山商城及其关联公司的损失，否则山山商城及其关联公司有权直接抵减您在其它合同项下的权益，并有权继续追偿。<br> 您理解并同意，山山商城或山山商城授权的第三方或您与山山商城一致同意的第三方并非司法机构，仅能以普通人的身份对证据进行鉴别，山山商城或山山商城授权的第三方或您与山山商城一致同意的第三方对争议的调处完全是基于您不可撤销得授权，其无法保证争议处理结果符合您的期望，也不对争议调处结论承担任何责任。如您因此遭受损失，您同意自行向受益人索偿。<br> 5.您了解并同意，山山商城不对因下述任一情况而导致您的任何损害赔偿承担责任，包括但不限于利润、商誉、使用、数据等方面的损失或其它无形损失的损害赔偿(无论山山商城是否已被告知该等损害赔偿的可能性)：<br> a)使用或未能使用山山商城服务。<br> b)第三方未经批准的使用您的账户或更改您的数据。<br> c)通过山山商城服务购买或获取任何商品、样品、数据、信息或进行交易等行为或替代行为产生的费用及损失。<br> d)您对山山商城服务的误解。<br> e)任何非因山山商城的原因而引起的与山山商城服务有关的其它损失。<br> 6.不论在何种情况下，山山商城均不对由于信息网络正常的设备维护，信息网络连接故障，电脑、通讯或其他系统的故障，电力故障，罢工，劳动争议，暴乱，起义，骚乱，生产力或生产资料不足，火灾，洪水，风暴，爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的不能服务或延迟服务承担责任。</p>
				<p>&nbsp;</p>
				<p><strong>七、协议终止</strong><br>1.您同意，山山商城有权自行全权决定以任何理由不经事先通知的中止、终止向您提供部分或全部山山商城服务，暂时冻结或永久冻结（注销）您的账户，且无须为此向您或任何第三方承担任何责任。<br> 2.出现以下情况时，山山商城有权直接以注销账户的方式终止本协议:<br> a)山山商城终止向您提供服务后，您涉嫌再一次直接或间接或以他人名义注册为山山商城用户的；<br> b)您提供的电子邮箱不存在或无法接收电子邮件，且没有其他方式可以与您进行联系，或山山商城以其它联系方式通知您更改电子邮件信息，而您在山山商城通知后三个工作日内仍未更改为有效的电子邮箱的。<br> c)您注册信息中的主要内容不真实或不准确或不及时或不完整。<br> d)本协议（含规则）变更时，您明示并通知山山商城不愿接受新的服务协议的；<br> e)其它山山商城认为应当终止服务的情况。<br> 3.您有权向山山商城要求注销您的账户，经山山商城审核同意的，山山商城注销（永久冻结）您的账户，届时，您与山山商城基于本协议的合同关系即终止。您的账户被注销（永久冻结）后，山山商城没有义务为您保留或向您披露您账户中的任何信息，也没有义务向您或第三方转发任何您未曾阅读或发送过的信息。<br> 4.您同意，您与山山商城的合同关系终止后，山山商城仍享有下列权利：<br> a)继续保存您的注册信息及您使用山山商城服务期间的所有交易信息。<br> b)您在使用山山商城服务期间存在违法行为或违反本协议和/或规则的行为的，山山商城仍可依据本协议向您主张权利。<br> 5.山山商城中止或终止向您提供山山商城服务后，对于您在服务中止或终止之前的交易行为依下列原则处理，您应独力处理并完全承担进行以下处理所产生的任何争议、损失或增加的任何费用，并应确保山山商城免于因此产生任何损失或承担任何费用：<br> a)您在服务中止或终止之前已经上传至山山商城的物品尚未交易的，山山商城有权在中止或终止服务的同时删除此项物品的相关信息；<br> b)您在服务中止或终止之前已经与其他会员达成买卖合同，但合同尚未实际履行的，山山商城有权删除该买卖合同及其交易物品的相关信息；<br> c)您在服务中止或终止之前已经与其他会员达成买卖合同且已部分履行的，山山商城可以不删除该项交易，但山山商城有权在中止或终止服务的同时将相关情形通知您的交易对方。</p>
				<p>&nbsp;</p>
				<p><strong>八、隐私权政策</strong><br>山山商城将在山山商城公布并不时修订隐私权政策，隐私权政策构成本协议的有效组成部分。</p>
				<p>&nbsp;</p>
				<p><strong>九、法律适用、管辖与其他</strong><br>1.本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国大陆地区法律，如无相关法律规定的，则应参照通用国际商业惯例和（或）行业惯例。<br> 2.本协议包含了您使用各家山山商城需遵守的一般性规范，您在使用某个山山商城时还需遵守适用于该平台的特殊性规范（具体请参见您与该平台签署的其他协议以及平台规则等内容）。一般性规范如与特殊性规范不一致或有冲突，则特殊性规范具有优先效力。<br> 3.因本协议产生之争议需根据您使用的服务归属的平台确定具体的争议对象，例如因您使用山山商城服务所产生的争议应由山山商城的经营者与您沟通并处理。您与山山商城的经营者均同意以山山商城经营者住所地人民法院为第一审管辖法院。</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
             
            </div>
            <div class="btnt"><input onclick="on_register()" class="btn-img" value="同意并继续"></div>
      	</div>
       <a href="javascript:void(0);" id="colse" class="thickclose">×</a>
  </div>
  <div id="xiyi_bu" style="display: none;"></div>
  <div style="width: 100%; background-color: white; margin-top: 100px;">
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
       <div style="float:left;overflow:hidden;_width:250px;_height:990px;"><a href="#" class="shanshan-homeico"></a>
       <span class="shanshan-feedback ntkp">山山商城意见反馈</span></div>
   </div>
   
   <div id="copyright">
        <p class="cR-nav">
        	<a href="#" target="_blank">山山简介</a>
	        <a href="#" target="_blank">诚聘英才</a>
	        <a href="#" target="_blank">联系我们</a>
	        <a href="#" target="_blank">网站地图</a>			          		        
           <span>关注山山商城：</span>
           <a target="_blank" href="#" class="ssb-weibo"><img src="./register_files/ssb-weibo.jpg" alt=""></a>
           <a target="_blank" href="#" class="ssb-weibot"><img src="./register_files/ssb-weibot.jpg" alt=""></a>
           <a href="javascript:void(0);" class="ssb-weixin"><img src="./register_files/ssb-weixin.jpg" alt=""><label class="mbb-weixin"></label></a>
           <span class="ntkp ssb-weibot"><img src="./register_files/ssb-talk.jpg" alt="在线咨询"></span>
           </p>
        <p>Copyright©2011-2016shanshan360.com 浙江山山网络科技股份有限公司  版权所有<span class="statistics_code">
		<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5a250090ff571028094607805af27985' type='text/javascript'%3E%3C/script%3E"));
</script>
<script src="js/public/h.js" type="text/javascript"></script></span></p>
        <p>增值电信业务经营许可证：浙B2-20120027
        </p>
        <p>可信网站 中网验证可信网站编码： e12061933110026523308174 </p>
        <p>企业法人营业执照注册号：331127000009583</p>
     
<p><a target="_blank" href="#">
         <img src="./register_files/gongshang.png" alt="" border="0"></a>
         <a href="#" id="kx_verify" tabindex="-1" target="_blank" kx_type="图标式" style="display:inline-block;"> 
		 <img src="./register_files/cnnic.png" style="border:none;" oncontextmenu="return false;" alt="可信网站"></a>
		</p>
		<p>
		 <a id="_pingansec_bottomimagesmall_shiming"><iframe id="_pingansec_bottomimagesmall_shiming_iframe" src="about:blank" width="120px" height="50px" scrolling="no" marginwidth="0" marginheight="0" allowtransparency="true" border="0" frameborder="0" bottom="0" style="border: 0px; z-index: 9999; display: inline; background-color: transparent;"></iframe></a>
		 <script src="./register_files/cert.js"></script>
		 <script type="text/javascript" src="./register_files/certShow"></script>
		 
		</p>
    </div>
</div>
</div>

<div id="cart_tan">
	<div id="cart_tan_top"><a onclick="close_cart_tan();"><b>X</b>关闭</a></div>
	<div id="cart_tan_zhong">
		<span><img src="./register_files/sc_success.gif">产品已经成功加入购物车！</span>
	</div>
	<div id="cart_tan_di">
		<a target="_blank" href="#">
			<img src="./register_files/sc_btn.gif">
		</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">再逛逛</a>
	</div>
	<div id="cart_tan_di">
		温馨提示：请在<a target="_blank" style="color:red;" href="#">个人资料</a>中填写QQ，方便卖家及时联系。
	</div>
</div>
</div>
<script type="text/javascript" src="js/public/register.js"></script>
</body></html>