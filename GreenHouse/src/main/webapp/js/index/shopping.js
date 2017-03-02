	var total=0;
	var boxnum = 0;
$.post("user/cartNum",function(data){
			  for(var i=0;i<data.length;i++){
				  for(var j=0;j<data[i].goods.length;j++){
					  $("#shopping").append(
								"<tbody id='del"+i+"'><tr class='shop'>"
								+"<td colspan='2'>"
								+"<span class='seller'> <span>店铺：</span><a href='index_store.jsp?s_id='"+(data[i].goods)[j].s_id+">佳克来</a>"
								+"<span class='sstalking-11' style='display: inline-block;' title='点击这里给我发消息'></span></span></td>"
								+"<td colspan='6' class='promo-info'>"
								+"<div class='scrolling-container'>"
								+"<ul class='scrolling-promo-hint' id='J_ScrollingPromoHint_1898538'></ul></div></td></tr></tbody>"
								
								+"<tbody class='J_ItemBody'><tr class='selected record_list' id='cart_item_177493'>"
								+"<td class='s-chk'><input type='checkbox' checked='checked' rec_id='177493' class='ck_item_1898538' name='sc_id' id='sc_id' value='"+ data[i].sc_id +"'></td>"
								+"<td class='s-title'>"
								+"<div style='width: 250px; height: 70px; position: relative;'>"
								+"<a href='#' target='_blank'> <img src='./shopping_files/small_201610201737159391.jpg' alt='丽水山耕 锥栗200g' class='itempic '></a>"
								+"<div class='lookb'>"
								+"<a href='javascript:preview_theme('data/files/store_1898538/goods_35/small_201610201737159391.jpg');'>查看大图</a></div>"
								+"<a href='#' target='_blank'>" + (data[i].goods)[j].g_name + "</a><br> <span>规格:" + (data[i].goods)[j].g_name + " </span>"
								+"<div class='xb'>"
								+"<span>保障: </span> <a class='xb-' target='_blank' href='#'></a></div></div></td>"
								+"<td class='s-point'><em><span id='item177493_goods_integral' tag='22'>22</span></em></td>"
								+"<td class='s-price '><del>¥40.00</del><em id='price'>¥" + parseFloat((data[i].goods)[j].g_price).toFixed(2) + "</em><span>省¥18.00元</span></td>"
								+"<td class='s-amount '><img src='./shopping_files/subtract.gif' onClick='decrease("+i+","+data[i].g_id+");' width='12' height='12'><input id='a"+i+"' value='"+ data[i].sc_goodNum +"' onfocus='chkNum("+i+",this,"+data[i].g_id+")' onblur='chkvalue("+i+",this,"+data[i].g_id+")' class='text1 width3' type='text'/>"
								+"<img src='./shopping_files/adding.gif' onClick='add("+i+","+ data[i].sc_goodNum +","+data[i].g_id+");' width='12' height='12'></td>"
								+"<td class='s-agio'><span id='discountList_177493'>"
								+"<span class='m-promo-item'> <a href='javascript:viod(0)' active='卖家促销' ever_dif='18' title='省18元：卖家促销...'><img src='./shopping_files/cuxiao.png'></a></span>"
								+"</span></td>"
								+"<td id='"+ data[i].sc_id +"' class='s-total'><span class='price2' id='"+i+"' tag='22'>¥" + parseFloat((((data[i].goods)[j].g_price) * (data[i].sc_goodNum) )).toFixed(2)  + "</span></td>"
								+"<td class='s-del'><a class='fav' href='javascript:;' onclick='move_favorite(1898538, 177493, 49951);'>"
								+"<font color='#000000'>收藏</font></a> <a class='del' href='javascript:void(0);' onclick='drop_cart("+data[i].sc_id+","+i+",this);'>"
								+"<font color='#000000'>删除</font></a></td>"
								+"</tr></tbody>");
					  
				  }
				  
				  total= total + parseFloat(($("#"+i).text()).substr(1, ($("#"+i).text()).length));
			  }
			  
			  $("#cart_amount").html("￥"+parseFloat(total).toFixed(2));
		  
	},'json');


 
	
	
   function	drop_cart(sc_id,i,dele){
	   $.post("user/delCartGood?sc_id="+sc_id,function(data){
			if(data){
				alert("确定要删除？");
				var price_1=parseFloat(($("#"+i).text()).substr(1, ($("#"+i).text()).length));
				//alert(price_1);
				var total_2 = parseFloat(parseFloat(($("#cart_amount").text()).substr(1, ($("#cart_amount").text()).length))-price_1).toFixed(2);
				//alert($("#cart_amount").text());
				$("#cart_amount").html("￥"+total_2);
				$("#del"+i).remove();
				$(dele).parent().parent().remove();
				//$("#cart_amount").html("￥0.00");
				
				
			}
			
		},"json");
   }
	
	
	var a=0;
	var b=0.00;
	function decrease(i,g_id){
		var sc_goodNum=$("#a"+i).val();
		a=sc_goodNum-1;
		if(sc_goodNum>1){
		$("#a"+i).val(a);
		$.post("user/goodNum?g_id="+g_id+"&sc_goodNum="+(a),function(data){
			if(data){
				var single_price=parseFloat(($("#price").text()).substr(1, ($("#price").text()).length));
				var total_price=parseFloat((a)*single_price).toFixed(2);
				$("#"+i).html("￥"+total_price);
				b=parseFloat(($("#cart_amount").text()).substr(1, ($("#cart_amount").text()).length)-single_price).toFixed(2);
				$("#cart_amount").html("￥"+b);
			}
		},"json");
		
		}
	}
	
	
	function add(i,sc_goodNum,g_id){
		var sc_goodNum=$("#a"+i).val();
		a=parseInt(sc_goodNum)+1;
		$("#a"+i).val(a);
		$.post("user/goodNum?g_id="+g_id+"&sc_goodNum="+(a),function(data){
			if(data){
				var single_price=parseFloat(($("#price").text()).substr(1, ($("#price").text()).length));
				alert(single_price+"单价");
				var total_price=parseFloat((a)*single_price).toFixed(2);
				alert(total_price+"总价");
				$("#"+i).html("￥"+total_price);
				var s =parseFloat(parseInt(($("#cart_amount").text()).substr(1, ($("#cart_amount").text()).length)) + parseInt(single_price)).toFixed(2) ;
				alert(s);
				$("#cart_amount").html("￥"+s);
			}
		},"json");
		
	}
	 
	var num=0;
	var total_price1=0;
	
	  function chkNum(i){
		  num= $("#a"+i).val()
		  var single_price=parseFloat(($("#price").text()).substr(1, ($("#price").text()).length));
		  total_price1=parseFloat(($("#a"+i).val())*single_price).toFixed(2);
		
	   }
	  
	
	 function chkvalue(j,num,g_id){
		 if($("#a"+j).val()>1){
		 $.post("user/goodNum?g_id="+g_id+"&sc_goodNum="+($("#a"+j).val()),function(data){
			 if(data){
		 var single_price=parseFloat(($("#price").text()).substr(1, ($("#price").text()).length));
		 var total_price=parseFloat(($("#a"+j).val())*single_price).toFixed(2);
		 alert(total_price +"小计价" + total_price1);
		 $("#"+j).html("￥"+ total_price );
		 var f = (parseInt(total_price)-parseInt(total_price1));
		 alert(f);
		 var s =parseFloat(parseInt(($("#cart_amount").text()).substr(1, ($("#cart_amount").text()).length)) + (parseInt(total_price)-parseInt(total_price1))).toFixed(2);
		 $("#cart_amount").html("￥"+s);
			 }
		 },"json");
		 
		 }
	}

	 
	 var obj=$(".s-chk input").val();
	 alert(obj + "--");
	 var h =  $("#cart_amount").text();
	 $(document).ready(function () {
		// alert(obj + "0");
		  //getAllPrice();
		    $("#checkAll").click(function () {
		        if(this.checked ==  true){
		            $('[type=checkbox]').prop('checked', true);
		           
		           // $("#cart_amount").html(h);
		            //alert("ss" + total);
		        }
		        if(this.checked == false){
		            $('[type=checkbox]').prop('checked', false);
		           // alert("bb");
		        }
		        getAllPrice();
		    });
		    
		    $(".s-chk input").click(function () {
		        //总的checkbox的个数
		        var len =   $(".s-chk input").length;
		        //alert(len + "总个数");
		        //已选中的checkbox的个数
		        var checkedLen  =   $("input[type='checkbox'][name='sc_id']:checked").length;
		        //alert(len + "已选中");
		        if(parseInt(len)==(parseInt(checkedLen)+1)){
		            $('#checkAll').prop('checked', true);
		            //alert("dasd");
		        
		        }else{
		        	//alert("gg");
		            $('#checkAll').prop('checked', false);
		            $("#cart_amount").html("￥0.00");
		        }
		       
		        getAllPrice()
		    });


		});
	
		function getAllPrice() {
			
		    var s =  0;
		    var id;
		    $("input[type='checkbox'][name='sc_id']").each(function () {
		    	
		    	
		        if(this.checked == true){
		            id  = $(this).val();
		            s=s+ parseInt(($("#"+ id +" span").text()).substr(1, ($("#"+ id +" span").text()).length));
                    $("#cart_amount").html("￥"+s);
		        }else{
		        	
		        	$("#cart_amount").html("￥"+s);
		        }
		    });
		   
		}
		
	function sub_order(){
		var chk_value =[];
		$('input[name="sc_id"]:checked').each(function(){
		chk_value.push($(this).val());
		}); 
		//alert(chk_value);
		var str = chk_value;
		//alert(str);
		window.location.href='Confirm_order.jsp?sc_all_id='+str;
		//location.href="Confirm_order.jsp?sc_id=
		//循环取出值
		/*for(var i=0;i<chk_value.length;i++){
			$("user/checkout?sc_id="+chk_value[i],function(data){
				alert(data);
			},'json');
		}*/
		//发送请求修改购物车物品状态，形成订单
		//跳转页面，到确认信息页面，发送请求查询订单（如果不想买了，可以取消，在已购买的物品页面可以查询的到订单，状态未付款）
		//将数据返回页面
		
		//填写地址
		//保存地址
		
		//点击付款跳转到付款页面，（如果不想买了，可以取消，在已购买的物品页面可以查询的到订单，状态未付款）
		//付款后返回到
		
		
		
	}
		