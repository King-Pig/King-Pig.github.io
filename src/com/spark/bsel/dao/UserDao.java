package com.spark.bsel.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.spark.bsel.util.MybatisUtil;

public class UserDao {
 
 
	public List<Map<String,Object>> queryList(Map<String,Object>   map) {
 
		SqlSession session = MybatisUtil.getSession();
 
		List<Map<String,Object>> list = session.selectList("User.user_list",map);
 
		MybatisUtil.closeSession();
 
		return list;
	}
	
	
	public Map<String,Object> queryName(Map<String,Object>   map){
		SqlSession session = MybatisUtil.getSession();
		Map<String,Object>  u = session.selectOne("User.user_name", map);
		MybatisUtil.closeSession();
		return u;
	}
 
	public Map<String,Object> queryInfo(int id){
		SqlSession session = MybatisUtil.getSession();
		Map<String,Object>  u = session.selectOne("User.user_info", id);
		MybatisUtil.closeSession();
		return u;
	}

 
	public int insert(Map<String,Object>   map){
		SqlSession session = MybatisUtil.getSession();
		int i = session.insert("User.user_add", map);
		session.commit(); 
		MybatisUtil.closeSession();
		return  i;
	}
	
 
	public int update(Map<String,Object>   map){
		SqlSession session = MybatisUtil.getSession();
		int i = session.update("User.user_edit", map);
		session.commit(); 
		MybatisUtil.closeSession();
		return i;
	}
	
 
	public int del(int id){
 
		SqlSession session = MybatisUtil.getSession();
		int i = session.delete("User.user_del", id);
		session.commit(); 
		MybatisUtil.closeSession();
 
		return i;
	}
	
	public List<Map<String,Object>> queryDistrict(int id){
		SqlSession session = MybatisUtil.getSession();
		List<Map<String,Object>>  u = session.selectList("User.district", id);
		MybatisUtil.closeSession();
		return u;
	}
	
	public List<Map<String,Object>>  queryCity(){
		SqlSession session = MybatisUtil.getSession();
		List<Map<String,Object>>  u = session.selectList("User.city");
		MybatisUtil.closeSession();
		return u;
	}
	
	
	public List<Map<String,Object>> queryDistrict(String name){
		List<Map<String,Object>>  u = new ArrayList<Map<String,Object>>();
		if(name == null || "".equals(name)) return u;
		Map<String,Object>   map = new HashMap<String,Object> ();
		map.put("city", name);
		SqlSession session = MybatisUtil.getSession();
		u = session.selectList("User.district_name", map);
		MybatisUtil.closeSession();
		return u;
	}
	
}
