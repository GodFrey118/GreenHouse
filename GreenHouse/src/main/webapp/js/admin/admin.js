$("#leftSider").accordion({
	fit:true,
});
var urlJson={"用户信息":"userInfo.jsp","店铺信息":"storeInfo.jsp","商品信息":"goodInfo.jsp","订单信息":"orderInfo.jsp","商品类型":"goodTypeInfo.jsp","添加商品类型":"addGoodType.jsp"};
$(".menutree").tree({
		onClick: function(node){
			var nt=node.text;
			if($('#main').tabs('exists',nt)){//判断面板是否存在
				//打开显示为当前面板
				$('#main').tabs('select',nt);
			}else{
				//添加面板
				if(urlJson[nt]){
					$('#main').tabs('add',{    
					    title:nt,    
					    href:"page/"+urlJson[nt],   
					    closable:true,
					}); 
				}else{
					$('#main').tabs('add',{    
					    title:nt,    
					    content:"<h1>"+nt+"</h1>",    
					    closable:true,
					}); 
				}				
			}			
		}
});
$("#main").tabs({
	fit:true,
});
var cnid;
var tid;
function openDN(id){
	cnid=id;
	$("#storeInfo").dialog({
		title:'storeInfo',
		width:600,
		height:300,
		left:10,
		modal:true,
		href:'page/storeInfo.jsp'
	});
}
function openMN(id){
	cnid=id;
	$("#userInfo").dialog({
		title:'userInfo',
		width:600,
		height:300,
		left:10,
		href:'page/userInfo.jsp'
	});

}

function closeMN(){
	$("#userInfo").dialog("close",true);
}

//标题信息
function openAT(id){
	tid=id;
	$("#goodInfo").dialog({
		title:'goodInfo',
		width:800,
		height:300,
		left:10,
		modal:true,
		href:'page/goodInfo.jsp'
	});
}

function openMT(id){
	tid=id;
	$("#orderInfo").dialog({
		title:'orderInfo',
		width:600,
		height:300,
		left:10,
		href:'page/orderInfo.jsp'
	});

}

function closeMT(){
	$("#orderInfo").dialog("close",true);
}

function openGT(id){
	tid=id;
	$("#goodTypeInfo").dialog({
		title:'goodTypeInfo',
		width:600,
		height:300,
		left:10,
		href:'page/goodTypeInfo.jsp'
	});
}

function openAT(id){
	tid=id;
	$("#addGoodType").dialog({
		title:'addGoodType',
		width:600,
		height:300,
		left:10,
		href:'page/addGoodType.jsp'
	});

}

