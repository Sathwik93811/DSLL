<%@ include file="makecon.jsp" %>
<%@page import="java.sql.*" %>
<%!                      ResultSet rs = null;
%>
<html>
<body>
<form action="collagead.jsp" method=post>
<%
try
{
String uniname=request.getParameter("universityname");
System.out.println("University name"+uniname);
String uniid="";
//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//Connection con=DriverManager.getConnection("jdbc:odbc:eclassifieds","advt","advt");
PreparedStatement pst=con.prepareStatement("select univid  from univers_det where univname='"+uniname+"'");
 rs=pst.executeQuery();
if (rs.next())
 {
uniid=rs.getString(1);
//out.println("dfggfd......."+uniid);
session.setAttribute("uniid",new String(uniid));
System.out.println("Id of University"+uniid);

%>
<body background="images/17.jpg">
<center><br>
<h2><font color="black">Collage Details</font></h2>
</center>
<br>
<br>
<TABLE  align="center" border=1 cellPadding=1 cellSpacing=1 width="50%">
    <TR>
    <TD width="51%" nowrap="nowrap"><FONT color=firebrick><STRONG>Select 
      Option&nbsp;&nbsp;&nbsp;&nbsp;</STRONG></FONT></TD>
    
	<TD width="20%"><select id=select1 name="collageinfo" style="HEIGHT: 22px; WIDTH:150px">
      <option selected>Collage Addmission</option>
    </select></TD>
    </TR></TABLE>
		    
		<INPUT id=submit1 name=submit1 style="LEFT: 287px; POSITION: absolute; TOP: 186px; Z-INDEX: 101" type=submit value=Submit>

<%
}
else
 {
 out.println("<h1> Invalid University Name</h1>");
}
}catch(Exception e){System.out.println("Exception ..."+e);}
%>
</form>
</body>
</html>