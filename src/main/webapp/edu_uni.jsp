<%@ include file="makecon.jsp" %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
<script>
function validate()
{
	numeric=/^([0-9])+$/
letters=/^([a-z A-Z])+$/
exp=/[a-zA-Z0-9_.]+@[a-zA-Z]+([.][a-zA-Z])+/;
if(document.forms[0].uniname.value=="")       /*for University name*/
{
alert("The University Name cannot be left blank");
document.forms[0].uniname.focus();
return false;
} 
if(document.forms[0].uniname.value.match(letters))
{
}
else
{
alert("Name Alphabet only");
document.forms[0].uniname.value="";
document.forms[0].uniname.focus();
return false;
}




if(document.forms[0].uniloc.value=="")       /*for University Location*/
{
alert("The University Location cannot be left blank");
document.forms[0].uniloc.focus();
return false;
}
if(document.forms[0].uniloc.value.match(letters))
{
	}
else
{
alert(" Location Name Alphabet only");
document.forms[0].uniloc.value="";
document.forms[0].uniloc.focus();
return false;
}
if(document.forms[0].uniadd.value=="")       /*for University Address*/
{
alert("The University Address cannot be left blank");
document.forms[0].uniadd.focus();
return false;
}
if(document.forms[0].uniadd.value.match(letters))
{
	}
else
{
alert(" Address Alphabet only");
document.forms[0].uniadd.value="";
document.forms[0].uniadd.focus();
return false;
}
if(document.forms[0].webadd.value=="")       /*for University Web Address*/
{
alert("The University Web Address cannot be left blank");
document.forms[0].webadd.focus();
return false;
}
return true;
}
</script>
</HEAD>
<form action="edu_Adduni.jsp" onsubmit = "return validate()">
<BODY background="images/17.jpg">


<%!  	
	ResultSet rs = null;
%>
<%! String strr;%> 
<%! int unid,colid,courseid;%>
<% try
	{
	String cmd="select max(univid) from univers_det";
	rs=st.executeQuery(cmd);
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


<TABLE border=0 cellPadding=1 cellSpacing=1 style="HEIGHT: 34px; WIDTH: 192px" 
width="100%" align="center">
  <TR><br>
    <TD  align="center" nowrap="nowrap"><FONT color=darkmagenta size=5><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;University 
      Details</STRONG></FONT></TD></TR>
  <TR align="left">
   <TD><br></TD></TR>  
  </TABLE>
<br><br>

<TABLE border=0 cellPadding=1 cellSpacing=1 width="65%" align="center">  

  <TR>
    <TD><FONT color=darkred><STRONG>University Id</STRONG></FONT></TD>
    <TD><INPUT type="text" id=text1 name=uniid value="<%=unid%>" readonly></TD>
  </TR>
  <TR>
    <TD><FONT color=darkred><STRONG>University Name</STRONG></FONT></TD>
    <TD><INPUT type="text" id=text2 name="uniname"></TD>
  </TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Univesity Location</STRONG></FONT></TD>
    <TD><INPUT type="text" id=text3 name="uniloc"></TD>
  </TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Univesity Address</STRONG></FONT></TD>
    <TD><INPUT type="text" id=text4 name="uniadd"></TD>
  </TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Web Address of 
    University</STRONG></FONT></TD>
    <TD><INPUT type="text" id=text5 name="webadd"></TD>
   </TR>

		<tr>
		<td height="32"></td>
		<td><INPUT id=submit1 name=submit1 type=submit value="Submit">&nbsp;&nbsp;&nbsp;
		<td><INPUT  type="reset" id=reset1 name=reset1 value=Reset></td>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		</td></tr>
</TABLE>

<center><A href="edu_test.htm" target=right>Back</A></center>

