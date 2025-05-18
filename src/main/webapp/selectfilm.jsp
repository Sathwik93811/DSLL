
<html>
<body background="images/17.jpg">

<%@ page session="true"%>
<%@ include file="makecon.jsp" %>
<%! ResultSet rs=null;%>
<%! ResultSet rs1=null;%>
<% 
String tname="";
String loc="";
String address="";
String mname="";

String languagename=request.getParameter("languagename");
//session.setAttribute("languagename",languagename);
out.println("<h3><u>"+languagename+" Movies:</u></h3><br><br>");
    try
       {

  rs=st.executeQuery("select * from sunday_cinema where movielanguage='"+languagename+"'");
        %>
<table border="1" cellpadding="1" cellspacing="1" width="788" height="110">    
<tr>
<th width="109" height="55">
  <p align="center"><b>Theater Name</b></p>
</th>
<th width="109" height="55">
  <p align="center"><b>Location</b></p>
</th>
<th width="109" height="55">
  <p align="center"><b>Address</b></p>
</th>
<th width="109" height="55">
  <p align="center"><b>Movie Name</b></p>
</th>

<th width="109" height="55">
  <p align="center"><b>MorningShow</b></p>
</th>
<th width="109" height="55">
  <p align="center"><b>MatnyShow</b></p>
</th>
<th width="109" height="55">
  <p align="center"><b>FirstShow</b></p>
</th>
<th width="109" height="55">
  <p align="center"><b>SecondShow</b></p>
</th>
<th width="109" height="55">
  <p align="center"><b>Phone No</b></p>
</th>
</tr>  
<%
               while(rs.next())
	{
 

%> 
<tr>	
           <td width="109" height="55">
           <p align="center">
	   <b><%=rs.getString(2)%></p>

	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%=rs.getString(3)%></p>
	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%=rs.getString(4)%></p>
	  </td>
	   <td width="109" height="55"><p align="center">  
	   <%=rs.getString(5)%></p> 

	  </td>
	 <td width="109" height="55"><p align="center">  
	   <%=rs.getString(7)%></p> 

	  </td>
	  <td width="109" height="55"><p align="center">  
	   <%=rs.getString(8)%></p> 

	  </td>
	  <td width="109" height="55"><p align="center">  
	   <%=rs.getString(9)%></p> 

	  </td>
	  <td width="109" height="55"><p align="center">  
	   <%=rs.getString(10)%></p> 

	  </td>
	  <td width="109" height="55">  <p align="center">
	   <%=rs.getInt(11)%></p> 
                   </td>
	   </tr> 


      <%}
	rs.close();
	st.close();
	
           }catch(Exception e){
           
           
           
           System.out.println("Exception ..."+e); }			

%>
</table>
<a align="right" href="cinemaret.html">back</a>
