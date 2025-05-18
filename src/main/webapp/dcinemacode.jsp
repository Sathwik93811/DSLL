<html>
<body background="images/17.jpg">

<%@ include file="makecon.jsp" %>
<%@page session="true"%>
 

<%! int j;%>
<%! int jcodedel;%>

<%   jcodedel=Integer.parseInt(request.getParameter("textfield1"));%>
<% try
	{
 	j=st.executeUpdate("delete from sunday_cinema where theetorno="+jcodedel);
	if(j>0)
	{	
		%>             
			                               
  			
<TR>
          <TD vAlign=top width=771 
    background="images/17.jpg"></TD></TR>
        <TR>
          <TD vAlign=top width=771>
		  <br><br>
		  <br><br>
            <p align="center"><h2>Record Deleted Sucessfully....</h2>
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    >&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    >
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </p>
          </TD></TR>



	<%
	}
	
	else
	{
		%>             
			                               
  			
<TR>
          <TD vAlign=top width=771 
    >&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    >
            <p align="center"><b>Sorry Can't Find.....</b>
            <%response.setHeader("Refresh","3;URL=jobcode3.html"); %>
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    >&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    >
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </p>
          </TD></TR>



	<%

}	

}

catch(Exception e)
{
	
	
 System.out.println("error"+e);
}

finally
{
	
	st.close();
	con.close();
}
%>

</body>
</html>