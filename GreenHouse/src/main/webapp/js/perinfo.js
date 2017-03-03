$("#c_name").blur(function(){
	var str =$("#c_name").val();
		$.get("user/changename?c_name="+str,function(data){
			if(data == false){
				$("#changename").addClass("error");
				$("#changename").html("用户名可用");
			}else{
				$("#changename").addClass("error");
				$("#changename").html("用户名已被占用");
			}
		},"json");
	
});

$("#c_email").blur(function(){
	var email =$("#c_email").val();
	var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	if (!myreg.test(email)) {
		 $("#changeemail").addClass("error");
		 $("#changeemail").html("请输入有效的E_mail");
	}else{
		$.get("user/changeemail?c_email="+email,function(data){
			if(data == false){
				$("#changeemail").addClass("error");
				$("#changeemail").html("该邮箱可用");
			}else{
				$("#changeemail").addClass("error");
				$("#changeemail").html("邮箱已被占用");
			}
		},"json");
	}
});

$("#c_tel").blur(function(){
	var tel =$("#c_tel").val();
	var mytel = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
	if(!mytel.test(tel)) { 
		$("#changetel").addClass("error");
		$("#changetel").html("请输入有效的手机号码！"); 
	} else{
		alert(tel);
		$.get("user/changetel?c_tel="+tel,function(data){
			if(data == false){
				$("#changetel").addClass("error");
				$("#changetel").html("该手机号可用");
			}else{
				$("#changetel").addClass("error");
				$("#changetel").html("手机号已被占用");
			}
		},"json");
	}
		
	
});
