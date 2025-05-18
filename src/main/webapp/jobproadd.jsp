<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY  text=#000000 background="images/17.jpg" leftMargin=0 topMargin=0>
<link rel="stylesheet" type="text/css" media="all" href="../css/jsDatePick_ltr.min.css" />

<script language="JavaScript" type="text/javascript" src="javaScript/timeStampPicker.js">
</script>
<script language="javascript">

function validate()
{
	numeric=/^([0-9])+$/
letters=/^([a-z A-Z])+$/
exp=/[a-zA-Z0-9_.]+@[a-zA-Z]+([.][a-zA-Z])+/;
if(document.forms[0].cname.value=="")       /*for job name*/
{
alert("The Job Name cannot be left blank");
document.forms[0].cname.focus();
return false;
}
if(document.forms[0].cname.value.match(letters))
{
}
else
{
alert("Job Name with only Alphabets");
document.forms[0].cname.value="";
document.forms[0].cname.focus();
return false;
}


if(document.forms[0].qual.value=="")       /*for Qualifications*/
{
alert("The Qualifications cannot be left blank");
document.forms[0].qual.focus();
return false;
}
if(document.forms[0].qual.value.match(letters))
{
	}
else
{
alert("Qualifications with only Alphabets");
document.forms[0].qual.value="";
document.forms[0].qual.focus();
return false;
}
if(document.forms[0].skill.value=="")       /*for Required skills*/
{
alert("Required skills cannot be left blank");
document.forms[0].skill.focus();
return false;
}
if(document.forms[0].skill.value.match(letters))
{
}
else
{
alert("Required skills with only Alphabets");
document.forms[0].skill.value="";
document.forms[0].skill.focus();
return false;
}
if(document.forms[0].res.value=="")       /*for Responsibilities*/
{
alert("Responsibilities cannot be left blank");
document.forms[0].res.focus();
return false;
}
if(document.forms[0].res.value.match(letters))
{
}
else
{
alert("Responsibilities with only Alphabets");
document.forms[0].res.value="";
document.forms[0].res.focus();
return false;
}
if(document.forms[0].exp.value=="")       /*for Required Experiance*/
   {
     alert(" Required Experiance cannot be left blank");
     document.forms[0].exp.focus();
      return false;
    }
if(document.forms[0].exp.value!="")       /*for   Required Experiance*/
{
var str;
var str_len;
var  k;
var  m;

str= document.forms[0].exp.value;
str_len=str.length;

for(var i=0;i<str_len;i++)
{
k=str.charCodeAt(i);
if( ((k>47)&&(k<58))||(k==32)  )
{
  m=1;
}
else 
{
 m=2;
break;
}
}
if(m==2)
{
alert("please fill the  Required Experiance  with ONLY NUMERIC");
document.forms[0].exp.focus();
return false;
 }
}
if(document.forms[0].vacencies.value!="")       /*for  Vacancies*/
{
var str;
var str_len;
var  k;
var  m;
str= document.forms[0].vacencies.value;
str_len=str.length;
for(var i=0;i<str_len;i++)
{
k=str.charCodeAt(i);
if( ((k>47)&&(k<58))||(k==32)  )
{
  m=1;
}
else 
{
 m=2;
break;
}
}
if(m==2)
{
alert("please fill the Vacancies  with ONLY NUMERIC");
document.forms[0].vacencies.focus();
return false;
 }
}
if(jobcode11.cnum.value=="")  //For Contact Number
  {
   alert("Contact number Can't be left blank");
   jobcode11.cnum.focus();
  return false;  
  }
else
 if(((jobcode11.cnum.value).length)>10||((jobcode11.cnum.value).length)<10)
  {
  alert("please enter Contact number 10 charsonly");
  jobcode11.cnum.value=""; 
  jobcode11.cnum.focus();
  return false;
  }

if(document.forms[0].cloc.value=="")       /*for Location*/
{
alert("The Locationcannot be left blank");
document.forms[0].cloc.focus();
return false;
}
if(document.forms[0].cloc.value.match(letters))
{
}
else
{
alert("Location with only Alphabets");
document.forms[0].cloc.value="";
document.forms[0].cloc.focus();
return false;
}
return true;
}
</script>
</HEAD>

