//obj   提示信息对象
//_ajax_obj		ajax 附加验证
//加载手机验证
var mobile_verify_rules = null;
var moblie_code = {
		'rule':{
			'_empty'	: 1,
			'_wrong'	: /^[0-9]{6}$/,
			'_ajax'		: "/index.php?app=member&act=check_moblie_code",
			'_contrary'	: 1,		// 正则 匹配正确
		},
		'info': {
			'_empty'	:  '手机验证码不能为空',
			//'_notice'	:  '点击 获取验证码。',
			'_wrong'	:  '只能是6位数字',
			'_ajax' 	:  '您输入的验证码不匹配，请重新输入。',
			'_right'	:  ''
		},
};
var captcha = {
		'rule':{
			'_empty'	: 1,
			'_ajax'		: "/index.php?app=member&act=check_captcha",
		},
		'info': {
			'_empty':  '验证码不能为空',
			'_ajax' :  '您输入的验证码不匹配，请重新输入。',
			'_right':  ''
		}
	};

var register_phone = {
		'rule':{
			'_empty'	: 1,
			'_wrong'	: mobile_verify_rules,
			'_ajax'		: 'index.php?app=member&act=check_phone',
			'_contrary'	: 1		// 正则 匹配正确
		},
		'info':{
			'_empty': '手机号不能为空',
			'_wrong': '手机号码格式错误',
			'_ajax' : '该号码已注册，请换用其他号码验证或用该号码<a target="_blank" style="color:#2953A6;margin-left:3px;" href="{url app=member&act=login}">登录</a>',
			'_right': ' '
			}
};
var register_email = {
		'rule':{
			'_empty'	: 1,
			'_wrong'	: /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/,
			'_ajax' 	: 'index.php?app=member&act=re_check_email',
			'_contrary' : 1		// 正则 匹配正确
		},
		'info':{
			'_empty' : '不能为空',
			'_notice': "请输入您的电子邮箱，以方便日后找回密码。",
			'_wrong' : '格式错误！正确格式如：lexuezu1@126.com',
			'_ajax'  : '该邮箱已注册，请更换其他邮箱或使用手机注册',
			'_right' : ''
		}
};

