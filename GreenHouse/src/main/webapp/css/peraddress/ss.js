$(function(){
    $("#keyword_form").submit(function(){
  	  var sgk = $("#keyword").attr("value");
  	  if(sgk != gods_hot){
  		  $("#keyword").attr("value", sgk);
  	  }else{
  		  if(gd_hk_url){
  			  window.location.href = gd_hk_url;
  			  return false;
  		  }else{
  			  $("#keyword").attr("value", gd_hk);
  		  }
  	  }
    });
    
	  /* 搜索框 */
      $(".sSearch-con-input").focus(function(){
    	 if(gods_hot == $(this).val()){
    		 $(this).attr("value", "");
    	 }
	  }).blur(function(){
		 if($(this).val() =='')
		 {
			 $(this).attr("value", gods_hot);
		 }
	  });
      
});

function addBookmark(){
    var title = '山山商城';
    var url = 'http://www.shanshan360.com/';
    if(confirm("网站名称："+title+"\n网址："+url+"\n确定添加收藏?")){
      var ua = navigator.userAgent.toLowerCase();
      if(ua.indexOf("msie 8")>-1){
          external.AddToFavoritesBar(url,title,'');//IE8
      }else{
          try {
              window.external.addFavorite(url, title);
          } catch(e) {
              try {
                  window.sidebar.addPanel(title, url, "");//firefox
              } catch(e) {
                  alert("加入收藏失败，请使用Ctrl+D进行添加");
              }
          }
      }
  }
  return false;
}

/* 底部微信关注 */ 
function weixin(param)
{
	$('.mbb-weixin').css('visibility',param);
}