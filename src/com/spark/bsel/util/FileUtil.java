package com.spark.bsel.util;

import java.io.File;

public class FileUtil {
	//public static String uploadPath = "F:/apache-tomcat-7.0.62/webapps/files"; // 上传文件的目录
	private static String uploadPath = "/data/HiRouter/apache-tomcat-7.0.40/webapps/files"; // 上传文件的目录

	public static String getUploadPath() {
		File file = new File(uploadPath);
		if (!file.exists() && !file.isDirectory()) {
			file.mkdir();
		}
		return uploadPath;
	}

	public static void setUploadPath(String uploadPath) {
		FileUtil.uploadPath = uploadPath;
	}
	
	
}
