package com.spark.bsel.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.spark.bsel.dao.DeviceDao;
import com.spark.bsel.dao.StationDao;
import com.spark.bsel.util.ExportExcel;
import com.spark.bsel.util.WordUtil;
@WebServlet("/OutFile")
public class OutFileServlet extends HttpServlet {
	
	 private String filePath; //文件路径
	 private String fileName; //文件名称
	 private String fileOnlyName; //文件唯一名称
	 
	 
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
		
		String p = request.getServletContext().getRealPath("/")+"outfile";
		Map<String,Object>  map = getDataInfo(t_id);
		String msg = createWord(request.getServletContext(),map);
		
		if("createWordSuccess".equals(msg)){
			
			OutputStream out = response.getOutputStream();
			 
			String filename = request.getParameter("filename");
			// 文本从Brower传递是被编码为iOS-8859-1，需要转换成utf-8
			String filename_utf = fileOnlyName;//URLDecoder.decode(fileOnlyName, "UTF-8");//new String(fileOnlyName.getBytes("ISO-8859-1"),"utf-8");
			// fileOnlyName = URLDecoder.decode(fileOnlyName, "UTF-8");
			if (filename_utf == null || filename_utf.equals(""))
			{
			     out.write("请输入文件名！".getBytes("utf-8"));
			     response.setContentType("text/html;charset=utf-8");
			     out.close();
			     return;
			}
			// 获得服务器中文件的真实存储路径
			String filePath1 = filePath + File.separator +  filename_utf;
 
			 
			int indexIndector = filename_utf.indexOf(".");
			// 获得提取文件的文件后缀，包括.号
			String indector  = filename_utf.substring(indexIndector, filename_utf.length());
			// 由文件的全路径获得要下载文件的InputStream
			InputStream is = new FileInputStream(new File(filePath1));
			 
			Date date = new Date();
			long time = date.getTime();
			// 设置响应头的MIME类型
			filename_utf =  URLEncoder.encode(filename_utf, "UTF-8");
			response.setContentType("application/force-download");
			response.setHeader("Content-Length",String.valueOf(is.available()));
			response.setHeader("Content-Disposition", "attachment;filename=" +filename_utf);
			 
			int i = 0;
			byte[] b = new byte[1024];
			while ((i = is.read(b)) != -1)
			{
			     out.write(b, 0, i);
			}
			is.close();
			out.close();
		}else{
			
			
		}
		//request.getServletContext();
 
	}
	
	
	
	
	public Map<String,Object> getDataInfo(String t_id){
 
		StationDao sd = new StationDao();
		Map<String,Object>  map = sd.queryOutinfo(Integer.parseInt(t_id));
 
		DeviceDao dd = new DeviceDao();
		int id = Integer.parseInt(t_id);
		List<Map<String,Object>>  s_list = dd.queryList("s_list",id );
		List<Map<String,Object>>  o_list = dd.queryList("o_list", id);
		List<Map<String,Object>>  m_list = dd.queryList("m_list", id);
		List<Map<String,Object>>  d_list1 = dd.queryList("d_list1",id);
		List<Map<String,Object>>  d_list2 = dd.queryList("d_list2",id);
		List<Map<String,Object>>  as_list = dd.queryList("as_list",id);
		
		if(s_list == null ) s_list = new ArrayList<Map<String,Object>> ();
		if(o_list == null ) o_list = new ArrayList<Map<String,Object>> ();
		if(m_list == null ) m_list = new ArrayList<Map<String,Object>> ();
		if(d_list1 == null ) d_list1 = new ArrayList<Map<String,Object>> ();
		if(d_list2 == null ) d_list2 = new ArrayList<Map<String,Object>> ();
		if(as_list == null ) as_list = new ArrayList<Map<String,Object>> ();
		
		map.put("s_list", s_list);
		map.put("o_list", o_list);
		map.put("m_list", m_list);
		map.put("d_list1", d_list1);
		map.put("d_list2", d_list2);
		map.put("as_list", as_list);
		setjw(map);
		
		return map;
	}
	public  void   setjw(Map<String,Object>  map){
	
		if(map != null ){
			 
			double a1 = (double)map.get("t_longitude");
			double a2 = (double)map.get("t_latitude");
			double b1 = (double)map.get("tm_longitude");
			double b2 = (double)map.get("tm_latitude");
			if(a1>0){
				String[] s = GPS_2(a1);
				map.put("t_longitude1", s[0]);
				map.put("t_longitude2", s[1]);
				map.put("t_longitude3", s[2]);
			}
			if(a2>0){
				String[] s = GPS_2(a2);
				map.put("t_latitude1", s[0]);
				map.put("t_latitude2", s[1]);
				map.put("t_latitude3", s[2]);
			}
			
			if(b1>0){
				String[] s = GPS_2(b1);
				map.put("tm_longitude1", s[0]);
				map.put("tm_longitude2", s[1]);
				map.put("tm_longitude3", s[2]);
			}
			if(b2>0){
				String[] s = GPS_2(b2);
				map.put("tm_latitude1", s[0]);
				map.put("tm_latitude2", s[1]);
				map.put("tm_latitude3", s[2]);
			}
		}
	}
	
	
	 public String createWord(ServletContext  sc,Map<String,Object>  dataMap ) {
	        /** 用于组装word页面需要的数据 */
	 
	        
	        /** 组装数据 */
	       // dataMap.put("userName","张三");
	        
	        //SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
	       // dataMap.put("currDate",sdf.format(new Date()));
	        
	       // dataMap.put("content","这是其它内容这是其它内容这是其它内容这是其它内容这是其它内容这是其它内容这是其它内容这是其它内容这是其它内容这是其它内容这是其它内容这是其它内容这是其它内容");
	        

	        
	        /** 文件名称，唯一字符串 */
/*	        Random r=new Random();
	        SimpleDateFormat sdf1=new SimpleDateFormat("yyyyMMdd_HHmmss_SSS");
	        StringBuffer sb=new StringBuffer();
	        sb.append(sdf1.format(new Date()));
	        sb.append("_");
	        sb.append(r.nextInt(100));*/
	        
	        //文件路径
	        filePath=sc.getRealPath("/")+"outfile";
	        
	        //文件唯一名称"台站报告("++").doc";
	        fileOnlyName = "台站报告_"+dataMap.get("t_id")+"_"+dataMap.get("t_version")+".doc";
	        
	        //文件名称
	        fileName="用freemarker导出的Word文档.doc";
	        
	        /** 生成word */
	        WordUtil.createWord(dataMap, "model.ftl", filePath, fileOnlyName);
	        
	        return "createWordSuccess";
	    }
	 
	 
	 /**
	  * @Desc：下载生成的word文档，入口，用来跳转至struts XML配置
	  * @Author：张轮
	  * @Date：2014-1-22下午07:36:29
	  * @return
	  */
	    public String dowloadWord() {
	        /** 先判断文件是否已生成  */
	        try {
	         //解决中文乱码
	         filePath = URLDecoder.decode(filePath, "UTF-8");
	         fileOnlyName = URLDecoder.decode(fileOnlyName, "UTF-8");
	         fileName = URLDecoder.decode(fileName, "UTF-8");
	         
	         //如果文件不存在，则会跳入异常，然后可以进行异常处理
	            new FileInputStream(filePath + File.separator +  fileOnlyName);
	        } catch (Exception e) {
	         e.printStackTrace();
	         return "error";
	        }
	        return "dowloadWord";
	    }
	    
	    
	    
	    
	    public double  GPS_1(double a,double b,double c){
	    	double r = 0d;
	    	r =  a+(b/60)+(c/3600);

	    	return r ;
	    }
	    
	    public String[]  GPS_2(double d){
	    	String[]  r = new String[3] ;
	    	Double a,a1,b,c;
	    	a = Math.floor(d); //度
	    	a1 = ( d - a)*60;
	    	b= Math.floor(a1);//分
	    	c = (a1 - b)*60 ; //度
	    	
	    	r[0] = String.valueOf(a.intValue());
	    	r[1] =String.valueOf(b.intValue());
	    	DecimalFormat df = new DecimalFormat("#.00");
	    	r[2] =df.format(c);
	 
	    	return r ;
	    }
	    
	    public  String subZeroAndDot(String s){
	        if(s.indexOf(".") > 0){
	            s = s.replaceAll("0+?$", "");//去掉多余的0
	            s = s.replaceAll("[.]$", "");//如最后一位是.则去掉
	        }
	        return s;
	    }
}
