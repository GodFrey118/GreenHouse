$('#profile_form').form({
	url : "user/perinfo",
	success : function(data) {
		if(data.trim()=="true"){
			location.replace("page/list.jsp");
		}else{
			$.messager.show({
				title:'登陆信息',
				msg:'登陆失败,你输入的用户编号和用户名不匹配,请重新输入...',
				showType:'show',
				style:{
					top:document.body.scrollTop+document.documentElement.scrollTop,
				}

			});

		}
	}
});