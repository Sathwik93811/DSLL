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
	int it7=Integer.parseInt(request.getParameter("t7"));	
	String st6=request.getParameter("t8");	
//	int it8=Integer.parseInt(request.getParameter("t9"));	
    String it8=request.getParameter("t9");

%>


<%! PreparedStatement ps=null;%>


<%
try
	{
 	ps=con.prepareStatement("insert into rentals values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1,st1);
	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);
	ps.setInt(6,it6);
	ps.setInt(7,it7);
	ps.setString(8,st6);
	ps.setString(9,it8);
	int j=ps.executeUpdate();
		if (j>0)
		{             
			
			out.println("<br><br><br><br><br><br>");
			out.println("<center><h2>Rentals Details are Added..</h2><center>");
			
		}
		else
		{	out.println("Sorry");
			ps.close();
		}
}
catch(Exception e)
{%>
 <center><h2>This House Advertisement is already posted</h2></center> 		
 <%//System.out.println("error"+e);
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