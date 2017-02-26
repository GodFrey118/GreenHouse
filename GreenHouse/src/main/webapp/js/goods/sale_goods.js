$.get("user/getSid",function(data){
	$("#outer-id").val(data);
},"json")
$.get("user/get_gt_name",function(data){
	//alert(data.length);
	for(var i=0;i<data.length;i++){
		//alert(data[i]);
		$("#gt_name").append("<option value=''>"+data[i]+"</option>");
	}
},"json")
function chgpic(obj){
	$("#g_pic").attr("src",window.URL.createObjectURL(obj.files[0]));
}

$("#openid").form({
	url:"user/insertGood",
	Success:function(data){
		alert(data);
	}
});