<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<!DOCTYPE.html>
<html>
<title>Admin Page</title>
<style>
html, body, div, p, a, ul, li, header, menu {
    border: 0 none;
    font: inherit;
    margin: 0;
    outline: 0 none;
    padding: 0;
    vertical-align: baseline;
}


body{
     background-color: #000000;
     color: #ffffff;
     font-size: 11px;
     line-height: 20px;
     width: 100%;
}
#register{
	 background-image: url("pic/bg.png");
	 background-position: center top;
	 height: 1495px;
	 width: 100%;
}
.header{
	margin-left: auto;
	margin-right: auto;
	width: 975px;
	position: top;
}
.header a{
	  background-position: left top;
	  background-repeat: no-repeat;
} 
.header a.logo{
	background-image: url("pic/logo.png");
	display: block;
	float: left;
	height: 38px;
	padding-left: 92px;
	padding-top: 27px;
	width: 170px;
}	
.header a.Login {
    background-image: url("pic/logout.png");
    display: block;
    float: right;
    height: 15px;
    margin-right: 18px;
    margin-top: 25px;
    padding-left: 23px;
    width: 42px;
}


a {
    color: #ffffff;
    font-size: 11px;
    text-decoration: none;
}

strong {
	font-size: 16px;
}
h {
   font-size: 40px;
}
.regis {
	padding-top: 120px;	
	padding-left: 155px;
}
p {
margin-top: 30px;
color: #01dfd7;
font-size: 15px;
}

form {
margin-top: 59px;
margin-right: 30px; 
}
</style>

<body>
<div id="register">
	<div class="header">
	   <a class="logo">Manage user</a>
	   <a class="Login" href="login.jsp">Logout</a>
	</div>
        	<div class="regis">	
	   	<h> Manage user</h>

		<% 
            	Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Profiles", "root", "3009");

            	Statement st = connection.createStatement() ;
            	ResultSet rs = 
                st.executeQuery("select * from user") ; 
        	%>
		
	<form method="POST" action="AdminServlet" >	
        	<TABLE BORDER="1">
        	<select name="map">
                     <option>All</option>
                     <option>Manager</option>
                     <option>Employee</option>
        	</select>
		<br><br>	
		<TR>
	   	<TH>ID</TH>
                <TH>Firstname</TH>
                <TH>Lastname</TH>
                <TH>About</TH>
                <TH>Locatioa</TH>
                <TH>Contact</TH>
                <TH>Education</TH>
	   	<TH>Job</TH>
            	</TR>
            	<% while(rs.next()){ %>
            	<TR>
                <TD> <%= rs.getString(1) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
                <TD> <%= rs.getString(6) %></TD>
                <TD> <%= rs.getString(8) %></TD>
                <TD> <%= rs.getString(10) %></TD>
                <TD> <%= rs.getString(12) %></TD>
		<TD> 
		  <select name="jobs">
		     <option value="<%= rs.getString(1)+"-None" %>">None</option>
                     <option value="<%= rs.getString(1)+"-Manager" %>"
		     <% if("Manager".equals(rs.getString(14))) out.print("selected"); %>>Manager</option> 
		     <option value="<%= rs.getString(1)+"-Employee" %>"	
                     <% if("Employee".equals(rs.getString(14))) out.print("selected"); %>>Employee</option>  
	 	  </select>
	
		</TD>
	    	</TR>
            	<% } %>
        	</TABLE>	
	<br>   
        <input type="submit" value="Save" size="7" />
	
	</form>	
		</div>
	</div>
</div>
</body>
</html>

















