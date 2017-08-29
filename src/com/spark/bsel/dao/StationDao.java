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
	
	public Map<String,Object> queryInfoext(int id){
		SqlSession session = MybatisUtil.getSession();
		Map<String,Object>  u = session.selectOne("Station.info_ext", id);
		MybatisUtil.closeSession();
		return u;

	}
	
	public Map<String,Object> queryUser(String name ,String pwd){
		Map<String,Object>  map = new HashMap<String,Object>  ();
		map.put("user_name", name);
		map.put("user_pwd", pwd);
		SqlSession session = MybatisUtil.getSession();
		Map<String,Object>  u = session.selectOne("Station.user_info", map);
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
	
	
	public int  copy1(int t_id,int max_v){
		Map<String,Object>  map = new HashMap<String,Object>  ();
		map.put("t_id", t_id);
		map.put("t_version", (max_v+1));
		SqlSession session = MybatisUtil.getSession();
		session.insert("Copy.copy_1", map);
		int i =(int)map.get("t_id");
		session.commit(); 
		MybatisUtil.closeSession();
		return i;
	}
	
	public int  copy_other(Map<String,Object>  map,int index){
		SqlSession session = MybatisUtil.getSession();
		int i = session.insert("Copy.copy_"+index, map);
		session.commit(); 
		MybatisUtil.closeSession();
		return  i;
	}
	
	public int  changfilepath(Map<String,Object>  map){
		SqlSession session = MybatisUtil.getSession();
		int i = session.update("Copy.copy_7", map);
		session.commit(); 
		MybatisUtil.closeSession();
		return  i;
		
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
