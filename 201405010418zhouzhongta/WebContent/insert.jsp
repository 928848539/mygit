<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@page import="java.sql.*" %>
<html>
<head>
</head>
<script>
function pinglun(n)
{ 
	var name=document.getElementById("name").text;
	window.self.location ="xiayu.jsp?name="+name;
}

</script>
<body>
<a id="name"><%=request.getParameter("name") %></a>
<input type="button"value="发表成功"  onclick="pinglun()"></input>
<% 	  String driver = "com.mysql.jdbc.Driver";    
	//URL指向要访问的数据库名scutcs  
	String url = "jdbc:mysql://127.0.0.1:3306/boke";  
	//MySQL配置时的用户名  
	String user = "root";  
	//Java连接MySQL配置时的密码  
	String password = "123456";
	 String name=request.getParameter("name");
	 String text=request.getParameter("text");
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
		 String sql = "select id from pinglun";  
		int id=1;
		 //结果集  
		 ResultSet rs = statement.executeQuery(sql);                //3  
		 while(rs.next()) {    
			id=Integer.valueOf(rs.getString("id"));  
		 }
		 if(id!=0)
	 		id++;
	 	sql="insert into pinglun values("+id+",'"+name+"','"+text+"')";
	 	statement.executeUpdate(sql);
		 rs.close();   
		 statement.close();  
		 conn.close();  
		 
		} catch(SQLException e) {     
			 e.printStackTrace();     
		} catch(Exception e) {     
		 e.printStackTrace();     
		}   %>
		</body>
		</html>
