function drop_cart_item(store_id, rec_id){
	if(confirm('你确定要删除它吗？')){
		var tr = $('#cart_item_' + rec_id);
		var amount_span = $('#cart' + store_id + '_amount');
		var cart_goods_kinds = $('#cart_goods_kinds');
		$.getJSON('index.php?app=cart&act=drop&rec_id=' + rec_id, function(result){
			if(result.done){
				//删除成功
				if(result.retval.cart.quantity == 0){
					window.location.reload();    //刷新
				}
				else{
					tr.remove();        //移除
					amount_span.html(price_format(result.retval.amount));  //刷新总费用
					cart_goods_kinds.html(result.retval.cart.kinds);       //刷新商品种类
					window.location.reload();    //刷新
				}
			}
		});
	}
	else{
		return;
	}
}
function move_favorite(store_id, rec_id, goods_id){
    var tr = $('#cart_item_' + rec_id);
    $.getJSON('index.php?app=my_favorite&act=add&type=goods&item_id=' + goods_id, function(result){
        //没有做收藏后的处理，比如从购物车移除
        if(result.done){
            //drop_cart_item(store_id, rec_id);
            alert(result.msg);
        }
        else{
            alert(result.msg);
        }

    });
}
function reload_cart_price(item,store_id,rec_id)
{
	var subtotal_val = $('#item' + rec_id + '_subtotal').attr('tag');
    var amount_val = $('#cart' + store_id + '_amount').attr('tag');
	if(item.checked)
	{
        $('#cart' + store_id + '_amount').html(price_format(Number(amount_val)+Number(subtotal_val)));
		$('#cart' + store_id + '_amount').attr('tag',Number(amount_val)+Number(subtotal_val));
	}else
	{
        $('#cart' + store_id + '_amount').html(price_format(Number(amount_val)-Number(subtotal_val)));
		$('#cart' + store_id + '_amount').attr('tag',Number(amount_val)-Number(subtotal_val));
	}
	subtotal_val = amount_val = 0;
}
function decrease_quantity(rec_id){
    var item = $('#input_item_' + rec_id);
    var orig = Number(item.val());
    if(orig > 1){
        item.val(orig - 1);
        //优惠图片提示
        $('#discountList_'+rec_id+' a').each(function(){
        	var _active = $(this).attr('active');
        	var _ever_dif = Number($(this).attr('ever_dif'));
        	var _title = '省'+_ever_dif*(orig - 1)+'元:'+_active;
        	$(this).attr('title',_title);
        });
        item.keyup();
    }
}
function add_quantity(rec_id){
    var item = $('#input_item_' + rec_id);
    var orig = Number(item.val());
    item.val(orig + 1);
    //优惠图片提示
    $('#discountList_'+rec_id+' a').each(function(){
    	var _active = $(this).attr('active');
    	var _ever_dif = Number($(this).attr('ever_dif'));
    	var _title = '省'+_ever_dif*(orig + 1)+'元:'+_active;
    	$(this).attr('title',_title);
    });
    item.keyup();
}
/*
function change_quantity(store_id, rec_id, spec_id, input, orig){
    var subtotal_span = $('#item' + rec_id + '_subtotal');
    var goods_integral_span= $('#item' + rec_id + '_goods_integral');
    var amount_span = $('#cart' + store_id + '_amount');
    //暂存为局部变量，否则如果用户输入过快有可能造成前后值不一致的问题
    var _v = input.value;
    $.getJSON('index.php?app=cart&act=update&spec_id=' + spec_id + '&quantity=' + _v, function(result){
        if(result.done){
            //更新成功
            $(input).attr('changed', _v);
            subtotal_span.html(price_format(result.retval.subtotal));
			subtotal_span.attr('tag',result.retval.subtotal);
			goods_integral_span.html(price_format(result.retval.goods_integral));
			goods_integral_span.attr('tag',result.retval.subtotal);
			amount_span.html(price_format(result.retval.amount));
			amount_span.attr('tag',result.retval.amount);
        }
        else{
            //更新失败
            alert(result.msg);
            $(input).val($(input).attr('changed'));
        }
    });
}
*/
//购物车流程
function change_quantity(store_id, rec_id, spec_id , speces_id , input, orig){
	
    var subtotal_span = $('#item' + rec_id + '_subtotal');
    var goods_integral_span= $('#item' + rec_id + '_goods_integral');
    var amount_span = $('#cart' + store_id + '_amount');
    //暂存为局部变量，否则如果用户输入过快有可能造成前后值不一致的问题
    var reg = /^(\d*)/g;
    var _v = input.value.replace(/^\s*/, '');
    var match = _v.match(reg)[0] ? _v.match(reg)[0] : 1;
    $.getJSON('index.php?app=cart&act=update&is_cart_status=1&spec_id=' + spec_id + '&speces_id=' + speces_id + '&quantity=' + match, function(result){
        if(result.done){
            //更新成功
            $(input).attr('changed', match).val(match);
            subtotal_span.html(price_format(result.retval.subtotal));
			subtotal_span.attr('tag',result.retval.subtotal);
			goods_integral_span.html(result.retval.goods_integral);
			goods_integral_span.attr('tag',result.retval.subtotal);
			amount_span.html(price_format(result.retval.amount));
			amount_span.attr('tag',result.retval.amount);
			update_total_amount();
        }
        else{
            //更新失败
            alert(result.msg);
            $(input).val($(input).attr('changed'));
        }
    });
}
//订单流程
function re_change_quantity(rec_id, spec_id, input, orig, wholesale_price, otype,now_price){
	//alert(wholesale_price);
	if((wholesale_price=='' || wholesale_price==0) && Number(now_price)>0)
	{
		wholesale_price = now_price;
	}
	var otype_span = $('#item' + rec_id + '_otype');//优惠方式
    var subtotal_span = $('#item' + rec_id + '_subtotal');//商品小计
    var ge_amount_span = $('#integral_amount');   //积分总计
	var coupon_value = $("input[name=coupon_sn]:checked").attr("coupon_value");
	var store_discount_value = $('#store_discount_value').val();
    var total_amount=$('#order_amount');
    //暂存为局部变量，否则如果用户输入过快有可能造成前后值不一致的问题
    var _v = input.value;
    $.getJSON('index.php?app=cart&act=update&is_order_status=1&is_active='+orig+'&spec_id=' + spec_id + '&quantity=' + _v, function(result){
        if(result.done){
            //更新成功
    	    //set_order_amount($('#shipping_id').val());
            $(input).attr('changed', _v);
            subtotal_span.html('¥'+result.retval.subtotal);
            //amount_sub_span.html(result.retval.cart.amount);
            ge_amount_span.html(result.retval.store_total_integral+'点');
			goods_quantity = result.retval.cart.quantity;
			goods_amount = result.retval.amount;
			$('option[shipping_id]').each(function(){
				var _shipping_fee = get_shipping_fee($(this).attr('shipping_id'));
				var _shipping_name= $(this).attr('ectype');
				$(this).html(_shipping_name + " : "+ price_format(_shipping_fee));
			});
			//start 节省价格
			var jiesheng = wholesale_price*_v - Number(result.retval.subtotal);
			if(jiesheng>0)
			{
				if(otype!='')
				{
					otype_span.html('<option>省 '+jiesheng.toFixed(2)+'元：'+otype+'活动</option>');
				}
				else{
					otype_span.html('<option>省 '+jiesheng.toFixed(2)+'元：卖家促销</option>');
				}
			}
			//end 节省价格
			var new_shipping_fee = get_shipping_fee($('#shipping_id').val());
			var total_amount_price = Number(result.retval.cart.amount)+Number(new_shipping_fee);
			if(coupon_value){
				total_amount_price = total_amount_price - Number(coupon_value);
			}
			if(store_discount_value){
				total_amount_price = total_amount_price - Number(store_discount_value);
			}
            total_amount.html('¥'+total_amount_price);
        }
        else{
            //更新失败
            alert(result.msg);
            $(input).val($(input).attr('changed'));
        }
    });
}

/*删除订单商品*/
function re_drop_cart_item(rec_id){
    var tr = $('#cart_item_' + rec_id);
    var total_yun=$('#cart_yun').html();
    var total_amount=$('#order_amount');
    var amount_sub_span = $('#cart_amount_sub');       //商品总价
    var ge_amount_span = $('#cart_ge_amount');   //绿元总计
    var cart_goods_kinds = $('#cart_goods_kinds');
    $.getJSON('index.php?app=cart&act=drop&rec_id=' + rec_id, function(result){
        if(result.done){
            //删除成功
            if(result.retval.cart.quantity == 0){
                window.location.reload();    //刷新
            }
            else{
                tr.remove();        //移除
                total_amount.html(Number(result.retval.cart.amount)+Number(total_yun));  //刷新总费用
                amount_sub_span.html(result.retval.cart.amount);  //刷新商品总价
                ge_amount_span.html(result.retval.cart.ge_amount);//刷新绿元费用
                cart_goods_kinds.html(result.retval.cart.kinds);       //刷新商品种类
            }
        }
    });
}