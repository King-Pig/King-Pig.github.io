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
import com.spark.bsel.dao.UserDao;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@WebServlet("/UserInfo")
public class UserInfoServlet  extends HttpServlet {
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
		UserDao  ud = new UserDao();
		
		if("userlist".equals(method) ){
			Map  map = getParameterStringMap(request);
			List<Map<String,Object>>  list = ud.queryList(map);
			JSONArray  o = JSONArray.fromObject(list);
			out.write(o.toString());
		}else if("username".equals(method) ){
			Map  map = getParameterStringMap(request);
			Map<String,Object> m = ud.queryName(map);
			 JSONObject  o = new JSONObject();
			if(m.size()>0){
				o.put("result", 0);
			}else{
				o.put("result", 1);
			}

			out.write(o.toString());
		}else if("useredit".equals(method) ){
			Map  map = getParameterStringMap(request);
			map.remove("user_name");
 
			JSONObject  o = new JSONObject();
 
				int  i = ud.update(map);
				o.put("result", i);
				if(i == 0){
					o.put("msg", "系统错误");
				}
 
			
			out.write(o.toString());
		}else if("useradd".equals(method) ){
			Map  map = getParameterStringMap(request);
			Map<String,Object> m = ud.queryName(map);
			JSONObject  o = new JSONObject();
			if(m != null){
				o.put("result", 0);
				o.put("msg", "用户名重复，请重新输入！");
			}else{
				map.put("user_pwd", map.get("user_pwd1"));
				int  i = ud.insert(map);
				o.put("result", i);
				if(i == 0){
					o.put("msg", "系统错误");
				}
				
			}
			 out.write(o.toString());
		}else if("district".equals(method) ){
			String id = request.getParameter("id");
			if(id==null) id="0";
			List<Map<String,Object>> list = ud.queryDistrict(Integer.parseInt(id));
			JSONArray  o = JSONArray.fromObject(list);
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
