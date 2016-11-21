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
    <%@ page import="javax.servlet.ServletContext" %>
    <%@ page import="java.util.Calendar" %>
    <%@ page import="java.text.SimpleDateFormat" %>
    <%@ page import="java.text.DateFormat" %>
<jsp:include page="pra_full_read_head.html" />
<%
out.println("<header align=\"center\">"+session.getAttribute("nameTest")+"</header>");
%>                                         
<fieldset class="text-test-all">      
<%
String servletPath="";
String URI=request.getRequestURI();

servletPath=request.getServletPath();
readFile read=new readFile();
String[] tmpURI=URI.split("\\/");
String nameTest="read.xlsx";
String direct=(String)session.getAttribute("direct");
direct+="read.xlsx";
//String direct="C:\\Users\\Admin\\workspace\\Final-New\\WebContent\\uploadFile\\user\\Reading\\Test1\\"+nameTest;
System.out.println(direct);

try {
out.println("<SCRIPT LANGUAGE=\"JavaScript\">");
out.println("var answers = new Array(10);");
int h=1;
int numberRow=read.Read(direct);
for(int i=0;i<numberRow;i++){
	if(read.ReadAnswer(direct, i))
	{
		out.println("answers["+h+"] = \""+read.Read(direct, i)+"\";");
		h++;
	}
}

out.println("</SCRIPT>");
} catch (Exception e) {
// TODO Auto-generated catch block
e.printStackTrace();
}


try {
int numberRow=read.Read(direct);
int NO=1;
int part1=2;
int part2=2;
int part3=2;
int i=0;
out.println(read.Read(direct, i++)+"<br />");
for(;i<part1*5+1;i+=5){
	//out.println("<ul>");
	//out.println("<li>"+read.Read(direct, i)+"</li>");
	
	out.println(read.Read(direct, i)+"<br />");
	for(int j=i+1;j<i+5;j++){
		out.println("<input name=\""+"Q"+NO+"\" type=\""+"radio\""+" value=\""+read.Read(direct, j)+"\"/>"+read.Read(direct, j)+"<br />");
	}
	NO++;
	//out.println("</ul>");
}
out.println(read.Read(direct, i++)+"<br />");
for(;i<part1*5+1+part2*5+1;i+=5){

	out.println(read.Read(direct, i)+"<br />");
	for(int j=i+1;j<i+5;j++){
		out.println("<input name=\""+"Q"+NO+"\" type=\""+"radio\""+" value=\""+read.Read(direct, j)+"\"/>"+read.Read(direct, j)+"<br />");
	}
	NO++;
	//out.println("</ul>");
}
out.println(read.Read(direct, i++)+"<br />");
for(;i<part1*5+1+part2*5+1+part3*5+1;i+=5){

	out.println(read.Read(direct, i)+"<br />");
	for(int j=i+1;j<i+5;j++){
		out.println("<input name=\""+"Q"+NO+"\" type=\""+"radio\""+" value=\""+read.Read(direct, j)+"\"/>"+read.Read(direct, j)+"<br />");
	}
	NO++;
	//out.println("</ul>");
}
} catch (Exception e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
%>
<SCRIPT>
function getScore() {
var score = 0
for (i=1; i<7; i++)
	if(document.querySelector('input[name="Q'+i+'"]:checked')!=null){
		
		if(document.querySelector('input[name="Q'+i+'"]:checked').value==answers[i])
		{
			score++;
		}
	}
document.getElementById("reading").value=score;

document.getElementById("reading2").value=score;


}
</SCRIPT>
<jsp:include page="pra_full_read_foot.html" />                                                        