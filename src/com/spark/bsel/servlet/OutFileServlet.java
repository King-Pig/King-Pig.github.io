package com.spark.bsel.servlet;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.spark.bsel.dao.StationDao;
import com.spark.bsel.util.ExportExcel;

public class OutFileServlet {
	private String uploadPath = "F:/apache-tomcat-7.0.62/webapps/files"; // 上传文件的目录
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String t_id = request.getParameter("t_id");
		String[] headers = {  "项目ID","贷款名称","借款人ID","用户名","借款人名称/企业名称","信用等级","客服id","客服名称","年利率","借款期限","借款期限类型","申请日期","成标日期","借款状态","最后修改时间","创建日期"};  
		//数据键名或者MODEL类字段名
		String[] Col = {"tasklogId","loanName","custId","userName","realName","creditGrade","serviceId","serviceName","profitInterest","loanDeadline","loanDeadlineType","createTime","finishTime","status","updateTime","createTime"};

		ExportExcel<Map<String,Object>> ex = new ExportExcel<Map<String,Object>>();
		//这是model类型的数据  写的例子  暂时不添加数据
		List<Map<String,Object>> excelList  = new ArrayList<Map<String,Object>>();
		StationDao sd = new StationDao();
		Map<String,Object>  map = sd.queryInfo(Integer.parseInt(t_id)); 
		//生成Excel
		HSSFWorkbook workbook = ex.exportExcel("sheet1", headers,Col, excelList,null);
		//下载
		response.setContentType("application/vnd.ms-excel");   
		response.setHeader("Content-disposition", "attachment;filename=test.xlsx"  );   
		OutputStream ouputStream = response.getOutputStream();   
		workbook.write(ouputStream);   
		ouputStream.flush();   
		ouputStream.close();  
	}
}
