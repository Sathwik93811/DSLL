<html>
<body background="images/17.jpg">

<%@ page session="true" %>
<%@ include file="makecon.jsp" %>
<%! ResultSet rs=null; %>
<%! ResultSet rs1=null; %>
<%! ResultSet rs2=null; %>
<%! ResultSet rs3=null; %>

<% 
String hollno=request.getParameter("hollticketno");
out.println("<h1>Hall Ticket No:"+hollno+"</h1>");
int sub1=0,scored=0;
int sub2=0,sub3=0,sub4=0,sub5=0,lab1=0,lab2=0;
String proj="";
String  uniid="";
String  collagename="";
String collid="";
String courseid="";
try
{
  rs=st.executeQuery("select * from stu_det where hallticketno='"+hollno+"'");
   System.out.println("1"+hollno);
 if(rs.next())
 {
 System.out.println("2"+rs);
uniid=rs.getString(2);
collid=rs.getString(3);
courseid=rs.getString(4);
 //System.out.println("Univ id"+rs.getString(2)+"Collage ID"+rs.getString(3)+"Course "+rs.getString(4));
}
rs1=st.executeQuery("select collagename from collage_det where collageid='"+collid+"'");
 if(rs1.next())
 {
collagename=rs1.getString(1);
out.println("<b>College Name"+collagename);
}

%><br>
<table border="1" cellpadding="1" cellspacing="1" width="620" height="110">    
<tr>
<td width="109" height="55">
  <p align="center"><b>university ID</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Course ID</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Total Marks</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Marks Scored</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Remark</b></p>
</td>
</tr>  

<%

rs2=st.executeQuery("select * from stu_mark_det where hallticketno='"+hollno+"'");
if(rs2.next())
	{	

%>
   
 <tr>	
           <td width="109" height="55">
           <p align="center">
	   <b><%=rs2.getString(1)%></p>

	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <b><%=rs2.getString(3)%></p>
	  </td>

<%
   }
%>

<%
rs3=st.executeQuery("select * from stu_mark_det where hallticketno='"+hollno+"'");

if(rs3.next())
	{	
	sub1=rs3.getInt(4);
	sub2=rs3.getInt(5);
	sub3=rs3.getInt(6);
	sub4=rs3.getInt(7);
	sub5=rs3.getInt(8);
	lab1=rs3.getInt(9);
	lab2=rs3.getInt(10);
	proj=rs3.getString(11);
scored=(sub1+sub2+sub3+sub4+sub5+lab1+lab2);
System.out.println("Scored by Student"+scored);
System.out.println("proj"+proj);

	
 %>
	  <td width="109" height="55">  <p align="center">
 
	   <b><%=600%></p>
	  </td>
	   <td width="109" height="55"><p align="center">  
	   <b><%=scored%></p> 

	  </td>
	  <td width="109" height="55">  <p align="center">
	   <b><%=rs3.getString(13)%></p> 
    </td>
  </tr> 
</table>
<%=scored%>
      <%}
	rs1.close();
	rs2.close();
	rs3.close();
	rs.close();

	st.close();
	
           }catch(Exception e){System.out.println("Exception ..."+e); }			

%>


</body>
</html>