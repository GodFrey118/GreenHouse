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




 $ = window.top.jQuery;
	var t570235879 = n570235879 = 0, count570235879;
	$(document).ready(function(){	
		count570235879=$("#banner_list570235879 a").length;
		$("#banner_list570235879 a:not(:first-child)").hide();
		$("#banner_info570235879").html($("#banner_list570235879 a:first-child").find("img").attr('alt'));
		$("#banner_info570235879").click(function(){window.open($("#banner_list570235879 a:first-child").attr('href'), "_blank")});
		$("#banner570235879 li").click(function() { 
			var i = $(this).text() - 1;		//获取Li元素内的值，即1，2，3，4
			//alert(i);
			n570235879 = i;
			if (i >= count570235879) return;
			$("#banner_info570235879").html($("#banner_list570235879 a").eq(i).find("img").attr('alt'));
			$("#banner_info570235879").unbind().click(function(){window.open($("#banner_list570235879 a").eq(i).attr('href'), "_blank")})
			$("#banner_list570235879 a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
			document.getElementById("banner570235879").style.background="";
			$(this).toggleClass("on");
			$(this).siblings().removeAttr("class");
		});
		t = setInterval("showAuto570235879()", 4000);
		$("#banner570235879").hover(function(){clearInterval(t)}, function(){t = setInterval("showAuto570235879()", 4000);});
	})
	
	function showAuto570235879()
	{	
		n570235879 = n570235879 >=(count570235879 - 1) ? 0 : ++n570235879;
		$("#banner570235879 ul li").eq(n570235879).trigger('click');
	}
	
	
	
	
	
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




NTKF_PARAM = {
	siteid:'ss_1000',                         //平台基础id
	sellerid:'ss_',                       //商户id，平台中不需传递此参数，商家需传递此参数
	settingid:'ss_1000_9999',                //Ntalker分配的缺省客服组id
	uid:'',                              //用户id
	uname:'',                   //用户名
	userlevel:'0'
} 
if(typeof ntalkerparam !== 'undefined'){
	NTKF_PARAM.ntalkerparam = ntalkerparam;
	NTKF_PARAM.uid = uid;
	NTKF_PARAM.uname = uname;
}
function openChatWindow(id){
	if(id != ""){
		NTKF_PARAM.sellerid = "ss_"+id;
		NTKF.im_openInPageChat && NTKF.im_openInPageChat("ss_"+id+"_9999");
	}else{
		NTKF.im_openInPageChat("ss_1000_1378972838154");
	}
}


function AutoScroll(){
	$("#store_header_notice").animate({
	    marginTop:"-25px"
	   },500,function(){
	    $(this).css({marginTop:"0px"}).find("p:first").appendTo(this);
	   });
	}    
	$(document).ready(function(){
	setInterval('AutoScroll()',4000);	
	});  
	
	
	
	$(function () {
    $('.info-trigger').click(function (e) {
        e.stopPropagation();e.preventDefault();
        $(this).parents('div.brandsale').find('div.extra-info').toggle();
    });
    $('div.score').hover(function() {
            $(this).find('div.extra-info').show();
            $(this).find('i.icon-triangle').addClass('up');
    }, function() {
        $(this).find('div.extra-info').hide();
        $(this).find('i.icon-triangle').removeClass('up');
    });

    $('#dsr').find('li.dsr-item').mouseover(function() {
        $(this).addClass('selected').siblings('li').removeClass('selected');
    });
    $('#halfmonth').find('div.each').mouseover(function(e) {
        var index = $(this).attr('flag');
        var top = $(this).position().top;
        $(this).parents('div.left1').next('div.left2').find('div.detail-con').eq(index).addClass('selected').siblings().removeClass('selected');
        $('#J_current').stop().animate({top: top+8}, 400);
    });
	 $('.all_gcate').mouseover(function(e){
		 if(checkHover(e,this)){  
			$('.store_cates').show();
		 }	
  	 });
	 $('.all_gcate').mouseout(function(e){
  		 if(checkHover(e,this)){   
      		 $(".store_cates").mouseover(function(e){
       			if(checkHover(e,this)){
      			 	$('.store_cates').show();
       			}
     		    });
      		 $(".store_cates").mouseout(function(e){
       			if(checkHover(e,this)){
      			 	$('.store_cates').hide();
       			}
     		    });
					$('.store_cates').hide();
  		 }	
	 });
});