<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
</HEAD>
<BODY background="images/17.jpg">

<form action="wheelcars1.jsp" method="post">

<%@ include file="makecon.jsp" %>
<%@page session="true"%>
<%!  	ResultSet rs=null;
%>

<% 
      	st=con.createStatement();
  	rs=st.executeQuery("select distinct CARMODEL from wheels");
	%><br><br>
	<H2 align=center>Welcome To Wheels Used Cars.....</H2>
  <h2> </h2>
<H3>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Select The 
Car Model &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	<SELECT id=select1 
name=select1 style="HEIGHT: 22px; WIDTH: 129px"> 


<%
	while(rs.next())
	{%>
<option>
<%=rs.getString("CARMODEL")%></option><p>
 
<%}%>
</SELECT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input id=submit1 name=submit1 type=submit value=Submit>
</H3>
</form>
<table align="center" width="100%" border="0">
<tr><td align="center">
<img src="images/New Folder/Houses/car7.jpg" width="637" height="278">
</td></tr></table>
</BODY>
</HTML>
