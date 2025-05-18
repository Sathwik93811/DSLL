<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
</HEAD>
<BODY background="images/17.jpg">

<form action="real1.jsp" method="post">

<%@ include file="makecon.jsp" %>
<%@page session="true"%>
<%!  	ResultSet rs=null;
%>

<% 
      	st=con.createStatement();
  	rs=st.executeQuery("select distinct city from realestate");
	%><br>
<H3 align=center>Welcome To Real Estates.....</H3>
  <h2> </h2><br>
<H4>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Select The 
City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <SELECT id=select1 
name=select1 style="HEIGHT: 22px; WIDTH: 129px">
	<%
	while(rs.next())
	{%>


<option><%=rs.getString("city")%></option>
 
<%
System.out.println(rs.getString("city"));
}%>
</SELECT>
</H4ss>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input id=submit1 name=submit1 type=submit value=Submit>
</form>
<table align="center" width="100%" border=0><tr><td align="center">
<img src="images/New Folder/Houses/real_estate.jpg" width="584" height="229"></td></tr></table> 
</BODY>
</HTML>
