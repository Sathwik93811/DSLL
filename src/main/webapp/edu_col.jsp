<%@ include file="makecon.jsp" %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
<link rel="stylesheet" type="text/css" media="all" href="../css/jsDatePick_ltr.min.css" />

<script language="JavaScript" type="text/javascript" src="javaScript/timeStampPicker.js">
</script>
<script>

function validate()
{
	numeric=/^([0-9])+$/
letters=/^([a-z A-Z])+$/
exp=/[a-zA-Z0-9_.]+@[a-zA-Z]+([.][a-zA-Z])+/;
if(document.forms[0].cname.value=="")       /*for College name*/
{
alert("The College Name cannot be left blank");
document.forms[0].cname.focus();
return false;
}
if(document.forms[0].cname.value.match(letters))
{
	}
else
{
alert("Name Alphabet only");
document.forms[0].cname.value="";
document.forms[0].cname.focus();
return false;
}
if(document.forms[0].cadd.value=="")       /*for College Address*/
{
alert("The College Address cannot be left blank");
document.forms[0].cadd.focus();
return false;
}
if(document.forms[0].cadd.value.match(letters))
{
	}
else
{
alert("Address Alphabet only");
document.forms[0].cadd.value="";
document.forms[0].cadd.focus();
return false;
}
if(document.forms[0].cloc.value=="")       /*for College Location*/
{
alert("The College Location cannot be left blank");
document.forms[0].cloc.focus();
return false;
}
if(document.forms[0].cloc.value.match(letters))
{
	}
else
{
alert("Location Alphabet only");
document.forms[0].cloc.value="";
document.forms[0].cloc.focus();
return false;
}

if(document.forms[0].wc.value=="")       /*for College Web Address*/
{
alert("The College Web Address cannot be left blank");
document.forms[0].wc.focus();
return false;
}
if(document.forms[0].abc.value=="")       /*for About College*/
{
alert("The About College field cannot be left blank");
document.forms[0].abc.focus();
return false;
}
if(document.forms[0].abc.value.match(letters))
{
	}
else
{
alert("Location Alphabet only");
document.forms[0].abc.value="";
document.forms[0].abc.focus();
return false;
}

if(document.forms[0].estdate.value=="")       /*for Established date*/
{
alert("Established date field cannot be left blank");
document.forms[0].estdate.focus();
return false;
}

return true;
}
</script>
</HEAD>
<BODY background="images/17.jpg">
<form action="edu_Addcol.jsp" method=post name="f1">

<%!  	
	ResultSet rs = null;
	ResultSet rsuni = null;
%>
<%! String strr;%> 
<%! int unid,colid,courseid;%>
<% 
    Statement	unist=con.createStatement();
  	rsuni=unist.executeQuery("select univid,univname from univers_det");
	%><br>
<H4>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select The 
University:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <SELECT id=select1 
name=uniname style="HEIGHT: 22px; WIDTH: 129px"> 
<%
	while(rsuni.next())
	{%>
	


<option value='<%=rsuni.getInt(1)%>'><%=rsuni.getString(2)%></option>
 
<%}%>

</SELECT></H4>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</P>
<br>
<br>
<TABLE border=0s cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 240px; POSITION: absolute; TOP: 100px; WIDTH: 200px; Z-INDEX: 101" width="75%">
   
  <TR>
    <TD><FONT color=purple size=5><STRONG>College Details 
  </STRONG></FONT></TD>
  </TR>
  </TABLE>
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

<br>

<!--<TABLE width="50%" o border=1 cellPadding=1 cellSpacing=1>

  <tr><td>College Details</td></tr>
  </TABLE>-->
  
<TABLE  align="center"border=0 cellPadding=1 cellSpacing=1 
 
width="63%">
 <!--<tr><td><FONT color=darkred size="5">College Details</FONT></td></tr>
 <br>
<br>
<br>-->
  <TR>
    <TD width="50%">
    <P><FONT color=darkred><STRONG>College Id</STRONG></FONT></P></TD>
    <TD width="50%"><INPUT id=text1 name="cid" value="<%=colid%>" readonly="readonly"></TD></TR>
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
    <TD><INPUT id=text5 name="wc"></TD></TR>
	
  <TR>
    <TD><FONT color=darkred><STRONG>About  
      College&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      </STRONG></FONT></TD>
    <TD><INPUT id=text6 name="abc"></TD></TR>
 <TR>
    <TD><FONT color=darkred><STRONG>Established&nbsp;Date</STRONG></FONT></TD>
    <td><INPUT id=text7 name="estdate" readOnly="true">
	<a href="javascript:show_calendar('document.f1.estdate', document.f1.estdate.value);">
<img src="images/cal.gif" alt="Click here to get Calender" width="18" height="18"	border="0" /></a></td></tr>
</TR>
</TABLE>	
<!--<TABLE  align="center" border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 512px; POSITION: absolute; TOP: 14px; WIDTH: 192px; Z-INDEX: 110" 
width="75%">
  
  <TR>
    <TD><FONT color=purple size=5><STRONG>College Details 
</STRONG></FONT></TD></TR></TABLE>-->
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT id=submit1 name=submit1 type=submit value=Submit onClick="return validate();">&nbsp;&nbsp;&nbsp;<INPUT id=reset1 name=reset1  type=reset value=Reset>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="edu_test.htm" target=right><STRONG>Back</STRONG></A>



</body>
