<%@ include file="makecon.jsp" %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
</HEAD>
<BODY bgColor=lightsteelblue>
<form action="newedu.jsp" method=post>

<%!  	
	ResultSet rs = null;
	ResultSet rs1 = null;
	ResultSet rs2 = null;
%>
<%! String strr;%> 
<%! int unid,colid,courseid;%>
<% try
	{
 	rs=st.executeQuery("select max(univid) from univers_det");
	if(rs.next())
		{
		
		unid=rs.getInt(1)+1;

		System.out.println("Max Univer id:"+unid);
		
		}
	else
		{
	   	unid=500;
		System.out.println("Max:"+unid);
		}

}catch(Exception e){System.out.println("Exception..."+e);}
%>


<P>
<TABLE border=1 cellPadding=1 cellSpacing=1 style="HEIGHT: 34px; WIDTH: 192px" 
width="75%">
  
  <TR>
    <TD><FONT color=darkmagenta size=5><STRONG>University 
      Details</STRONG></FONT></TD></TR></TABLE>
<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 515px; POSITION: absolute; TOP: 14px; WIDTH: 192px; Z-INDEX: 109" 
width="75%">
  
  <TR>
    <TD><FONT color=purple size=5><STRONG>
    Collage
    Details</STRONG></FONT></TD></TR></TABLE>
<TABLE border=1 cellPadding=1 cellSpacing=1 style="HEIGHT: 162px; WIDTH: 364px" 
width="75%">
  

  <TR>
    <TD>
      <P><FONT color=darkred><STRONG>University Id</STRONG></FONT></P></TD>
    <TD><INPUT id=text1 name=text1 value="<%=unid%>"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>University Name</STRONG></FONT></TD>
    <TD><INPUT id=text2 name=text2></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Univesity Location</STRONG></FONT></TD>
    <TD><INPUT id=text3 name=text3></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Univesity Address</STRONG></FONT></TD>
    <TD><INPUT id=text4 name=text4></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Web Address of 
    University</STRONG></FONT></TD>
    <TD><INPUT id=text5 name=text5></TD></TR></TABLE>
<P>&nbsp;</P>
<P>

 
<% try
	{
 	rs=st.executeQuery("select max(collageid) from collage_det");
	if(rs.next())
		{
		
		colid=rs.getInt(1)+1;
		System.out.println("Max college id:"+colid);
		
		}
	else
		{
	   	colid=500;
		System.out.println("Max:"+colid);
		}
}catch(Exception e){System.out.println("Exception..."+e);}
%>


<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 515px; POSITION: absolute; TOP: 14px; WIDTH: 192px; Z-INDEX: 105" 
width="75%">
  
  <TR>
    <TD><FONT color=purple size=5><STRONG>Collage Details 

<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 142px; LEFT: 405px; POSITION: absolute; TOP: 70px; WIDTH: 364px; Z-INDEX: 103" 
width="75%">
  
  <TR>
    <TD>
      <P><FONT color=darkred><STRONG>College Id</STRONG></FONT></P></TD>
    <TD><INPUT id=text1 name="cid" value="<%=colid%>"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>College</STRONG></FONT> Name</STRONG></FONT></TD>
    <TD><INPUT id=text2 name="cname"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>College</STRONG></FONT> Address</STRONG></FONT></TD>
    <TD><INPUT id=text3 name="cadd"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>College</STRONG></FONT> 
      Location</STRONG></FONT> </STRONG></FONT></TD>
    <TD><INPUT id=text4 name="cloc"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Web Address of <FONT 
      color=darkred><STRONG>College</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text5 name="wc"></TD></TR></TABLE>
<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 51px; LEFT: 405px; POSITION: absolute; TOP: 218px; WIDTH: 362px; Z-INDEX: 106" 
width="75%">
  
  <TR>
    <TD><FONT color=darkred><STRONG>About  
      College&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      </STRONG></FONT></TD>
    <TD><INPUT id=text6 name="abc"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Established&nbsp;Date</STRONG></FONT></TD>
    <TD><INPUT id=text7 name="estdate"></TD></TR></TABLE>
<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 515px; POSITION: absolute; TOP: 14px; WIDTH: 192px; Z-INDEX: 110" 
width="75%">
  
  <TR>
    <TD><FONT color=purple size=5><STRONG>Collage Details 
  </STRONG></FONT></TD></TR></TABLE>


  </STRONG></FONT></TD></TR></TABLE>
<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 240px; POSITION: absolute; TOP: 291px; WIDTH: 200px; Z-INDEX: 101" width="75%">
  

  <TR>
    <TD><FONT color=purple size=5><STRONG>Course Details 
  </STRONG></FONT></TD></TR></TABLE>
<P>
<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 515px; POSITION: absolute; TOP: 14px; WIDTH: 192px; Z-INDEX: 107" 
width="75%">
  
  <TR>
    <TD><FONT color=purple size=5><STRONG>Collage Details 
  </STRONG></FONT></TD></TR></TABLE>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P><INPUT id=submit1 name=submit1 style="LEFT: 243px; POSITION: absolute; TOP: 576px; Z-INDEX: 112" type=submit value=Submit><INPUT id=reset1 name=reset1 style="LEFT: 358px; POSITION: absolute; TOP: 576px; Z-INDEX: 113" type=reset value=Reset></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
<P>&nbsp;</P>


<% try
	{
 	rs=st.executeQuery("select max(courseid) from course_det");
	if(rs.next())
		{
		
		courseid=rs.getInt(1)+1;
		System.out.println("Max course id:"+courseid);
		
		}
	else
		{
	  	courseid=500;
		System.out.println("Max course id:"+courseid);
		}
}catch(Exception e){System.out.println("Exception..."+e);}
%>

<TABLE border=1 cellPadding=1 cellSpacing=1 width="75%" style="HEIGHT: 201px; LEFT: 204px; POSITION: absolute; TOP: 349px; WIDTH: 319px; Z-INDEX: 111">
  <TBODY>
  <TR>
    <TD>
      <P><FONT color=darkred><STRONG>Course Id</STRONG></FONT></P></TD>
    <TD><INPUT id=text8 name=text8 value="<%=courseid%>" ></TD></TR>
  <TR>
    <TD>
      <P><FONT color=darkred><STRONG>Course Name</STRONG></FONT></P></TD>
    <TD><INPUT id=text9 name=text9></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>
      <P><FONT color=darkred><STRONG>No of&nbsp; 
      Seat</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text10 name=text10></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>Duration&nbsp;of&nbsp;Course</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text11 name=text11></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT color=darkred><STRONG>Fees 
      Details</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text12 name=text12></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT color=darkred><STRONG>Course 
      Starting Date</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text13 name=text13></TD></TR>
  <TR>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE>

<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 515px; POSITION: absolute; TOP: 14px; WIDTH: 192px; Z-INDEX: 102" 
width="75%">
  
  <TR>
    <TD><FONT color=purple size=5><STRONG>Collage Details 
  </STRONG></FONT></TD></TR></TABLE>
<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 515px; POSITION: absolute; TOP: 14px; WIDTH: 192px; Z-INDEX: 104" 
width="75%">
  
  <TR>
    <TD><FONT color=purple size=5><STRONG>Collage Details 
  </STRONG></FONT></TD></TR></TABLE>
<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 515px; POSITION: absolute; TOP: 14px; WIDTH: 192px; Z-INDEX: 108" 
width="75%">
  
  <TR>
    <TD><FONT color=purple size=5><STRONG>Collage Details 
  </STRONG></FONT></TD></TR></TABLE>
</form>
</BODY>
</HTML>
