import java.io.*;

import java.sql.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
  
 
public class RegisServlet extends HttpServlet{  

        Connection conn = null;  
        PreparedStatement pst = null;
        ResultSet rs = null;  

	public RegisServlet() {          
  
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
	 
		try{ 
        	response.setContentType("text/html");    
          
        	String Name=request.getParameter("name");    
        	String Last=request.getParameter("last");   
		String Id=request.getParameter("userid");
		String Pass=request.getParameter("password");
		String About=request.getParameter("about");
		String Location=request.getParameter("location");
		String Contact=request.getParameter("contact");
		String Education=request.getParameter("education");

		if(Name.equals("")||Last.equals("")||Id.equals("")||Pass.equals("")){
		out.print("<html><body onload=\"alert('Register fail!')\"></body></html>");
                RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
                rd.include(request,response);
		}
        	else{
            	
			//Statement statement = (Statement) conn.createStatement();
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * from user where username='"+ Id +"'");
			String duplicate = null;

			while(rs.next()){
			duplicate = rs.getString(1);
			}
			if(duplicate == null){
			st.executeUpdate("INSERT INTO user (username, password, f_name, l_name, about, p_about, location, p_location, contact, p_contact, education, p_education)"
                        +"VALUES ('"+Id+"','"+Pass+"','"+Name+"','"+Last+"','"+About+"', '','"+Location+"', '','"+Contact+"', '','"+Education+"', '')");
                	out.print("<html><body onload=\"alert('Register complete!')\"></body></html>");
                	RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                	rd.include(request,response);
			}
			else{
			out.println("<html><body onload=\"alert('Please choose a different username!')\"></body></html>");
			RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
                	rd.include(request,response);
			}	

	        }

		}catch(Exception ex){
		}	
	}

	
} 
 
