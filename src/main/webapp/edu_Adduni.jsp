<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<html>
<body background="images/17.jpg">
<%  int uid=Integer.parseInt(request.getParameter("uniid")); 
	String uname=request.getParameter("uniname");
	String uloc=request.getParameter("uniloc");	
	String uadd=request.getParameter("uniadd");
	String webw=request.getParameter("webadd");
	
%>
<%! PreparedStatement ps=null;%>
<%  try
	{
 	ps=con.prepareStatement("insert into univers_det values(?,?,?,?,?)");
	ps.setInt(1,uid);
	ps.setString(2,uname);
	ps.setString(3,uloc);
	ps.setString(4,uadd);
	ps.setString(5,webw);
	int j=ps.executeUpdate();
	if (j>0)
                    {
                     
					 out.println("<br><br><br><br><center><h1><font color='black'>University is Added to the list</font><center></h1>");
	    }
	else
                    {
                     out.println("<center><h1>Failed to add to the universities list<center></h1>");
	    }
 	}catch(Exception e){System.out.println("Exception ..."+e);}	
%>
</body>
</html>