function changevocde(){
	$("#captcha_img").attr("src", "vcode.jpg?" + new  Date().getTime());
}

$("#user_name").blur(function(){
	var str =$("#user_name").val();
		$.get("user/checkname?c_name="+str,function(data){
			if(data == false){
				$("#user_succeed").addClass("error");
				$("#user_succeed").html("用户名可用");
			}else{
				$("#user_succeed").addClass("error");
				$("#user_succeed").html("用户名已被占用");
			}
		},"json");
	
});