
(function($){$.fn.imglazyload=function(options){var o=$.extend({attr:'lazy-src',container:window,event:'scroll',fadeIn:false,threshold:0,vertical:true,loadScript:false},options),event=o.event,vertical=o.vertical,container=$(o.container),threshold=o.threshold,isLoadScript=o.loadScript,elems=$.makeArray($(this)),dataName='imglazyload_offset',OFFSET=vertical?'top':'left',SCROLL=vertical?'scrollTop':'scrollLeft',winSize=vertical?container.height():container.width(),scrollCoord=container[SCROLL](),docSize=winSize+scrollCoord,loadQueue=[];var queue=function(data){loadQueue.push(data);if(loadQueue[0]!=='runing'){dequeue();}};var dequeue=function(){var fn=loadQueue.shift();if(fn==='runing'){fn=loadQueue.shift();}
if(fn){loadQueue.unshift('runing');fn();}};var loadScript=function(elem){var url=elem.value.match(/src="([\s\S]*?)"/i)[1],parent=elem.parentNode,docWrite=document.write,script=document.createElement('script'),head=document.head||document.getElementsByTagName('head')[0]||document.documentElement;document.write=function(text){parent.innerHTML=text;};script.type='text/javascript';script.src=url;script.onerror=script.onload=script.onreadystatechange=function(e){e=e||window.event;if(!script.readyState||/loaded|complete/.test(script.readyState)||e==='error'){document.write=docWrite;head.removeChild(script);head=parent=elem=script=script.onerror=script.onload=script.onreadystatechange=null;dequeue();}}
head.insertBefore(script,head.firstChild);};var trigger={init:function(coord){return coord>=scrollCoord&&coord<=(docSize+threshold);},scroll:function(coord){var scrollCoord=container[SCROLL]();return coord>=scrollCoord&&coord<=(winSize+scrollCoord+threshold);},resize:function(coord){var scrollCoord=container[SCROLL](),winSize=vertical?container.height():container.width();return coord>=scrollCoord&&coord<=(winSize+scrollCoord+threshold);}};var loader=function(triggerElem,event){var i=0,isCustom=false,isTrigger,coord,elem,$elem,lazySrc;if(event){if(event!=='scroll'&&event!=='resize'){isCustom=true;}}
else{event='init';}
for(;i<elems.length;i++){isTrigger=false;elem=elems[i];$elem=$(elem);if(!isLoadScript){lazySrc=$elem.attr(o.attr);if(!lazySrc||elem.src===lazySrc){continue;}}
coord=isLoadScript?$elem.parent().offset()[OFFSET]:$elem.offset()[OFFSET];isTrigger=isCustom||trigger[event](coord);if(isTrigger){if(isLoadScript){(function(elem){queue(function(){loadScript(elem);});})(elem);}
else{elem.src=lazySrc;if(o.fadeIn){$elem.hide().fadeIn();}}
$elem.removeData(dataName);elems.splice(i--,1);}}
if(!elems.length){if(triggerElem){triggerElem.unbind(event,fire);}
else{container.unbind(o.event,fire);}
$(window).unbind('resize',fire);elems=null;}
elem=$elem=null;};var fire=function(e){loader($(this),e.type);};container=event==='scroll'?container:$(this);container.bind(event,fire);$(window).bind('resize',fire);loader();return this;};})(jQuery);