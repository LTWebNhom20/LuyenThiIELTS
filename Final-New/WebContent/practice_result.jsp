<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="pra_result_head.html" />
<%
out.println("<tr>");
out.println("<th>"+session.getAttribute("nameTest")+"</th>");
out.println("<th>"+session.getAttribute("listen")+"</th>");
out.println("<th>"+session.getAttribute("read")+"</th>");
out.println("<th>"+session.getAttribute("total")+"</th>");
out.println("<th>"+session.getAttribute("date")+"</th>");
out.println("</tr>");
%>
<jsp:include page="pra_result_foot.html" />