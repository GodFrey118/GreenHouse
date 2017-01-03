//顶部菜单
var timeout         = 500;
var closetimer        = 0;
var ddmenuitem      = 0;

function nav_open()
{    nav_canceltimer();
    nav_close();
    ddmenuitem = $(this).find('ul').eq(0).css('visibility', 'visible');}

function nav_close()
{if(ddmenuitem) ddmenuitem.css('visibility', 'hidden');}

function nav_timer()
{closetimer = window.setTimeout(nav_close, timeout);}

function nav_canceltimer()
{    if(closetimer)
    {    window.clearTimeout(closetimer);
        closetimer = null;}}

$(document).ready(function()
{    $('#nav > li').bind('mouseover', nav_open);
    $('#nav > li').bind('mouseout',  nav_timer);});

document.onclick = nav_close;

//热卖 促销特惠

function slide_back(){                       
    $("#bg_div").animate({     
        'margin-top': "-400px",
    },2000,function(){   
        $('#bg_div').css({'position':'absolute',});
        $('#close_btn').css({'position':'absolute','top':'330px','right':'10px'});
    });    
};
function tab(a,b,c) 
{ 
for(i=1;i<=b;i++){ 
if(c==i)
 { 
// 判断选择模块
  document.getElementById(a+"_mo_"+i).style.display = "block";  // 显示模块内容
  document.getElementById(a+"_to_"+i).className = "no";   // 改变菜单为选中样式
 } 
  else{ 
// 没有选择的模块
   document.getElementById(a+"_mo_"+i).style.display = "none"; // 隐藏没有选择的模块
   document.getElementById(a+"_to_"+i).className = "q";  // 清空没有选择的菜单样式
  } 
 } 
}


//选择菜单类型样式
$(document).ready(function(e) {
    $(".ailsa-nav-ul li").hover(function(){
        $(this).find(".Anav-title").attr("class","Anav-title ailse-thisnav");
        $(this).find(".Anav-title").find("em").animate({margin:'-55px 10px 0 20px'},200);
        $(this).find(".Anav-sub").show();
        $(this).find(".Anav-subB").show();
        },
        function(){
        $(this).find(".Anav-title").attr("class","Anav-title");
        $(this).find(".Anav-title").find("em").animate({margin:'0 10px 0 20px'},200);
        $(this).find(".Anav-sub").hide();
        $(this).find(".Anav-subB").hide();
            }
        
        );
});



jQuery(".full-screen-slider").slide({titCell:".hd3 ul",mainCell:".bd2 ul",autoPage:true,effect:"left",autoPlay:true,scroll:1,vis:1,trigger:"click"});

jQuery(".fl-pic").slide({titCell:".hd2 ul",mainCell:".flpic ul",autoPage:true,effect:"left",autoPlay:true,scroll:1,vis:1,trigger:"click",pnLoop:false});

 jQuery(".fl-pic").slide({titCell:".hd2 ul",mainCell:".flpic ul",autoPage:true,effect:"left",autoPlay:true,scroll:1,vis:1,trigger:"click",pnLoop:false});
 
  jQuery(".demo").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,scroll:1,vis:1,trigger:"click"});
  
  
  //关闭购物车填出框
function close_cart_tan(){
	$("#cart_tan").hide();
}

$(function(){
    /*倒计时*/
    /* $('.countDownTime').each(function(){
         var stid  = $(this).attr('key');
        // $(".time_"+stid).show().siblings(".time").hide();
         show_time(stid);
        var time_now_server,time_now_client,time_server_client,timerID;
    });*/
    $('.countDownTime').each(function(){
         var stid  = $(this).attr('key');
        // $(".time_"+stid).show().siblings(".time").hide();
         if(stid == 1){
        	  show_time(stid);  
         }       
      
    });
     $('.countDownTime').mouseover(function(){
    		
          var stid  = $(this).attr('key');
          if(stid !=1){
        	  show_time(stid);  
          }
          $(".time_"+stid).show().siblings(".time").hide();
       	  
     });
    
    
});
/*  倒计时开始    */
function show_time(stid)
{
	var timer = $("#tab_mo_"+stid);
    timerID = stid;
    if(!timer){
      return ;
	}
	if(stid != 1){
		var end_time = $("#tab_mo_"+stid).attr('end_time');
		var now = new Date();   
		var date = now.getTime();
		var time = Math.floor(date / (1000));      
		time_distance= parseInt(end_time) - parseInt(time);//结束的时间
	 }else{
		 time_distance=$('#tab_mo_'+stid).attr('levetime');//结束的时间
	 } 
    var time_now,time_distance,str_time;
    var int_day,int_hour,int_minute,int_second;
    if(time_distance>0)
    {
      if(stid ==1){
    	  time_distance--;
      }     
      $('#tab_mo_'+stid).attr('levetime',time_distance);
      int_day=Math.floor(time_distance/86400)
      time_distance-=int_day*86400;
      int_hour=Math.floor(time_distance/3600)
      time_distance-=int_hour*3600;
      int_minute=Math.floor(time_distance/60)
      time_distance-=int_minute*60;
      int_second=Math.floor(time_distance/1)
      if(int_hour<10)
       int_hour="0"+int_hour;
      if(int_minute<10)
       int_minute="0"+int_minute;
      if(int_second<10)
       int_second="0"+int_second;

      //str_time=int_day+"天"+int_hour+"小时"+int_minute+"分"+int_second+"秒";
      $(".time_"+stid).children('.day').html(int_day);
      $(".time_"+stid).children('.hour').html(int_hour);
      $(".time_"+stid).children('.min').html(int_minute);
      $(".time_"+stid).children('.sec').html(int_second);
      setTimeout("show_time('"+stid+"')",1000);
   }else{
       $(".time_"+stid).children('.day').html('00');
       $(".time_"+stid).children('.hour').html('00');
       $(".time_"+stid).children('.min').html('00');
       $(".time_"+stid).children('.sec').html('00');
      clearTimeout(timerID)
   }
       
}


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

