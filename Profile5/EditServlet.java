import java.io.*;
import java.sql.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
  
 
public class EditServlet extends HttpServlet{  

        Connection conn = null;  
        PreparedStatement pst = null;
        ResultSet rs = null;  


	public EditServlet() {          
  
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

	        HttpSession session = request.getSession(true);
        	String userName = (String)session.getAttribute("name");
		
		PrintWriter out = response.getWriter();
	 
		try{ 
        	response.setContentType("text/html");    
          
		String About=request.getParameter("about");
		String Location=request.getParameter("location");
		String Contact=request.getParameter("contact");
		String Education=request.getParameter("education");

		String query1 = "update user set about = ? where username = '"+userName+"'";
      		String query2 = "update user set location = ? where username = '"+userName+"'";
		String query3 = "update user set contact = ? where username = '"+userName+"'";
		String query4 = "update user set education = ? where username = '"+userName+"'";

		PreparedStatement pst1 = conn.prepareStatement(query1);
		pst1.setString(1,About);
		PreparedStatement pst2 = conn.prepareStatement(query2);
                pst2.setString(1,Location);
		PreparedStatement pst3 = conn.prepareStatement(query3);
                pst3.setString(1,Contact);
		PreparedStatement pst4 = conn.prepareStatement(query4);
                pst4.setString(1,Education);

 
      		// execute the java preparedstatement
      		pst1.executeUpdate();
      		pst2.executeUpdate();
		pst3.executeUpdate();
		pst4.executeUpdate();
 

		out.println("<html><body onload=\"alert('Edit complete!')\"></body></html>");
                        RequestDispatcher rd=request.getRequestDispatcher("p_menu.jsp");
                        rd.include(request,response);

    		conn.close();	
		}
    		catch (Exception e)
    		{
      			System.err.println("Got an exception! ");
      			System.err.println(e.getMessage());
    		}
            	
	}

	
} 
 
