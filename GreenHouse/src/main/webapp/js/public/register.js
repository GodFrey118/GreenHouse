 mobile_verify_rules = /13[0-9]{9}|14[0-9]{9}|15[0-9]{9}|18[0-9]{9}|17[0-9]{9}/;
//点击同意注册协议
 alert("nininininininii")
function on_register(){
	$(".thickbox").hide();
	$("#xiyi_bu").hide();
	if($("#readme").attr("checked") == "checked"){
		$("#readme_t").attr("class", "reg_error hide");
		$("#readme").attr("_submit", 1);
	}else{
		$("#readme").attr("_submit", 0);
		$("#readme_t").attr("class", "reg_error");
	}
	$("#register_form")._submit();
}
//注册协议
function xieyi(type){
	//var is_t = $("#".type).attr("is_t");
	if(type == "open"){
		$(".thickbox").show();
		$("#xiyi_bu").show();
	}else{
		$(".thickbox").hide();
		$("#xiyi_bu").hide();
	}
}
//选推荐用户名
function selectMe(obj){
	var have_to_email = $("#have_to_email").attr("have_to_email");//判断是否必须要email
	var have_to_phone = $("#have_to_phone").attr("have_to_phone");//判断是否必须要phone
	//赋值给用户名
	$("#user_name").attr("value", $(obj).val());
	$("#recommend_name").hide();
	
	$("#user").css({display:'none'});//验证成功隐藏提示栏
	$("#user_tu").hide();//隐藏小图标
	$("#user_succeed").attr("class", "succeed");//显示正确小图标
	$("#user_name").attr('_submit','1');	//表单提交标识
	$("#user_name").css('border','1px solid #ccc');
	if(have_to_phone != "0"){//如果手机号码必须
		$("#have_to_phone_li").show();
		if(have_to_email){
			$("#have_to_email_li").show();
			//添加验证新增的emial输入框
			verify_have_to_email();
	
		}else{
			$("#have_to_email_li").hide();
		}
		//添加验证新增的phone输入框
		verify_have_to_phone();

		//验证手机验证码
		verify_moblie_code();
	}else{//如果手机号不必须
		if(have_to_email != "0"){
			$("#have_to_email_li").show();
			$("#have_to_phone_li").hide();
			//添加验证新增的emial输入框
			verify_have_to_email();
			
		}else{
			$("#have_to_phone_li").hide();
			$("#have_to_email_li").hide();
		}
		//验证验证码
		verify_captcha();
	}
	
}

