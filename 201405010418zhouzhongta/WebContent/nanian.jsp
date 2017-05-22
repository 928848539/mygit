<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
function pinglun(id)
{ 
	
	var text=document.getElementById("text").value;
	var name=document.getElementById("name").text;
	window.self.location ="insert1.jsp?name="+name+"&text="+text;
}

</script>
<body background=2.png
style="background-size:100% 100%;
background-repeat:no-repeat;
background-attachment:fixed">
<a id="name"><%=request.getParameter("name") %></a><br>
那年，我们都不在年轻！<br>
你说：“你害怕相亲”<br>
 
那年，我们一起狂欢，<br>
因为我们都害怕孤单！<br>
 
那年，我们一起畅饮，<br>
却说“少了一个可以管自己的人”<br>
 
那年，有酒的地方就有你，<br>
      有你的地方就有我，<br>
因为我们是酒友<br>
 
而后，我们都有一点点动心，<br>
却彼此都不敢踏出心！<br>
 
那天，你说“我们在一起如何”<br>
我却假装你开玩笑而沉默！<br>
 
那天，你说“你对感情不强求”<br>
            而我害怕你的不坚持，<br>
放弃我的僵持<br>
 
从那天起，我们说好在一起！<br>
你的过去我缺席，<br>
你的未来我出席。<br>
 
而后，相爱容易相处难<br>
我们彼此都怀念以前！<br>
 
那时，你说：“你害怕我的淡然”<br>
我说：“你给我适应的时间!”<br>
 
突然一天，公布我们在一起的情感，<br>
大伙，都觉得来得有点突然。<br>
 
如今，我们已经紧密相连<br>
却彼此都爱逞强！<br>
 
你说：“你拯救我，断送了桃花源”<br>
我说：“我为了你，放弃了选择权！<br>
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
<form action="lisi.jsp"method="get">
<div align="right">
<input type="submit"value="返回"></input> 
</div>

</form>

</body>
</html>