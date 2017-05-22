<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page  import="java.sql.Connection" %>
<%@ page  import="java.sql.DriverManager"%>
<%@ page  import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function okUser(id){
	var s=document.getElementById("1").value;
	var s1=document.getElementById("2").value;
	var s2=document.getElementById("3").value;
	var s3=document.getElementById("4").value;
	var s4=document.getElementById("5").value;
	var s5=document.getElementById("6").value;

	window.self.location ="gerenxinxi1.jsp?s="+s+"&s1="+s1+"&s2="+s2+"&s3="+s3+"&s4="+s4+"&s5="+s5; 

 
}
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
<body background=1.jpg
style="background-size:100% 100%;
background-repeat:no-repeat;
background-attachment:fixed">


<%String s=request.getParameter("name");

String driver = "com.mysql.jdbc.Driver";    
//URL指向要访问的数据库名scutcs  
String url = "jdbc:mysql://127.0.0.1:3306/boke";  
//MySQL配置时的用户名  
String user = "root";  
//Java连接MySQL配置时的密码  
String password = "123456";  
String  name="";
String  age="";
String  zhiye="";
String  dizhi="";
String  dianhua="";
String  qq="";

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
 String sql = "select * from gerenxinxi where name='"+s+"'";  

 //结果集  
 ResultSet rs = statement.executeQuery(sql);                //3  

 while(rs.next()) {    
   
     //选择sname这列数据  

    
age=rs.getString("age");  
zhiye=rs.getString("zhiye");  
dizhi=rs.getString("dizhi");  
dianhua=rs.getString("dianhua");  
qq=rs.getString("qq");  
System.out.print(age);
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

名字：<input type="label"id="1"  readonly="true"value=<%=s %> ><br>


年纪：<input type="text"id="2"value=<%=age %> ><br>
职业：<input type="text"id="3"value=<%=zhiye %>><br>
家庭住址:<input type="text"id="4"value=<%=dizhi %>><br>
联系电话；<input type="text"id="5"value=<%=dianhua %>><br>
QQ；<input type="text"id="6"value=<%=qq %>><br>


<input type="button"value="修改个人信息"id="btndel" onclick="okUser()"></input>




<div align="right">

<input type="button"value="返回主页" onclick="back()"></input> 
</div>
</body>
</html>