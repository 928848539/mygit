<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page  import="java.sql.Connection" %>
<%@ page  import="java.sql.DriverManager"%>
<%@ page  import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String s=request.getParameter("s");
String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");

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
    String sql = "update gerenxinxi set name='"+s+"',age='"+s1+"',zhiye='"+s2+"',dizhi='"+s3+"',dianhua='"+s4+"',qq='"+s5+"' where name='"+s+"'";  
    System.out.print(sql);
    //结果集  
   statement.executeUpdate(sql);                //3  
    
   
   
  
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
</body>

<input type="button"value="ok"id="btndel" onclick="location.href='zhuye.jsp?name=<%=s%> '"></input> <br>
</html>