import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Education extends HttpServlet{

	public void doGet(HttpServletRequest request,
	 HttpServletResponse response)
            throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		String userName = (String)session.getAttribute("name");
	
		try{

                String myDriver = "com.mysql.jdbc.Driver";
                String myUrl = "jdbc:mysql://localhost:3306/Profiles";
                Class.forName(myDriver);
                Connection conn = DriverManager.getConnection(myUrl,"root","3009");

               	String query = "SELECT * FROM user WHERE username='"+userName+"'"; 
		Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(query);

			String user;
			String pass;
			String name;
			String last;
			String a = null;
			String l = null;
			String c = null;
			String e = null;

                 	while (rs.next())
                	{
                          user = rs.getString("username");
                          pass = rs.getString("password");
                          name = rs.getString("f_name");
                          last = rs.getString("l_name");
                          a = rs.getString("about");
                          l = rs.getString("location");
                          c = rs.getString("contact");
                          e = rs.getString("education");

                	}
                        request.setAttribute("education", e);
                        
                        request.getRequestDispatcher("p_education.jsp").forward(request, response);
		
                	st.close();
                	conn.close();
        	}
        	catch (Exception e)
        	{
                	System.err.println("Got an exception! ");
                	System.err.println(e.getMessage());
        	}
	 


	}

}
