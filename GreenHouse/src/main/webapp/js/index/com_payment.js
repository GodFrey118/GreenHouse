/*
var nidParam = location.href.substring(location.href.indexOf("?"));
alert(nidParam);
Param=location.href.substring(location.href.indexOf("="));
var param=[];
param =(Param.substr(1 , Param.length)).split("=");*/
//var nidParam = $("#money").text().substring($("#money").text().indexOf("￥"));
 
 var money =   $("#money").text().substr(1, $("#money").text().length);

 $.post("user/selectmoney",function(data){
	   
		$("#money_1").html(data.money);
	},"json")

//$("#goto_pay1").attr("action","user/money_1?money="+(data.money-money));
 
