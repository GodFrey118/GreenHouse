$('#orderList').datagrid({    
    url:'adm/orderlist', 
	fitColumns:true,
	pagination:true,
	singleSelect:true,
	pageList:[5,10,15,20,25,30,35],
	columns : [ [ {
		field : 'o_id',
		title : '订单编号',
		width : 60,
		align : 'center'
	}, {
		field : 'o_ordertime',
		title : '下单时间',
		width : 100,
		align : 'center'
	}, {
		field : 'c_name',
		title : '买家',
		width : 80,
		align : 'center'
	}, {
		field : 'c_tel',
		title : '买家电话',
		width : 80,
		align : 'center'
	}, {
		field : 's_name',
		title : '店铺名',
		width : 80,
		align : 'center'
	}, {
		field : 's_company',
		title : '所属公司',
		width : 100,
		align : 'center'
	}, {
		field : 's_tel',
		title : '卖家电话',
		width : 100,
		align : 'center'
		
	},{
		field : 'g_name',
		title : '商品名称',
		width : 60,
		align : 'center'
		
	},{
		field : 'g_price',
		title : '商品价格',
		width : 100,
		align : 'center'
		
	},{
		field : 'o_amount',
		title : '数量',
		width : 80,
		align : 'center'
		
	},{
		field : 'o_sum',
		title : '总价',
		width : 150,
		align : 'center'
		
	},{
		field : 'g_type',
		title : '商品类型',
		width : 100,
		align : 'center'
		
	},{
		field : 'o_state',
		title : '订单状态',
		width : 100,
		align : 'center'
		
	}, {
		field : ' handle',
		title : '操作',
		width : 150,
		align : 'center',
		formatter: function(value,row,index){
			var oprStr ='<a class="modifyBtn" href="javascript:void(0)" onclick="openUpdate('+ row.o_id +')">查看详情</a>'+ 
			'<script>$(".modifyBtn").linkbutton({iconCls: "icon-edit"})</script>'
			return oprStr;
		}
	}, ] ]
});
function openUpdate(id){
	parent.openDT(id);
	
}
function openDT(id){
	$("#orderdetail").dialog({
		title:'Order',
		width:300,
		height:400,
		modal:true,
		href:'page/orderdetail.jsp',
	});
}

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
/*
function openUpdate(s_id){
	//var row = $('#userList').datagrid('getRows')[index];
		   $.get("adm/storeApply?s_id=" + s_id ,function(data){
			   if(data){
					$('#storeList').datagrid("reload");
					//$(".modifyBtn").linkbutton("disable");
				}
			   $.messager.show({
					title : '修改商店状态',
					msg : data ? "修改成功..." : "修改失败！！！",
					showType : 'show',
					style : {
						top : document.body.scrollTop
								+ document.documentElement.scrollTop + 40,
					}
				});
		   },"json");
}*/
function chgpic(obj){
	$("#pic").attr("src",window.URL.createObjectURL(obj.files[0]));
}
