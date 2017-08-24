package com.spark.bsel.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
 

import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  

import org.apache.commons.fileupload.FileItem;  
import org.apache.commons.fileupload.disk.DiskFileItemFactory;  
import org.apache.commons.fileupload.servlet.ServletFileUpload;  

/**
 * Servlet implementation class QueryUserInfo
 */
@WebServlet("/UploadFile")
public class UploadFileServlet extends HttpServlet {
 
	 private static final long serialVersionUID = 1L;  
	    private String uploadPath = "E:\\temp"; // 上传文件的目录  
	    File tempPathFile;  
	  
	    // 重写doPost方法，处理事件识别请求  
	    protected void doPost(HttpServletRequest request,  
	            HttpServletResponse response) throws ServletException, IOException {  
	        try {  
	            // Create a factory for disk-based file items  
	            DiskFileItemFactory factory = new DiskFileItemFactory();  
	  
	            // Set factory constraints  
	            factory.setSizeThreshold(5000); // 设置缓冲区大小，这里是4m  
	            factory.setRepository(tempPathFile);// 设置缓冲区目录  
	  
	            // Create a new file upload handler  
	            ServletFileUpload upload = new ServletFileUpload(factory);  
	  
	            // Set overall request size constraint  
	           // upload.setSizeMax(9000000000l); // 设置最大文件尺寸，这里是4MB  
	  
	            List<FileItem> items = upload.parseRequest(request);// 得到所有的文件  
	            
	            Iterator<FileItem> i = items.iterator();  
	       
	            Map<String,Object>  map = new HashMap<String,Object>();
	            while (i.hasNext()) {
	                FileItem fi = (FileItem) i.next();  
	                if(fi.isFormField() == false){
	                	//文件
	                	String fileName = fi.getName();  
		                if (fileName != null) {  
		                    File fullFile = new File(new String(fi.getName().getBytes(), "utf-8")); // 解决文件名乱码问题  
		                    File savedFile = new File(uploadPath, fullFile.getName());  
		                    fi.write(savedFile);  
		                }  
	                	
	                	
	                }else{
	                	//参数
	                	map.put(fi.getFieldName(), fi.getString());
 
	                }
	                
	            } 
	            
	            if(map.size()>0){
	            	
	            }
	            System.out.print("upload succeed");  
	        } catch (Exception e) {  
	  
	        }  
	    }  

}
