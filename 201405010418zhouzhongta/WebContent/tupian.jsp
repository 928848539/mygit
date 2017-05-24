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
<body>
<%String s=request.getParameter("name");%>
<div>用户：<input id="1"  value=<%=s%>></div>
<img src="3.jpg"/>
<img src="4.jpg"/>
<img src="5.jpg"/>
<div align="right">
<input type="button"value="返回主页" onclick="back()"></input> 
</div>
</body>
</html>