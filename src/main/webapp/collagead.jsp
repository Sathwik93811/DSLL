<%@ include file="makecon.jsp" %>
<%@page import="java.sql.*" %>
<%!  ResultSet rs1 = null;
%>
<html>
<body background="images/17.jpg">
<form action="coursedet.jsp" method=post>

<%
String univerid=(String)session.getAttribute("uniid");
//out.println("Session id"+univerid);
try{
String selectedname=request.getParameter("collageinfo");
//out.println("Selected name"+selectedname);
String uniid="";
String collageid="";
String colname="";
PreparedStatement pst=null;
//ResultSet rs1=null;

Class.forName("oracle.jdbc.driver.OracleDriver");
   con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","advt","advt");
	st=con.createStatement();
%>

<P style="FONT-SIZE: medium" align="center">Select The College:- 
  <select id=select2 style="LEFT: 182px; WIDTH: 161px; TOP: 136px" name ="collagename">
    <%

if(selectedname.equals("Collage Addmission"))
{
pst=con.prepareStatement("select * from collage_det where univid='"+univerid+"'");
rs1=pst.executeQuery();
while(rs1.next())
{
collageid=rs1.getString(1);
//colname=rs1.getString(3);
out.println("oooo"+colname);
//request.setAttribute("collagename",new String(colname));
//session.setAttribute("cid",new String(collageid));
System.out.println("Collage Id"+collageid);
//System.out.println("CollageName"+rs1.getString(2));
%>
   <option><%=rs1.getString(3)%></option>
     <!--<option selected><%= colname %></option>-->
	<%
	//request.setAttribute("collagename",new String(colname));
//session.setAttribute("cid",new String(collageid));
}

}
else
{
 response.sendRedirect("results.html");
}
rs1.close();
pst.close();
con.close();
}catch(Exception e){System.out.println("Exception ..."+e);}
%>
  </select>  
  <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="Submit" value="Submit" tabindex="9">
          
</form>
</body>
</html>