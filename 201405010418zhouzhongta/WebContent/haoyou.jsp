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
<a href="zhangshan.jsp?name=<%=request.getParameter("name") %>">张山 </a><br>
<a href="lisi.jsp?name=<%=request.getParameter("name")%>">李四 </a><br>
<div align="right">
<input type="button"value="返回主页" onclick="back()"></input> 
</div>
</body>
</html>