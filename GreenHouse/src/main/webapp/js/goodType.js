$('#goodType').datagrid({
	fitColumns : true,
	url:'adm/showGoodType',
	singleSelect : true,
	pagination:true,
	pageList:[5,10,15,20,25,30,35],
	columns : [ [ {
		field : 'gt_id',
		title : '商品类型编号',
		width : 200,
		align:'center'
	}, {
		field : 'gt_name',
		title : '商品类型',
		width : 200,
		align:'center'
	}]]
});