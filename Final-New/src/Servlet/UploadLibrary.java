package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.nio.file.Paths;
import java.util.List;
import java.util.Iterator;
import java.io.File;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.connect;

/**
 * Servlet implementation class Upload
 */
@WebServlet("/UploadLibrary")

public class UploadLibrary extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
	}
	
	//khi upload can dung phuong thuc post
	@Override
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		//String type=request.getParameter("file");
		//String name=request.getParameter("folder");
		//Prepare a database class
		//connect conn=new connect();
		//Save new test to database
		//conn.saveTest(type, name);

		//String name=(String) request.getParameter("user");
		
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		String filePath11;
		int maxFileSize = 5000*1024;
		int maxMemSize = 5*1024;
		 //filePath11 = getServletContext().getInitParameter("upload_library");
		filePath11="C:\\Users\\HuyDuc\\workspace\\Final-New\\Library\\";
		 //String filePath = filePath1+name;
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 if(!isMultipart){
			 out.print("file not upload");
			 return;
		 }
			DiskFileItemFactory factory = new DiskFileItemFactory();
			factory.setSizeThreshold(maxFileSize);
			factory.setRepository(new File("C:\\temp"));
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setFileSizeMax(maxFileSize);
			try {
				List fileItems = upload.parseRequest(request);
				Iterator i = fileItems.iterator();
				while(i.hasNext()){
					FileItem fi = (FileItem) i.next();
					if(!fi.isFormField()){
						String fieldName = fi.getFieldName();
						String fileName = fi.getName();
						String contentType = fi.getContentType();
						boolean isInMemory = fi.isInMemory();
						long sizeInBytes = fi.getSize();
						 File file;
						if(fileName.lastIndexOf("\\")>=0)
						 {
							 
							 file = new File(filePath11+fileName.substring(fileName.lastIndexOf("\\")));
						 }
						 else
						 {
							 file = new File(filePath11+fileName.substring(fileName.lastIndexOf("\\")+1));
						 }
						 fi.write(file);
						 out.println("File Uploader : "+fileName);
						 DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
							//Get current time of system to variable date
							java.util.Date date = Calendar.getInstance().getTime();
							String time = df.format(date);
						 String myDriver = "org.gjt.mm.mysql.Driver";
						 String dbURL = "jdbc:mysql://localhost:3306/ieltsonline";
					        String username = "root";
					        String password = "1234 ";
					        Connection conn = DriverManager.getConnection(dbURL, "root", "1234");
					        HttpSession session=request.getSession();
						String user= (String) session.getAttribute("lgUser");
						Random rand = new Random();
						int n = rand.nextInt(1000) + 1;
					String filename = fileName;
						 String query = " insert into file (id, filename, time, user)"
							        + " values (?, ?, ?, ?)";
						PreparedStatement preparedStmt = conn.prepareStatement(query);
					      preparedStmt.setInt (1, n);
					      preparedStmt.setString (2, filename);
					      preparedStmt.setString   (3, time);
					      preparedStmt.setString(4, user);
					  
					      // execute the preparedstatement
					      preparedStmt.execute();
					      
					      conn.close();
						 
						
					}
				
				}
			} catch (Exception e) {
				System.out.println("Exception : " + e.toString());
				System.out.println("File upload failed");
			}
		
	}
}