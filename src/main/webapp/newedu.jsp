<%@ include file="makecon.jsp" %>
<%@page session="true"%>
<%      int uid=Integer.parseInt(request.getParameter("text1")); 
	String uname=request.getParameter("text2");
	String uloc=request.getParameter("text3");	
	String uadd=request.getParameter("text4");
	String webw=request.getParameter("text5");

                int coid=Integer.parseInt(request.getParameter("cid")); 
	String coname=request.getParameter("cname");
	String coloc=request.getParameter("cloc");	
	String coadd=request.getParameter("cadd");
	String webco=request.getParameter("wc");
	String aboutco=request.getParameter("abc");	
	String estco=request.getParameter("estdate");	

               int cid=Integer.parseInt(request.getParameter("text8")); 
	String cname=request.getParameter("text9");
	String nos=request.getParameter("text10");	
	int dc=Integer.parseInt(request.getParameter("text11"));
	double fd=Double.parseDouble(request.getParameter("text12"));
	String aboutc=request.getParameter("text6");	
	String cstdate=request.getParameter("text13");	


%>
<%! PreparedStatement ps=null;%>
<%! PreparedStatement ps1=null;%>
<%! PreparedStatement ps2=null;%>
<%                try
	{

 	ps=con.prepareStatement("insert into univers_det values(?,?,?,?,?)");
	ps.setInt(1,uid);
	ps.setString(2,uname);
	ps.setString(3,uloc);
	ps.setString(4,uadd);
	ps.setString(5,webw);
	int j=ps.executeUpdate();


 	ps1=con.prepareStatement("insert into collage_det values(?,?,?,?,?,?,?,?)");
	ps1.setInt(1,coid);

	ps1.setInt(2,uid);
	ps1.setString(3,coname);
	ps1.setString(4,coadd);
	ps1.setString(5,coloc);
	ps1.setString(6,webco);
	ps1.setString(7,aboutco);
	ps1.setString(8,estco);

	int k=ps1.executeUpdate();


 	ps2=con.prepareStatement("insert into course_det values(?,?,?,?,?,?,?)");
	ps2.setInt(1,cid);
	ps2.setInt(2,coid);
	ps2.setString(3,cname);
	ps2.setString(4,nos);
	ps2.setInt(5,dc);
	ps2.setDouble(6,fd);
	ps2.setString(7,cstdate);

	int l=ps2.executeUpdate();

	if (j>0 && k>0 && l>0)
                    {
                     out.println("<h1>Values Are Added</h1>");
	    }
	else
                    {
                     out.println("<h1>Values Are Not Added</h1>");
	    }
 	}catch(Exception e){System.out.println("Exception ..."+e);}	
%>