<%@ include file="makecon.jsp" %>

<%!  	
	ResultSet rs = null;
%>
<%! int jcode;%>
<%! String strr;%> 
<% try
	{
 	rs=st.executeQuery("select max(job_code) from jobs");
	if(rs.next())
		{
		
		jcode=rs.getInt(1)+1;
		System.out.println("MaxJcode:"+jcode);
		
		}
	else
		{
	   	jcode=500;
		System.out.println("Max:"+jcode);
		}

 }
 catch(Exception e)
	{}
finally
{
	rs.close();
	st.close();
	con.close();
}
 %>

 	
<TABLE cellSpacing=0 cellPadding=0 width=761 border=0>

  <TBODY>
  <TR>
    <TD vAlign=top height=321 width="784">
      <TABLE cellSpacing=0 cellPadding=0 width="784" border=0 height="353">
       <form name="jobcode11" method="post" action="jobadds.jsp">
        <TR>
    <TD width="50%">
    <P><FONT color=darkred><STRONG>Job Code</STRONG></FONT></P></TD>
    <TD width="50%"><INPUT id=text1 name="cid" value="<%=jcode%>" readonly="readonly"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>Job</STRONG></FONT> Name</STRONG></FONT></TD>
    <TD><INPUT id=text2 name="cname"></TD></TR>
   <TR>
    <TD><FONT color=darkred><STRONG><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>Qualifications</STRONG </STRONG></FONT></TD>
    <TD><INPUT id=text4 name="qual"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Required<FONT 
      color=darkred><STRONG> Skills </STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text5 name="skill"></TD></TR>
	  <TR>
    <TD><FONT color=darkred><STRONG>created <FONT 
      color=darkred><STRONG> by </STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text5 name="crby"></TD></TR>
	<TR>
    <TD><FONT color=darkred><STRONG>Crated&nbsp;On</STRONG></FONT></TD>
    <td><INPUT id=text7 name="estdate" readOnly="true">
	<a href="javascript:show_calendar('document.jobcode11.estdate', document.jobcode11.estdate.value);">
<img src="images/cal.gif" alt="Click here to get Calender" width="18" height="18"	border="0" /></a></td></tr>
</TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Last&nbsp;Date</STRONG></FONT></TD>
    <td><INPUT id=text7 name="lstdate" readOnly="true">
	<a href="javascript:show_calendar('document.jobcode11.lstdate', document.jobcode11.lstdate.value);">
<img src="images/cal.gif" alt="Click here to get Calender" width="18" height="18"	border="0" /></a></td></tr>
</TR>
<TR>
    <TD><FONT color=darkred><STRONG>Responsibilities  
       </STRONG></FONT></TD>
    <TD><INPUT id=text6 name="res"></TD></TR>
 <TR>
    <TD><FONT color=darkred><STRONG>Required<FONT 
      color=darkred><STRONG> Experiance </STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text5 name="exp"></TD></TR>
	<TR>
   <TR>
    <TD><FONT color=darkred><STRONG><FONT 
      color=darkred>Vacancies</FONT></STRONG></TD>
    <TD><INPUT id=text2 name="vacencies"></TD></TR>
    <TR>
    <TD><FONT color=darkred><STRONG><FONT 
      color=darkred>Contact Number</FONT></STRONG></TD>
    <TD><INPUT id=text2 name="cnum"></TD></TR>
	<TD><FONT color=darkred><STRONG><FONT 
      color=darkred>Location</FONT></STRONG></TD>
    <TD><INPUT id=text2 name="cloc"></TD></TR>
<tr>
<td>
<INPUT id=submit1 name=submit1 type=submit value=Submit onClick="return validate();">&nbsp;&nbsp;&nbsp;
</td>
<td>
<INPUT id=reset1 name=reset1  type=reset value=Reset>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="jobprojob.html" target=right><STRONG>Back</STRONG></A>
</td>
</tr>
</TBODY>
</TABLE></TD></TR></TBODY></TABLE>
</BODY></HTML>
