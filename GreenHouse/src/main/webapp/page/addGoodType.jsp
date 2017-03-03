<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="/GreenHouse/" />
<title>添加用户</title>
</head>
<body>
	<form id="aGoodType" style="width: 85%; margin: 0px auto;" method="post">
		<br>
		<br>
		<p>
			<label> 商品类型名称 </label> 
			<input name="gt_name" required="required" id="name"  type="text"  value="" class="opt_input" />
			<label id="nameInfo" ></label>
		</p>
		
		<br> <input type="submit" value="添加" class="opt_sub" /> 
	</form>



	<!-- <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
	<script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
 -->	<script type="text/javascript" src="js/addGoodType.js">
		
	</script>
</body>
</html>

