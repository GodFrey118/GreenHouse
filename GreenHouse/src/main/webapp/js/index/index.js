function logout() {
	$.get("user/logout", function(data) {
		if (data) {
			window.location.href="login_user.jsp";
		}
	}, "json");
}

$.post("index/goodtype",function(data){
	for(var i = 0; i<data.length; i++){
		if(i==0){
			   $("#0").append("<em class='A-em1'></em><a target='_blank' href='#'>"+ data[i].gt_name +"</a>");
		   }else if(i==6){
			   $("#6").append("<em class='A-em8'></em>"+ data[i].gt_name);
		   } else{
			   $("#"+i+"").append("<em class='A-em"+(i+1)+"'></em><a target='_blank' href='#'>"+ data[i].gt_name +"</a>");
		   }
	}
	
	
	
},"json"); 

$.post("index/good" , function(data){
	alert("sd");
	   for(var i=0; i<data.length; i++){
		   for(var j=0; j<(data[i].goods).length; j++){
			   if((data[i].goods)[j].gt_id=="1000"){
				   $("#goods").append("<li>"
             +"<p class='pic'><a href='store/storeinfo?s_id="+(data[i].goods)[j].s_id+"&g_id="+(data[i].goods)[j].g_id+"' target='_blank'>"
             +"<img src='./index_files/small_201507291048161158.jpg'>  </a>"
             +"<span class='f15 fyh' style='cursor: pointer' onclick='add_to_cart("+(data[i].goods)[j].g_id+");'>加入购物车</span>"
             +"</p>"
             +"<p class='name'><a href='#'>"+(data[i].goods)[j].g_name+"</a></p> "
             +"<p class='price'>"
             +"<font class='f-s cff6 f16'>"
             +"<em class='tm-yen' style='font-family:楷体_GB2312;font-size:12px;'>￥</em>"
             +"<font class='f-s cff6 f16'>"+ (data[i].goods)[j].g_price +".</font><font class='f-s cff6 f14'>00</font>"
             +" </font>"
             +"</p>"
             +"<p></p>"
             +"</li>");
             
			   }else if((data[i].goods)[j].gt_id=="1001"){
				   $("#goods_1").append("<li>"
		                   +"<p class='pic'><a href='store/storeinfo?s_id="+(data[i].goods)[j].s_id+"&g_id="+(data[i].goods)[j].g_id+"' target='_blank'>"
		                   +"<img src='./index_files/small_201606081530082797.jpg'>  </a>"
		                   +"<span class='f15 fyh' style='cursor: pointer' onclick='add_to_cart("+(data[i].goods)[j].g_id+");'>加入购物车</span>"
		                   +"</p>"
		                   +"<p class='name'><a href='#'>"+(data[i].goods)[j].g_name+"</a></p> "
		                   +"<p class='price'>"
		                   +"<font class='f-s cff6 f16'>"
		                   +"<em class='tm-yen' style='font-family:楷体_GB2312;font-size:12px;'>￥</em>"
		                   +"<font class='f-s cff6 f16'>"+ (data[i].goods)[j].g_price +".</font><font class='f-s cff6 f14'>00</font>"
		                   +" </font>"
		                   +"</p>"
		                   +"<p></p>"
		                   +"</li>");
			   }else if((data[i].goods)[j].gt_id=="1003"){
				   $("#goods_2").append("<li>"
		                   +"<p class='pic'><a href='store/storeinfo?s_id="+(data[i].goods)[j].s_id+"&g_id="+(data[i].goods)[j].g_id+"' target='_blank'>"
		                   +"<img src='./index_files/small_201610201656443517.jpg'>  </a>"
		                   +"<span class='f15 fyh' style='cursor: pointer' onclick='add_to_cart("+(data[i].goods)[j].g_id+");'>加入购物车</span>"
		                   +"</p>"
		                   +"<p class='name'><a href='#'>"+(data[i].goods)[j].g_name+"</a></p> "
		                   +"<p class='price'>"
		                   +"<font class='f-s cff6 f16'>"
		                   +"<em class='tm-yen' style='font-family:楷体_GB2312;font-size:12px;'>￥</em>"
		                   +"<font class='f-s cff6 f16'>"+ (data[i].goods)[j].g_price +".</font><font class='f-s cff6 f14'>00</font>"
		                   +" </font>"
		                   +"</p>"
		                   +"<p></p>"
		                   +"</li>");
			   }else if((data[i].goods)[j].gt_id=="1002"||(data[i].goods)[j].gt_id=="1004"){
				   $("#goods_3").append("<li>"
		                   +"<p class='pic'><a href='store/storeinfo?s_id="+(data[i].goods)[j].s_id+"&g_id="+(data[i].goods)[j].g_id+"' target='_blank'>"
		                   +"<img src='./index_files/small_201511061104387723.jpg'>  </a>"
		                   +"<span class='f15 fyh' style='cursor: pointer' onclick='add_to_cart("+(data[i].goods)[j].g_id+");'>加入购物车</span>"
		                   +"</p>"
		                   +"<p class='name'><a href='#'>"+(data[i].goods)[j].g_name+"</a></p> "
		                   +"<p class='price'>"
		                   +"<font class='f-s cff6 f16'>"
		                   +"<em class='tm-yen' style='font-family:楷体_GB2312;font-size:12px;'>￥</em>"
		                   +"<font class='f-s cff6 f16'>"+ (data[i].goods)[j].g_price +".</font><font class='f-s cff6 f14'>00</font>"
		                   +" </font>"
		                   +"</p>"
		                   +"<p></p>"
		                   +"</li>");
			   }
			 }
	        
	     }
	   },"json");

	   


