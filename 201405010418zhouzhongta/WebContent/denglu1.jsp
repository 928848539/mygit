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
<title>Insert title here</title>
</head>
<body>
<%
String name = null;  
String Password = null;  
String s=request.getParameter("name");
String s1=request.getParameter("password");
System.out.print(s);
String driver = "com.mysql.jdbc.Driver";    
// URL指向要访问的数据库名scutcs  
String url = "jdbc:mysql://127.0.0.1:3306/boke";  
// MySQL配置时的用户名  
String user = "root";  
// Java连接MySQL配置时的密码  
String password = "123456";  
System.out.println(s+"aa"+s1);   
int Name=0,pw=0;
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
    String sql = "select * from user";  

    //结果集  
    ResultSet rs = statement.executeQuery(sql);                //3  
    
   
    while(rs.next()) {    
      
        //选择sname这列数据  
        name = rs.getString("Name");   //得到字段的方法  
        
        if(name.equals(s))
        {
        	Name=1;
        }
 			Password = rs.getString("password");   //得到字段的方法  
        
        if(Password.equals(s1))
        {
        	pw=1;
        }

        // 首先使用ISO-8859-1字符集将name解码为字节序列并将结果存储新的字节数组中。  
        // 然后使用GB2312字符集解码指定的字节数组  
       
        // 输出结果  
      //  System.out.println(name);    
   }    
    rs.close();   
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
<%
if(Name==1&&pw==1){ %>
<div><%="登录成功，返回主页" %></div>
<div><button type="button" id="btndel" onclick="location.href='zhuye.jsp?name=<%=s%> '">确定</button></div>
<%}
else {%>
<div><%="用户名密码错误，返回登录界面" %></div>
<div><button type="button" id="btndel" onclick="location.href='denlu.jsp'">确定</button></div>
<% }%>


</body>

</html>