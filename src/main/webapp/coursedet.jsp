<%@ include file="makecon.jsp" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%!  ResultSet rs1 = null;
%>
<html>
<body background="images/17.jpg">

<%
//response.setHeader("refresh","2");
String collagename=""; 
collagename=request.getParameter("collagename");

if (collagename!=null) {
	//System.out.println("observe......"+collagename);
	out.println("<b>Collage Name:</b><h1>"+collagename+"::::</h1>");
	String collageid="";

	try
	{ 
   		rs1=st.executeQuery("select collageid from collage_det where collagename='"+collagename+"'");
               if(rs1.next())
				{
               	collageid=rs1.getString(1);
               	System.out.println("Collage Id in collage detail :"+collageid);
				//out.println("hai........."+collageid);
				}
               ResultSet rs=st.executeQuery("select * from course_det where collageid='"+collageid+"'");
	
     %>
   <table border="1" cellpadding="1" cellspacing="1" width="788" height="110">    
<tr>
<td width="109" height="55">
  <p align="center"><b>Course Name</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>No of Seats</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Duration of Course</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>fee Details</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>course Starting Date</b></p>
</td>
</tr>  

<%
while(rs.next())
	{%>
            <tr>	
           <td width="109" height="55">
           <p align="center">
	   <b><%=rs.getString(3)%></p>

	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <b><%=rs.getString(4)%></p>
	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <b><%=rs.getInt(5)%></p>
	  </td>
	   <td width="109" height="55"><p align="center">  
	   <b><%=rs.getDouble(6)%></p> 

	  </td>
	  <td width="109" height="55">  <p align="center">
	   <b><%=rs.getString(7)%></p> 
                   </td>
	   </tr> 
      <%}
	rs1.close();
	rs.close();
	st.close();
	
           }catch(Exception e){System.out.println("Exception ..."+e);}			


}//if
else{
out.println("<center><h2>College Not Available</h2></center>");
}



%>
</body>
</html>

