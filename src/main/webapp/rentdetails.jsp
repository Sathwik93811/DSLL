<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 leftMargin=0 topMargin=0 background="images/17.jpg">
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!  	ResultSet rs=null;
%>
<%  String loc=request.getParameter("select2");%>
<%	System.out.println(loc);%>
<%	//out.println(loc);%>
<% try
	{
 	
	rs=st.executeQuery("select * from rentals where location = '"+loc+"'");
%>


<TABLE cellSpacing=0 cellPadding=0 width=780  border=0>

 <TBODY>
  <TR>
    <TD height=2></TD></TR>
  <TR>
    <TD vAlign=top height=321>
    <p align="center">
      
     
    <p align="center"><br>
      
     <b><i><font color="black" size="6">Rented House  Details are..</font></i></b>
    <p align="left">
      
     
<table border="1" cellpadding="1" cellspacing="1" width="610" height="110">    
<tr>
<td width="73" height="55">
  <p align="center"><b>House No</b></p>
</td>
<td width="82" height="55">
  <p align="center"><b>Owners Name</b></p>
</td>
<td width="87" height="55">
  <p align="center"><b>Facilities</b></p>
</td>
<td width="80" height="55">
  <p align="center"><b>Address</b></p>
</td>
<td width="59" height="55">
  <p align="center"><b>Rent</b></p>
</td>
<td width="94" height="55">
  <p align="center"><b>Rent in Adavance</b></p>
</td>
<td width="97" height="55">
  <p align="center"><b>Contact Number</b></p>
</td>

</tr>
    	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="73" height="55">
           <p align="center">
	   <%out.println(rs.getString(1));%></p>

	  </td>
	  <td width="82" height="55">  <p align="center">
 
	   <%out.println(rs.getString(2));%></p>
	  </td>
	  <td width="87" height="55">  <p align="center">
 
	   <%out.println(rs.getString(3));%></p>
	  </td>
	   <td width="80" height="55"><p align="center">  
	   <%out.println(rs.getString(5));%></p> 

	  </td>
	  <td width="59" height="55">  <p align="center">
	   <%out.println(rs.getString(6));%></p> 

	  </td>
	  <td width="94" height="55"> <p align="center"> 
	   <%out.println(rs.getString(7));%> </p>

	  </td>
	  <td width="97" height="55"> <p align="center"> 
	   <%out.println(rs.getString(9));%> </p>

	  </td>
	   </tr> 
      <%}%>
 
    </TABLE>
</TBODY>

</TABLE>

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
