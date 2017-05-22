<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background=2.png
style="background-size:100% 100%;
background-repeat:no-repeat;
background-attachment:fixed">
<a><%=request.getParameter("name")%></a><br>
名字：张山<br>
年纪：23<br>
职业：学生<br>
qq:123456<br>
文章：<br>
<a href="xiayu.jsp?name=<%=request.getParameter("name")%>">下完这场雨</a><br>
<form action="haoyou.jsp"method="get">
<div align="right">
<input type="submit"value="返回"></input> 
</div>
<h5 style="position:absolute;bottom:0px;">违法和不良信息举报617586422@qq.com  经营许可证：苏A2-20110026 </h5>
</form>
</body>
</html>