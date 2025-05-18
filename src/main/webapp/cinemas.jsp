<html>
<body background="images/17.jpg">

<%@ include file="makecon.jsp" %>
<%@page session="true"%>


<% 
	int it1=Integer.parseInt(request.getParameter("t1"));
	System.out.println(it1);
	String st2=request.getParameter("t2");	
		System.out.println(st2);
	String st3=request.getParameter("t3");	
		System.out.println(st3);
	String st4=request.getParameter("t4");	
		System.out.println(st4);
	String st5=request.getParameter("t5");	
		System.out.println(st5);
	String st6=request.getParameter("uniname");	
		System.out.println(st6);
	String st7=request.getParameter("t7");	
		System.out.println(st7);
	String st8=request.getParameter("t8");	
		System.out.println(st8);
	String st9=request.getParameter("t9");	
		System.out.println(st9);
	String st10=request.getParameter("t10");	
		System.out.println(st10);

	long it11=Long.parseLong(request.getParameter("t11"));	
	System.out.println("observe............"+it11);
	String st12=request.getParameter("t12");	
		System.out.println(st12);
	String st13=request.getParameter("t13");	
System.out.println("observe............"+st13);

%>


<%! PreparedStatement ps=null;%>


<%
try
	{
   
 	ps=con.prepareStatement("insert into sunday_cinema values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

	ps.setInt(1,it1);

	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);
	ps.setString(6,st6);
	ps.setString(7,st7);
	ps.setString(8,st8);
	ps.setString(9,st9);
	ps.setString(10,st10);
	ps.setLong(11,it11);
	ps.setString(12,st12);
	ps.setString(13,st13);
	    
	int j=ps.executeUpdate();
		if (j!=0)
		{   
			out.println("<br><br><br><br>");
			out.println("<center><h2>Sunday Cinema Details are Added..</h2></center>");
			
		}
		else
		{	out.println("Sorry");
			ps.close();
		}
}
catch(Exception e)
{ 	out.println("<h1>Advertisement already posted</h1>");	
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