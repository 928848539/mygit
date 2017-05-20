<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function okUser(id){
	var s=document.getElementById("zuozhe").value;
	var s1=document.getElementById("biaoti").value;
	var s2=document.getElementById("zhengwen").value;
	if(s1=="")
		alert("标题不能为空");
	else if(s2=="")
		alert("内容不能为空");
	else
		window.self.location ="xiugai1.jsp?name="+s+"&biaoti="+s1+"&zhengwen="+s2; 
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改博文</title>
</head>
<body>
<%
String s=request.getParameter("name");
String s1=request.getParameter("biaoti");
%>
	<div>标题：<input type="text" id="biaoti" size="150" maxlength="50" value="<%=s1%>"></div>
	<div>作者：<input type="text" id="zuozhe" value="<%=s%>"readonly></div>
	<div>正文：</div>
	<div><textarea id="zhengwen" rows="20" cols="110"></textarea></div>
	<div>
	<button type="button" id="btndel" onclick="okUser()">保存</button>
	<button type="button" id="btndel1" onclick="location.href='zhuye.jsp?name=<%=s%> '">取消</button>
	</div>
	<div class="footer" style="position:relative;">违法和不良信息举报928848539@qq.com  经营许可证：苏A2-20110026 苏ICP备11017770号 copyright© 2016-2017计算机工程学院周钟涛版权所有</div>
</body>
</html>