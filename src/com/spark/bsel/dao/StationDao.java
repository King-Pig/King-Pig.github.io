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
	
	
	public void queryStationList(Map<String,Object>  map) {
		SqlSession session = MybatisUtil.getSession();
		List<Map<String,Object>> list = session.selectList("Station.list", map);
		map.put("list", list);
		map.put("count", (Integer) session.selectOne("Station.count"));
		MybatisUtil.closeSession();
	}
	
	


	public int insertStationInfo(int user_id){
		SqlSession session = MybatisUtil.getSession();
		int i = session.insert("Station.add", user_id);
		MybatisUtil.closeSession();
		return i;
	}

	
	public int updateStationInfo(Map<String,Object>  map){
		SqlSession session = MybatisUtil.getSession();
		int i = session.update("Station.upd", map);
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
