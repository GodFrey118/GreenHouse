$(document).ready(function(){

	//页面中的DOM已经装载完成时，执行的代码
	$(".change").click(function(){
		//找到主菜单项对应的子菜单项
		var ulNode = $(this).parent("dt").next("dd");
		ulNode.slideToggle();
		changeIcon($(this));
	});

});

/**
 * 修改主菜单的指示图标
 */
 
 function changeIcon(mainNode) {
	 if(mainNode.attr("class") =="change expanded_ico"){
		    mainNode.attr("class",'change collapsed_ico');
		 }else if(mainNode.attr("class") =='change collapsed_ico'){
			  mainNode.attr("class",'change expanded_ico');
			 }
	
}
 
 /**
 * 鼠过经过变背景颜色
 */
$(document).ready(function(){
	$(".mntitle").mouseover(function(){
		//alert('AS');
		 $(this).css("background","#fff");
  });
  $(".mntitle").mouseout(function(){
		//alert('AS');
		 $(this).css("background","#E7F7E5");
  });
});