$(function(){

	//限制刷新验证码次数
	var click_num = 1;
	$("#captcha_hh").click(function(){
		if(click_num>20){
			alert("请刷新此页面重新输入信息!");
			return false;
		}
		click_num++;
	});
	var user_name={
			'rule':{
				'_empty':1,
				'_short':6,
				'_long':40,
				//(?!^\d*$)((\w|[\u4E00-\u9FA5])+)
				//([a-z0-9+_]|\\-|\\.)+@(([a-z0-9_]|\\-)+\\.)+[a-z]{2,5}
				'_wrong':/(^13[0-9]{9}$)|(^14[0-9]{9}$)|(^17[0-9]{9}$)|(^15[0-9]{9}$)|(^18[0-9]{9}$)|(^170[0-9]{8}$)|(^[A-Za-z_\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z]{2,5}$)|(^[A-Za-z\d\u4E00-\u9FA5]+[A-Za-z\u4E00-\u9FA5_-]+[A-Za-z\u4E00-\u9FA5\d_-]*$)/,
				'_ajax':'/index.php?app=member&act=check_user',
				'_contrary':1		// 正则 匹配正确
			},
			'info':{
				'_empty' : '用户名不能为空',
				'_notice': '请输入用户名/邮箱/手机号。',
				'_short' : '手动输入的账户，长度应在6到40的字符之间',
				'_long'  : '手动输入的账户，长度应在6到40的字符之间',
				'_wrong' : '用户名只能由中文、英文、数字及“_”、“-”组成且不能为全数字',
				'_right' : '一旦注册成功用户名无法修改',
				'_ajax'  : '该用户名已被使用，请重新输入或使用推荐用户名。如果您是该用户，请立刻<a style="color:#005AA0;" href="/index.php?app=member&amp;act=login&amp;ret_url=http%3A%2F%2Fwww.shanshan360.com%2Farticle%2F22.html">登录</a>'
				}
		};
		var arr_password={
			'rule':{
				'_empty':1,
				'_short':6,
				'_long':20,
				//'_wrong' : /(^[0-9a-zA-Z]*$)/,
				'_contrary':0
			},
			'info':{
				'_empty':'不能为空',
				'_notice':'6-20个字符。',
				'_short':'密码长度只能在6-20为字符之间',
				'_long':'密码长度只能在6-20为字符之间',
				//'_wrong' : '该密码比较简单，有被盗风险，建议您更改为复杂的密码，例字母+数字的组合',
				'_right':'<label class="succeed"></label>'
				},
			'rgexp':{
				0:{
					0:/^[0-9]*$/,
					1:0,
					2:'该密码比较简单，有被盗风险，建议您更改为复杂的密码，例字母+数字的组合'
				},
				1:{
					0:/^[a-zA-Z]*$/,
					1:0,
					2:'该密码比较简单，有被盗风险，建议您更改为复杂的密码，例字母+数字的组合'
				},
				/*2:{
					0:/^\w*$/,
					1:0,
					2:'该密码比较简单，有被盗风险，建议您更改为复杂的密码，例字母+数字的组合'
				}*/
			}
		};
		var password_confirm={
			'rule':{
				'_empty':1,
				'_equal':$("#password")
			},
			'info':{
				'_empty':'请再输一次密码',
				'_notice':'再输一次密码',
				'_equal':'两次输入不一致！',
				'_right':''
				},
			'rgexp':{
				0:{
					0:/^[0-9]*$/,
					1:0,
					2:'该密码比较简单，有被盗风险，建议您更改为复杂的密码，例字母+数字的组合'
				},
				1:{
					0:/^[a-zA-Z]*$/,
					1:0,
					2:'该密码比较简单，有被盗风险，建议您更改为复杂的密码，例字母+数字的组合'
				}
			}
		};
		
		var is_hide=1;//判断是否可以隐藏提示框
		var email_gz = /(^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z]{2,5}$)/;
		$("#user_name").keyup(function(e){
			$("#recommend_name").hide();
			var _this_v=$(this).val();
			if(_this_v){
				$(".nomad-email-suggest").show();
				if(/@/.test(_this_v)){
					var _this_v_arr=_this_v.split('@');
					$(".e_ext").each(function(){
						var re=new RegExp("@"+_this_v_arr[1]);
						if(re.test($(this).html())){
							$(this).parents("li").show();
							$(this).parents("li").attr("_dis","y");
						}else{
							/*if(e.keyCode != 8){
								$(this).parents("li").hide();
								$(this).parents("li").attr("_dis","n");
							}*/
						}
					});
				}else{
					$(".nomad-email-suggest ul li").show();
					$(".nomad-email-suggest ul li").attr("_dis","y");
					$(".nomad-email-suggest ul .e_name").html(_this_v);
				}
			}else{
				$(".nomad-email-suggest").hide();
				$(".nomad-email-suggest ul li").attr("_dis","n");
				$(".nomad-email-suggest ul li").attr("class","");
			}
			
			
			//上下方向键
			if(e.keyCode==40){	//下
				if($(".nomad-email-suggest ul .e_sel").size()==0){
					$(".nomad-email-suggest ul li").attr("class","");
					$(".nomad-email-suggest ul li[_dis='y']:eq(0)").attr("class","e_sel");
					$(".nomad-email-suggest ul li").css("background","#fff");
					$(".nomad-email-suggest ul li[_dis='y']:eq(0)").css("background","#ccc");
					var	eqindex = $(".nomad-email-suggest ul li[_dis='y']:eq(0) .e_ext").html();
					$('#email_prefit').val(eqindex);
				}else{
					var _eq=$(".nomad-email-suggest ul li[_dis='y']").index($(".e_sel"))+1;//
					$(".nomad-email-suggest ul li").attr("class","");
					$(".nomad-email-suggest ul li[_dis='y']:eq("+_eq+")").attr("class","e_sel");
					$(".nomad-email-suggest ul li").css("background","#fff");
					$(".nomad-email-suggest ul li[_dis='y']:eq("+_eq+")").css("background","#ccc");
					var	eqindex = $(".nomad-email-suggest ul li[_dis='y']:eq("+_eq+") .e_ext").html();
					$('#email_prefit').val(eqindex);
				}
			}
			if(e.keyCode==38){	//上
				if($(".nomad-email-suggest ul .e_sel").size()==0){
					$(".nomad-email-suggest ul li").attr("class","");
					$(".nomad-email-suggest ul li[_dis='y']").last().attr("class","e_sel");
					$(".nomad-email-suggest ul li").css("background","#fff");
					$(".nomad-email-suggest ul li[_dis='y']").last().css("background","#ccc");
					var	eqindex = $(".nomad-email-suggest ul li[_dis='y']").last().find('.e_ext').html();
					$('#email_prefit').val(eqindex);
				}else{
					var _eq=$(".nomad-email-suggest ul li[_dis='y']").index($(".e_sel"))-1;
					$(".nomad-email-suggest ul li").attr("class","");
					$(".nomad-email-suggest ul li[_dis='y']:eq("+_eq+")").attr("class","e_sel");
					$(".nomad-email-suggest ul li").css("background","#fff");
					$(".nomad-email-suggest ul li[_dis='y']:eq("+_eq+")").css("background","#ccc");
					var eqindex = $(".nomad-email-suggest ul li[_dis='y']:eq("+_eq+") .e_ext").html();
					$('#email_prefit').val(eqindex);
				}
			}
			if(e.keyCode==13){	//回车 赋值
				$(this).val($(this).val()+$('#email_prefit').val());
//	            $("#email_register_form")._emailsubmit();  //文本框内回车校验邮箱正确与否，而不是清空文本框内容
				//以下注释的是原始内容，作用是敲回车自动清空文本内容
				$(".nomad-email-suggest").hide();
				$(".nomad-email-suggest ul li").attr("_dis","n");
				$(".nomad-email-suggest ul li").attr("class","");
				$(".nomad-email-suggest ul li").css("background","#fff");
				return false;
			}
			
		}).keydown(function(e){
			if(e.keyCode==13){	//回车 赋值
	            //$("#email_register_form")._emailsubmit(); //文本框内回车校验邮箱正确与否，而不是清空文本框内容
		       return false; //原来的
			}
		}).blur(function(){
			if(is_hide){
				$(".nomad-email-suggest").hide();
				$(".nomad-email-suggest ul li").attr("class","");
			}
		});
		$(".nomad-email-suggest ul li").mouseover(function(){
			$(this).css("background","#ccc");
		}).mouseout(function(){
			$(this).css("background","#fff");
		}).click(function(){
			$("#user_name").val($(this).text().replace(" ",""));
			$("#user_name").focus();
			$("#user_name").blur();
		});
		$(".nomad-email-suggest").mouseenter(function(){
			is_hide=0;
		}).mouseleave(function(){
			is_hide=1;
			if(!$("#user_name").is(":focus")){
				$(this).hide();
				$(".nomad-email-suggest ul li").attr("class","");
			}
		});
	//密码强弱
	$("#password").keyup(function(e){
		var p_val = $(this).val();
		var p_len = p_val.length;
		if(e.keyCode == 32){
			this.value=this.value.replace(/^ +| +$/g,'');
			//window.setTimeout(hiddenMsg,5000);
			show_tishi("pass", "请不要输入空格！", null);
			return false;
		}else{
			hide_tishi("pass");
		}
		if(p_len>=6){
			$("#pass_img_div").show();
		}
		if( 'A' <= p_val.charAt(p_len-1) && p_val.charAt(p_len-1) <= 'Z'){
			$("#big_small_t").show();
		}else{
			$("#big_small_t").hide();
		}
		var a= /[0-9]/;
		var b= /[a-zA-Z]/;
		var c= /[^0-9a-zA-Z]/;
		if(p_val.length>=6 && a.test(p_val) && b.test(p_val) && c.test(p_val)){
			$("#pass_img").attr("src",'http://www.shanshan360.com/themes/mall/default/styles/default/images/zc_q_03.jpg');
			hide_tishi("pass");
			//$("#password_confirm").removeAttr("disabled");
			return;
		}
		if(p_val.length>=6 && ( (a.test(p_val) && b.test(p_val)) || (b.test(p_val) && c.test(p_val)) || (a.test(p_val) && c.test(p_val)) ) ){
			$("#pass_img").attr("src",'http://www.shanshan360.com/themes/mall/default/styles/default/images/zc_z_03.jpg');
			hide_tishi("pass");
			//$("#password_confirm").removeAttr("disabled");
			return;
		}
		if(p_val.length>=6){
			$("#pass_img").attr("src",'http://www.shanshan360.com/themes/mall/default/styles/default/images/zc_1_03.jpg');
			show_tishi("pass", "该密码比较简单，有被盗风险，建议您更改为复杂的密码，例字母+数字的组合", null);
		}
		var password_confirm_val = $("#password_confirm").val();
		if(password_confirm_val == p_val){
			$("#pass_conf").hide();
			$("#pass_conf_succeed").show();
			$("#pass_conf_tu").attr("class","i-pass hide");
			input_border($("#password_confirm"),'_right');
		}
		//$("#password_confirm").attr("disabled",'disabled');
	});


	$("#user_name").chk_form(user_name,0,function(e){
		input_border($("#user_name"),e);
	});
	$("#password").chk_form(arr_password,0,function(e){
		input_border($("#password"),e)
	});
	$("#password_confirm").chk_form(password_confirm,0,function(e){
		input_border($("#password_confirm"),e)
	});
	
	function input_border(obj,e){
		$("#big_small_t").hide();
		if(e=='_wrong'){
			obj.css('border','1px solid #f00');
		}else{
			obj.css('border','1px solid #ccc');
		}
	}
	
	//提交表单
    //修改 提交事件
	$("#sub").click(function(){
        if($("ul .form").eq(1).hasClass("hide")&&$("ul .form").eq(2).hasClass("hide")){
	        var url = '/index.php?app=member&act=phone_register&ret_url=http%3A%2F%2Fwww.shanshan360.com%2Farticle%2F22.html';
	        $('#register_form').attr('action',url);
	        $('#register_form').submit();
        }
		if($("#readme").attr("checked") == "checked"){
			$("#readme_t").attr("class", "reg_error hide");
			$("#readme").attr("_submit", 1);
		}else{
			$("#readme").attr("_submit", 0);
			$("#readme_t").attr("class", "reg_error");
		}
		$("#register_form")._submit();
	});
});

