var _fanli = [];
_fanli.push(['type', 1]);
_fanli.push(['shop', 25]);
_fanli.push(['pageurl', encodeURIComponent(window.location.href)]);
_fanli.join('&').replace(/,/g, '='); 
(function(){
    var fjs = document.createElement('script');
    fjs.type = 'text/javascript';
    fjs.async = true;
    fjs.src = 'http://static2.51fanli.net/static/?f=misc/js/fanlitask.js&v=' + parseInt(new Date().getTime()/86400000);
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(fjs, s);
})()