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
<jsp:include page="user_head.html" />
<%
connect conn=new connect();
try {
	ResultSet infoResult=conn.readInfo(UserName);
	while(infoResult.next())
	{                                                            
	    out.println("<div class=\"row\">");
	    out.println("<label class=\"label col col-2\">First Name:</label>");
	    out.println("<div class=\"col col-6\">");
	    out.println("<label class=\"input\">");
	    out.println("<input type=\"text\" disabled=\"\" placeholder=\""+infoResult.getString("firstname")+"\">");
	    out.println("</label>");
	    out.println("</div>");
	    out.println("</div>");

	    out.println("<p class=\"text-blank\">blank</p>");
	                                            
	    out.println("<div class=\"row\">");
	    out.println("<label class=\"label col col-2\">Last Name:</label>");
	    out.println("<div class=\"col col-6\">");
	    out.println("<label class=\"input\">");
	    out.println("<input type=\"text\" disabled=\"\" placeholder=\""+infoResult.getString("lastname")+"\">");
	    out.println("</label>");
	    out.println("</div>");
	    out.println("</div>");

	    out.println("<p class=\"text-blank\">blank</p>");
	    
	    out.println("<div class=\"row\">");
	    out.println("<label class=\"label col col-2\">E-mail:</label>");
	    out.println("<div class=\"col col-6\">");
	    out.println("<label class=\"input\">");
	    out.println("<input type=\"text\" disabled=\"\" placeholder=\""+infoResult.getString("email")+"\">");
	    out.println("</label>");
	    out.println("</div>");
	    out.println("</div>");

	    out.println("<p class=\"text-blank\">blank</p>");
	    
	    out.println("<div class=\"row\">");
	    out.println("<label class=\"label col col-2\">Date of Birth:</label>");
	    out.println("<div class=\"col col-6\">");
	    out.println("<label class=\"input\">");
	    out.println("<input type=\"text\" disabled=\"\" placeholder=\""+infoResult.getString("birthday")+"\">");
	    out.println("</label>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("<p class=\"text-blank\">blank</p>");
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<jsp:include page="user_edit.html" />
<%
try {
	ResultSet infoResult=conn.readInfo(UserName);
	while(infoResult.next())
	{
	    out.println("<div class=\"row\">");
	    out.println("<label class=\"label col col-2\">Username</label>");
	    out.println("<div class=\"col col-6\">");
	    out.println("<label class=\"input\">");
	    out.println("<i class=\"icon-append fa fa-user\"></i>");
	    out.println("<input type=\"text\" name=\"username\" disabled=\"\" id=\"username\" value=\""+UserName+"\">");
	    out.println("</label>");
	    out.println("</div>");
	    out.println("</div>"); 

	    out.println("<p class=\"text-blank\">blank</p>");
	                                                
	    out.println("<div class=\"row\">");
	    out.println("<label class=\"label col col-2\">E-mail:</label>");
	    out.println("<div class=\"col col-6\">");
	    out.println("<label class=\"input\">");
	    out.println("<i class=\"icon-append fa fa-envelope-o\"></i>");
	    out.println("<input type=\"email\" name=\"email\" id=\"email\" value=\""+infoResult.getString("email")+"\">");
	    out.println("</label>");
	    out.println("</div>");
	    out.println("</div>"); 

	    out.println("<p class=\"text-blank\">blank</p>");
	                                                
	    out.println("<div class=\"row\">");
	    out.println("<label class=\"label col col-2\">Edit Password:</label>");;
	    out.println("<div class=\"col col-6\">");
	    out.println("<label class=\"input\">");
	    out.println("<i class=\"icon-append fa fa-lock\"></i>");
	    out.println("<input type=\"password\" name=\"password\" id=\"password\" value=\""+infoResult.getString("password")+"\">");
	    out.println("</label>");
	    out.println("</div>");
	    out.println("</div>"); 

	    out.println("<p class=\"text-blank\">blank</p>");

	    out.println("<div class=\"row\">");
	    out.println("<label class=\"label col col-2\">Confirm:</label>");
	    out.println("<div class=\"col col-6\">");
	    out.println("<label class=\"input\">");
	    out.println("<i class=\"icon-append fa fa-lock\"></i>");
	    out.println("<input type=\"password\" name=\"passwordConfirm\" id=\"passwordConfirm\" value=\""+infoResult.getString("password")+"\">");
	    out.println("</label>");
	    out.println("</div>");
	    out.println("</div>"); 

	    out.println("<p class=\"text-blank\">blank</p>");

	    out.println("<div class=\"row\">");
	    out.println("<label class=\"label col col-2\">Date of Birth:</label>");
	    out.println("<div class=\"col col-6\">");
	    out.println("<label class=\"input\">");
	    out.println("<i class=\"icon-append fa fa-calendar\"></i>");
	    out.println("<input type=\"text\" name=\"date\" id=\"date\" value=\""+infoResult.getString("birthday")+"\">");
	    out.println("</label>");
	    out.println("</div>");
	    out.println("</div>");
	    out.println("<p class=\"text-blank\">blank</p>");
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<jsp:include page="user_result.html" />
<%
try {
	ResultSet resultInfo=conn.readResult(UserName);
	int no=1;
	while(resultInfo.next())
	{                      
		out.println("<tr>");
		out.println("<th>"+no+"</th>");
		out.println("<th>"+resultInfo.getString("examination_code")+"</th>");
		out.println("<th>"+resultInfo.getString("listening")+"</th>");
		out.println("<th>"+resultInfo.getString("reading")+"</th>");
		out.println("<th>"+resultInfo.getString("total")+"</th>");
		out.println("<th>"+resultInfo.getString("date_made")+"</th>");
		out.println("</tr>");
		no++;
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
<jsp:include page="user_foot.html" />