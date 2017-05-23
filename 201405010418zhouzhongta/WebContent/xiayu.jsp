<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
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
<script>
function pinglun(id)
{ 
	
	var text=document.getElementById("text").value;
	var name=document.getElementById("name").text;
	window.self.location ="insert.jsp?name="+name+"&text="+text;
}

</script>
<body background=2.png
style="background-size:100% 100%;
background-repeat:no-repeat;
background-attachment:fixed">
<a id="name"><%=request.getParameter("name") %></a><br>
<%String s=request.getParameter("name");%>
<div>用户：<input id="1"  value=<%=s%>></div>
烟雨中手执青伞 可是你<br>
衣襟微湿 无助彷徨<br>
如果可以 请别下完这场雨<br>
寂寞撑伞 穿过夜色<br>
淅淅雨滴 滑落心间 <br>
等下完这场雨 相见再难<br>
 
烟雨中伞外朦胧 可是你<br>
这场雨后 红颜相错<br>
如果可以 请别下完这场雨<br>
斑驳长亭 一束挽歌<br>
光芒逆雨 烟花为序<br>
即使雨霁天青 再回不去<br>
 
烟雨中一纸期许 只为你<br>
顷刻滂沱 几多孤寂<br>
如果可以 请别下完这场雨<br>
怕来不及 重温往昔<br>
梦回四季 只是回忆<br>
拾与你的点滴 说好等你<br>
 
烟雨中画地为牢 只为你<br>
满城涓涤 诉说别离<br>
如果可以 请别下完这场雨<br>
帷幕落秋 手写珍重<br>
放慢朝夕 我在等你<br>
哪怕风云兜转 唯汝一人<br>

<%
String driver = "com.mysql.jdbc.Driver";    
//URL指向要访问的数据库名scutcs  
String url = "jdbc:mysql://127.0.0.1:3306/boke";  
//MySQL配置时的用户名  
String user = "root";  
//Java连接MySQL配置时的密码  
String password = "123456"; 
String name="";
String text="";
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
	 String sql = "select * from pinglun";  

	 //结果集  
	 ResultSet rs = statement.executeQuery(sql);                //3  

	 while(rs.next()) {    
	   
	     //选择sname这列数据  

	    
	name=rs.getString("name");  
	text=rs.getString("text");  
	if(name!=""){  
		%>
		<div style="border:1px solid #F00">
		<a><%=name %></a><br>
		<p><%=text %></p>
		</div>
		<%} 
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

<textarea id="text" ></textarea>
<input type="button"value="发表评论" id="btndeh" onclick="pinglun()"></input>
<div align="right">
<input type="button"value="返回主页" onclick="back()"></input> 
</div>
</body>
</html>