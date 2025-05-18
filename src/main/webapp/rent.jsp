<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
<style type="text/css">
<!--
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
}
.style2 {font-size: 14px}
-->
</style>
</HEAD>
<body background="images/17.jpg">

<form action="rent1.jsp" method="post">

<%@ include file="makecon.jsp" %>
<%@page session="true"%>
<%!  	ResultSet rs=null;
%>
<% 
      	st=con.createStatement();
  	rs=st.executeQuery("select  distinct city from rentals");
	%><br><br>
	<H2 align=center>Rented House</H2>
  <h2> </h2>
                      <span class="style1">Select The 
City</span>&nbsp;&nbsp;<span class="style2"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
<SELECT id=select1 name=select1 > 
<%
	while(rs.next())
	{%>
<option><%=rs.getString("city")%></option> 
<%}%>
</SELECT>&nbsp;&nbsp;&nbsp;
<INPUT id=submit1 name=submit1 type=submit value=Submit>
<br><br>
<table width="90%" border="0" align="center">
  <tr><td align="center">&nbsp;
<img src="images/New Folder/Houses/1.jpg" width="569" height="265" ></td>
</tr></table>
</form>
</BODY>
</HTML>
