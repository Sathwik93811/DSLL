<%@ page import="java.sql.*" %>
<%@ page import="dbconn.*" %>
<%! 
           Connection con = null;
		    Statement st = null;
%>
<%
   //         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   //     con = DriverManager.getConnection("jdbc:odbc:eclassifieds","advt","advt");
   Class.forName("oracle.jdbc.driver.OracleDriver");
   con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","advt","advt");
	st=con.createStatement();
        // con = new AbstractDataAccessObject().getConnection();
           
           // System.out.println("<<<<<>>>>>>>>"+con.getClass().getName());
            
//st = con.createStatement();
%>