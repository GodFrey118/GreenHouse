$(function(){
   	var _url=window.location.href;
	if(/app/.test(_url) && !/app=default/.test(_url)){
	$(".nav_allpro").mouseover(function(){
		$("#mallCate-bd").css('display','block');
		$("#_cate_xialaico").attr('class','cate_xialaico2');
	}).mouseout(function(){
		$("#_cate_xialaico").attr('class','cate_xialaico');
		$("#mallCate-bd").css('display','none');
		});
	}
	
	if($(window).scrollTop() > 50){
			$(".ScrollTopBtn").show();
	}
	$(window).scroll(function(){
		if($(this).scrollTop() > 50){
			$(".ScrollTopBtn").show();
		}else{
			$(".ScrollTopBtn").hide();
		}
	});
	//活动跟屏
    if($(window).scrollTop() > 500){
			$(".fixed-bottom_0327").show();
	}
	$(window).scroll(function(){
		if($(this).scrollTop() > 500){
			$(".fixed-bottom_0327").show();
		}else{
			$(".fixed-bottom_0327").hide();
		}
	});
	
});

function AddFavorite(sURL, sTitle) { 
    try { 
        window.external.addFavorite(sURL, sTitle); 
    } catch (e) { 
        try { 
            window.sidebar.addPanel(sTitle, sURL, ""); 
        } catch (e) { 
            alert("加入收藏失败，请使用Ctrl+D进行添加"); 
        } 
    } 
}

function drop_cart_item_h(store_id, rec_id){
    var tr = $('#cart_item_' + rec_id);
    var li = $('#cart_item_h'+ rec_id)
    var amount_span = $('#cart' + store_id + '_amount');
    var cart_goods_kinds = $('#cart_goods_kinds');
    $.getJSON('index.php?app=cart&act=drop&rec_id=' + rec_id, function(result){
        if(result.done){
            //删除成功
            if(result.retval.cart.quantity == 0){
                window.location.reload();    //刷新
            }
            else{
                tr.remove(); 
                li.remove();
                //移除
                amount_span.html(price_format(result.retval.amount));  //刷新总费用
                cart_goods_kinds.html(result.retval.cart.kinds);       //刷新商品种类
                window.location.reload();    //刷新
            }
        }
    });
}