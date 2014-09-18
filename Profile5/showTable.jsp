<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
  
<HTML>
    <HEAD>
        <TITLE>Admin Page</TITLE>
    </HEAD>

    <BODY>
        <H1>Manage User</H1>

        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Profiles", "root", "3009");

            Statement st = connection.createStatement() ;
            ResultSet rs = 
                st.executeQuery("select * from user") ; 
        %>

        <TABLE BORDER="1">
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
		<TD> <%= rs.getString(14) %></TD>
	    </TR>
            <% } %>
        </TABLE>
 
    </BODY>
</HTML>

