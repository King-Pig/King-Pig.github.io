package com.spark.bsel.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spark.bsel.dao.DeviceDao;
import com.spark.bsel.dao.StationDao;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@WebServlet("/DeviceInfo")
public class DeviceInfoServlet  extends HttpServlet {
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
		DeviceDao dd = new DeviceDao();
		if(method.indexOf("list")>0){
			String t_id = request.getParameter("t_id");
			if(t_id == null || "".equals(t_id)) t_id="0";
			List<Map<String,Object>>  list = dd.queryList(method, Integer.parseInt(t_id));
			JSONArray  o = JSONArray.fromObject(list);
			out.write(o.toString());

		}else if(method.indexOf("info")>0){
			String t_id = request.getParameter("t_id");
			if(t_id == null || "".equals(t_id)) t_id="0";
			Map<String,Object> m= dd.queryInfo(method, Integer.parseInt(t_id));
			 JSONObject  o =   JSONObject.fromObject(m);
			 out.write(o.toString());
		}else if(method.indexOf("add")>0){
			Map  map = getParameterStringMap(request);
			int i = dd.insert(method, map);
			 JSONObject  o = new JSONObject();
			 o.put("result", i);
			 out.write(o.toString());
		}else if(method.indexOf("update")>0){
			Map  map = getParameterStringMap(request);
			int i = dd.insert(method, map);
			 JSONObject  o = new JSONObject();
			 o.put("result", i);
			 out.write(o.toString());
		}else if(method.indexOf("del")>0){
			String id = request.getParameter("id");
			if(id == null || "".equals(id)) id="0";
			int i = dd.del(method, Integer.parseInt(id));
			 JSONObject  o = new JSONObject();
			 o.put("result", i);
			 out.write(o.toString());
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
}
