<%@ include file="makecon.jsp" %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
</HEAD>
<BODY bgColor=lightsteelblue>
<form action="edu_Addcourse.jsp" method=post>

<%!  	
	ResultSet rsuni = null;
	ResultSet rscol=null;
	ResultSet rscourse = null;
%>
<%! String strr;%> 
<%! int univid,unid,colid,courseid;%>
<% 
    Statement corsunist=con.createStatement();
  	rsuni=corsunist.executeQuery("select univid,univname from univers_det");
	%>
<H2>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Select The University:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <SELECT id=select1 name=univid style="HEIGHT: 22px; WIDTH: 129px"> 
<%
	while(rsuni.next())
	{	
		univid=rsuni.getInt(1);
		out.println(univid);
%>
<option value='<%=univid%>'><%=rsuni.getString(2)%></option>
<%}%>
</SELECT></H2>
<%
	Statement corscolst=con.createStatement();
	String cmd="Select * from collage_det where univid="+univid;
	out.println(cmd);
	rscol=corscolst.executeQuery(cmd);
%>
<H4>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Select The 
College:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <SELECT id=select1 
name=collegeid style="HEIGHT: 22px; WIDTH: 129px"> 
<%
	while(rscol.next())
	{%>
<option value='<%=rscol.getInt(1)%>'><%=rscol.getString(3)%></option>
<%}%>

</SELECT></H4>