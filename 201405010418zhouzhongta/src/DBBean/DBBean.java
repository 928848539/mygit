package DBBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBBean {
	Connection con = null;
	Statement stat = null;
	PreparedStatement pstat = null;
	ResultSet rs =null;
	
	public DBBean(){}
	
	public Connection getCon(){
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String url = "jdbc:mysql://localhost:3306/test?user=root&password=123456";
			con = DriverManager.getConnection(url);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return con;
	}
	
	public ResultSet query(String sql){
		try{
			con = getCon();
			stat = con.createStatement();
			rs = stat.executeQuery(sql);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return rs;
	}
	
	public void close(){
		try{
			if (rs != null)rs.close();
			if (stat != null)stat.close();
			if (pstat != null)pstat.close();
			if (con != null)con.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
}
