package com.spark.bsel.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.Date;
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

import com.spark.bsel.dao.FilesDao;
import com.spark.bsel.util.FileUtil;

import net.sf.json.JSONObject;

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
 
	File tempPathFile;

	// 重写doPost方法，处理事件识别请求
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String path = this.getServletContext().getRealPath("/")+"webapps/files";
		FileUtil.setUploadPath(path);
		PrintWriter out = response.getWriter();
		JSONObject o = new JSONObject();
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

			Map<String, Object> map = new HashMap<String, Object>();

			int saveok = 0;
			String fpath = "";
			String fname = "";
			while (i.hasNext()) {
				FileItem fi = (FileItem) i.next();
				if (fi.isFormField() == false) {
					// 文件
					String tid = (String) map.get("t_id");

					String fileName = fi.getName();
					if (fileName != null) {
						File fullFile = new File(new String(fi.getName().getBytes(), "utf-8")); // 解决文件名乱码问题
						fname =   getName(fullFile.getName());
						fpath = getPath(tid);
						String suffix = (fname.substring(fname.lastIndexOf(".") + 1)).toLowerCase();  
						if("jpg".equals(suffix) || "png".equals(suffix) || "gif".equals(suffix)  || "bmp".equals(suffix) ){
							map.put("file_img", 1);
						}else{
							map.put("file_img", 0);
						}
						map.put("file_name", fullFile.getName());
						map.put("file_size", fi.getSize());
						map.put("file_path", "/" + tid + "/" +fname);

						File savedFile = new File(fpath, fname);
						fi.write(savedFile);
						saveok = 1;
					}

				} else {
					// 参数
					map.put(fi.getFieldName(), fi.getString());

				}

			}

			if (saveok > 0) {
				FilesDao fd = new FilesDao();
				Map<String, Object> m = fd.insert(map);
				 o=   JSONObject.fromObject(m);
				 o.put("result", 1);
			} else {

				o.put("result", 0);
			}
			System.out.print("upload succeed ："+map.get("file_path"));
		} catch (Exception e) {
			System.out.print("upload error ");
		}

		out.write(o.toString());
	}

	private String getName(String name) {
		String type = name.substring(name.lastIndexOf("."));
		return new Date().getTime() + type;

	}

	private String getPath(String t_id) {

		String basepath = FileUtil.getUploadPath() + "/" + t_id + "/";

		File file = new File(basepath);
		if (!file.exists() && !file.isDirectory()) {
			file.mkdir();
		}
		return basepath;
	}
}