jQuery.fn.extend({
chk_info: function(info,_class,obj,fn){
	if(!obj){
		obj = $(this).next().children();
	}
	obj.html(info);
	if(_class=='_notice'){
		obj.css('display','');
		obj.attr('class','zc_houl1');
	}
	if(_class=='_wrong'){
		obj.css('display','');
		$("#"+obj.attr("id")+"_succeed").attr("class", "hide succeed");//隐藏正确小图标
		if(info.length>26){
			obj.attr('class','zc_houl2');
		}else{
			obj.attr('class','zc_houl3');
		}
	}
	if(_class=='_right'){
		obj.css({display:'none'});//验证成功隐藏提示栏
		$("#"+obj.attr("id")+"_tu").hide();//隐藏小图标
		$("#"+obj.attr("id")+"_succeed").attr("class", "succeed");//显示正确小图标
		//alert(obj.attr("id"));
		if(obj.attr("id") == "moblie"){//如果是手机验证码和验证码特殊情况
			$("#moblie_code").css('border','1px solid #ccc');
		}else if(obj.attr("id") == "captcha_t"){
			$("#captcha").css('border','1px solid #ccc');
		}
		$(this).attr('_submit','1');	//表单提交标识
	}else{
		$(this).attr('_submit','0');
	}
	if(_class=='_none' || info=='false'){
			obj.css({display:'none'});
	}else{
			//obj.css({display:''});
	}
	if(fn){
		fn(_class);
	}
	return false;

},

chk_form: function(arr,obj,fn){  //obj 错误信息对象  fn回调函数  可选参数
if(!obj){
	obj=$(this).next().children();
}


$(this).bind('focus',function(){
	if(arr['info']['_notice'])
	$(this).chk_info(arr['info']['_notice'],'_notice',obj,fn);
});

$(this).blur(function(){
	if(!arr['rule']){
		return $(this).chk_info('','_none',obj,fn);
	}
	var email_gz = /(^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z]{2,5}$)/;
	var this_v=$(this).val();
	if(arr['rule']['_check'] && $(this).attr("checked")!="checked"){
		return $(this).chk_info(arr['info']['_check'],'_wrong',obj,fn);
	}
	if(arr['rule']['_empty'] && this_v.length==0){
		return $(this).chk_info(arr['info']['_empty'],'_wrong',obj,fn);
	}
	if(arr['rule']['_start'] && ((arr['rule']['_start'].test(this_v) && !arr['rule']['_contrary'])||(!arr['rule']['_start'].test(this_v) && arr['rule']['_contrary']))){
		return $(this).chk_info(arr['info']['_start'],'_wrong',obj,fn);
	}
	if(arr['rule']['_short'] && strlen(this_v)<arr['rule']['_short']){
		return $(this).chk_info(arr['info']['_short'],'_wrong',obj,fn);
	}
	if(arr['rule']['_long'] && strlen(this_v)>arr['rule']['_long']){
		return $(this).chk_info(arr['info']['_long'],'_wrong',obj,fn);
	}
	if(arr['rule']['_wrong'] && !arr['rule']['_wrong'].test(this_v)){
		var this_name = $(this).attr("name");
		if(this_name == "user_name"){
			if(/@/.test(this_v)){
				if(!email_gz.test(this_v)){
					show_tishi("user", "邮箱地址不正确，请重新输入", null);
					return false;
				}else if( this_v.length > 50 ){
					show_tishi("user", "邮箱地地址长度应在5到50的字符之间", null);
					return false;
				}
			}else if(/^\d+$/.test(this_v)){
				show_tishi("user", "用户名不能是纯数字，请确认输入的是手机号或者重新输入", null);
				return false;
			}
		}
		return $(this).chk_info(arr['info']['_wrong'],'_wrong',obj,fn);
	}
	/*if(arr['rule']['_wrong'] && ((arr['rule']['_wrong'].test(this_v) && !arr['rule']['_contrary'])||(!arr['rule']['_wrong'].test(this_v) && arr['rule']['_contrary']))){
		return $(this).chk_info(arr['info']['_wrong'],'_wrong',obj,fn);
	}*/
	
	if(arr['rule']['_equal'] && this_v!=arr['rule']['_equal'].val()){
		return $(this).chk_info(arr['info']['_equal'],'_wrong',obj,fn);
	}
	
	if(arr['rgexp']){
		var rgexp_info = '';
		$.each(arr['rgexp'],function(item,v){
			if((v[0].test(this_v) && !v[1]) || (!v[0].test(this_v) && v[1])){
				return rgexp_info=v[2];
			}
		});
		if(rgexp_info){
			//return $(this).chk_info(rgexp_info,'_right',obj,fn);
		}
	
	}
	
	if(arr['rule']['_equal'] && this_v!==$(arr['rule']['_equal']).val()){
		return $(this).chk_info(arr['info']['_wrong'],'_wrong',obj,fn);
	}
	
	
	if(arr['rule']['_ajax']){	//此步放在最后
		obj.html("正在查询……");
		return $(this).chk_ajax(arr['rule']['_ajax'],arr['info']['_ajax'],arr['info']['_right'],obj,arr['rule']['_ajax_obj'],fn);
	}
	$(this).chk_info(arr['info']['_right'],'_right',obj,fn);
});

},

chk_ajax: function(page,info_wrong,info_right,obj,_ajax_obj,fn){
	var n2=0;
	var v2=0;
	if(_ajax_obj){
		n2=_ajax_obj.attr("name");
		v2=_ajax_obj.val();
	}
	var n=$(this).attr("name");
	var v=$(this).val();
	var _this=$(this);
	//var fn=fn;
	//因为验证先走ajax，所以在此处之前验证用户名格式
	//alert(info_wrong);
	$.getJSON(page,{name:n,value:v,name2:n2,value2:v2},function(data){
		var rule1 = /^13\d{9}$/;
		var rule2 = /^14\d{9}$/;
		var rule3 = /^15\d{9}$/;
		var rule4 = /^18\d{9}$/;
		var rule6 = /^17\d{9}$/;
		var rule5 = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		if(!data.done){
			//排除邮箱和手机，然后只有用户名重复才推荐
			if((rule1.test(v))||(rule2.test(v))||(rule3.test(v))||(rule4.test(v))||(rule5.test(v))||(rule6.test(v))){
				if(rule5.test(v)){
					if(n == "user_name"){
						show_tishi("user", '该邮箱已存在，立刻<a style="color:#005AA0" href="index.php?app=member&act=login">登录</a>。', "d");
					}else{
						show_tishi("remail", '该邮箱已存在，立刻<a style="color:#005AA0" href="index.php?app=member&act=login">登录</a>。', "d");
					}
					return false;
				}else{
					if(n == "user_name"){
						show_tishi("user", '该手机号已存在，立刻<a style="color:#005AA0" href="index.php?app=member&act=login">登录</a>。', "d");
					}else{
						show_tishi("rphone", '该手机号已存在，立刻<a style="color:#005AA0" href="index.php?app=member&act=login">登录</a>。', "d");
					}
					return false;
				}
			}else{
				if(obj.attr("id") == "user" && (data.msg == "用户名包含非法字符" || data.msg == "该ip今天已经注册！")){
					show_tishi("user", data.msg, null);
					return false;
				}
				if(obj.attr("id") == "user" && v.length < 15){//如果验证用户名重复时做推荐用户名功能
					$.getJSON(SITE_URL + "/index.php?app=member&act=recommend_user_name", {name:v}, function(data2){
						if(data2.done){
							var rem_html = '<h5>推荐您使用：</h5>';
							for (var i = 0, max = data2.retval.length; i < max; i++) {//性能好的
								rem_html = rem_html+'<div class="re_item"><input onclick="selectMe(this);" name="re_name" type="radio" value="'+data2.retval[i]+'" />'+data2.retval[i]+' </div>';
							}
							$("#recommend_name").show();
							$("#recommend_name").html(rem_html);
						}else{
							alert(data2.msg);//提示出错信息，可以去掉
						}
					});
				}
			}
			return _this.chk_info(info_wrong,'_wrong',obj,fn);
		}else{
			if(n =='user_name'){
				var user_name_val = $("#"+n).val();
				var have_to_email = $("#have_to_email").attr("have_to_email");//判断是否必须要email
				var have_to_phone = $("#have_to_phone").attr("have_to_phone");//判断是否必须要phone
				if(rule1.test(user_name_val)||(rule2.test(user_name_val))||(rule3.test(user_name_val))||(rule4.test(user_name_val))||(rule6.test(user_name_val))){
					if(have_to_email == 1){//如果email必须有则显示填写email输入框
						$("#have_to_email_li").show();
						$("#have_to_phone_li").hide();
						//添加验证新增的emial输入框
						verify_have_to_email();
						$("#register_all_boder").css("height", '500px');
				
					}else{
						$("#have_to_email_li").hide();
						$("#have_to_phone_li").hide();
						$("#register_all_boder").css("height", '443px');
					}
					//添加验证新增的phone输入框
					verify_have_to_phone();
					//手机号码输入框可以为空
					$("#register_phone").attr("not_must", 1);
					
					//验证手机验证码
					verify_moblie_code();
				}else{//如果帐号填写的不是手机号
					if(rule5.test(user_name_val)){//如果填写的是邮箱
						if(have_to_phone == 1){//如果手机号必须，则显示手机号输入框，且验证改为手机验证
							$("#have_to_phone_li").show();
							$("#have_to_email_li").hide();
							//添加验证新增的phone输入框
							verify_have_to_phone();
							$("#register_all_boder").css("height", '500px');
					
							//验证手机验证码
							verify_moblie_code();
						}else{//如果输入的是邮箱且手机号不必须，则不增加输入框，且只用验证码验证
							$("#have_to_phone_li").hide();
							$("#have_to_email_li").hide();
							$("#register_all_boder").css("height", '443px');
					
							//验证验证码
							verify_captcha();
						}
						//邮箱输入框可以为空
						$("#register_email").attr("not_must", 1);
					}else{//如果填写的是帐户名
						if(have_to_phone == 1){//如果手机号码必须
							$("#have_to_phone_li").show();
							if(have_to_email == 1){
								$("#have_to_email_li").show();
								//添加验证新增的emial输入框
								verify_have_to_email();
								$("#register_all_boder").css("height", '560px');
						
							}else{
								$("#have_to_email_li").hide();
								$("#register_all_boder").css("height", '500px');
							}
							//添加验证新增的phone输入框
							verify_have_to_phone();
					
							//验证手机验证码
							verify_moblie_code();
						}else{//如果手机号不必须
							if(have_to_email == 1){
								$("#have_to_email_li").show();
								$("#have_to_phone_li").hide();
								//添加验证新增的emial输入框
								verify_have_to_email();
								$("#register_all_boder").css("height", '500px');
								
							}else{
								$("#have_to_phone_li").hide();
								$("#have_to_email_li").hide();
								$("#register_all_boder").css("height", '443px');
							}
							//验证验证码
							verify_captcha();
						}
					}
				}
			}
			return _this.chk_info(info_right,'_right',obj,fn);
		}
	});
},

//提交表单时 非必填项的处理
not_must:function(obj){
	if(!obj){
		obj=$(this).next().children();
	}
	$(this).focus();
	$(this).blur();
	if($(this).val()=='' || obj.html()=='1'){
		if($(this).val()==''){
			obj.css("display","none");
		}
		return true;
	}else{
		return false;
	}
},
//表单提交
_submit:function(){
	var _sub=1;
	$(this).find("input[type='text'],input[type='password'],input[type='checkbox']").each(function(){
			if($(this).attr('not_must')=='1'){
				if(!$(this).not_must){
					_sub=0;
				}
			}else{
				if($(this).attr('_submit')!='1'){
					_sub=0;
					$(this).focus();
					$(this).blur();
					return false;
				}
			}
	});
	if(_sub){
		$(this).submit();
	}
},

//表单提交
_resubmit:function(){
	var _sub=1;
	$(this).find("input[type='text'],input[type='password'],input[type='checkbox']").each(function(){
	
			if($(this).attr('not_must')=='1'){
				if(!$(this).not_must){
					_sub=0;
				}
			}else{
				if($(this).attr('_submit')!='1'){
					_sub=0;
					$(this).focus();
					$(this).blur();
					return false;
				}
			}
	});
	if(_sub){
		//如短信还在倒数则不发
		var dao = $(".shor_mes").attr("dao");
		var change = $(".shor_mes").attr("change");
		if(dao == '0' || change == '1'){
			$(".shor_mes").html("");
			$(".shor_mes").attr("dao",59);
			$(".shor_mes").attr("change",0);
		}else{
			$(".shor_mes").html("验证短信发送时间间隔过短，不能发送");
			return false;
		}
		
		$( "#dialog" ).dialog( "open" );
		var mobile = $('#phone_mob').val();
		$('#mbnumber').html(mobile);
		$('#phone_num').val(mobile);
		 var url = SITE_URL + '/index.php?app=member&act=send_mobile_code&ajax=1&is_reg=1';
		    $.getJSON(url, {'mobile':mobile}, function(data){
		        if(data.done)
		        {
		        		//count = 59;
		        		clearTimeout(timeOut);
		        	 time_change();
		        }else{
                     alert(data.msg);
                     $( "#dialog" ).dialog( "close" );
                }
		    });
	}
},

//手机短信验证表单提交
_checksubmit:function(){
	var _sub=1;
	$(this).find("input[type='text'],input[type='password'],input[type='checkbox']").each(function(){
	
			if($(this).attr('not_must')=='1'){
				if(!$(this).not_must){
					_sub=0;
				}
			}else{
				if($(this).attr('_submit')!='1'){
					_sub=0;
					$(this).focus();
					$(this).blur();
					return false;
				}
			}
	});
	if(_sub){
        var mob_code_check =  $('#moblie_code').val();
        if(mob_code_check!='')
        {
        	$(this).submit();
        }
	}
},

//邮箱验证表单提交
_emailsubmit:function(){
	var _sub=1;
	$(this).find("input[type='text'],input[type='password'],input[type='checkbox']").each(function(){
	
			if($(this).attr('not_must')=='1'){
				if(!$(this).not_must){
					_sub=0;
				}
			}else{
				if($(this).attr('_submit')!='1'){
					_sub=0;
					$(this).focus();
					$(this).blur();
					return false;
				}
			}
	});
	if(_sub){
		$( "#dialog" ).dialog( "open" );
	}
},

//邮箱验证手机短信表单提交
_emailmobilesubmit:function(){
	var _sub=1;
	$(this).find("input[type='text'],input[type='password'],input[type='checkbox']").each(function(){
	
			if($(this).attr('not_must')=='1'){
				if(!$(this).not_must){
					_sub=0;
				}
			}else{
				alert($(this).attr('_submit'));
				if($(this).attr('_submit')!='1'){
					_sub=0;
					$(this).focus();
					$(this).blur();
					return false;
				}
			}
	});
	if(_sub){
		var mobile = $('#phone_mob').val();
		var email = $('#email').val();
		$('#mbnumber').html(mobile);
		$('#phone_num').val(mobile);
		$('#register_email').val(email);
		 var url = SITE_URL + '/index.php?app=member&act=send_mobile_code&ajax=1&is_form&is_reg=1';
		    $.getJSON(url, {'mobile':mobile}, function(data){
		        if(data.done)
		        {
		        	$( "#dialog" ).dialog( "close" );
		        	$( "#dialog2" ).dialog( "open" );
		        	 time_change();
		        }else{        
                     alert(data.msg);
    		       	 addCookie("my_time", 0, 1);
                     $( "#dialog" ).dialog( "close" );
                }
		    });
		}
	}

}); 
//验证验证码
function verify_captcha(){
	$("#captcha_li").attr("class","form");
	$("#moblie_code_li").attr("class","form hide");

	$("#captcha").chk_form(captcha,0,function(e){   
		if(e=='_wrong'){
			$("#captcha").css('border','1px solid #f00');
		}else{
			$("#captcha").css('border','1px solid #ccc');
		}
	});

	//如果是用户名则验证码必须,手机验证码可以为空
	$("#captcha").attr("not_must", 0);
	$("#moblie_code").attr("not_must", 1);
}

