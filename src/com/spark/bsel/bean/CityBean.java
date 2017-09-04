package com.spark.bsel.bean;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CityBean {
	public static List<String>  citylist = new ArrayList<>();
	public CityBean(){
		if(citylist.size()==0){
		citylist.add("昆明市");
		citylist.add("曲靖市");
		citylist.add("玉溪市");
		citylist.add("昭通市");
		citylist.add("保山市");
		citylist.add("丽江市");
		citylist.add("普洱市");
		citylist.add("临沧市");
		citylist.add("德宏傣族景颇族自治州");
		citylist.add("怒江傈僳族自治州");
		citylist.add("迪庆藏族自治州");
		citylist.add("大理白族自治州");
		citylist.add("楚雄彝族自治州");
		citylist.add("红河哈尼族彝族自治州");
		citylist.add("文山壮族苗族自治州");
		citylist.add("西双版纳傣族自治州");
		}
	}
}
