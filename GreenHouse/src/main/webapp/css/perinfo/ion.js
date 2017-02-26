// JavaScript Document

 function setTab(name,cursel,n){
	  for(i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con_"+name+"_"+i);
	  menu.className=i==cursel?"gr":"";
	  con.style.display=i==cursel?"block":"none";
	} 
  }
   function setTab1(name,cursel,n){
	  for(i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con1_"+name+"_"+i);
	  menu.className=i==cursel?"xixi":"";
	  con.style.display=i==cursel?"block":"none";
	} 
  }
  
     function setTab2(name,cursel,n){
	  for(i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con2_"+name+"_"+i);
	  menu.className=i==cursel?"dniy":"";
	  con.style.display=i==cursel?"block":"none";
	} 
  }
  
  
$(document).ready(function(){
								
	$(".xxreply").click(function(){
		$(".xxreply_con").slideToggle("slow");
	});

});

     function setTab9(name,cursel,n){
	  for(i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con9_"+name+"_"+i);
	  menu.className=i==cursel?"biaoq":"";
	  con.style.display=i==cursel?"block":"none";
	} 
  }
  
  
     function setTab4(name,cursel,n){
	  for(i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con4_"+name+i);
	  menu.className=i==cursel?"shuoing":"";
	  con.style.display=i==cursel?"block":"none";
	} 
  }