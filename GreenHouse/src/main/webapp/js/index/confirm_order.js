function address_add(){
	
	//alert($("#addrForm").css("display")=="none");
	if($("#addrForm").css("display")=="none"){
		$("#addrForm").css("display","block");
	}else{
		$("#addrForm").css("display","none");
	}
}
 var Param=location.href.substring(location.href.indexOf("="));
var param=[];

param =(Param.substr(1 , Param.length)).split(",");

var a;
for(var i=0;i<param.length;i++){
	//alert(param[i]);
	var total=0;
	
	$.post("user/orderInfo?sc_id="+param[i], function(data) {
		//alert(data);
		for(var i=0;i<data.length;i++){
			
			for(var j=0;j<data[i].goods.length;j++){
				/*$.post("store/storeinfo_1?s_id="+(data[i].goods)[j].s_id, function(data) {
					a = data.s_name;
					alert(a);
					//$("#"+i).html(data.s_name);
				
				},"json");*/
				//alert((data[i].goods)[j].s_id);
				//alert(a);
				for(var n=0;n<((data[i].goods)[j]).stores.length;n++){
					
				$("#order").append("<tr style='height: 25px;'><td colspan='7'></td></tr>"
                        	+"<tr><th colspan='2' class='name'>" 
                        	+"<p class='n-st-conus clearfix'>"
                        	+"<span>店铺：</span><a href='index_store.jsp?s_id="+(data[i].goods)[j].s_id+"' target='_blank'>"+(((data[i].goods)[j]).stores[n]).s_name+"</a>"
                        	+"<span class='sstalking-11' style='display:block;' title='点击这里给我发消息'></span></p></th>"
                        	+"<th colspan='5' class='promo-info'><div class='scrolling-container'>"
                        	+"<ul class='scrolling-promo-hint' id='J_ScrollingPromoHint_75080'></ul></div>"
                        	+"</th></tr><tr><td style='width:350px;'><span class='fl gw2_xpic'>"
                        	+"<a href='#' target='_blank'><img src='./index_store_files/small_201508041053016965.jpg' alt='"+(data[i].goods)[j].g_name+"' border='0' style='width:50px; height:50px;'></a></span>"
                            +"<a href='#' class='fl gw2_xtext' target='_blank'>"+(data[i].goods)[j].g_name+"<br>规格：默认</a>"
                            +"<br></td><td style='text-align: center;width:100px;'><font style='text-decoration: line-through;'>￥158.00</font><br>￥"+(data[i].goods)[j].g_price+"</td>"
                            +"<td style='width:100px;' align='center'>"
                            +"<label>"+data[i].sc_goodNum+"</label></td>"
                        	+"<td style='text-align: center; width:135px;'>无优惠  </td>"
                        	+"<td id='b"+i+"' style='text-align: center;width:100px;'><span class='item_amount_75080' item_amount='77.8'>￥"+((data[i].goods)[j].g_price)*(data[i].sc_goodNum)+"</span></td>"
                        	+"<td style='text-align:center;width:155px;'>"
                        	+"<select name='shipping_id_75080[]' id='shipping_id_75080' class='gw_kuaidi shipping_id_75080'>"
                        	+"<option shipping_id_75080='快递公司' bbb='' hs_id='Array' abc='Op快递公司' ectype='快递公司' value='快递公司' price='0'>快递公司 : ￥0.00</option></select></td>" 
                            +"</tr> "); 
				}
				total= total + ((data[i].goods)[j].g_price)*(data[i].sc_goodNum);
			}
			 $("#order_amount").html("￥"+total);
		}
	},'json');

}

$.post("user/addrSelect",function(data){
	//alert(data.c_name);
		for(var j=0;j<(data.address).length;j++){
			
			//alert(data.address[j].a_area);
			$("#addr").append("<li id=myadds_50773' style='float:left' ectype='50773' class='checked' onclick='morenAddr(this)'>"
                    	+"<div class='gw2_addrcon_con'>"
                    	+"<p style='margin-top:8px;'>"
                    	+"<span>" + (data.address)[j].a_area + "</span><span>（" + data.c_name + " 收）</span></p>"
                    	+"<p>" + (data.address)[j].a_street + "</p>"
                    	+"<p>" + (data.address)[j].a_tel + "</p>"
                    	+"</div>"
                    	+"<div class='morenaddr' id='div1' onclick='dis()' value='1' ectype='50773' type='hidden'>默认地址</div>"
                    	+"</li>");
			
		
	}
},"json");

//$("#myadds_50773").

/*var oDiv = document.getElementById('div1');
alert($("#div1").css("display"))
function dis(){
    if(this.style.disPlay == 'none'){
        this.css("display","block") ;
    }else{
    	 this.css("display","none") ;
    }
};*/

function addrsave(){
	var str="?a_receiver="+$("#a_receiver").val()+"&a_area="+$("#a_area").val()+"&a_street="+$("#a_street").val()+"&a_post="+$("#a_post").val()+"&a_tel="+$("#a_tel").val();
	$.post("user/saveAddr"+str,function(data){
		if(data){
			 window.location.reload();
		}
	});
}

function submit_check1(){
	$.post("user/cartNum",function(data){
		var sc_id=0;
		var s_id = 0;
		var g_id=0;
		var sc_goodNum=0;
		var o_sum=0;
		var sc_g_payment;
		var flag=false;
		  for(var i=0;i<data.length;i++){
			  for(var j=0;j<data[i].goods.length;j++){
				  sc_id = data[i].sc_id;
				  s_id = (data[i].goods)[j].s_id;
				  g_id = (data[i].goods)[j].g_id;
				  sc_goodNum = data[i].sc_goodNum;
				  o_sum = parseFloat((((data[i].goods)[j].g_price) * (data[i].sc_goodNum) )).toFixed(2);
				  sc_g_payment=data[i].sc_g_payment;
				  $.post("user/insertOrder?s_id="+s_id+"&g_id="+ g_id +"&sc_goodNum="+sc_goodNum+"&o_sum="+parseInt(o_sum)+"&o_state="+sc_g_payment+"&sc_id="+sc_id+"&sum="+total,function(data){
					  if(data){
						  window.location.href="page/Com_payment.jsp";
					  }else{
						  window.location.href;
					  } 
				  },"json");
			  }
		  }
		 
	},"json");

}

