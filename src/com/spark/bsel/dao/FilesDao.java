package com.spark.bsel.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.spark.bsel.util.MybatisUtil;

public class FilesDao {
 
	/**
	 * 查询列表
	 * @param queryType
	 * @param t_id
	 * @return
	 */
	public List<Map<String,Object>> queryList(int id) {
 
		SqlSession session = MybatisUtil.getSession();
 
		List<Map<String,Object>> list = session.selectList("Files.file_s", id);
 
		MybatisUtil.closeSession();
 
		return list;
	}
	
	/**
	 * 查询详情
	 * @param queryType
	 * @param id
	 * @return
	 */
	public Map<String,Object> queryInfo( int id){
		SqlSession session = MybatisUtil.getSession();
		Map<String,Object>  u = session.selectOne("Files.file_info", id);
		MybatisUtil.closeSession();
		return u;
	}

	/**
	 * 新增
	 * @param map
	 * @return
	 */
	public Map<String, Object> insert(Map<String,Object>   map){
		SqlSession session = MybatisUtil.getSession();
		session.insert("Files.file_add", map);
		session.commit(); 
		MybatisUtil.closeSession();
		return map;
	}
	
 
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public int del(int id){
		SqlSession session = MybatisUtil.getSession();
		int i = session.delete("Files.file_del", id);
		session.commit(); 
		MybatisUtil.closeSession();
 
 
		return i;
	}
}
