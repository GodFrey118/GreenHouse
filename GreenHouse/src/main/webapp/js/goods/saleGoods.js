$.get("user/getSid",function(data){
	$("#outer-id").val(data);
},"json");
$.get("user/get_gt_name",function(data){
	//alert(data.length);
	for(var i=0;i<data.length;i++){
		//alert(data[i]);
		$("#gt_id").append('<option value="'+data[i].gt_id+'">'+data[i].gt_name+'</option>');
	}
},"json");
function chgpic(obj){
	$("#g_pic").attr("src",window.URL.createObjectURL(obj.files[0]));
};

/*$("#openid").form({
	url:"user/insertGood",
	success:function(data){
		alert(data);
	}
});*/
$('#tijiao1').linkbutton({    
    onClick:function(){
    	$('#form3').submit();
    }
});
$('#form3').form({
    url:'user/insertGood',    	   
    success:function(data){
    	if(data){
    		alert("商品上传成功！")
    	}else{
    		$.messager.show({
    			title:'商品上传',
    			msg:'上传失败,请重新检查!',
    			showType:'show',
    			style:{
    					top:document.body.scrollTop+document.documentElement.scrollTop,
    				}
    		});
    	}
    }    
});

