
<%@ include file="makecon.jsp" %>
<%!String user;%>

<%!                      ResultSet rs = null;

			 String pass = null; 
%>

        	
<%		
user=request.getParameter("username");
pass = request.getParameter("password");
%>
<%
try
{
rs = st.executeQuery("select *  from adminclassified where  username='"+user+"'and  password='"+pass+"'"); 
if(rs.next())
 {  	%>

<frameset rows="23%,*">
<frame src="title.html"  scrolling=no  bordercolor=#6480ed  >
<frameset cols="25%,*">
<frame src="aleft.html" bordercolor=#6480ed scrolling=no>
<frame src="aright.jsp" name="right" bordercolor=#6480ed  scrolling=auto>
</frameset>
</frameset>
			  
<%	
}
    else
{     %>
	
<frameset rows="24%,*">
<frame src="title.html" name="top" noresize scrolling=no>
<frameset cols="22%,*">
<frame src="links.html" name="left" noresize scrolling=no> 
<frame src="LoginFail.html" name="right" noresize scrolling=n0>
</frameset>
</frameset>
	
	
	
	
	
	
	
	 <%      //con.close();
}

session.setAttribute("str1",user);	
}
catch(Exception e)
{}

%>