<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
</HEAD>
<BODY background="images/17.jpg">
<form action="realdetails.jsp" method="post">
<%@ include file="makecon.jsp" %>
<%@page session="true"%>
<%!  	ResultSet rs=null;
%>
<%  String city=request.getParameter("select1");
	session.setAttribute("city",city);
%>
<%	System.out.println("city");%>
<% 
	try
	{
    	
	System.out.println("hai");
    	st=con.createStatement();
  	rs=st.executeQuery("select distinct location from realestate where city = '"+city+"'");
	out.println("<h2><u>"+city+" Treasury:</u><h2>");
	System.out.println("hai1");
	%>
<H1 align=center>Real Estates..</H1>
  <h2> </h2>
<H2>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Select The 
Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <SELECT id=select1 
name=select2 style="HEIGHT: 22px; WIDTH: 129px"> 

	<%
	while(rs.next())
	{
	
	// System.out.println("wel"+rs.getString(4));
	%>


<option><%=rs.getString(1)%></option>

<%}%>
</SELECT></H2>

<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT id=submit1 name=submit1 type=submit value=Submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</P>

  
<%


}
catch(Exception e)
{}

%>
</BODY>
</HTML>
