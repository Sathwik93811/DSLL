<html>
<body background="images/17.jpg">

<%@ include file="makecon.jsp" %>
<%@page session="true"%>


<% 
	System.out.println("welcome");

	String st1=request.getParameter("t1");

	int it2=Integer.parseInt(request.getParameter("t2"));	
	System.out.println("trace1"+it2);
	String st3=request.getParameter("t3");	

	String st4=request.getParameter("select1");	
	String st5=request.getParameter("select2");
	String st6=request.getParameter("select3");
	
	String st7=request.getParameter("t4");	

   //float dt8=Float.parseFloat(request.getParameter("t5"));	
    String dt8=request.getParameter("t5");
	String st8=request.getParameter("t6");	
	String st9=request.getParameter("t7");	
	String st10=request.getParameter("t8");	

	String st11=request.getParameter("select4");	
	//int it12=Integer.parseInt(request.getParameter("t9"));	
	String it12= request.getParameter("t9");
	System.out.println("welcome1");
%>
<%! PreparedStatement ps=null;%>
<%
try
	{
 	ps=con.prepareStatement("insert into matrimonial_det values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

	System.out.println("welcome2");

	ps.setString(1,st1);

	ps.setInt(2,it2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);
	ps.setString(6,st6);

	ps.setString(7,st7);

	ps.setString(8,dt8);

	ps.setString(9,st8);
	ps.setString(10,st9);
	ps.setString(11,st10);
	ps.setString(12,st11);
	ps.setString(13,it12);
	System.out.println("welcome5");
	
	int j=ps.executeUpdate();
		if (j>0)
		{             
			out.println("<br><br><br><br>");
			out.println("<center><h2>Matrimonail Details are Added..</h2></center>");
			
		}
		else
		{	out.println("Sorry");
			ps.close();
	System.out.println("welcome2");		}
}
catch(Exception e)
{ 		
 System.out.println("error"+e);
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