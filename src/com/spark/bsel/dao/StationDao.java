package com.spark.bsel.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

 

public class StationDao {

	
	
	public void queryInfo(PageUtil<User> page) {
		SqlSession session = MybatisUtil.getSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num1", page.getIndex() * page.getSize());
		map.put("num2", (page.getIndex() - 1) * page.getSize());
		List<User> list = session.selectList("UserInfo.all", map);
		page.setCount((Integer) session.selectOne("UserInfo.count"));
		page.setList(list);
		MybatisUtil.closeSession();
	}

	public int del(int id) {
		SqlSession session = MybatisUtil.getSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		int num = session.delete("UserInfo.del", map);
		session.commit();
		MybatisUtil.closeSession();
		return num;
	}

	public User ById(int id) {
		SqlSession session = MybatisUtil.getSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		User u = session.selectOne("UserInfo.ById", map);
		MybatisUtil.closeSession();
		return u;
	}
	
}
