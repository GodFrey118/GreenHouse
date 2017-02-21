//$("#apply_form").form({
//	url:"user/apply",
//	success:function(data){
//		if(data.trim() == 'true'){
//			location.replace("index.jsp");
//		}
//	}
//});

/*function getFormData(){
	alert("sdfsdf");
	var formData = new FormData($("#apply_form")[0]);  
	 $.ajax({  
		  url: 'user/apply' ,  
		  type: 'POST',  
		  data: formData,  
		  async: false,  
		  contentType: false,  
		  processData: false,  
		  success: function (returndata) {
			  $.messager.show({
					title:'商店注册',
					msg:returndata.trim() == "true" ? "商店注册成功!!!" : "商店注册失败!!!",
					showType:'show',
					modal:true,
					style:{
						left:300,
						top:document.body.scrollTop+document.documentElement.scrollTop +500,
					}
				});
		  }
	 });  
	 return false;
} */


//<!CDATA[
var SITE_URL = "http://www.shanshan360.com";
var REAL_SITE_URL = "http://www.shanshan360.com";
$(function(){
	regionInit_1("region");
	// 联系电话(手机/电话皆可)验证
	jQuery.validator.addMethod("isPhone", function(value,element) { 
	  var length = value.length; 
	  var mobile = /13[0-9]{9}|15[0|1|2|3|5|6|7|8|9]\d{8}|18[0|2|5|6|7|8|9]\d{8}/; 
	  var tel = /^(((0\d{2,3})-)(\d{7,8})(-(\d{3,4}))?)|((400|400-)((\d{3}-\d{3,4})|\d{7,8}))$/; 
	  return this.optional(element) || (tel.test(value) || (length == 11 && mobile.test(value))); 
	}, "请正确填写您的联系电话"); 
	
		jQuery.validator.addMethod("checkDomain", function(value,element) { 
		  var length = value.length; 
		  var subdomain_min = 3;
		  var subdomain_max = 20;
		  return this.optional(element) || (length>=subdomain_min &&length<=subdomain_max); 
		},"域名长度不符合要求"); 
		
	// 身份证号码验证
	jQuery.validator.addMethod("isIdCardNo", function(value, element) { 
		  return this.optional(element) || idCardNoUtil.checkIdCardNo(value);     
		}, "请正确填写您的身份证号码"); 
	
	$("#add_cate").click(function(){
        $(".cate:last").after($(".cate:last").clone().val(0));
    });
	$('#add_g_cate').click(function(){
		$(".g_cate:last").after($(".g_cate:last").clone().val(0));
	});
	
    $("#apply_form").validate({
    	 errorPlacement: function(error, element){
             var error_td = element.next('label');
             error_td.append(error);
         },
       // success: function(label){
       //     label.addClass('validate_right').text('OK!');
       // },
        onkeyup: false,
        rules: {
            owner_name: {
                required: true
            },
         
            store_name: {
                required: true,
                           remote : {
                    url  : 'index.php?app=apply&act=check_name&ajax=1',
                    type : 'get',
                    data : {
                        store_name : function(){
                            return $('#store_name').val();
                        }
                    }
                },
                            maxlength: 20
            },
            owner_card: {
            	 required: true,
                 isIdCardNo:true
            },
            tel: {
                required: true,
                isPhone :true
            },
            image_1: {
            	required: true,
                accept: "jpg|jpeg|png|gif"
            },
            image_2: {
            	required: true,
                accept: "jpg|jpeg|png|gif"
            },
            image_3: {
            	required: true,
                accept: "jpg|jpeg|png|gif"
            },
            image_4: {
            	required: true,
                accept: "jpg|jpeg|png|gif"
            },
            image_5: {
            	required: true,
                accept: "jpg|jpeg|png|gif"
            },
            image_6: {
            	required: true,
                accept: "jpg|jpeg|png|gif"
            },          
            notice: {                
                required : true
            },
            region :{
                required  : true,
                min :1
            },
		
			domain : {
				remote : {
					url  : 'index.php?app=apply&act=check_domain&ajax=1',
					type : 'get',
					data : {
						domain : function(){
							return $('#domain').val();
						}
					}
				},
				checkDomain : true,
				minlength : 4
			},
		
            cate_id :{
                required  : true,
                min :1
            },
            g_cate_id :{
            	required  : true,
                min :1
            },
            zipcode	:{
            	required: true,
                minlength:6,
                maxlength:6
            },
            address :{
            	required: true
            }
        },
        messages: {
            owner_name: {
                required: '请输入店主姓名'
            },
            store_name: {
                required: '请输入店铺名称',
                         remote: '该店铺名称已存在，请您换一个',
                         maxlength: '请控制在20个字以内'
            },
            owner_card: {
    	   		required: '请输入身份证号码'
            },
            tel: {
                required: '请输入联系电话',
                minlength: '<br>电话号码由数字、加号、减号、空格、括号组成,并不能少于6位',
                checkTel: '<br>电话号码由数字、加号、减号、空格、括号组成,并不能少于6位'
            },
            image_1: {
            	required  : '请上传法人身份证 正面',
                accept: '请上传格式为 jpg,jpeg,png,gif 的文件'
            },
            image_2: {
            	required  : '请上传法人身份证 背面',
                accept: '请上传格式为 jpg,jpeg,png,gif 的文件'
            },
            image_3: {
            	required  : '请上传企业营业执照',
                accept: '请上传格式为 jpg,jpeg,png,gif 的文件'
            },
            image_4: {
            	required  : '请上传组织机构代码证',
                accept: '请上传格式为 jpg,jpeg,png,gif 的文件'
            },
            image_5: {
            	required  : '请上传企业税务登记证',
                accept: '请上传格式为 jpg,jpeg,png,gif 的文件'
            },
            image_6: {
            	required  : '请上传商标注册证或受理书',
                accept: '请上传格式为 jpg,jpeg,png,gif 的文件'
            },            
            notice: {
                required: '请阅读并同意开店协议'
            },
            region : {
                required  : '请选择所在地',
                min :		'请选择所在地'
            },
					
			domain  : {
				remote: '该店铺名称已存在，请您换一个',
				minlength : '必须为大于4个字节'
			},
		
            cate_id : {
                required  : '请选择所属分类',
                min :		'请选择所属分类'
            },
            g_cate_id :{
            	required  : '请选择商品所属分类',
                min :		'请选择商品所属分类'
            },
            zipcode	:{
            	required  : '请输入邮政编码',
            	minlength: '邮政编码由6位数字组成',
            	maxlength: '邮政编码由6位数字组成'
            },
            address: { 
            	required  : '请输入详细地址'
            }
        }
    });
    
    
      /* 店主姓名提示语 */
         
    	 $('#owner_name').focus(function(){
		     if($(this).val() == "建议使用中文")
		     {
            	 $(this).val('');
           	 	 $(this).css('color','rgb(64, 64, 64)'); 
   			 }
         });
         $('#owner_name').blur(function(){
       		 if($(this).val() == "" || $(this).val() == null)
		     {
        		 $(this).val("建议使用中文");
         	 	 $(this).css('color','rgb(182, 183, 185)'); 
 			 }
 	     });

      /* 身份证号提示语 */
         
    	 $('#owner_card').focus(function(){
		     if($(this).val() == "输入正确的身份证号")
		     {
            	 $(this).val('');
           	 	 $(this).css('color','rgb(64, 64, 64)'); 
   			 }
         });
         $('#owner_card').blur(function(){
       		 if($(this).val() == "" || $(this).val() == null)
		     {
        		 $(this).val("输入正确的身份证号");
         	 	 $(this).css('color','rgb(182, 183, 185)'); 
 			 }
 	     });

      /* 店铺名称提示语 */
         
    	 $('#store_name').focus(function(){
		     if($(this).val() == "建议【店铺名+经营范围+店铺类型】")
		     {
            	 $(this).val('');
           	 	 $(this).css('color','rgb(64, 64, 64)'); 
   			 }
         });
         $('#store_name').blur(function(){
       		 if($(this).val() == "" || $(this).val() == null)
		     {
        		 $(this).val("建议【店铺名+经营范围+店铺类型】");
         	 	 $(this).css('color','rgb(182, 183, 185)'); 
 			 }
 	     });

      /* 店铺二级域名提示语 */
         
    	 $('#domain').focus(function(){
		     if($(this).val() == "大于3个字节的英文字母")
		     {
            	 $(this).val('');
           	 	 $(this).css('color','rgb(64, 64, 64)'); 
   			 }
         });
         $('#domain').blur(function(){
       		 if($(this).val() == "" || $(this).val() == null)
		     {
        		 $(this).val("大于3个字节的英文字母");
         	 	 $(this).css('color','rgb(182, 183, 185)'); 
 			 }
 	     });
        
});
		var idCardNoUtil = {
		provinceAndCitys: {11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",
		31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北",43:"湖南",44:"广东",
		45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",
		65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"},
		powers: ["7","9","10","5","8","4","2","1","6","3","7","9","10","5","8","4","2"],
		parityBit: ["1","0","X","9","8","7","6","5","4","3","2"],
		genders: {male:"男",female:"女"},
		checkAddressCode: function(addressCode){
		var check = /^[1-9]\d{5}$/.test(addressCode);
		if(!check) return false;
		if(idCardNoUtil.provinceAndCitys[parseInt(addressCode.substring(0,2))]){
		return true;
		}else{
		return false;
		}
		},
		checkBirthDayCode: function(birDayCode){
		var check = /^[1-9]\d{3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))$/.test(birDayCode);
		if(!check) return false;
		var yyyy = parseInt(birDayCode.substring(0,4),10);
		var mm = parseInt(birDayCode.substring(4,6),10);
		var dd = parseInt(birDayCode.substring(6),10);
		var xdata = new Date(yyyy,mm-1,dd);
		if(xdata > new Date()){
		return false;//生日不能大于当前日期
		}else if ( ( xdata.getFullYear() == yyyy ) && ( xdata.getMonth () == mm - 1 ) && ( xdata.getDate() == dd ) ){
		return true;
		}else{
		return false;
		}
		},
		getParityBit: function(idCardNo){
		var id17 = idCardNo.substring(0,17);
		var power = 0;
		for(var i=0;i<17;i++){
		power += parseInt(id17.charAt(i),10) * parseInt(idCardNoUtil.powers[i]);
		}
		var mod = power % 11;
		return idCardNoUtil.parityBit[mod];
		},
		checkParityBit: function(idCardNo){
		var parityBit = idCardNo.charAt(17).toUpperCase();
		if(idCardNoUtil.getParityBit(idCardNo) == parityBit){
		return true;
		}else{
		return false;
		}
		},
		checkIdCardNo: function(idCardNo){
		//15位和18位身份证号码的基本校验
		var check = /^\d{15}|(\d{17}(\d|x|X))$/.test(idCardNo);
		if(!check) return false;
		//判断长度为15位或18位
		if(idCardNo.length==15){
		return idCardNoUtil.check15IdCardNo(idCardNo);
		}else if(idCardNo.length==18){
		return idCardNoUtil.check18IdCardNo(idCardNo);
		}else{
		return false;
		}
		},
		//校验15位的身份证号码
		check15IdCardNo: function(idCardNo){
		//15位身份证号码的基本校验
		var check = /^[1-9]\d{7}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))\d{3}$/.test(idCardNo);
		if(!check) return false;
		//校验地址码
		var addressCode = idCardNo.substring(0,6);
		check = idCardNoUtil.checkAddressCode(addressCode);
		if(!check) return false;
		var birDayCode = '19' + idCardNo.substring(6,12);
		//校验日期码
		return idCardNoUtil.checkBirthDayCode(birDayCode);
		},
		//校验18位的身份证号码
		check18IdCardNo: function(idCardNo){
		//18位身份证号码的基本格式校验
		var check = /^[1-9]\d{5}[1-9]\d{3}((0[1-9])|(1[0-2]))((0[1-9])|([1-2][0-9])|(3[0-1]))\d{3}(\d|x|X)$/.test(idCardNo);
		if(!check) return false;
		//校验地址码
		var addressCode = idCardNo.substring(0,6);
		check = idCardNoUtil.checkAddressCode(addressCode);
		if(!check) return false;
		//校验日期码
		var birDayCode = idCardNo.substring(6,14);
		check = idCardNoUtil.checkBirthDayCode(birDayCode);
		if(!check) return false;
		//验证校检码
		return idCardNoUtil.checkParityBit(idCardNo);
		},

		formateDateCN: function(day){
		var yyyy =day.substring(0,4);
		var mm = day.substring(4,6);
		var dd = day.substring(6);
		return yyyy + '-' + mm +'-' + dd;
		},

		//获取信息
		getIdCardInfo: function(idCardNo){
		var idCardInfo = {
		gender:"", //性别
		birthday:"" // 出生日期(yyyy-mm-dd)
		};
		if(idCardNo.length==15){
		var aday = '19' + idCardNo.substring(6,12);
		idCardInfo.birthday=idCardNoUtil.formateDateCN(aday);
		if(parseInt(idCardNo.charAt(14))%2==0){
		idCardInfo.gender=idCardNoUtil.genders.female;
		}else{
		idCardInfo.gender=idCardNoUtil.genders.male;
		}
		}else if(idCardNo.length==18){
		var aday = idCardNo.substring(6,14);
		idCardInfo.birthday=idCardNoUtil.formateDateCN(aday);
		if(parseInt(idCardNo.charAt(16))%2==0){
		idCardInfo.gender=idCardNoUtil.genders.female;
		}else{
		idCardInfo.gender=idCardNoUtil.genders.male;
		}

		}
		return idCardInfo;
		},
		getId15:function(idCardNo){
		if(idCardNo.length==15){
		return idCardNo;
		}else if(idCardNo.length==18){
		return idCardNo.substring(0,6) + idCardNo.substring(8,17);
		}else{
		return null;
		}
		},
		getId18: function(idCardNo){
		if(idCardNo.length==15){
		var id17 = idCardNo.substring(0,6) + '19' + idCardNo.substring(6);
		var parityBit = idCardNoUtil.getParityBit(id17);
		return id17 + parityBit;
		}else if(idCardNo.length==18){
		return idCardNo;
		}else{
		return null;
		}
		}
		};
		//验证护照是否正确
		function checknumber(number){
		var str=number;
		//在JavaScript中，正则表达式只能使用"/"开头和结束，不能使用双引号
		var Expression=/(P\d{7})|(G\d{8})/;
		var objExp=new RegExp(Expression);
		if(objExp.test(str)==true){
		   return true;
		}else{
		   return false;
		} 
		};
		function emp()
		{
			$("#e").hide();

		};
		function emp1()
		{
			$("#p").hide();

		};
		
		//所属分类
		function formCheck()
		{
			 cate_id = document.getElementById("cate_id").value;
			
			  if(cate_id == 0) {
				  document.getElementById("derror").style.display = "inline";
				  return false;
			 }else {
				  document.getElementById("derror").style.display = "none";
			 }
			  g_cate_id = document.getElementById("g_cate_id").value;
			  if(g_cate_id == 0) {
				  document.getElementById("derror1").style.display = "inline";
				  return false;
			  }else {
				  document.getElementById("derror1").style.display = "none";
			  }
	   
			  /* 店主姓名：*/
			  if($('#owner_name').val() == "建议使用中文")
		      {
				  $('#owner_name').val('');
			  }
			  /* 身份证号： */
			  if($('#owner_card').val() == "输入正确的身份证号")
		      {
				  $('#owner_card').val('');
			  }
			  /* 店铺名称： */
			  if($('#store_name').val() == "建议【店铺名+经营范围+店铺类型】")
		      {
				  $('#store_name').val('');
			  }
			  /* 店铺二级域名： */
			  if($('#domain').val() == "大于3个字节的英文字母")
		      {
				  $('#domain').val('');
			  }
      }
//]]>