<html>
<body background="images/17.jpg">

<%@ include file="makecon.jsp" %>
<%@ page session="true"%>

<%  
	int coursid=Integer.parseInt(request.getParameter("courseid")); 
	int colid=Integer.parseInt(request.getParameter("collegeid")); 
	String coursename=request.getParameter("coursename");
	int noofseats=Integer.parseInt(request.getParameter("noofseats"));	
	int dur=Integer.parseInt(request.getParameter("duration"));
	double fee=Double.parseDouble(request.getParameter("feedet"));
	String cstdate=request.getParameter("coursestdate");
%>
<%! PreparedStatement ps1=null;%>

<%  try{
		ps1=con.prepareStatement("insert into course_det values(?,?,?,?,?,?,?)");
		ps1.setInt(1,coursid);
		ps1.setInt(2,colid);
		ps1.setString(3,coursename);
		ps1.setInt(4,noofseats);
		ps1.setInt(5,dur);
		ps1.setDouble(6,fee);
		ps1.setString(7,cstdate);
		int x=ps1.executeUpdate();
		if (x>0)
		
			
		out.println("<br><br><br><br><center><h2>Course is Added to the College list</center></h2>");
			else   
			
			 //out.println("<br><br><br><br>");	
			 out.println("<br><br><br><br><center><h2>Failed to add to the College list</center></h1>");
			 
		}
		catch(Exception e){System.out.println("Exception ..."+e);}	
%>
</body>
</html>