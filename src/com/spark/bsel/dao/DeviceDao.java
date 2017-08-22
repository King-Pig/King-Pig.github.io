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
	public List<Map<String,Object>> queryList(String queryType ,int id) {
		long startTime=System.currentTimeMillis();//记录开始时间
		SqlSession session = MybatisUtil.getSession();
		long endTime1=System.currentTimeMillis();//记录结束时间
		List<Map<String,Object>> list = session.selectList("Device."+queryType, id);
		long endTime2=System.currentTimeMillis();//记录结束时间
		MybatisUtil.closeSession();
		long endTime3=System.currentTimeMillis();//记录结束时间
 
		float excTime1=(float)(endTime1-startTime)/1000;
		float excTime2=(float)(endTime2-startTime)/1000;
		float excTime3=(float)(endTime3-startTime)/1000;
		System.out.println("执行时间1："+excTime1+"s");
		System.out.println("执行时间2："+excTime2+"s");
		System.out.println("执行时间3："+excTime3+"s");
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
		long startTime=System.currentTimeMillis();//记录开始时间
		SqlSession session = MybatisUtil.getSession();
		int i = session.delete("Device."+queryType, id);
		session.commit(); 
		MybatisUtil.closeSession();
		long endTime1=System.currentTimeMillis();//记录结束时间
		 
		float excTime1=(float)(endTime1-startTime)/1000;
 
		System.out.println("执行时间 ："+excTime1+"s");
 
		return i;
	}
}
