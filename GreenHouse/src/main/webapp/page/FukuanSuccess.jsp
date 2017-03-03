<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/GreenHouse/">
<meta charset="UTF-8">
<title>忘记密码</title>
<link type="text/css" rel="stylesheet" href="css/forgetPassword.css">
</head>
<body>
<script type="text/javascript">
var nidParam = location.href.substring(location.href.indexOf("?"));
$("#1").attr("href","user_trade.jsp"+nidParam);
alert(nidParam);
</script>
	<p>付款成功...
	<a id="1" href="user_trade.jsp">点此查看订单信息</a>
	<a id="2" href="index.jsp">点此返回主页</a>
	</p>
</body>

</html>