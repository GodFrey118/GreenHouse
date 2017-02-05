$(function(){ 		
	/* 购物车 */	
		$("#opnav_carts").mouseover(function(e){
			if(checkHover(e,this)){  
				$(this).attr('class','opnav_cartscur');
				$(".opnav_cartscur .carts_btn").attr('class','carts_btncur');
				$(".opnav_carts_con").show();
			}
		});
		$("#opnav_carts").mouseout(function(e){
			if(checkHover(e,this)){  
				$(this).attr('class','opnav_carts');
				$(".opnav_carts .carts_btncur").attr('class','carts_btn');
				$(".opnav_carts .opnav_carts_con").hide();
			}
		});
		
	/* 我的山山 */	
		$("#opnav_myss").mouseover(function(e){
			if(checkHover(e,this)){ 
				$(this).attr('class','opnav_mysscur');
				$(".opnav_mysscur .myss_btn").attr('class','myss_btncur');
				$(".opnav_myss_con").show();
			}
		});
		$("#opnav_myss").mouseout(function(e){
			if(checkHover(e,this)){ 
				$(this).attr('class','opnav_myss');
				$(".opnav_myss .myss_btncur").attr('class','myss_btn');
				$(".opnav_myss .opnav_myss_con").hide();
			}
		});
		
		/* 收藏夹 */	
		$("#opnav_myss2").mouseover(function(e){
			if(checkHover(e,this)){ 
				$(this).attr('class','opnav_mysscur2');
				$(".opnav_mysscur2 .myss_btn2").attr('class','myss_btncur2');
				$(".opnav_myss_con2").show();
			}
		});
		$("#opnav_myss2").mouseout(function(e){
			if(checkHover(e,this)){ 
				$(this).attr('class','opnav_myss2');
				$(".opnav_myss2 .myss_btncur2").attr('class','myss_btn2');
				$(".opnav_myss2 .opnav_myss_con2").hide();
			}
		});
			
			/* 山山礼卡 */	
		$("#opnav_myss3").mouseover(function(e){
			if(checkHover(e,this)){ 
				$(this).attr('class','opnav_mysscur3');
				$(".opnav_mysscur3 .myss_btn3").attr('class','myss_btncur3');
				$(".opnav_myss_con3").show();
			}
		});
		$("#opnav_myss3").mouseout(function(e){
			if(checkHover(e,this)){
				$(this).attr('class','opnav_myss3');
				$(".opnav_myss3 .myss_btncur3").attr('class','myss_btn3');
				$(".opnav_myss3 .opnav_myss_con3").hide();
			}
		});
			
		/* 山山卡券 */	
		$("#opnav_myss4").mouseover(function(e){
			if(checkHover(e,this)){
				$(this).attr('class','opnav_mysscur4');
				$(".opnav_mysscur4 .myss_btn4").attr('class','myss_btncur4');
				$(".opnav_myss_con4").show();
			}
		});
		$("#opnav_myss4").mouseout(function(e){
			if(checkHover(e,this)){
				$(this).attr('class','opnav_myss4');
				$(".opnav_myss4 .myss_btncur4").attr('class','myss_btn4');
				$(".opnav_myss4 .opnav_myss_con4").hide();
			}
		});
		
		/* 按钮 */
		$(".search_r input.search_btn").mouseover(function(){
			$(this).attr('class','search_btn2');
		});
		$(".search_r input.search_btn").mouseout(function(){
			$(this).attr('class','search_btn');
		});
});


function showTab(obj,obj2,num,len,listyle)
{
 for(var id = 1;id<=len;id++)
 {
  var ss=obj+id;
  var ss2=obj2+id;
  if(id==num){
  try{
		document.getElementById(ss2).className=listyle;
		document.getElementById(ss).style.display="block"}catch(e){};
  }else{
  try{
		document.getElementById(ss2).className="";
		document.getElementById(ss).style.display="none"}catch(e){};
  }
 }  
}



function SenFe_Code(sname,sid){
	if(document.getElementById(sid).className=="tk_tablee"){
		document.getElementById(sid).className="tk_table";
		sname.className="order_detaill";
		sname.innerHTML="隐藏订单信息";
	}else{
		document.getElementById(sid).className="tk_tablee";
		sname.className="order_detail";
		sname.innerHTML="查看订单信息";
	}
}






//网银支付
function show_send_part(index)
{
    var rb_btn=$("#rb_"+index);
    if(rb_btn.length>0)
    {
        rb_btn.attr("checked",true);
    }
	
		
}
//线下支付
function show_send_part3(index)
{
    var rb_btn=$("#bb_"+index);
    if(rb_btn.length>0)
    {
        rb_btn.attr("checked",true);
    }
	
		
}
//在线支付
function show_send_part2(index)
{
    var zf_btn=$("#zf_"+index);
    if(zf_btn.length>0)
    {
        zf_btn.attr("checked",true);
    }
		
}