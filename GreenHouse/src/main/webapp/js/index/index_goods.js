$.ajax({  
	  url: 'store/goodssaInfo' ,  
	  type: 'POST',  
	  data: 'json',  
	  async: false,  
	  cache: false,  
	  contentType: false,  
	  processData: false,  
	  success: function (data) {  
		 $("#goodInfos").empty();
		 for(var i=0; i<data.length; i++){
			 var price = parseFloat(data[i].g_price).toFixed(2);
			 if(i%3==1){
				  $("#goodInfos").append("<div class='ss_model_cntPart1  ss_model_noBor'>"
							+"<a href='goods.jsp?g_id="+data[i].g_id+"' target='_blank'><img src='"+data[i].g_pic+"' alt='"+data[i].g_name+"' width='305' height='305'></a>"
							+"<div class='ss_model_goodsTit'>"
							+"	<a href='goods.jsp?g_id="+data[i].g_id+"' class='goodsList_1'  target='_blank'>"+data[i].g_name+"</a>"
							+"</div>"
							+"<p class='ss_model_p00'>"
							+"	近30天已销售<span>0</span>笔<span class='ss_model_spanPrice'>¥"+price+"</span>"
							+"</p>"
							+"</div>");
				 }else{
				 var price = parseFloat(data[i].g_price).toFixed(2);
			     $("#goodInfos").append("<div class='ss_model_cntPart1  '>"
						+"<a href='goods.jsp?g_id="+data[i].g_id+"' target='_blank'><img src='"+data[i].g_pic+"' alt='"+data[i].g_name+"' width='305' height='305'></a>"
						+"<div class='ss_model_goodsTit'>"
						+"	<a href='goods.jsp?g_id="+data[i].g_id+"' class='goodsList_1'  target='_blank'>"+data[i].g_name+"</a>"
						+"</div>"
						+"<p class='ss_model_p00'>"
						+"	近30天已销售<span>0</span>笔<span class='ss_model_spanPrice'>¥"+price+"</span>"
						+"</p>"
						+"</div>");
				 }
				
			 }
	  }
	  
});