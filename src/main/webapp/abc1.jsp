<%@page import="java.sql.*"%>
<%@ include file="makecon.jsp" %>
<%!                      ResultSet rs = null;
%>
<%
 String tsr=request.getParameter("sr");
 out.println("hai......"+tsr);
 try {
//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//Connection con=DriverManager.getConnection("jdbc:odbc:eclassifieds","advt","advt");
//Statement st=con.createStatement();
 out.println("hai conn establish......");
//ResultSet rs=st.executeQuery("select * from searchtb where sname like'%"+tsr+"%'");
 //ResultSet rs=st.executeQuery("select * from searchtb where sname like '%"+""+tsr+"%'");
 rs=st.executeQuery("select * from searchtb where sname like'%"+tsr+"%'");
 out.println("hai................");
out.println("<html><body><br><br><br><center><table border=1>");
if(rs.next()) {
out.println("hello................");
out.println("<tr><td width=40>"+rs.getString(3)+"</td>");
}
out.println("</table></center></body></html>");
}
catch(Exception e) {
}
%>
