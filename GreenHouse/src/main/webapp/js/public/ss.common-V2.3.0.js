/*
	shanshan index - jQuery shanshan common Plugin
	Author: 		seven
	Version:		2.3 (2013/3/27)
	QQ:				948215473
*/
$(function(){
	 /* 顶部栏目 */
	  $(".mS-menu").hover(function(){
		  $(this).addClass("hover");
		  $(this).children('.mS-mcon').show();
	  },function(){
		  $(this).removeClass("hover");
		  $(this).children('.mS-mcon').hide();
	  });
	
	  /* 搜索框 */
      $(".sSearch-con-input").focus(function(){
		 $(this).prev('.sSearch-con label').css('visibility','hidden');
	  }).blur(function(){
		 if($(this).val()=='')
		 {
			  $('.sSearch-con label').css('visibility','visible');
		 }
		 $(this).prev('.sSearch-con label').css('color','#666666');
	  }).keydown(function(){
		 $('.sSearch-con label').css('visibility','hidden');
	  });
      
      
	 /*右边浮动图标*/
	 $(".backTop").on('mouseenter','.backTop-list',function(){
		  $(this).addClass('bTl-curr');
		  /*$('.backTop-head').animate({opacity: 1},"easeOutExpo");*/
		  $('.backTop-head').show();
		  $('.backTop-con').show();
		  $('.backTop-con').animate({opacity: 1,left:'0px'},"easeOutExpo");
	  });
	 $('.backTop').hover(function(){},function(){
		 $(".backTop-list").removeClass('bTl-curr');
		 /*$('.backTop-head').stop(true,false).animate({opacity: 0},"easeOutExpo");*/
		 $('.backTop-head').hide();
		 $('.backTop-con').hide();
		 $('.backTop-con').stop(true,false).animate({opacity: 0,left:'265px'},"easeOutExpo");
	 });
	 $('.bTc-left').click(function(){
		 $(".backTop-list").removeClass('bTl-curr');
		 $('.backTop-head').stop(true,false).animate({opacity: 0},"easeOutExpo");
		 $('.backTop-con').stop(true,false).animate({opacity: 0,left:'265px'},"easeOutExpo");
	 });
	 
	/*返回顶部*/ 
	$("#J_crollTop").click(function(){
		$('body,html').animate({scrollTop:0},0);
		return false;
	});
}); 

/* 底部微信关注 */ 
function weixin(param)
{
	$('.mbb-weixin').css('visibility',param);
}
