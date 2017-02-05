var ClientMode = false;
//var gid = "108532";
window.__embed_config = {};
__embed_config.bindUserId = "";
__embed_config.Config = {
	Version: "2.2.0.11",
	ServiceUrl: "http://115.238.245.5/SShanIM",
	ResPath: "CurrentVersion"
};
var user_name = '';
var nickname = '';
var shost = window.location.host;

$.ajax({
    url:"http://"+shost+"/index.php?app=goods&act=ajax_get_im_info&jsoncallback=?",
    dataType:"json",
    success:function(data){
        if(data.done){
        	  user_name=data.retval.user_name;
        	  nickname=data.retval.nick_name;
        	  __embed_config.Config.ServiceUrl=data.retval.sshan_im;
        }
    }
});
__embed_config.Format = function(fmt)
{
	var params = arguments;
	var pattern = /{{|{[1-9][0-9]*}|\x7B0\x7D/g;
	return fmt.replace(
		pattern,
		function(p)
		{
			if (p == "{{") return "{";
			return params[parseInt(p.substr(1, p.length - 2), 10) + 1]
		}
	);
}
window.StartChat = function(peer,goods_id, type,showtype)
{
	if (typeof(showtype) == "undefined"){
		showtype=1;
	}else {
		showtype=1;
	}
	
	var url = __embed_config.Format(
		__embed_config.Config.ServiceUrl + "/CustomService.aspx?Peer={0}&Source={1}&Name={3}&Nickname={4}&random={2}&RequestType={5}&showtype={6}",
		escape(peer),
		goods_id,
		(new Date()).getTime(),
		escape(user_name),
		escape(nickname),
		type,
		showtype
	);

	var __SShanIM_desktop = open(
		url, "__SShanIM_desktop",
		__embed_config.Format("left={0}, top={1}, height=500, width=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes,location=no, status=no", (window.screen.availWidth - 10 - 700) / 2, (window.screen.availHeight - 30 - 500) / 2)
	);
	__SShanIM_desktop.blur();
	__SShanIM_desktop.focus();
	window.blur();
}