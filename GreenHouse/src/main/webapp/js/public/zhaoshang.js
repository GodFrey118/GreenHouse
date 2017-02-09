// JavaScript Document
$(document).ready(function(e) {
    $(".flow-Q a").click(function(){
		if($(this).html()=="查看"){
			$(this).html("收起");
			$(this).parent("h2").next("p").css("display","block");
			}else{
			$(this).html("查看");
			$(this).parent("h2").next("p").css("display","none");
				}
		});
	$(".standard-part4 li").hover(	    
	    function(){
			var indexi=".standard-part4-"+$(this).index();
			$(".standard-part4 li").attr("id","")
			$(this).attr("id","standard-this")
			$(".standard-part4-main ul").hide();
			$(indexi).show();
			},
		function(){}
	)
	
	$(".dataup-file input").change(function(){
		$(".dataup-file em").text($(this).val())
		})
	$(".dataup-listadd").click(function(){
		var datauplist="<div class='dataup-list'><span>*</span><div class='dataup-file'><input name='' type='file'><em>有机认证/绿色认证等</em></div>图片大小不能超过3M</div>"
		var numberi=$(this).parent("dd").find(".dataup-list").length;
		if(numberi<5){$(this).before(datauplist)}else{alert("您最多可上传5张证件")}
		});  
	
});