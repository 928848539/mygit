<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.sql.Connection" %>
<%@ page  import="java.sql.DriverManager"%>
<%@ page  import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>
<body>
<%
String s=request.getParameter("name");
String driver = "com.mysql.jdbc.Driver";  
String name = null;
String url = "jdbc:mysql://127.0.0.1:3306/boke";
String user = "root";
String password = "123456";  

try {
    Class.forName(driver);  
    Connection conn = DriverManager.getConnection(url, user, password);   //1  
    if(!conn.isClosed())  
    System.out.println("Succeeded connecting to the Database!");  
    Statement statement = conn.createStatement();
    String sql = "select * from user";  
    statement.executeUpdate(sql); 
    statement.close();
    conn.close();
} catch(ClassNotFoundException e) {     
    System.out.println("Sorry,can`t find the Driver!");     
    e.printStackTrace();     
} catch(SQLException e) {     
    e.printStackTrace();     
} catch(Exception e) {
    e.printStackTrace();     
}     
%>
	<div>用户：<%=s%><button type="button" id="btndel" onclick="location.href='write.jsp?name=<%=s%> '">写文章</button></div>
	<div>文章</div>
	<ul><%
	int count=0;
	try{
		Class.forName(driver);  
		Connection conn = DriverManager.getConnection(url, user, password);
		if(!conn.isClosed())  
		System.out.println("Succeeded connecting to the Database!");  
		Statement statement = conn.createStatement();
		ResultSet rs = statement.executeQuery("select * from boke.wz");
	
	while(rs.next()){ %>
	<li><%=rs.getString("biaoti")%>
	<button type="button" id="btndel" onclick="location.href='del.jsp?name=<%=s%>&biaoti=<%=rs.getString("biaoti")%>'">删除</button>
	<button type="button" id="btndel" onclick="location.href='xiugai.jsp?name=<%=s%>&biaoti=<%=rs.getString("biaoti")%>'">修改</button>
	<button type="button" id="btndel" onclick="location.href='chakan.jsp?name=<%=s%>&biaoti=<%=rs.getString("biaoti")%>'">查看</button></li><%
	count++;}
	if(count==0)
	{%>无文章<%}
	}catch(SQLException e){
		%>数据库导入失败<% 
	} %>
	</ul>
	<div class="footer"><span class="gray">&copy;违法和不良信息举报928848539@qq.com  经营许可证：苏A2-20110026 苏ICP备11017770号 copyright© 2016-2017计算机工程学院周钟涛版权所有</span></div>
</body>
</html>