//验证短信验证码
function verify_moblie_code(){
//	$("#moblie_code_li").attr("class","form");
//	$("#captcha_li").attr("class","form hide");
    
//    修改 手机 对应的注册信息模式
    $("ul .form").eq(1).addClass("hide");
    $("ul .form").eq(2).addClass("hide");
    
    
        
        $(".fuhao2").change(function(){
            
                        if(!(mobile_verify_rules.test($(".fuhao2").val()))){
               $("ul .form").eq(1).removeClass("hide");
               $("ul .form").eq(2).removeClass("hide");
            }else{
                 $("ul .form").eq(1).addClass("hide");
                 $("ul .form").eq(2).addClass("hide");
            }
            
        })

        
    
	
	$("#moblie_code").chk_form(moblie_code,0,function(e){
		if(e=='_wrong'){
			$("#moblie_code").css('border','1px solid #f00');
		}else{
			$("#moblie_code").css('border','1px solid #ccc');
		}
	});
	//如果是手机号则手机验证码必须,验证码可以为空
	$("#moblie_code").attr("not_must", 0);
	$("#captcha").attr("not_must", 1);
}
//验证手机
function verify_have_to_phone(){
	$("#register_phone").chk_form(register_phone,0,function(e){
		if(e=='_wrong'){
			$("#register_phone").css('border','1px solid #f00');
		}else{
			$("#register_phone").css('border','1px solid #ccc');
		}
	});
	$("#register_phone").attr("not_must", 0);//手机号码必须
}
//验证邮箱
function verify_have_to_email(){
	$("#register_email").chk_form(register_email,0,function(e){
		if(e=='_wrong'){
			$("#register_email").css('border','1px solid #f00');
		}else{
			$("#register_email").css('border','1px solid #ccc');
		}
	});
	$("#register_email").attr("not_must", 0);//邮箱必须
}

function chk_box(name){
	var chk=0;
	$("input[name='"+name+"[]']").each(function(){
		if($(this).attr("checked")=='checked'){
			info_right($("#"+name+"_inf"));
			chk=1;
			return false;
		}
		$("#"+name+"_inf").css("display","none");
	});
	if(chk){
		return true;
	}else{
		return false;
	}
}


function info_right(obj){
	obj.html("1");
	obj.css({border:'0px',background:'url(../img/right.gif) left center no-repeat',color:'#fff',display:'inline'});
}
function info_wrong(obj,_info){
	obj.html(_info);
	obj.css({border:'1px solid red',background:'#FFD4D5 url(../img/wrong.gif) left center no-repeat',color:'#000',display:'inline'});
}
//将汉字视为两个字节
function strlen(str){
	var len = 0;
	for (var i=0; i<str.length; i++)
	{ 
		var c = str.charCodeAt(i); //单字节加1 
		if ((c >= 0x0001 && c <= 0x007e) || (0xff60<=c && c<=0xff9f))
		{ 
			len++; 
		} else { 
			len+=2; 
		} 
	} 
	return len; 
}