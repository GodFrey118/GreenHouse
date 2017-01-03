

var SITE_URL         = "http://www.shanshan360.com";
var PRICE_FORMAT     = '¥%s';
var gods_hot         = "金信香菇";
var store_hot        = "";
var gd_hk            = "金信香菇";
var gods_hot         = "金信香菇";
var gd_hk_url        = "http://www.shanshan360.com/product/49734.html";
$(document).ready(function(){
    

 //顶部滑动广告      
 $("#bg_div").animate({   
    'margin-top': "-70px",         
   }, 3000 );
 setTimeout("slide_back()", 5000 ); 
 $('#close_btn').click(function(){
      $('#top_nav').hide();
      $('#bg_div').hide();
 });
});
function slide_back(){                       
    $("#bg_div").animate({     
        'margin-top': "-390px",
    },2000,function(){   
        $('#bg_div').css({'position':'absolute',});
        $('#close_btn').css({'position':'absolute','top':'330px','right':'53px'});
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