<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.IOException" %>
    <%@ page import="javax.servlet.ServletException" %>
    <%@ page import="javax.servlet.ServletOutputStream" %>
    <%@ page import="javax.servlet.annotation.WebInitParam" %>
    <%@ page import="javax.servlet.annotation.WebServlet" %>
    <%@ page import="javax.servlet.http.HttpServlet" %>
    <%@ page import="javax.servlet.http.HttpServletRequest" %>
    <%@ page import="javax.servlet.http.HttpServletResponse" %>
    <%@ page import="dao.readFile" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
    <%@ page import="java.sql.SQLException" %>
    <%@ page import="java.util.Calendar" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="dao.connect" %>
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
<jsp:include page="Library.html" />
<%
//String UserName=(String) session.getAttribute("lgUser");

try {
	connect conn=new connect();
	ResultSet lb =conn.getLibrary(UserName);
	int no=1;
while(lb.next())
{
	out.println("<tr>");
	out.println("<th>"+lb.getInt("id")+"</th>");
    out.println("<th>"+lb.getString("filename")+"</th>");
    out.println("<th>"+lb.getString("time")+"</th>");
    out.println("<th>"+lb.getString("user")+"</th>");    
    out.println("<th>");
    out.println("<button type=\"button\" class=\"btn btn-link\">Download</button></a>");
    out.println("<th>");
    out.println("<a href=\"#btn-submit\" class=\"modal-opener\"><button type=\"button\" class=\"btn btn-link\" class=\"modal\" value=\"\\FullTest\\"+lb.getString("id")+"\" onClick=\"clic(this);\">Delete</button></a>");

    out.println("</th>");
    out.println("</tr>");
    no++;
}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>