function show_tishi(name, tishi_info, ds){
	$("#"+name).html(tishi_info);
	if(!ds){
		if(getByteLen(tishi_info)>38){
			$("#"+name).attr("class", "zc_houl2");
		}else{
			$("#"+name).attr("class", "zc_houl3");
		}
	}else if(ds == "d"){
		$("#"+name).attr("class", "zc_houl3");
	}else{
		$("#"+name).attr("class", "zc_houl2");
	}
	$("#"+name).show();
}

function hide_tishi(name){
	$("#"+name).hide();
}

//验证字符串长度
function getByteLen(val) {
    var len = 0;
    for (var i = 0; i < val.length; i++) {
         var a = val.charAt(i);
         if (a.match(/[^\x00-\xff]/ig) != null) 
        {
            len += 2;
        }
        else
        {
            len += 1;
        }
    }
    return len;
}

/**
 * 手机验证码倒计时显示
 * @author seven
 */
var timeOut;
var count = 59;                
	function time_change(){
	    $("#time_left_show").html(count+"秒后重新发送");
	    timeOut=setTimeout(ButtonCount,1000);
	}
	
	ButtonCount=function(){
	    if (count == 0) { 
	        clearTimeout(timeOut);
	        count = 59; 
	        $("#time_left_show").html("获取验证码");
	        $("#time_left_show").attr("onclick", "resend_code();");
	        $('#J_PhoneCheckCodeTriggerTip').hide();
	    }
	    else {
	        count--;            
	        $("#time_left_show").html(count+"秒后重新发送");
	        $("#time_left_show").attr("disabled",true); 
	        setTimeout(ButtonCount, 1000);
	    }
}

