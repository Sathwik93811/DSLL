<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
</HEAD>

<BODY background="images/17.jpg">
<%@ include file="makecon.jsp" %>
<%!  	ResultSet rs=null;
%>

<% try
	{
 	
	rs=st.executeQuery("select * from jobs");
%>


<TABLE cellSpacing=0 cellPadding=0 width=100%  border=0 >

 <TBODY>
  <TR>
    <TD height=2></TD></TR>
  <TR>
    <TD vAlign=top height=321>
    <p align="center">
      
     
    <p align="center"><br><br>
      <b><i><font color="black" size="5">Total Available Job Details are..</font></i></b>
    <p align="left"><br>
      
     
<table border="1" cellpadding="1" cellspacing="1" width="624" height="110" align="center">    
<tr>
<td width="61" height="55">
  <p align="center"><b>Job Code</b></p>
</td>
<td width="66" height="55">
  <p align="center"><b>Job Name</b></p>
</td>
<td width="115" height="55">
  <p align="center"><b>Qualification</b></p>
</td>
<td width="61" height="55">
  <p align="center"><b>Skills</b></p>
</td>
<td width="101" height="55">
  <p align="center"><b>Experience</b></p>
</td>
<td width="91" height="55">
  <p align="center"><b>Vacancies</b></p>
</td>
<td width="91" height="55">
  <p align="center"><b>Last Date</b></p>
</td>
<td width="91" height="55">
  <p align="center"><b>Location</b></p>
</td>
<td width="91" height="55">
  <p align="center"><b>Contact No.</b></p>
</td>
</tr>
    	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="61" height="55">
           <p align="center">
	   <%out.println(rs.getInt(1));%></p>

	  </td>
	  <td width="66" height="55">  <p align="center">
 
	   <%out.println(rs.getString(2));%></p>
	  </td>
	  <td width="115" height="55">  <p align="center">
 
	   <%out.println(rs.getString(3));%></p>
	  </td>
	   <td width="61" height="55"><p align="center">  
	   <%out.println(rs.getString(4));%></p> 

	  </td>
	  <td width="101" height="55">  <p align="center">
	   <%out.println(rs.getInt(6));%></p> 

	  </td>
	  <td width="91" height="55"> <p align="center"> 
	   <%out.println(rs.getInt(7));%> </p>

	  </td>
	  <td width="91" height="55"> <p align="center"> 
	   <%out.println(rs.getString(10));%> </p>

	  </td>
	  	  <td width="91" height="55"> <p align="center"> 
	   <%out.println(rs.getString(12));%> </p>

	  </td>
	  <td width="91" height="55"> <p align="center"> 
	   <%out.println(rs.getString(11));%> </p>

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
