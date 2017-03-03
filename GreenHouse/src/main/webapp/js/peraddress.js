$.post("user/getperaddress",function(data){
	$("#ididid").hide();
	alert(data.length);
	$("#idperaddress").append(
			"<table class='tbl-main' cellspacing='0' cellpadding='0' border='0'>"
		    +"<caption>已保存的有效地址"+data.length+"个</caption>"
			+"<colgroup><col class='col-man'><col class='col-area'><col class='col-address'><col class='col-postcode'><col class='col-address'><col class='col-address'></colgroup>"
			+"<tbody id='idid'><tr class='thead-tbl-grade'><th>收货人</th><th>所在地区</th><th>手机</th><th>邮编</th><th>操作</th></tr>"
			+"</tbody>"
			+"</table>")
	for(var i=0;i<data.length;i++){
		$("#idid").append(
				"<tr class='thead-tbl-address addrcurrent' addrid='50871'>"
				+"<td class='cell-align-center'>"+data[i].a_receiver+"</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp"
				+"<td class='cell-align-center'>"+data[i].a_area+"</td>"
				+"<td class='cell-align-center' >"+data[i].a_tel +" </td>"
				+"<td class='cell-align-center'>"+data[i].a_post+"</td>"
				+"<td class='cell-align-center'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp"
				+"<a href='javascript:void(0)' class='address' onclick='dropperadd("+data[i].a_id+",this);'>删除</a></td>"
				+"</tr>"
				
		)
	}
},'json');


function dropperadd(a_id,dele){
	   $.post("user/delperaddress?a_id="+a_id,function(data){
			if(data){
				alert("确定要删除？");
				$(dele).parent().parent().remove();
				
			}
	   },'json')
	   
}
			