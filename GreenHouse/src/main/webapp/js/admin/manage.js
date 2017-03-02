$("#leftSider").accordion({
	fit:true,
});

var urlJson = {"用户信息":"userInfo.jsp","店铺信息":"storeInfo.jsp","订单信息":"orderInfo.jsp","商品信息":"goodInfo.jsp","商品类型":"goodType.jsp","添加商品类型":"addGoodType.jsp"}

$(".menutree").tree({
	onClick: function(node){
		//alert(node.text);  // 当单击时弹出节点的文本值
		var nt = node.text;
		if($('#main').tabs('exists',nt)){  //判断面板是否存在
			//打开显示为当前面板 
			$('#main').tabs('select',nt);
		}else{
			alert(1);
			//添加面板 
			if(urlJson[nt]){
				$('#main').tabs('add',{
				    title:nt,
				    href:"page/" + urlJson[nt],
				    closable:true,
				});
			}else{
				$('#main').tabs('add',{
				    title:nt,
				    content:'<h1>' + nt + '</h1>',
				    closable:true,
				});
			}
		}
	}
});
