	var total=0;
$.post("user/cartNum",function(data){
		
			  for(var i=0;i<data.length;i++){
				  for(var j=0;j<data[i].goods.length;j++){
					  alert(data[i].g_id+"内");
					  $("#shopping").append(
								"<tr class='shop'>"
								+"<td colspan='2'><input type='checkbox' id='1898538' class='J_forShop J_MakePoint store_sel' onclick='store_select(this);' tag='22' checked='checked'>"
								+"<span class='seller'> <span>店铺：</span><a href='index.jsp?s_id='"+(data[i].goods)[j].s_id+">丽水山耕旗舰店</a>"
								+"<span class='sstalking-11' style='display: inline-block;' title='点击这里给我发消息'></span></span></td>"
								+"<td colspan='6' class='promo-info'>"
								+"<div class='scrolling-container'>"
								+"<ul class='scrolling-promo-hint' id='J_ScrollingPromoHint_1898538'></ul></div></td></tr>"
								+"</tbody>"
								+"<tbody class='J_ItemBody'>"
								+"<tr class='selected record_list' id='cart_item_177493'>"
								+"<td class='s-chk'><input type='checkbox' rec_id='177493' onclick='reload_cart_price(this,1898538,177493);' class='ck_item_1898538' name='cartIds' checked='checked' id='cartIds189853849951' value='49951'></td>"
								+"<td class='s-title'>"
								+"<div style='width: 250px; height: 70px; position: relative;'>"
								+"<a href='#' target='_blank'> <img src='./shopping_files/small_201610201737159391.jpg' alt='丽水山耕 锥栗200g' class='itempic '></a>"
								+"<div class='lookb'>"
								+"<a href='javascript:preview_theme('data/files/store_1898538/goods_35/small_201610201737159391.jpg');'>查看大图</a></div>"
								+"<a href='#' target='_blank'>" + (data[i].goods)[j].g_name + "</a><br> <span>规格:" + (data[i].goods)[j].g_name + " </span>"
								+"<div class='xb'>"
								+"<span>保障: </span> <a class='xb-' target='_blank' href='#'></a></div></div></td>"
								+"<td class='s-point'><em><span id='item177493_goods_integral' tag='22'>22</span></em></td>"
								+"<td class='s-price '><del>¥40.00</del><em id='price'>¥" + parseFloat((data[i].goods)[j].g_price).toFixed(2) + "</em><span>省¥18.00元</span></td>"
								+"<td class='s-amount '><img src='./shopping_files/subtract.gif' onClick='decrease("+i+","+data[i].g_id+");' width='12' height='12'><input id='a"+i+"' value='"+ data[i].sc_goodNum +"' class='text1 width3' type='text'/>"
								+"<img src='./shopping_files/adding.gif' onClick='add("+i+","+ data[i].sc_goodNum +","+data[i].g_id+");' width='12' height='12'></td>"
								+"<td class='s-agio'><span id='discountList_177493'>"
								+"<span class='m-promo-item'> <a href='javascript:viod(0)' active='卖家促销' ever_dif='18' title='省18元：卖家促销...'><img src='./shopping_files/cuxiao.png'></a></span>"
								+"</span></td>"
								+"<td class='s-total'><span class='price2' id='"+i+"' tag='22'>¥" + parseFloat((((data[i].goods)[j].g_price) * (data[i].sc_goodNum) )).toFixed(2)  + "</span></td>"
								+"<td class='s-del'><a class='fav' href='javascript:;' onclick='move_favorite(1898538, 177493, 49951);'>"
								+"<font color='#000000'>收藏</font></a> <a class='del' href='javascript:void(0);' onclick='drop_cart("+data[i].sc_id+","+i+",this);'>"
								+"<font color='#000000'>删除</font></a></td>"
								+"</tr>");
					  
				  }
				  total= total + parseFloat(($("#"+i).text()).substr(1, ($("#"+i).text()).length));
				  alert($("#a"+i).val() + "sd");
			  }
			  
			  alert(parseFloat(total).toFixed(2));
			  $("#cart_amount").html("￥"+parseFloat(total).toFixed(2));
		  
	},'json');
	
	
   function	drop_cart(sc_id,i,dele){
	   $.post("user/delCartGood?sc_id="+sc_id,function(data){
			if(data){
				alert("确定要删除？");
				
				var price_1=parseFloat(($("#"+i).text()).substr(1, ($("#"+i).text()).length));
				var total_2 = parseFloat(parseFloat(($("#cart_amount").text()).substr(1, ($("#cart_amount").text()).length))-price_1).toFixed(2);
				$("#cart_amount").html("￥"+total_2);
				$(dele).parent().parent().remove();
				
			}
			
		},"json");
   }
	
	
   /*function add(i,g_id){
		

	$.post("user/goodNum?sc_id="+g_id,function(data){
			
		},"json");
	}*/
	var a=0;
	function decrease(i,g_id){
		var sc_goodNum=$("#a"+i).val();
		a=sc_goodNum-1;
		if(sc_goodNum>1){
		
		alert(a);
		alert(g_id);
		$("#a"+i).val(a);
		
		//$("#a1").val();
		
		$.post("user/goodNum?g_id="+g_id+"&sc_goodNum="+(a),function(data){
			alert(data);
			if(data){
				var single_price=parseFloat(($("#price").text()).substr(1, ($("#price").text()).length));
				alert(single_price+"单价");
				var total_price=parseFloat((a)*single_price).toFixed(2);
				alert(total_price+"总价");
				$("#"+i).html("￥"+total_price);
				$("#cart_amount").html("￥"+parseFloat(($("#cart_amount").text()).substr(1, ($("#cart_amount").text()).length)-single_price).toFixed(2));
			}
		},"json");
		
		}
	}
	
	
	function add(i,sc_goodNum,g_id){
		var sc_goodNum=$("#a"+i).val();
		a=parseInt(sc_goodNum)+1;
		alert(a);
		alert(g_id);
		$("#a"+i).val(a);
		
		//$("#a1").val();
		
		$.post("user/goodNum?g_id="+g_id+"&sc_goodNum="+(a),function(data){
			alert(data);
			if(data){
				var single_price=parseFloat(($("#price").text()).substr(1, ($("#price").text()).length));
				alert(single_price+"单价");
				var total_price=parseFloat((a)*single_price).toFixed(2);
				alert(total_price+"总价");
				$("#"+i).html("￥"+total_price);
				$("#cart_amount").html("￥"+parseFloat(($("#cart_amount").text()).substr(1, ($("#cart_amount").text()).length)+single_price).toFixed(2));
			}
		},"json");
		
	}
