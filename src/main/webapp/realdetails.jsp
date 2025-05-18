<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<body background="images/17.jpg">
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!  	ResultSet rs=null;
%>
<%  String loc=request.getParameter("select2");%>
<%	System.out.println(loc);%>
<% try
	{
 	
	rs=st.executeQuery("select * from realestate where location = '"+loc+"'");
%>


<TABLE cellSpacing=0 cellPadding=0 width=780  border=0>

 <TBODY>
  <TR>
    <TD height=2></TD></TR>
  <TR>
    <TD vAlign=top height=321>
    <p align="center">
      
     
    <p align="center"><br>
      
     <b><i><font color="black" size="5">Real Estate Details are..</font></i></b>
    <p align="left">
      
     
<table border="1" cellpadding="1" cellspacing="1" width="610" height="110">    
<tr>
<td width="109" height="55">
  <p align="center"><b>Float No</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Owners Name</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Facilities</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Address</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Land In acrs/sqft</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>City</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Contact Number</b></p>
</td>

</tr>
    	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="109" height="55">
           <p align="center">
	   <%out.println(rs.getString(1));%></p>

	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%out.println(rs.getString(2));%></p>
	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%out.println(rs.getString(3));%></p>
	  </td>
	   <td width="109" height="55"><p align="center">  
	   <%out.println(rs.getString(5));%></p> 

	  </td>
	  <td width="109" height="55">  <p align="center">
	   <%out.println(rs.getInt(6));%></p> 

	  </td>
	  <td width="109" height="55"> <p align="center"> 
	   <%out.println(rs.getString(7));%> </p>

	  </td>
	  <td width="109" height="55"> <p align="center"> 
	   <%out.println(rs.getString(8));%> </p>

	  </td>
	   </tr> 
      <%}%>
 
    </TABLE>
</TBODY>

</TABLE>
<%String city=(String)session.getAttribute("city"); %>




<%}
catch(Exception e)
{
 System.out.println("error"+e);
}
finally
{
	rs.close();
	st.close();
	con.close();
}  
%>

</BODY></HTML>
