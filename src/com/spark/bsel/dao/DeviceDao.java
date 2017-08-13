package com.spark.bsel.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.spark.bsel.util.MybatisUtil;

public class DeviceDao {
 
	/**
	 * 查询列表
	 * @param queryType
	 * @param t_id
	 * @return
	 */
	public List<Map<String,Object>> queryList(String queryType ,int t_id) {
		SqlSession session = MybatisUtil.getSession();
		List<Map<String,Object>> list = session.selectList("Device."+queryType, t_id);
		MybatisUtil.closeSession();
		return list;
	}
	
	/**
	 * 查询详情
	 * @param queryType
	 * @param id
	 * @return
	 */
	public Map<String,Object> queryInfo(String queryType,int id){
		SqlSession session = MybatisUtil.getSession();
		Map<String,Object>  u = session.selectOne("Device."+queryType, id);
		MybatisUtil.closeSession();
		return u;
	}

	/**
	 * 新增
	 * @param queryType
	 * @param map
	 * @return
	 */
	public int insert(String queryType,Map<String,Object>   map){
		SqlSession session = MybatisUtil.getSession();
		int i = session.insert("Device."+queryType, map);
		session.commit(); 
		MybatisUtil.closeSession();
		return  i;
	}
	
	/**
	 * 更新
	 * @param queryType
	 * @param map
	 * @return
	 */
	public int update(String queryType,Map<String,Object>   map){
		SqlSession session = MybatisUtil.getSession();
		int i = session.update("Device."+queryType, map);
		session.commit(); 
		MybatisUtil.closeSession();
		return i;
	}
	
	/**
	 * 删除
	 * @param queryType
	 * @param id
	 * @return
	 */
	public int del(String queryType,int id){
		SqlSession session = MybatisUtil.getSession();
		int i = session.delete("Device."+queryType, id);
		session.commit(); 
		MybatisUtil.closeSession();
		return i;
	}
}
