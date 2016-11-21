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

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.connect;

/**
 * Servlet implementation class Upload
 */
@WebServlet("/Upload")

public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
	}
	
	//khi upload can dung phuong thuc post
	@Override
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		String type=request.getParameter("file");
		String name=request.getParameter("folder");
		//Prepare a database class
		connect conn=new connect();
		//Save new test to database
		conn.saveTest(type, name);

		//String name=(String) request.getParameter("user");
		
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		String filePath1;
		int maxFileSize = 5000*1024;
		int maxMemSize = 5*1024;
		 filePath1 = getServletContext().getInitParameter("file_upload");
		 String filePath = filePath1+name;
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
							 
							 file = new File(filePath1+fileName.substring(fileName.lastIndexOf("\\")));
						 }
						 else
						 {
							 file = new File(filePath1+fileName.substring(fileName.lastIndexOf("\\")+1));
						 }
						 fi.write(file);
						 out.println("File Uploader : "+fileName);
						
					}
				
				}
			} catch (Exception e) {
				System.out.println("Exception : " + e.toString());
				System.out.println("File upload failed");
			}
		
	}
}