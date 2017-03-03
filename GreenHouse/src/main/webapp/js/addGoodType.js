$("#aGoodType").form({
	url : 'adm/addGoodType',
	success:function(data){
		if(data.trim() == "true"){
			$("#aGoodType").get(0).reset();
			$("#GoodTypeInfo").datagrid("reload");//数据表格重新加载
			$.messager.show({
				title:'添加信息',
				msg:'添加成功!!!',
				showType:'show',
				style:{
					top:200,
					left:150,
				}

			});
		}else{
			$.messager.show({
				title:'添加信息',
				msg:'添加失败!!!(该商品类型已存在)',
				showType:'show',
				style:{
					top:200,
					left:150,
				}

			});
		}
	}
		
});
	

