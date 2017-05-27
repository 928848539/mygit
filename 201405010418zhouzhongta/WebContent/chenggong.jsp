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
<title>注册成功</title>
</head>
<body>
<%

String s=request.getParameter("name");
String s1=request.getParameter("password");

String driver = "com.mysql.jdbc.Driver";  
String name = null;    
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
 String sql = "insert into user values('"+s+"','"+s1+"');";  

 //结果集  
 statement.executeUpdate(sql);                //3  
 

 //while(rs.next()) {    
   
     //选择sname这列数据  
  //   name = rs.getString("Name");   //得到字段的方法  

     // 首先使用ISO-8859-1字符集将name解码为字节序列并将结果存储新的字节数组中。  
     // 然后使用GB2312字符集解码指定的字节数组  
    
     // 输出结果  
    // System.out.println(name);    
// }    
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
	<div>注册成功，点击确定返回主页</div>
	<div><button type="button" id="btndel" onclick="location.href='zhuye.jsp?name=<%=s%> '">确定</button></div>
	<%String s=request.getParameter("name");%>
<div>用户：<input id="1"  value=<%=s%>></div>
<img src="3.jpg"/>
<img src="4.jpg"/>
</body>
</html>