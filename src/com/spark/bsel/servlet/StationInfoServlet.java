package com.spark.bsel.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spark.bsel.dao.StationDao;

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
			if(str_page == null || "".equals(str_page)) str_page = "1";
			int page = Integer.parseInt(str_page);
			map.put("pageIndex",  (page-1) * pageSize);
			map.put("pageSize", pageSize);
			map.put("t_name", request.getParameter("t_name"));
			map.put("t_city", request.getParameter("t_city"));
			map.put("t_county", request.getParameter("t_county"));

/*			map.put("t_name", "");
			map.put("t_city", "");
			map.put("t_county", "");
			*/
			sd.queryStationList(map);
			JSONObject  o = JSONObject.fromObject(map);

			out.write(o.toString());
		}else if("queryinfo".equals(method)){
			String t_id = request.getParameter("t_id");
			if(t_id == null || "".equals(t_id)) t_id="0";
			Map<String,Object>  map = sd.queryInfo(Integer.parseInt(t_id));
			JSONObject  o = new JSONObject();
			if(map != null ){
				o = JSONObject.fromObject(map);
			}
			out.write(o.toString());
		}else if("insert".equals(method)){
			 int user_id =1;
			 int r = sd.insertStationInfo(user_id);
			 JSONObject  o = new JSONObject();
			 o.put("id", r);
			 out.write(o.toString());
		}else if("update".equals(method)){

		}
		
		out.flush();
		out.close();
	}
}
