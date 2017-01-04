/*鼠标移过，左右按钮显示*/
$(".banner").hover(function(){
    $(this).find(".prev,.next").fadeTo("show",0.1);
},function(){
    $(this).find(".prev,.next").hide();
})
/*鼠标移过某个按钮 高亮显示*/
$(".prev,.next").hover(function(){
    $(this).fadeTo("show",0.7);
},function(){
    $(this).fadeTo("show",0.1);
})
$(".banner").slide({titCell:".num ul" , mainCell:".bannerpic" , effect:"fold", autoPlay:true, delayTime:700 , autoPage:true});// JavaScript Document

//右侧浮动图片回到顶部特效
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