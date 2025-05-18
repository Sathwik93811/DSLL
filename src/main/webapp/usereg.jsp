<%@ include file="makecon.jsp" %>
<body background="images/17.jpg">
<%
String name=request.getParameter("username");
String pass=request.getParameter("password");
String addr=request.getParameter("addr");
String phno=request.getParameter("phno");
PreparedStatement ps=null;
%>


<%
try
	{
 	ps=con.prepareStatement("insert into USERDETAILS values(?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,pass);
	ps.setString(3,addr);
	ps.setString(4,phno);

int j=ps.executeUpdate();

		if (j>0)
		{             
			
			out.println("<br><br><br><br><br><br>");
			out.println("<center><h2>User Registered Successfully <br><a target='_parent' href=MainPage.html>HOME<a/></h2></center>");
			
		}
		else
		{	out.println("Sorry");
			ps.close();
		}
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

