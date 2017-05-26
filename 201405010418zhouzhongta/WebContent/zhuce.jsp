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
<body background=12.png
style="background-size:100% 100%;
background-repeat:no-repeat;
background-attachment:fixed">
<%

%>
	<div>用户名：<input name="username" type="text"id="username4"maxlength="20"></div>
	<div>密码:<input name="password1" type="password"id="password14"size="20"maxlength="20"></div>
	<div>确认密码:<input name="password2" type="password"id="password25"size="20"maxlength="20"></div>
	<div>
	名字：<input type="label"id="1"  readonly="true"value=<%=s %> ><br>


年纪：<input type="text"id="2"value=<%=age %> ><br>
职业：<input type="text"id="3"value=<%=zhiye %>><br>
家庭住址:<input type="text"id="4"value=<%=dizhi %>><br>
联系电话；<input type="text"id="5"value=<%=dianhua %>><br>
QQ；<input type="text"id="6"value=<%=qq %>><br>
	</div>
	<h5 style="position:absolute;bottom:0px;">违法和不良信息举报617586422@qq.com  经营许可证：苏A2-20110026 计算机144 </h5>
</body>

</html>