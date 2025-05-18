<%@ include file="makecon.jsp" %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
<link rel="stylesheet" type="text/css" media="all" href="../css/jsDatePick_ltr.min.css" />

<script language="JavaScript" type="text/javascript" src="javaScript/timeStampPicker.js">
</script>
<script language="javascript">
function validate()
{
if(document.forms[0].coursename.value=="")      /*for Course name*/
{
numeric=/^([0-9])+$/
letters=/^([a-z A-Z])+$/
exp=/[a-zA-Z0-9_.]+@[a-zA-Z]+([.][a-zA-Z])+/;
alert("The Course Name cannot be left blank");
document.forms[0].coursename.focus();
return false;
}
if(document.forms[0].coursename.value.match(letters))
{
	}
else
{
alert("Name Alphabet only");
document.forms[0].coursename.value="";
document.forms[0].coursename.focus();
return false;
}
if(document.forms[0].noofseats.value=="")      /*for No of seats*/
{
alert("The Noof seats field cannot be left blank");
document.forms[0].noofseats.focus();
return false;
}
if(document.forms[0].noofseats.value.match(numeric))
{
	}
else
{
alert("for no.of seats pls enter Numarics only");
document.forms[0].noofseats.value="";
document.forms[0].noofseats.focus();
return false;
}

if(document.forms[0].duration.value=="")      /*for Duration of course in years*/
{
alert("The Duration of course in years field cannot be left blank");
document.forms[0].duration.focus();
return false;
}
if(document.forms[0].duration.value.match(numeric))
{
	}
else
{
alert("for Duration pls enter Numarics only");
document.forms[0].duration.value="";
document.forms[0].duration.focus();
return false;
}
if(document.forms[0].feedet.value=="")      /*for Fee Details*/
{
alert("Fee Details field cannot be left blank");
document.forms[0].feedet.focus();
return false;
}
if(document.forms[0].feedet.value.match(numeric))
{
	}
else
{
alert("for Fees pls enter Numarics only");
document.forms[0].feedet.value="";
document.forms[0].feedet.focus();
return false;
}
if(document.forms[0].coursestdate.value=="")      /*for Couse starting date */
{
alert("Couse starting date field cannot be left blank");
document.forms[0].coursestdate.focus();
return false;
}
return true;

}
</script>
</HEAD>
<BODY background="images/17.jpg">
<form action="edu_Addcourse.jsp" method=post name="f1">

<%!  	
	ResultSet rsuni = null;
	ResultSet rscol=null;
	ResultSet rscourse = null;
%>
<%! String strr;%> 
<%! int univid,unid,colid,courseid;%>

<%
	Statement corscolst=con.createStatement();
	String cmd="Select * from collage_det";
	rscol=corscolst.executeQuery(cmd);
%><br>
<H4>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select The 
College:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <SELECT id=select1 
name=collegeid style="HEIGHT: 22px; WIDTH: 129px"> 
<%	
	int val1=0;
	String val2=null;
	while(rscol.next())
	{
		val1=rscol.getInt(1);
		val2=rscol.getString(3);
	%>
		<option value='<%=val1%>'><%=val2%></option>");
<%}%>
</SELECT></H4>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</P>

<TABLE border=0ss cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 240px; POSITION: absolute; TOP: 100px; WIDTH: 200px; Z-INDEX: 101" width="75%">
  
  <TR>
    <TD><FONT color=purple size=5><STRONG>Course Details 
  </STRONG></FONT></TD>
  </TR></TABLE>

  <% try
	{
	Statement coursedet=con.createStatement();
 	rscourse=coursedet.executeQuery("select max(courseid) from course_det");
	if(rscourse.next())
		{
		courseid=rscourse.getInt(1)+1;
		System.out.println("Max course id:"+courseid);
		
		}
	else
		{
	  	courseid=500;
		System.out.println("Max course id:"+courseid);
		}
}catch(Exception e){System.out.println("Exception..."+e);}
%>
<br>
<TABLE border=0 cellPadding=1 cellSpacing=1 width="75%" style="HEIGHT: 130px; LEFT: 204px; POSITION: absolute; TOP: 150px; WIDTH: 319px; Z-INDEX: 111">
  <TBODY>
  <TR>
    <TD>
      <P><FONT color=darkred><STRONG>Course Id</STRONG></FONT></P></TD>
    <TD><INPUT id=text8 name=courseid value="<%=courseid%>" readonly="readonly"></TD></TR>
  <TR>
    <TD>
      <P><FONT color=darkred><STRONG>Course Name</STRONG></FONT></P></TD>
    <TD><INPUT type=" text" id=text9 name="coursename"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>
      <P><FONT color=darkred><STRONG>No of&nbsp; 
      Seat</STRONG></FONT></P></STRONG></FONT></TD>
    <TD><INPUT type=" text" id=text10 name="noofseats"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>Duration&nbsp;of&nbsp;Course in years</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT type=" text" id=text11 name="duration"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT color=darkred><STRONG>Fees 
      Details</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT type=" text" id=text12 name="feedet"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT color=darkred><STRONG>Course 
      Starting Date</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT type=" text" id=text13 name="coursestdate" readOnly="true">
	<a href="javascript:show_calendar('document.f1.coursestdate', document.f1.coursestdate.value);">
<img src="images/cal.gif" alt="Click here to get Calender" width="18" height="18"	border="0" /></a></TD></TD>
	
  <TR>
    <TD> </TD>
    <TD></TD></TR>
    
    </TBODY></TABLE>
	<p><br>
	  <br>
	 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input  align="left" id=submit1 name=submit1 style="LEFT: 243px; POSITION: absolute; TOP: 350px; Z-INDEX: 112" type=submit value=Submit onClick="return validate();">
<INPUT align="left" id=reset1 name=reset1 style="LEFT: 358px; POSITION: absolute; TOP: 350px; Z-INDEX: 113" type=reset value=Reset>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br><br><br><br><br><br><br><br><br><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<A href="edu_test.htm" target=right><STRONG>Back</STRONG></A>
</p>
	