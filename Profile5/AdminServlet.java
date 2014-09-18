import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class AdminServlet extends HttpServlet{

	Connection conn = null;  
        PreparedStatement pst = null;
        ResultSet rs = null;  


	public AdminServlet() {          
  
        String url = "jdbc:mysql://localhost:3306/";  
        String dbName = "Profiles";  
        String driver = "com.mysql.jdbc.Driver";  
        String userName = "root";  
        String password = "3009";  
   
    		try {  
            	Class.forName(driver).newInstance();  
            	conn = DriverManager  
                    .getConnection(url + dbName, userName, password);  
 	
        	} catch (Exception e) {  
            	System.out.println(e);  
        	}  

	}  
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {    

		PrintWriter out = response.getWriter();
	 
	/*	try{ 
        	response.setContentType("text/html");    
		String job=request.getParameter("jobs");
		
		String query = "update user set job = ?";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1,job);
      		pst.executeUpdate();
		response.sendRedirect("admin.jsp");
		}
    		catch (Exception e)
    		{
      			System.err.println("Got an exception! ");
      			System.err.println(e.getMessage());
    		}
         */   	
		String[] careers=request.getParameterValues("jobs");	
	        for(String job : careers){
		       String[] tmp = job.split("-");
                       if("None".equals(tmp[1]))
                               tmp[1] = "None";
                       String sql = "UPDATE user set job = '" + tmp[1] + "' WHERE id = '" + tmp[0] + "'";    
			try{	
			Statement st = conn.createStatement();
			st.execute(sql);
			}catch (Exception e){
			}
		}
                response.sendRedirect("admin.jsp");

	}

}

