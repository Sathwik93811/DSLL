<html>
<body background="images/17.jpg">

<%@ include file="makecon.jsp" %>
<%@page session="true"%>


<% 
	String st1=request.getParameter("t1");
	String st2=request.getParameter("t2");	
	String st3=request.getParameter("t3");	
	String st4=request.getParameter("t4");	
	String st5=request.getParameter("t5");	
	int it6=Integer.parseInt(request.getParameter("t6"));	
	String st7=request.getParameter("t7");	
	//int it8=Integer.parseInt(request.getParameter("t8"));	
   String it8=request.getParameter("t8");
%>


<%! PreparedStatement ps=null;%>


<%
try
	{
 	ps=con.prepareStatement("insert into realestate values(?,?,?,?,?,?,?,?)");
	ps.setString(1,st1);
	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);
	ps.setInt(6,it6);
	ps.setString(7,st7);
	ps.setString(8,it8);
	int j=ps.executeUpdate();
		if (j>0)
		{             
			
			out.println("<br><br><br><br><br><br>");
			out.println("<center><h2>Real Estate Details are Added..</h2></center>");
			
		}
		else
		{	out.println("Sorry");
			ps.close();
		}
}
catch(Exception e)
{ %>		
<center><h2>Information already added </h2></center>
<%response.setHeader("Refresh","3;URL=realestate.html"); %> 

<%System.out.println("error"+e);
}
finally
{
	ps.close();
	st.close();
	con.close();
}
%>
</body>
</html>