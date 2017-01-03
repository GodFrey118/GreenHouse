$(function(){
    $(".menu-item li.jj").each(function($i){
        $(this)
        .hover(
            function(){
                $(this).addClass("mouse-bg");
                $('.menu-cont:eq('+$i+')').show();
                $('.gapp:eq('+$i+')').show();
                
            }, 
            function(){
                $(this).removeClass("mouse-bg");
                $('.menu-cont:eq('+$i+')').hide();
                $('.gapp:eq('+$i+')').hide();
            })
        
    });  
});