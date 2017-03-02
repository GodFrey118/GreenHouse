var nidParam = location.href.substring(location.href.indexOf("?"));
$.post("store/goodinfo" + nidParam, function(data) {
	var price = parseFloat(data.g_price).toFixed(2);
	$("#GoodsName").html(data.g_name);
	$("#price").html(price);
	$("#goodname").html(data.g_name);
});