function add_to_cart(g_id){
	$.post("user/addCart?g_id="+g_id,function(data){
		if(data){
			$("#cart_tan").css("display","block");
			$.post("user/cartNum",function(data){
				$("#carts").html(data.length);
				$(".nums").html(data.length);
				$("#snum").html(data.length);
				$("#pro-list").empty();
				cartNum();
			},"json");
			
		}else{
			alert("添加购物车失败，请重新添加！！！")
		}
	},"json");
}
function cartNum(){
$.post("user/cartNum",function(data){
	$("#carts").html(data.length);
	$(".nums").html(data.length);
	for(var i=0;i<data.length;i++){
		for(var j=0;j<(data[i].goods).length;j++){
			var good_data = (data[i].goods)[j];
			var add=parseFloat((data[i].sc_goodNum)*(good_data.g_price)).toFixed(2);
		    $("#pro-list").append("<div id="+i+" class='left'><div class='tit carts_177721'>"
                +"<div class='left ml5'>小计：￥" + add + "</div>"
                +"</div>"
                +"<div class='pro-con left carts_177721'>"
                +"<span class='left img'>" 
                +"<img style='width:50px;height:50px;' src='./index_store_files/small_201507291048161158.jpg'></span>"
                +"<span class='left pro-name1 lh18'>" + good_data.g_name + "</span>"
                +"<span class='left  pri lh18'><p>"
                +"<font class='cff6 f14'>￥" + good_data.g_price + "</font>*"+data[i].sc_goodNum+"</p>"
                +"<p class='ter'>"
                +"<a href='javascript:void(0)' onClick='deleteGood(" + data[i].sc_id + ","+i+")' cart_id='177721' class='delete_cart'>删除</a></p></span></div></div></div>");
		}
	}
	shopCartCss();
  },"json");
}
cartNum();
function deleteGood(sc_id,i){
	$.post("user/delCartGood?sc_id="+sc_id,function(data){
		if(data){
			alert("确定要删除？");
			$("#"+i+"").empty();
			$("#carts").html($("#carts").text()-1);
			$(".nums").html($(".nums").text()-1);
			shopCartCss();
		}
		
	},"json");
}

function shopCartCss(){
	if($("#pro-list").text().trim()==null || $("#pro-list").text().trim()==""){
		
	    $("#show_cart_1").css("display","none");
	    $("#null_cart").css("display","block");
	    $("#shop").css("display","none");
	}else{
		$("#show_cart_1").css("display","block");
	    $("#null_cart").css("display","none");
	    $("#shop").css("display","block");
	}
}


