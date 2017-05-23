<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>

function back()
{
	var s=document.getElementById("1").value;
	window.self.location ="zhuye.jsp?name="+s;
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background=2.png
style="background-size:100% 100%;
background-repeat:no-repeat;
background-attachment:fixed">
<%String s=request.getParameter("name");%>
<div>用户：<input id="1"  value=<%=s%>></div>
名字：李四<br>
年纪：40<br>
职业：老师<br>
qq:2345342234<br>
文章：<br>
<a href="nanian.jsp?name=<%=request.getParameter("name")%>">那年、那天、那时</a><br>
<div align="right">
<input type="button"value="返回主页" onclick="back()"></input> 
</div>
</body>
</html>