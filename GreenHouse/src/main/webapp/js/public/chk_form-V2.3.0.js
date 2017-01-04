//obj   提示信息对象
//_ajax_obj		ajax 附加验证


jQuery.fn.extend({

chk_info: function(info,_class,obj,fn){
if(!obj){
var obj=$(this).next().children();
}
obj.html(info);
if(_class=='_notice'){
obj.css('display','');
obj.attr('class','zc_houl1');
}
if(_class=='_wrong'){
obj.css('display','');
if(info.length>26){
obj.attr('class','zc_houl2');
}else{
obj.attr('class','zc_houl3');
}
}
if(_class=='_right'){
obj.css('display','');
obj.attr('class','zc_houl4');
$(this).attr('_submit','1');	//表单提交标识
}else{
$(this).attr('_submit','0');
}
if(_class=='_none' || info=='false'){
obj.css({display:'none'});
}else{
obj.css({display:''});
}
if(fn){
fn(_class);
}
//obj.delay(3000).fadeOut();
return false;

},

chk_form: function(arr,obj,fn){  //obj 错误信息对象  fn回调函数  可选参数
if(!obj){
var obj=$(this).next().children();
}



$(this).bind('focus',function(){
if(arr['info']['_notice'])
$(this).chk_info(arr['info']['_notice'],'_notice',obj,fn);
});

$(this).blur(function(){



if(!arr['rule']){
	return $(this).chk_info('','_none',obj,fn);
}
	
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

if(arr['rule']['_wrong'] && ((arr['rule']['_wrong'].test(this_v) && !arr['rule']['_contrary'])||(!arr['rule']['_wrong'].test(this_v) && arr['rule']['_contrary']))){
return $(this).chk_info(arr['info']['_wrong'],'_wrong',obj,fn);
}

if(arr['rule']['_equal'] && this_v!=arr['rule']['_equal'].val()){
return $(this).chk_info(arr['info']['_equal'],'_wrong',obj,fn);
}

if(arr['rgexp']){
var rgexp_info;
$.each(arr['rgexp'],function(item,v){
if((v[0].test(this_v) && !v[1]) || (!v[0].test(this_v) && v[1])){
return rgexp_info=v[2];
}
});

if(rgexp_info){
return $(this).chk_info(rgexp_info,'_wrong',obj,fn);
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
	var n2=0,v2=0;
	if(_ajax_obj){
		
		var n2=_ajax_obj.attr("name");
		var v2=_ajax_obj.val();
		
	}
var n=$(this).attr("name");
var v=$(this).val();
var _this=$(this);
var fn=fn;
$.post(page,{name:n,value:v,name2:n2,value2:v2},function(data){ //alert(data);
if(data=='false'){
return _this.chk_info(info_wrong,'_wrong',obj,fn);
}else{
return _this.chk_info(info_right,'_right',obj,fn);
}
});
},

//提交表单时 非必填项的处理
not_must:function(obj){
if(!obj){
var obj=$(this).next().children();
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

//登录表单提交
_loginsubmit:function(){
	var _sub=1;
	$(this).find("input[type='text'],input[type='password']").each(function(){
	
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
		$( "#dialog" ).dialog( "open" );
		var mobile = $('#phone_mob').val();
		$('#mbnumber').html(mobile);
		$('#phone_num').val(mobile);
		 var url = SITE_URL + '/index.php?app=member&act=send_mobile_code&ajax=1';
		    $.getJSON(url, {'mobile':mobile}, function(data){
		        if(data.done)
		        {
		        	 time_change();
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
		 var url = SITE_URL + '/index.php?app=member&act=send_mobile_code&ajax=1';
		    $.getJSON(url, {'mobile':mobile}, function(data){
		        if(data.done)
		        {
		        	$( "#dialog" ).dialog( "close" );
		        	$( "#dialog2" ).dialog( "open" );
		        	 time_change();
		        }
		    });
	}
}

}); 

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
 { var c = str.charCodeAt(i); //单字节加1 
	if ((c >= 0x0001 && c <= 0x007e) || (0xff60<=c && c<=0xff9f))
	{ 
		len++; 
	} else 
	{ len+=2; } 
} 
return len; 
}