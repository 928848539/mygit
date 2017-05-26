<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function okUser(id){
	var s=document.getElementById("userName").value;
	var s1=document.getElementById("userPWD").value;
	window.self.location ="denglu1.jsp?name="+s+"&password="+s1; 
}
function okUser1(id){
	window.self.location ="zhuce.jsp"; 
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body background=13.jpg
style="background-size:100% 100%;
background-repeat:no-repeat;
background-attachment:fixed">
<img src="11.jpg"/><br> 
<center>
<h1>欢迎进入博客登录页面<h1>
</center>
	<h2>用户登录</h2>
 	style="background-size:100% 100%;
background-repeat:no-repeat;
background-attachment:fixed">
<%String s=request.getParameter("name");%>
<div>用户：<input id="1"  value=<%=s%>></div>
<a href="zhangshan.jsp?name=<%=request.getParameter("name") %>">张山 </a><br>
<a href="lisi.jsp?name=<%=request.getParameter("name")%>">李四 </a><br>
<div align="right">
<input type="button"value="返回主页" onclick="back()"></input> 
<button type="button" id="btndel1" onclick="okUser1()">注册</button>
</body>
</html>