/**
* 淘足迹js部分 caiwen
*/

/**
* jquery 扩展等待方法
*/
$.fn.extend({
    wait: function(time, type) {
        return this.queue(type || "fx", function() {
            var $this = $(this);
            setTimeout(function() { $this.dequeue(); }, time || 1000);
        });
    }
});
$(document).ready(function() {
    $('.e_t_wrap li a').attr('href', 'javascript:void(0);'); //使连接失效
    //为关闭按钮注册事件和实现功能
    $('.e_t_b_title s').bind('click', function() {
        //这里其实无需判断直接绑定功能即可
        if ($('.t_footmark,.t_goods,.t_news:visible').length >= 1) {
            //关闭并还原样式
            $('.t_footmark,.t_goods,.t_news:visible').hide();
            $('.e_t_wrap li').removeClass('setall');
            $('.e_t_wrap li').removeClass('setthis');
        }
    });
    //伸缩工具条
    $("li.e_toolbar_begin").click(
    		function() {
			    if ($(".e_t_wrap li:hidden").length > 0) {
			        $(this).unbind("mouseover").unbind('mouseout');
			        $(".e_toolbar_begin span").removeClass("recovetb").addClass("switch-mini-tip");
			        $(".switch-mini").remove();
			        $(this).css("background-position", "-53px -165px");
			        $(".e_t_wrap li").each(
			        		function() { $(this).show(); }
				);
			    } else {			
			        var _t = $(this);
			        $(this).css("background-position", "-72px -165px");
			        $(this).addClass('hover'); setTimeout(function() { _t.removeClass('hover'); }, 2000);
			        $(".e_t_wrap li").not($(this)).each(
						function() {
						    $(this).hide();
						}
			        );
			        $('#e_mark .e_t_wrap li').removeClass('setall');
			        $('#e_mark .e_t_wrap li').removeClass('setthis');			
			        $(".t_news,.t_footmark,.t_goods").each(
						function() {
						    $(this).hide();
						}
					);
			        _t.attr('title', '');
			        _t.mouseover(
			        		function() { $(".e_toolbar_begin span").removeClass("switch-mini-tip").addClass("recovetb"); }
					).mouseout(
						function() {
						    $(".e_toolbar_begin span").removeClass("recovetb").addClass("switch-mini-tip");
						}
					);
			        $(".e_t_wrap").prepend($("<li class='switch-mini'></li>"));
			    }
    		}
    );
});

/**
* IE 下绑定展开 进货车 我的足迹 消息，会出现延迟现象 修复 直接添加事件 add by caiwen
*/
function gettitlevalue()
{	
	var linkusername= "";
	$.ajax({
        type: "GET",
        async:false,
        url: im_url+"/GetStoreSession.aspx?StoreID="+store_id,
        dataType: "jsonp",
        jsonp: "callback", 
        jsonpCallback: "im_storeId", 
        success:function(json) {  
        	linkusername =json.storevalue;  
        	var user_nick_name=json.nickname;
        	if(user_nick_name=='') {user_nick_name=json.username;}                	
        	$("#storecustonname").html("");            
            $("#beforechecked").val(json.username);
    		$("#storecustonname").append('<li class="current online" id="on-line-statu_' + linkusername + '" onclick=""></li>');
            $("#storecustonname:first-child li").append("<span><em></em></span>");
            $("#storecustonname:first-child span").append('<label title="' + linkusername + '" tip="' + linkusername + '" id="blink_' + linkusername + '">' + linkusername+ '</label>');
            $("#storecustonname:first-child span").append('<a class="cls r" data="' + linkusername + '" title="关闭该会话" href="">╳</a>');
    	}
    });		
}

var lisEvent = {};
lisEvent.TempHide = '.t_footmark,.t_goods,.t_news,.webim-tool-con';
lisEvent.exe = function(obj, str) {
    $('#e_mark .e_t_wrap li').removeClass('setall');
    $('#e_mark .e_t_wrap li').removeClass('setthis');
    $('#e_mark .e_t_wrap li').addClass('setall');
    $(obj).addClass('setthis');
    if ($('#e_mark ' + str + ':hidden').length >= 1) {
        $(lisEvent.TempHide).hide();
        $(str + ':hidden').show();
        var hide_clickSum = $("#clickSumId").attr("value");    	
    	if(hide_clickSum =="0")
    	{		
    		$("#clickSumId").attr("value",1);
    		var iframe_url = $('#shanshanwebim').attr('value');//$('#shanshanwebim').attr('src');
            //$('#shanshanwebim').attr("src", iframe_url);
            var iframe = document.getElementById("shanshanwebim");
		  	iframe.src = iframe_url;
		  	if (iframe.attachEvent){ 
		  	   iframe.attachEvent("onload", function(){ 
		  		   gettitlevalue();
		  	    });} else {
		  	    iframe.onload = function(){
		  	    	gettitlevalue();
		  	    };
		  	} 
    	}        
    } else {
        $('#e_mark ' + str + ':visible').hide();
        $('#e_mark .e_t_wrap li').removeClass('setall');
        $('#e_mark .e_t_wrap li').removeClass('setthis');
    }};
lisEvent.t_my_news = function(obj) {
    lisEvent.exe(obj, ".t_news");
    //ajax_request("index.php?app=foot_mark&act=ajax_new_inbox&num=5&t=mes&ajax=1", 't_n_c_news', 'html');
};
lisEvent.t_my_footmark = function(obj) {
    lisEvent.exe(obj, ".t_footmark");
    //ajax_request("index.php?app=foot_mark&act=footmark_list", 'history_ft_list', 'html', function() { dir_marquee("all_vis", "t_left", "t_right", "history_ft_list", "history_list_con"); });
};
lisEvent.t_my_car = function(obj) {
    lisEvent.exe(obj, ".t_goods");
};
lisEvent.open_web_im = function(obj) {	
    $(obj).removeClass('newtx');
    $(obj).find('label').text('联系客服');
    lisEvent.exe(obj, ".webim-tool-con");
};
//换一组
lisEvent.next_g = function(t) {};