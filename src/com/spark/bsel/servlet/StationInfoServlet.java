package com.spark.bsel.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spark.bsel.dao.FilesDao;
import com.spark.bsel.dao.StationDao;
import com.spark.bsel.util.CopyFileUtil;
import com.spark.bsel.util.FileUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@WebServlet("/StationInfo")
public class StationInfoServlet  extends HttpServlet {
 
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
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		PrintWriter out = response.getWriter();
		if(method == null) method ="";
		StationDao sd = new StationDao();
		if("querylist".equals(method)){
			int pageSize = 10;
			Map<String,Object>  map = new HashMap<String,Object>();
			
			String str_page = request.getParameter("page");
			String ps = request.getParameter("pageSize");
			String ts = request.getParameter("t_status");
			if(ps != null && !"".equals(ps) )
				pageSize = Integer.parseInt(ps);
			
			if(str_page == null || "".equals(str_page)) str_page = "1";
			int page = Integer.parseInt(str_page);
			map.put("pageIndex",  (page-1) * pageSize);
			map.put("pageSize", pageSize);
			map.put("t_name", request.getParameter("t_name"));
			map.put("t_city", request.getParameter("t_city"));
			map.put("t_county", request.getParameter("t_county"));
			map.put("t_status", ts);
/*			map.put("t_name", "");
			map.put("t_city", "");
			map.put("t_county", "");
			*/
			sd.queryStationList(map);
			JSONObject  o = JSONObject.fromObject(map);

			out.write(o.toString());
		}else if("queryinfo".equals(method)){
			String t_id = request.getParameter("t_id");
			String outfile = request.getParameter("outfile");
			if(t_id == null || "".equals(t_id)) t_id="0";
			Map<String,Object>  map = sd.queryInfo(Integer.parseInt(t_id));
			int group_id = (int)map.get("t_group");
			List<Map<String,Object>> t_version_list = sd.queryGroup(group_id);
			map.put("version_list", t_version_list);
			JSONObject  o = new JSONObject();
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
				
				FilesDao fd = new FilesDao();
				List<Map<String,Object>> list = fd.queryList(Integer.parseInt(t_id));
				map.put("files", list);
				
				o = JSONObject.fromObject(map);
			}
			out.write(o.toString());
		}else if("insert".equals(method)){
			 int user_id =1;
			 String r = sd.insertStationInfo(user_id);
			 JSONObject  o = new JSONObject();
			 o.put("id", r);
			 out.write(o.toString());
		}else if("update".equals(method)){
			Map  map = getParameterStringMap(request);
			
			if(map.get("t_longitude1") !=null  && map.get("t_longitude2") !=null  && map.get("t_longitude3") !=null ){
				double  c = GPS_1(Double.parseDouble((String)map.get("t_longitude1") ) ,  Double.parseDouble((String)map.get("t_longitude2") ) ,Double.parseDouble((String)map.get("t_longitude3") )  );
				map.put("t_longitude", c);
			}
			
			if(map.get("t_latitude1") !=null  && map.get("t_latitude2") !=null  && map.get("t_latitude3") !=null ){
				double  c = GPS_1(Double.parseDouble((String)map.get("t_latitude1") ) ,  Double.parseDouble((String)map.get("t_latitude2") ) ,Double.parseDouble((String)map.get("t_latitude3") )  );
				map.put("t_latitude", c);
			}
			
			if(map.get("tm_longitude1") !=null  && map.get("tm_longitude2") !=null  && map.get("tm_longitude3") !=null ){
				double  c = GPS_1(Double.parseDouble((String)map.get("tm_longitude1") ) ,  Double.parseDouble((String)map.get("tm_longitude2") ) ,Double.parseDouble((String)map.get("tm_longitude3") )  );
				map.put("tm_longitude", c);
			}
			
			if(map.get("tm_latitude1") !=null  && map.get("tm_latitude2") !=null  && map.get("tm_latitude3") !=null ){
				double  c = GPS_1(Double.parseDouble((String)map.get("tm_latitude1") ) ,  Double.parseDouble((String)map.get("tm_latitude2") ) ,Double.parseDouble((String)map.get("tm_latitude3") )  );
				map.put("tm_latitude", c);
			}
			
			if(map.get("t_cg_u_id") == null){
				map.put("t_cg_u_id", 1);
			}
			
			if("-1".equals(map.get("t_group")) && map.get("t_name") != null && !"".equals( (String)map.get("t_name") )){
				 //生成group 
				String t_group = sd.getGroupID((String) map.get("t_name") );
				map.put("t_group",Integer.parseInt(t_group) );
			}
			int i = sd.updateStationInfo(map);
			 JSONObject  o = new JSONObject();
			 o.put("result", i);
			 out.write(o.toString());
		}else if("city_count".equals(method)){
			String city = request.getParameter("city");
			List<Map<String,Object>> list  = sd.group_city_count(city);
			JSONArray o = JSONArray.fromObject(list);
			out.write(o.toString());
		}else if("file_del".equals(method)){
			String file_id = request.getParameter("file_id");
			if(file_id == null || "".equals(file_id)) file_id="0";
			FilesDao fd = new FilesDao();
			Map<String,Object> m = fd.queryInfo(Integer.parseInt(file_id));
			String file =FileUtil.uploadPath +(String)m.get("file_path");
			File f = new File(file);
			f.delete();
			
			int i = fd.del(Integer.parseInt(file_id));
			 JSONObject  o = new JSONObject();
			 o.put("result", i);
			out.write(o.toString());
		}else if("copy".equals(method)){
			String t_id = request.getParameter("t_id");
			String max_v = request.getParameter("max_v");
			 JSONObject  o = new JSONObject();
			if(t_id == null)t_id="0";
			if("".equals(t_id))t_id="0";
			if(max_v == null)max_v="1";
			if("".equals(t_id))max_v="1";
			
			if(Integer.parseInt(t_id) > 0 && Integer.parseInt(max_v) >0){
				int  new_t_id = sd.copy1(Integer.parseInt(t_id),Integer.parseInt(max_v)) ;
				System.out.println("copy t_id :"+t_id+" new_t_id:"+new_t_id);
				
				o.put("copy1", new_t_id);
				if(new_t_id >0){
					Map<String,Object>  map = new HashMap<String,Object>  ();
					map.put("old_t_id", Integer.parseInt(t_id));
					map.put("new_t_id", new_t_id);

					int i = sd.copy_other(map, 2);
					System.out.println("copy 2 :"+i);
					o.put("copy2", i);
					
					i =sd.copy_other(map, 3);
					System.out.println("copy 3 :"+i);
					o.put("copy3", i);
					
					i =sd.copy_other(map, 4);
					System.out.println("copy 4 :"+i);
					o.put("copy4", i);
					
					i =sd.copy_other(map, 5);
					System.out.println("copy 5 :"+i);
					o.put("copy5", i);
					
					i =sd.copy_other(map, 6);
					System.out.println("copy 6 :"+i);
					o.put("copy6", i);
					

					
					i = sd.changfilepath(map);
					System.out.println("copy 7 :"+i);
					o.put("copy7", i);
					if(i>0){
						CopyFileUtil.copyDir(FileUtil.uploadPath+"/"+t_id, FileUtil.uploadPath+"/"+new_t_id);
					}
					
					i =sd.copy_other(map, 8);
					System.out.println("copy 8 :"+i);
					o.put("copy8", i);
				} 
				
				
			}else{
				o.put("error", "t_id is null");
				
			}
			out.write(o.toString());
		}else if("outfile".equals(method)){
			String t_id = request.getParameter("t_id");
		}
		
		
		out.flush();
		out.close();
	}
	
	
	
	 //返回值类型为Map<String, String>
    public static Map<String, String> getParameterStringMap(HttpServletRequest request) {
        Map<String, String[]> properties = request.getParameterMap();//把请求参数封装到Map<String, String[]>中
        Map<String, String> returnMap = new HashMap<String, String>();
        String name = "";
        String value = "";
        for (Map.Entry<String, String[]> entry : properties.entrySet()) {
            name = entry.getKey();
            String[] values = entry.getValue();
            if (null == values) {
                value = "";
            } else if (values.length>1) {
                for (int i = 0; i < values.length; i++) { //用于请求参数中有多个相同名称
                    value = values[i] + ",";
                }
                value = value.substring(0, value.length() - 1);
            } else {
                value = values[0];//用于请求参数中请求参数名唯一
            }
            returnMap.put(name, value);
            
        }
        return returnMap;
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
