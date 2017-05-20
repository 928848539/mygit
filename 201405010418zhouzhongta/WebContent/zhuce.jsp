<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.sql.Connection" %>
<%@ page  import="java.sql.DriverManager"%>
<%@ page  import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function okUser(id){
var s=document.getElementById("username4").value;
var s1=document.getElementById("password14").value;
var s2=document.getElementById("password25").value;
if(s=="")
	alert("用户名不能为空");
else if(s1=="")
	alert("密码不能为空");
else if(s2=="")
	alert("重复密码不能为空");
else 
	if(s1==s2)
		window.self.location ="chenggong.jsp?name="+s+"&password="+s1; 
	else 
		alert("两次密码不相同");
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
<%

%>
	<div>用户名：<input name="username" type="text"id="username4"maxlength="20"></div>
	<div>密码:<input name="password1" type="password"id="password14"size="20"maxlength="20"></div>
	<div>确认密码:<input name="password2" type="password"id="password25"size="20"maxlength="20"></div>
	<div>
	<button type="button" id="btndel" onclick="okUser()">确定</button>
	<button type="button" id="btndel" onclick="location.href='denlu.jsp'">取消</button>
	</div>
	<div class="footer" style="position:relative;">违法和不良信息举报928848539@qq.com  经营许可证：苏A2-20110026 苏ICP备11017770号 copyright© 2016-2017计算机工程学院周钟涛版权所有</div>
</body>

</html>