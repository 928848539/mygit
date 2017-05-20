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
<title>查看</title>
</head>
<body>
<%
String s=request.getParameter("name");
String s1=request.getParameter("biaoti");
String s2=null;
String driver = "com.mysql.jdbc.Driver";      
//URL指向要访问的数据库名scutcs  
String url = "jdbc:mysql://127.0.0.1:3306/boke";  
//MySQL配置时的用户名  
String user = "root";  
//Java连接MySQL配置时的密码  
String password = "123456";  

try {  

 // 加载驱动程序  
 Class.forName(driver);  

 // 连续数据库  
 Connection conn = DriverManager.getConnection(url, user, password);   //1  

 if(!conn.isClosed())  
 System.out.println("Succeeded connecting to the Database!");  

 // statement用来执行SQL语句  
 Statement statement = conn.createStatement();             //2  

 // 要执行的SQL语句  
 String sql = "select * from wz where biaoti='"+s1+"'";  

 //结果集  
ResultSet rs =  statement.executeQuery(sql)  ;            //3  
 

 while(rs.next()) {    
   
     //选择sname这列数据  
    s2 = rs.getString("neirong");   //得到字段的方法  
    System.out.print(s2);

     // 首先使用ISO-8859-1字符集将name解码为字节序列并将结果存储新的字节数组中。  
     // 然后使用GB2312字符集解码指定的字节数组  
    
     // 输出结果  
    // System.out.println(name);    
 }    
 //rs.close();   
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
System.out.print(s);
%>
	<div>标题：<input type="text" id="biaoti" size="150" maxlength="50" value="<%=s1%>"></div>
	<div>作者：<input type="text" id="zuozhe" value="<%=s%>"readonly></div>
	<div>正文：</div>
	<div><%=s2%></div>
	<div><button type="button" id="btndel1" onclick="location.href='zhuye.jsp?name=<%=s%> '">返回</button></div>
	<div class="footer" style="position:relative;">违法和不良信息举报928848539@qq.com  经营许可证：苏A2-20110026 苏ICP备11017770号 copyright© 2016-2017计算机工程学院周钟涛版权所有</div>
</body>
</html>