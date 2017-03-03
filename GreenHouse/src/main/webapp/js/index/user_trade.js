var a=0;


$.post("user/Order",function(data){
	alert(JSON.stringify(data));
	//订单数量
	for(var i=0;i<data.length;i++){
		//商店数量
		//alert(data[i].date.substr(0,data[i].date.length-2));
		for(var j=0;j<data[i].stores.length;j++){
	
	$("#sep-row").after(" <tr class='sep-row' ><td colspan='9'></td>"
                  +"</tr><tr class='order-hd' id='"+i+"'>"
                  +"<td colspan='9'>"
                  +"<span class='no'>"
                  +"<label><input type='checkbox' value='741440' name='order_list[]' class='checkitem'>"
                  +"<span class='g-u'>"
                  +"<a href='#'><img src='user_trade_files/prolist_index_ico.gif' alt='' border=''></a>"
                  +"</span>订单编号：<span class='order-num'>"+data[i].o_id+"</span>"
                  +"</label>"
                  +"</span>"
                  +"<span class='deal-time'>成交时间："+ data[i].date.substr(0,data[i].date.length-2) +"</span>"
                  +"<span class='seller'>"
                  +"<a href='#' class='nickname' target='_blank'>"+(data[i].stores)[j].s_name+"</a>"
                  +"<span class='ww-light ww-small'>"
                  +"<span class='sstalking-11' style='cursor:pointer;display:inline-block;vertical-align: middle;margin-top: -4px;' title='点击这里给我发消息'></span>"
                  +"</span></span></td></tr>");
		}
		
		for(var n=0;n<data[i].goods.length;n++){
			if(data[i].o_state=="未付款"){
				a++;
				$("#"+i).after("<tr class='order-bd'> "
		                  +"<td colspan='2' class='baobei'>"
		                  +"<a class='pic s50' href='#' target='_blank'>" +
		                  		"<img src='"+data[i].goods[n].g_pic+"' alt='查看商品详情' border='0'></a>"
		                  +"<span class='desc_title'>"
		                  +"<a href='#' target='_blank' class='baobei-name' title='"+data[i].goods[n].g_name+"'> "+data[i].goods[n].g_name+"</a>	"
		                  +"<div class='spec_ico'>规格："+data[i].goods[n].g_name+"<br/></div>"
		                  +"</span>"
		                  +"</td>"
		                  +"<td class='price'>¥"+data[i].goods[n].g_price+"</td>"
		                  +"<td class='quantity'>1</td>"
		                  +"<td class='after-service'>"
		                  +"<a href='javascript:void;'></a>"
		                  +"<br>"
		                  +"<a href='#'>投诉维权</a><br>"
		                  +"</td>"
		                  +"<td class='amount' rowspan='1'>"
		                  +"<strong>¥"+data[i].o_sum+"</strong>"
		                  +"<p class='post-type'>(含：¥12.00)</p>"
		                  +"</td>"
		                  +"<td class='trade-status' rowspan='1'>"
		                  +"<a href='#' class='cheng' id='Status_1' ectype='11'>"+data[i].o_state+"</a><br>"
		                  +"<a href='#' class='order_dt' target='_blank'>订单详情<br></a>"
		                  +"<a href='#' target='_blank'>查看物流</a>"
		                  +"</td>"
		                  +"<td class='operate' rowspan='1'>"
		                  +"<a value='确认收货' class='btn1' ectype='dialog' dialog_id='buyer_order_confirm_order' dialog_width='400' dialog_title='确认收货'id='order741440_action_confirm' style='display:none'>" +
		                  		"<img src='user_trade_files/prolist_queren.gif' alt='' border='0'></a><br/>"
		                  +"<a href='#' target='_blank' style='display:none'>查看评价</a><br>"
		                  +"<a href='#' target='_blank' style='display:none'>评价</a>"
		                  +"<p class='ys-pay'><a href='#' target='_blank' id='order741440_action_pay' class='btn'>待付款</a> </p><br>"
		                  +"<input type='button' onClick='cancel()' value='取消订单' class='btn1111' ectype='dialog' dialog_width='400' dialog_title='取消订单' dialog_id='buyer_order_cancel_order' id='order741440_action_cancel' style='display:none'></td>"
		                  +"<td class='other' rowspan='1'>"
		                  +"<img src='user_trade_files/remark0.gif' style='display:none'>"
		                  +"<a title='' ectype='dialog' dialog_title='备忘' dialog_id='buyer_memorandum' dialog_width='780' style='cursor:pointer;'>备忘</a><br>"
		                  +"<div class='prolist_share'>"
		                  +"<a class='prolist_share_ico' ectype='dialog' dialog_id='goods_share_741440' dialog_title='goods_share' dialog_width='400'>分享</a>"
		                  +"</div>"
		                  +"</td>"
		                  +"</tr>");
			}else{
				$("#"+i).after("<tr class='order-bd'> "
		                  +"<td colspan='2' class='baobei'>"
		                  +"<a class='pic s50' href='#' target='_blank'>" +
		                  		"<img src='"+data[i].goods[n].g_pic+"' alt='查看商品详情' border='0'></a>"
		                  +"<span class='desc_title'>"
		                  +"<a href='#' target='_blank' class='baobei-name' title='"+data[i].goods[n].g_name+"'> "+data[i].goods[n].g_name+"</a>	"
		                  +"<div class='spec_ico'>规格："+data[i].goods[n].g_name+"<br/></div>"
		                  +"</span>"
		                  +"</td>"
		                  +"<td class='price'>¥"+data[i].goods[n].g_price+"</td>"
		                  +"<td class='quantity'>1</td>"
		                  +"<td class='after-service'>"
		                  +"<a href='javascript:void;'></a>"
		                  +"<br>"
		                  +"<a href='#'>投诉维权</a><br>"
		                  +"</td>"
		                  +"<td class='amount' rowspan='1'>"
		                  +"<strong>¥"+data[i].o_sum+"</strong>"
		                  +"<p class='post-type'>(含：¥12.00)</p>"
		                  +"</td>"
		                  +"<td class='trade-status' rowspan='1'>"
		                  +"<a href='#' class='cheng' id='Status_1' ectype='11'>"+data[i].o_state+"<br/></a>"
		                  +"<a href='#' class='order_dt' target='_blank'>订单详情<br></a>"
		                  +"<a href='#' target='_blank'>查看物流</a>"
		                  +"</td>"
		                  +"<td class='operate' rowspan='1'>"
		                  +"<a value='确认收货' class='btn1' ectype='dialog' dialog_id='buyer_order_confirm_order' dialog_width='400' dialog_title='确认收货'id='order741440_action_confirm'>" +
		                  		"<img src='user_trade_files/prolist_queren.gif' alt='' border='0'></a><br/>"
		                  +"<a href='#' target='_blank'>查看评价</a><br>"
		                  +"<a href='#' target='_blank'>评价</a>"
		                  +"<br>"
		                  +"</td>"
		                  +"<td class='other' rowspan='1'>"
		                  +"<img src='user_trade_files/remark0.gif' style='display:none'>"
		                  +"<a title='' ectype='dialog' dialog_title='备忘' dialog_id='buyer_memorandum' dialog_width='780' style='cursor:pointer;'>备忘</a><br>"
		                  +"<div class='prolist_share'>"
		                  +"<a class='prolist_share_ico' ectype='dialog' dialog_id='goods_share_741440' dialog_title='goods_share' dialog_width='400'>分享</a>"
		                  +"</div>"
		                  +"</td>"
		                  +"</tr>");
			}
			
		}
		$("#a1").html(i+1);
	}
	
	$("#a1").html(a);
},'json');

