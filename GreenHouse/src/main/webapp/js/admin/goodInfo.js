$('#goodList').datagrid({    
    url:'adm/showGoodInfo', 
	fitColumns:true,
	pagination:true,
	singleSelect:true,
	pageList:[5,10,15,20,25,30,35],
	columns : [ [ {
		field : 'g_id',
		title : '商品编号',
		width : 50,
		align : 'center'
	}, {
		field : 's_id',
		title : '商店编号',
		width : 100,
		align : 'center'
	}, {
		field : 'g_name',
		title : '商品名称',
		width : 70,
		align : 'center'
	}, {
		field : 'gt_id',
		title : '商品大类型',
		width : 50,
		align : 'center'
	}, {
		field : 'g_price',
		title : '商品价格',
		width : 100,
		align : 'center'
	}, {
		field : 'g_stock',
		title : '商品库存',
		width : 100,
		align : 'center'
	}, {
		field : 'g_type',
		title : '商品小类型',
		width : 100,
		align : 'center'
		
	},{
		field : 'g_state',
		title : '状态',
		width : 100,
		align : 'center'
		
	}, {
		field : 'g_pic',
		title : '商品图片',
		width : 100,
		align : 'center',
		formatter: function(value,row,index){
			if(value == null){
				return "<img width='100' src='images/4.5.1b.jpg' />";
			}else{
				return "<img width='100' src='" + value + "' />";
			}
		}
	}, ] ]
});


$('#modifyDiv').dialog({
	title:"用户修改",
	closed: false
	
});

$('#modifyDiv').dialog('close');

/*$('#modifyForm').form({
	    url:'user/modify',    	   
	    success:function(data){
	    	if(data==""){
	    		$.messager.alert('用户修改','当前用户没有修改用户的权限！','warning');
	    		$('#modifyDiv').dialog('close');
	    		return;
	    	}
	    	if(data.trim() == "true"){
	    		$('#modifyDiv').dialog('close');//关闭修改框
	    		$('#userList').datagrid("reload");//刷新修改数据
	    	}else{
	    		$.messager.show({
	    			title:'修改信息',
	    			msg:'修改失败！',
	    			showType:'show',
	    			style:{
	    					top:document.body.scrollTop+document.documentElement.scrollTop,
	    				}
	    		});
	    	}
	    }    
});*/

$('.closeBth').linkbutton({    
    iconCls: 'icon-cancel' ,
    onClick:function(){
    	$('#modifyDiv').dialog('close');
    }
});

/*$('.updateBth').linkbutton({    
    iconCls: 'icon-ok' ,
    onClick:function(){
    	$('#modifyForm').submit();
    }
});*/

/*function openUpdate(index){
	$('#modifyDiv').dialog('open');
	var row = $('#userList').datagrid('getRows')[index];
	$("#id").val(row.id);
	$("#name").val(row.name);
	$("#birthday").val(row.birthday);
	$("#gender").val(row.gender);
	$("#career").val(row.career);
	$("#address").val(row.address);
	$("#mobile").val(row.mobile);
	if(row.picpath){
		$("#pic").attr("src",row.picpath);
	}
}*/
function chgpic(obj){
	$("#pic").attr("src",window.URL.createObjectURL(obj.files[0]));
}
