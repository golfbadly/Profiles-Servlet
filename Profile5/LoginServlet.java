import java.io.*;  
import java.sql.*;
import javax.servlet.*;  
import javax.servlet.http.*;  
  
public class LoginServlet extends HttpServlet{  

    private static final long serialVersionUID = 1L;  
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {    
  
        response.setContentType("text/html");    
        PrintWriter out = response.getWriter();    
          
        String n=request.getParameter("id");    
        String p=request.getParameter("pass");   
        
	if(n.equals("admin")&&p.equals("admin")){
	RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
        rd.forward(request,response);
	}else{  
        
		HttpSession session = request.getSession(true);  
        	session.setAttribute("name", n);  
 
		Login login = new Login();
 
        	if(login.validate(n, p)){    
            	RequestDispatcher rd=request.getRequestDispatcher("p_menu.jsp");    
            	rd.forward(request,response);    
        	}    
        	else{    
            	out.println("<html><body onload=\"alert('UserID or Password wrong!')\"></body></html>");	
	    	RequestDispatcher rd=request.getRequestDispatcher("login.jsp");    
            	rd.include(request,response);    
        	}    
        	out.close();    
   	}
	out.close();
    }    


}   
