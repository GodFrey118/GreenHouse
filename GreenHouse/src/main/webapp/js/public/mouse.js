// JavaScript Document

function checkHover(e, target) {  
    if (getEvent(e).type == "mouseover") {  
        return !contains(target, getEvent(e).relatedTarget  
                || getEvent(e).fromElement)  
                && !((getEvent(e).relatedTarget || getEvent(e).fromElement) === target);  
    } else {  
        return !contains(target, getEvent(e).relatedTarget  
                || getEvent(e).toElement)  
                && !((getEvent(e).relatedTarget || getEvent(e).toElement) === target);  
    }  
}  
	 		  
function contains(parentNode, childNode) {  
    if (parentNode.contains) {  
        return parentNode != childNode && parentNode.contains(childNode);  
    } else {  
        return !!(parentNode.compareDocumentPosition(childNode) & 16);  
    }  
}  
//取得当前window对象的事件  
function getEvent(e) {  
    return e || window.event;  
}  