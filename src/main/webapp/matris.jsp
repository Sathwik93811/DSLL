<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
<style type="text/css">
<!--
.style2 {
	font-size: 14px;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
</HEAD>
<BODY background="images/17.jpg">

<form action="matris2.jsp" method="post">

<%@ include file="makecon.jsp" %>
<%!  	ResultSet rs=null;
%>
<br>
<H2 align=center>Welcome To Matrimonials .....</H2>
  <h2> </h2><br>
  <center>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;  <span class="style2">Select  Country</span> &nbsp;&nbsp;&nbsp;   
<SELECT id=select1 
name=select1 style="HEIGHT: 22px; WIDTH: 129px">
<% 
      	st=con.createStatement();
  	rs=st.executeQuery("select distinct COUNTRY from matrimonial_det");
	while(rs.next())
	{%>


<option><%=rs.getString("COUNTRY")%></option>
<%}%>
</SELECT>&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT id=submit1 name=submit1 type=submit value=Submit>
</center>
<br>
<center>
<img src="images/matrimonial1.jpg" width="568" height="208">
</center>
</form>
</BODY>
</HTML>
