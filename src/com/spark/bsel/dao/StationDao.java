package com.spark.bsel.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.spark.bsel.util.MybatisUtil;
import com.spark.bsel.util.PageUtil;

 

public class StationDao {

	
	public Map<String,Object> queryInfo(int id){
		SqlSession session = MybatisUtil.getSession();
		Map<String,Object>  u = session.selectOne("Station.info", id);
		MybatisUtil.closeSession();
		return u;

	}
	
	
	public List<Map<String,Object>> queryGroup(int id){
		SqlSession session = MybatisUtil.getSession();
		List<Map<String,Object>> list   = session.selectList("Station.grouplist", id);
		MybatisUtil.closeSession();
		return list;

	}
	
	public List<Map<String,Object>> group_city_count(){
		SqlSession session = MybatisUtil.getSession();
		List<Map<String,Object>> list  = session.selectList("Station.city_count");
		MybatisUtil.closeSession();
		return list;
	}
	
	
	
	public void queryStationList(Map<String,Object>  map) {
		SqlSession session = MybatisUtil.getSession();
		List<Map<String,Object>> list = session.selectList("Station.list", map);
		map.put("list", list);
		map.put("count", (Integer) session.selectOne("Station.count"));
		MybatisUtil.closeSession();
	}
	
	
	public String getGroupID(String t_name){
		SqlSession session = MybatisUtil.getSession();
		Map<String,Object>  map = new HashMap<String,Object>  ();
		map.put("t_group_name", t_name);
		session.insert("Station.addgroup", map);
		long r = (long)map.get("t_group");
		session.commit(); 
		MybatisUtil.closeSession();
		return   String.valueOf(r); 
	}

	public String insertStationInfo(int user_id){
		SqlSession session = MybatisUtil.getSession();
		Map<String,Object>  map = new HashMap<String,Object>  ();
		map.put("t_c_u_id", user_id);
		session.insert("Station.add", map);
		long i =(long)map.get("t_id");
		session.commit(); 
		MybatisUtil.closeSession();
		return  String.valueOf(i);
	}

	
	public int updateStationInfo(Map<String,Object>  map){
		SqlSession session = MybatisUtil.getSession();
		int i = session.update("Station.upd", map);
		session.commit(); 
		MybatisUtil.closeSession();
		return i;
	}
	
	
/*	public int del(int id) {
		SqlSession session = MybatisUtil.getSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		int num = session.delete("UserInfo.del", map);
		session.commit();
		MybatisUtil.closeSession();
		return num;
	}*/


	
}
