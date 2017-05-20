package DBBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class JDBCTest {  
    public static void main(String[] args) {  
        //����������  
        String driver = "com.mysql.jdbc.Driver";  
          
        // URLָ��Ҫ���ʵ����ݿ���scutcs  
        String url = "jdbc:mysql://127.0.0.1:3306/boke";  
        // MySQL����ʱ���û���  
        String user = "root";  
        // Java����MySQL����ʱ������  
        String password = "123456";  
  
        try {  
  
            // ������������  
            Class.forName(driver);  
      
            // �������ݿ�  
            Connection conn = DriverManager.getConnection(url, user, password);   //1  
      
            if(!conn.isClosed())  
            System.out.println("Succeeded connecting to the Database!");  
      
            // statement����ִ��SQL���  
            Statement statement = conn.createStatement();             //2  
      
            // Ҫִ�е�SQL���  
            String sql = "insert into boke.user values('aa','1234567')";  
      
            //�����  
          //  ResultSet rs = statement.executeQuery(sql);                //3  
            
           try {   
            	statement.executeUpdate(sql);
            }catch(Exception e)     {  
                e.printStackTrace();  
            }   
           /* String name = null;    
            while(rs.next()) {    
              
                //ѡ��sname��������  
                name = rs.getString("Name");   //�õ��ֶεķ���  
      
                // ����ʹ��ISO-8859-1�ַ�����name����Ϊ�ֽ����в�������洢�µ��ֽ������С�  
                // Ȼ��ʹ��GB2312�ַ�������ָ�����ֽ�����  
               
                // ������  
                System.out.println(name);    
            }    
         //   rs.close(); */  
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
    }     
 }  