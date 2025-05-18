<body background="images/17.jpg">

<%@ include file="makecon.jsp" %>
<%!int it1;%>
<%   
        System.out.println("welcome");
	try{
			it1=Integer.parseInt(request.getParameter("cid"));
		}
		catch(NumberFormatException e)
		{
			System.out.println("sss"+e);
		}

    System.out.println("sai"+it1);
	String st2=request.getParameter("cname");
	System.out.println(st2);

	String st3=request.getParameter("qual");
	System.out.println(st3);
	String st4=request.getParameter("skill");
    System.out.println(st4);
	String st5=request.getParameter("res");
	System.out.println(st5);
	int st6=Integer.parseInt(request.getParameter("exp"));	
	        System.out.println(st6);
	int st7=Integer.parseInt(request.getParameter("vacencies"));
			System.out.println(st7);
			String st8=request.getParameter("crby");	
	        System.out.println(st8);
	
	String st9=request.getParameter("estdate");
    System.out.println(st9);
	String st10=request.getParameter("lstdate");
    System.out.println(st10);
	

	
	
	String st11=request.getParameter("cnum");
	        System.out.println(st11);
	String st12=request.getParameter("cloc");	
	        System.out.println(st12);
			

%>



<%! PreparedStatement ps=null;%>
<% 




try
	{
 	ps=con.prepareStatement("insert into jobs values(?,?,?,?,?,?,?,?,?,?,?,?)");

	ps.setInt(1,it1);

	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);

	ps.setString(5,st5);

	ps.setInt(6,st6);
	ps.setInt(7,st7);

	ps.setString(8,st8);
	ps.setString(9,st9);
	ps.setString(10,st10);
	ps.setString(11,st11);
	ps.setString(12,st12);

	int j=ps.executeUpdate();
		if (j>0)
		{ %><TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>JOB Details&nbsp; added Successfully...</b>
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </p>
      </TD></TR>
    <%}
		else
		{%>
		<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Sorry !.. Try Again..</b>
             <%response.setHeader("Refresh","3;URL=jobproadd.jsp"); %>
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       </p>


          </TD></TR>	
			
		<%}
}
catch(Exception e)
{%>
	<p align="center"><b>Sorry !.. Try Again..</b>
             <%response.setHeader("Refresh","3;URL=jobproadd.jsp"); %>
 <%System.out.println("error"+e);
}
finally
{
	ps.close();
	st.close();
	con.close();
}
%>
