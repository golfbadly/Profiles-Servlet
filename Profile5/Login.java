import java.io.*;
import java.sql.*;  
import java.util.*;
  
public class Login{  

	public static boolean validate(String name, String pass){          
 	Connection conn = null;
        PreparedStatement pst = null;
	ResultSet rs = null;
      	 
	boolean status = false;  
  
        String url = "jdbc:mysql://localhost:3306/";  
        String dbName = "Profiles";  
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "3009";  
        
	try {  
            Class.forName(driver).newInstance();  
            conn = DriverManager.getConnection(url + dbName, userName, password);  
            pst = conn.prepareStatement("select * from user where username=? and password=?");  
              
            pst.setString(1, name);  
            pst.setString(2, pass);  
  
            rs = pst.executeQuery();  
            status = rs.next();  

	}catch (Exception e) {  
            System.out.println(e);  
        } 
	
	finally {  
            if (conn != null) {  
                try {  
                conn.close();  
		} catch 
			(SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
            if (pst != null) {  
                try {  
                    pst.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
            if (rs != null) {  
                try {  
                    rs.close();  
                } catch (SQLException e) {  
                    e.printStackTrace();  
                }  
            }  
        }  
        return status;  
    
     }  

} 
 
