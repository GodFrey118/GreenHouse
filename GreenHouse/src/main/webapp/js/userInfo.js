$('#userInfo').datagrid({
	fitColumns : true,
	url:'adm/showUserInfo',
	singleSelect : true,
	pagination:true,
	pageList:[5,10,15,20,25,30,35],
	columns : [ [ {
		field : 'c_id',
		title : '编号',
		width : 20,
		align:'center'
	}, {
		field : 'c_name',
		title : '用户名',
		width : 50,
		align:'center'
	}, {
		field : 'c_sex',
		title : '性别',
		width : 20,
		align:'center'
	}, {
		field : 'c_tel',
		title : '手机号',
		width : 50,
		align:'center'
	}, {
		field : 'c_email',
		title : '邮箱',
		width : 90,
		align:'center'
	}, {
		field : 'c_qq',
		title : 'QQ',
		width : 50,
		align:'center'
	}, {
		field : 'c_addr',
		title : '地址',
		width : 100,
		align:'center'
	}]]
});