0.<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.IOException" %>
    <%@ page import="java.sql.SQLException" %>
    <%@ page import="javax.servlet.ServletOutputStream" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="dao.connect" %>
    <%@ page import="javax.servlet.http.HttpServlet" %>
    <%@ page import="javax.servlet.http.HttpServletRequest" %>
    <%@ page import="javax.servlet.http.HttpServletResponse" %>
    <%@ page import="dao.readFile" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
    <%@ page import="javax.servlet.ServletContext" %>
    <%@ page import="java.util.Calendar" %>
    <%@ page import="java.text.SimpleDateFormat" %>
    <%@ page import="java.text.DateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String UserName=(String) session.getAttribute("lgUser");
String role=(String) session.getAttribute("Role");
if(UserName==null)
{
	String contextPath=(String) session.getServletContext().getContextPath();
	response.sendRedirect(contextPath+"/index.jsp");
	return;
}
else
{
	if(role=="2")
	{
		String contextPath=(String) session.getServletContext().getContextPath();
		response.sendRedirect(contextPath+"/index.jsp");
		return;
	}
}
%>
<jsp:include page="practice_head.html" />
<%
try {
	connect conn=new connect();
	ResultSet readTest=conn.getFullTest(UserName);
	int no=1;
	if(readTest!=null)
	{
		while(readTest.next())
		{
			out.println("<tr>");
		    out.println("<th>"+no+"</th>");
		    out.println("<th>");
		    out.println("<button type=\"button\" class=\"btn btn-link\"><a href=\"/Final-New/Test/FullTest/"+readTest.getString("examination_code")+"\">"+readTest.getString("examination_code")+"</a></button>");                                                            
		    out.println("</th>");
		    out.println("<th>"+readTest.getString("date_added")+"</th>");
		    out.println("<th>"+readTest.getString("times")+"</th>");
		    out.println("</tr>");
		    no++;
		}
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<jsp:include page="practice_listen.html" />
<%
try {
	connect conn=new connect();
	ResultSet readTest=conn.getListenTest(UserName);
	int no=1;
	if(readTest!=null)
	{
		while(readTest.next())
		{
			out.println("<tr>");
		    out.println("<th>"+no+"</th>");
		    out.println("<th>");
		    out.println("<button type=\"button\" class=\"btn btn-link\"><a href=\"/Final-New/Test/Listening/"+readTest.getString("examination_code")+"\">"+readTest.getString("examination_code")+"</a></button>");                                                            
		    out.println("</th>");
		    out.println("<th>"+readTest.getString("date_added")+"</th>");
		    out.println("<th>"+readTest.getString("times")+"</th>");
		    out.println("</tr>");
		    no++;
		}
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<jsp:include page="practice_read.html" />
<%
try {
	connect conn=new connect();
	int no=1;
	ResultSet readTest=conn.getReadTest(UserName);
	if(readTest!=null)
	{
		while(readTest.next())
		{
			out.println("<tr>");
		    out.println("<th>"+no+"</th>");
		    out.println("<th>");
		    out.println("<button type=\"button\" class=\"btn btn-link\"><a href=\"/Final-New/Test/Reading/"+readTest.getString("examination_code")+"\">"+readTest.getString("examination_code")+"</a></button>");                                                            
		    out.println("</th>");
		    out.println("<th>"+readTest.getString("date_added")+"</th>");
		    out.println("<th>"+readTest.getString("times")+"</th>");
		    out.println("</tr>");
		    no++;
		}
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<jsp:include page="practice_end.html" />      