function resend_code()
{
	$("#time_left_show").attr("onclick", "");
	var rule1 = /^13\d{9}$/;
	var rule2 = /^147\d{8}$/;
	var rule3 = /^15\d{9}$/;
	var rule4 = /^18\d{9}$/;
	var rule5 = /^170\d{8}$/;
	var now = new Date();   
	var date = now.getTime();
	var time = Math.floor(date / (1000)); 
	var new_time = getCookie("member_register_time");
	if((time - new_time)<60){
		alert("发送频繁请"+(60-(time - new_time))+"秒后在发送！");
		return false;
	}
   	var mobile = $('#user_name').val();
   	if(rule1.test(mobile)||(rule2.test(mobile))||(rule3.test(mobile))||(rule4.test(mobile))||(rule5.test(mobile))){
   	}else{
   		mobile = $('#register_phone').val();
   	}
   	var url = SITE_URL + '/index.php?app=member&act=send_mobile_code&ajax=1&is_reg=1';
   	$.getJSON(url, {'mobile':mobile}, function(data){
   		if(!data.done)
       	{
       		alert(data.msg);
	   		return false;
       	}else{
       		var now = new Date();   
       		var date = now.getTime();
       		var time = Math.floor(date / (1000)); 
    		addCookie("member_register_time", time, 1);
            time_change();
            $("#show").show();
       	}
   	});
   	$('#J_PhoneCheckCodeTriggerTip').show();
   	return false;
}

function hiddenMsg(){
	//alert(111);
}