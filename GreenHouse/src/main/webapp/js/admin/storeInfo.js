$('#storeList').datagrid({    
    url:'adm/showStoreInfo', 
	fitColumns:true,
	pagination:true,
	singleSelect:true,
	pageList:[5,10,15,20,25,30,35],
	columns : [ [ {
		field : 's_id',
		title : '店铺编号',
		width : 60,
		align : 'center'
	}, {
		field : 'st_id',
		title : '店铺类型编号',
		width : 100,
		align : 'center'
	}, {
		field : 'c_id',
		title : '用户编号',
		width : 80,
		align : 'center'
	}, {
		field : 's_ownerName',
		title : '店主姓名',
		width : 80,
		align : 'center'
	}, {
		field : 's_ID_card',
		title : '身份证号',
		width : 190,
		align : 'center'
	}, {
		field : 's_name',
		title : '店铺名称',
		width : 100,
		align : 'center'
	}, {
		field : 's_company',
		title : '公司名称',
		width : 100,
		align : 'center'
		
	},{
		field : 's_area',
		title : '所在地区',
		width : 60,
		align : 'center'
		
	},{
		field : 's_detail_Addr',
		title : '详细地址',
		width : 100,
		align : 'center'
		
	},{
		field : 's_post',
		title : '邮政编码',
		width : 80,
		align : 'center'
		
	},{
		field : 's_tel',
		title : '电话',
		width : 150,
		align : 'center'
		
	},{
		field : 's_state',
		title : '状态',
		width : 100,
		align : 'center'
		
	}, {
		field : ' handle',
		title : '操作',
		width : 150,
		align : 'center',
		formatter: function(value,row,index){
			var oprStr ='<a class="modifyBtn" href="javascript:void(0)" onclick="openUpdate('+ row.s_id +')">同意申请</a>'+ 
			'<script>$(".modifyBtn").linkbutton({iconCls: "icon-edit"})</script>'
			return oprStr;
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
}
function chgpic(obj){
	$("#pic").attr("src",window.URL.createObjectURL(obj.files[0]));
}
