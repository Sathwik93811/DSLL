<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 leftMargin=0 topMargin=0 background="images/17.jpg">
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!  	ResultSet rs=null;
%>
<%  String gen=request.getParameter("select2");%>

<% try
	{
 	String cou=(String)session.getAttribute("cou");
 	String qry="select * from matrimonial_det where gender='"+gen+"' and country='"+cou+"'";
 	System.out.println(qry);
	rs=st.executeQuery(qry);
%>


<TABLE cellSpacing=0 cellPadding=0 width=780  border=0>

 <TBODY>
  <TR>
    <TD height=2></TD></TR>
  <TR>
    <TD vAlign=top height=321>
    <p align="center">
      
     
    <p align="center"><br>
      
     <b><i><font color="black" size="5">Available Information ....</font></i></b>
    <p align="left"><br>
      
     
<table border="1" cellpadding="1" cellspacing="1" width="620" height="110">    
<tr>
<td width="109" height="55">
  <p align="center"><b>Name </b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Age</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Mail Id</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Religion</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Occupation</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Address</b></p>
</td>
<!-- <td width="109" height="55">
  <p align="center"><b>Contact Number</b></p>
</td>
-->
</tr>
    	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="109" height="55">
           <p align="center">
	   <%out.println(rs.getString(1));%></p>

	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%out.println(rs.getInt(2));%></p>
	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%out.println(rs.getString(3));%></p>
	  </td>
	   <td width="109" height="55"><p align="center">  
	   <%out.println(rs.getString(5));%></p> 

	  </td>
	  <td width="109" height="55">  <p align="center">
	   <%out.println(rs.getString(9));%></p> 

	  </td>
	  <td width="109" height="55"> <p align="center"> 
	   <%out.println(rs.getString(10));%> </p>
	  </td>
	<%--  <td width="109" height="55"> <p align="center"> 
	   <%out.println(rs.getString(13));%></p></td> --%>
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
