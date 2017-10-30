/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.30-log : Database - bsel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bsel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bsel`;

/*Table structure for table `antenna_system` */

DROP TABLE IF EXISTS `antenna_system`;

CREATE TABLE `antenna_system` (
  `as_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `as_type` varchar(50) DEFAULT '' COMMENT '天线类型',
  `as_hieght` int(11) DEFAULT NULL,
  `as_frequency` int(11) DEFAULT NULL COMMENT '播出频率',
  `as_model` varchar(50) DEFAULT '' COMMENT '馈线型号',
  PRIMARY KEY (`as_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `antenna_system` */

insert  into `antenna_system`(`as_id`,`t_id`,`as_type`,`as_hieght`,`as_frequency`,`as_model`) values (1,16,'发发发1',123456,26665,'23实得分2'),(5,29,'发发发1',123456,26665,'23实得分2'),(6,30,'发发发1',123456,26665,'23实得分2'),(7,31,'发发发1',123456,26665,'23实得分2'),(8,32,'发发发1',123456,26665,'23实得分2'),(9,33,'发发发1',123456,26665,'23实得分2'),(10,34,'发发发1',123456,26665,'23实得分2'),(11,35,'发发发1',123456,26665,'23实得分2'),(12,36,'发发发1',123456,26665,'23实得分2');

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `provinceid` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `areacode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`id`,`provinceid`,`name`,`areacode`) values (267,25,'昆明市','0871'),(268,25,'曲靖市','0874'),(269,25,'玉溪市','0877'),(270,25,'保山市','0875'),(271,25,'昭通市','0870'),(272,25,'丽江市','0888'),(273,25,'普洱市','0879'),(274,25,'临沧市','0883'),(275,25,'楚雄彝族自治州','0878'),(276,25,'红河哈尼族彝族自治州','0873'),(277,25,'文山壮族苗族自治州','0876'),(278,25,'西双版纳傣族自治州','0691'),(279,25,'大理白族自治州','0872'),(280,25,'德宏傣族景颇族自治州','0692'),(281,25,'怒江傈僳族自治州','0886'),(282,25,'迪庆藏族自治州','0887');

/*Table structure for table `device_info` */

DROP TABLE IF EXISTS `device_info`;

CREATE TABLE `device_info` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `d_type` int(11) DEFAULT NULL COMMENT '1.调频 2.电视，数字和模拟',
  `d_no` int(11) DEFAULT NULL,
  `d_frequency` int(11) DEFAULT NULL COMMENT '频率',
  `d_r_power` int(11) DEFAULT NULL COMMENT '额定功率',
  `d_t_power` int(11) DEFAULT NULL COMMENT '发射功率',
  `d_program` varchar(100) DEFAULT '' COMMENT '节目',
  `d_m_m` varchar(100) DEFAULT '' COMMENT '发射机厂商/设备型号',
  `d_i_interface` int(11) DEFAULT NULL COMMENT '是否具备对外智能接口',
  `d_m_b` varchar(11) DEFAULT '' COMMENT '1 主 2备',
  `d_multiple` varchar(100) DEFAULT '' COMMENT '多工情况',
  `d_f_type` varchar(100) DEFAULT '' COMMENT '天线类型',
  `d_f_polarity` varchar(20) DEFAULT '' COMMENT '极化',
  `d_f_direction` varchar(20) DEFAULT '' COMMENT '方向性',
  `d_f_h` int(11) DEFAULT NULL COMMENT '天线中心挂高',
  `d_f_c_type` varchar(100) DEFAULT '' COMMENT '馈线类型、接头类型',
  `d_f_length` int(11) DEFAULT NULL COMMENT '长',
  `d_f_c_i` varchar(20) DEFAULT '' COMMENT '接口类型 1.RS485 2.RS232 3.以太网',
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

/*Data for the table `device_info` */

insert  into `device_info`(`d_id`,`t_id`,`d_type`,`d_no`,`d_frequency`,`d_r_power`,`d_t_power`,`d_program`,`d_m_m`,`d_i_interface`,`d_m_b`,`d_multiple`,`d_f_type`,`d_f_polarity`,`d_f_direction`,`d_f_h`,`d_f_c_type`,`d_f_length`,`d_f_c_i`) values (1,16,1,NULL,3000,1200,1111,'cctv','sdf1123',1,'主','sdfs 1','sdfs 2','垂直','sdfs3',11,'sdf4',2,'RS485'),(2,16,2,NULL,4444,233,23424,'cctv','123123',0,'主','123123','恩我若翁r','水平','233',22,'胜多负少',11,'以太网'),(3,16,2,NULL,2132,2323,1231,'123','123',1,'主','233','4',NULL,'3',1,'方法',1,'RS232'),(25,29,1,NULL,3000,1200,1111,'cctv','sdf1123',1,'主','sdfs 1','sdfs 2','23','sdfs3',11,'sdf4',2,NULL),(26,29,2,NULL,4444,233,23424,'cctv','123123',0,'主','123123','恩我若翁r','123','233',22,'胜多负少',11,NULL),(27,29,2,NULL,2132,2323,1231,'123','123',1,'主','233','4','2','3',1,'方法',1,NULL),(28,30,1,NULL,3000,1200,1111,'cctv','sdf1123',1,'主','sdfs 1','sdfs 2','23','sdfs3',11,'sdf4',2,NULL),(29,30,2,NULL,4444,233,23424,'cctv','123123',0,'主','123123','恩我若翁r','123','233',22,'胜多负少',11,NULL),(30,30,2,NULL,2132,2323,1231,'123','123',1,'主','233','4','2','3',1,'方法',1,NULL),(31,31,1,NULL,3000,1200,1111,'cctv','sdf1123',1,'主','sdfs 1','sdfs 2','23','sdfs3',11,'sdf4',2,NULL),(32,31,2,NULL,4444,233,23424,'cctv','123123',0,'主','123123','恩我若翁r','123','233',22,'胜多负少',11,NULL),(33,31,2,NULL,2132,2323,1231,'123','123',1,'主','233','4','2','3',1,'方法',1,NULL),(34,32,1,NULL,3000,1200,1111,'cctv','sdf1123',1,'主','sdfs 1','sdfs 2','23','sdfs3',11,'sdf4',2,NULL),(35,32,2,NULL,4444,233,23424,'cctv','123123',0,'主','123123','恩我若翁r','123','233',22,'胜多负少',11,NULL),(36,32,2,NULL,2132,2323,1231,'123','123',1,'主','233','4','2','3',1,'方法',1,NULL),(37,33,1,NULL,3000,1200,1111,'cctv','sdf1123',1,'主','sdfs 1','sdfs 2','23','sdfs3',11,'sdf4',2,NULL),(38,33,2,NULL,4444,233,23424,'cctv','123123',0,'主','123123','恩我若翁r','123','233',22,'胜多负少',11,NULL),(39,33,2,NULL,2132,2323,1231,'123','123',1,'主','233','4','2','3',1,'方法',1,NULL),(40,34,1,NULL,3000,1200,1111,'cctv','sdf1123',1,'主','sdfs 1','sdfs 2','23','sdfs3',11,'sdf4',2,NULL),(41,34,2,NULL,4444,233,23424,'cctv','123123',0,'主','123123','恩我若翁r','123','233',22,'胜多负少',11,NULL),(42,34,2,NULL,2132,2323,1231,'123','123',1,'主','233','4','2','3',1,'方法',1,NULL),(43,35,1,NULL,3000,1200,1111,'cctv','sdf1123',1,'主','sdfs 1','sdfs 2','23','sdfs3',11,'sdf4',2,NULL),(44,35,2,NULL,4444,233,23424,'cctv','123123',0,'主','123123','恩我若翁r','123','233',22,'胜多负少',11,NULL),(45,35,2,NULL,2132,2323,1231,'123','123',1,'主','233','4','2','3',1,'方法',1,NULL),(46,36,1,NULL,3000,1200,1111,'cctv','sdf1123',1,'主','sdfs 1','sdfs 2','23','sdfs3',11,'sdf4',2,NULL),(47,36,2,NULL,4444,233,23424,'cctv','123123',0,'主','123123','恩我若翁r','123','233',22,'胜多负少',11,NULL),(48,36,2,NULL,2132,2323,1231,'123','123',1,'主','233','4','2','3',1,'方法',1,NULL),(49,16,1,NULL,38,3,1,'CCTV-1','凯腾',1,'主','无','四层四面 ','水平','全向',50,'40',100,'RS485');

/*Table structure for table `district` */

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `district` */

insert  into `district`(`id`,`cityId`,`name`,`postcode`) values (2432,267,'五华区','650032'),(2433,267,'盘龙区','650051'),(2434,267,'官渡区','650220'),(2435,267,'西山区','650100'),(2436,267,'东川区','654100'),(2437,267,'呈贡县','650500'),(2438,267,'晋宁县','650600'),(2439,267,'富民县','650400'),(2440,267,'宜良县','652100'),(2441,267,'石林彝族自治县','652200'),(2442,267,'嵩明县','651700'),(2443,267,'禄劝彝族苗族自治县','651500'),(2444,267,'寻甸回族彝族自治县','655200'),(2445,267,'安宁市','650300'),(2446,268,'麒麟区','655000'),(2447,268,'马龙县','655100'),(2448,268,'陆良县','655600'),(2449,268,'师宗县','655700'),(2450,268,'罗平县','655800'),(2451,268,'富源县','655500'),(2452,268,'会泽县','654200'),(2453,268,'沾益县','655331'),(2454,268,'宣威市','655400'),(2455,269,'红塔区','653100'),(2456,269,'江川县','652600'),(2457,269,'澄江县','652500'),(2458,269,'通海县','652700'),(2459,269,'华宁县','652800'),(2460,269,'易门县','651100'),(2461,269,'峨山彝族自治县','653200'),(2462,269,'新平彝族傣族自治县','653400'),(2463,269,'元江哈尼族彝族傣族自治县','653300'),(2464,270,'隆阳区','678000'),(2465,270,'施甸县','678200'),(2466,270,'腾冲县','679100'),(2467,270,'龙陵县','678300'),(2468,270,'昌宁县','678100'),(2469,271,'昭阳区','657000'),(2470,271,'鲁甸县','657100'),(2471,271,'巧家县','654600'),(2472,271,'盐津县','657500'),(2473,271,'大关县','657400'),(2474,271,'永善县','657300'),(2475,271,'绥江县','657700'),(2476,271,'镇雄县','657200'),(2477,271,'彝良县','657600'),(2478,271,'威信县','657900'),(2479,271,'水富县','657800'),(2480,272,'古城区','674100'),(2481,272,'玉龙纳西族自治县','674100'),(2482,272,'永胜县','674200'),(2483,272,'华坪县','674800'),(2484,272,'宁蒗彝族自治县','674300'),(2485,273,'思茅区','665000'),(2486,273,'宁洱哈尼族彝族自治县','665100'),(2487,273,'墨江哈尼族自治县','654800'),(2488,273,'景东彝族自治县','676200'),(2489,273,'景谷傣族彝族自治县','666400'),(2490,273,'镇沅彝族哈尼族拉祜族自治县','666500'),(2491,273,'江城哈尼族彝族自治县','665900'),(2492,273,'孟连傣族拉祜族佤族自治县','665800'),(2493,273,'澜沧拉祜族自治县','665600'),(2494,273,'西盟佤族自治县','665700'),(2495,274,'临翔区','677000'),(2496,274,'凤庆县','675900'),(2497,274,'云县','675800'),(2498,274,'永德县','677600'),(2499,274,'镇康县','677704'),(2500,274,'双江拉祜族佤族布朗族傣族自治县','677300'),(2501,274,'耿马傣族佤族自治县','677500'),(2502,274,'沧源佤族自治县','677400'),(2503,275,'楚雄市','675000'),(2504,275,'双柏县','675100'),(2505,275,'牟定县','675500'),(2506,275,'南华县','675200'),(2507,275,'姚安县','675300'),(2508,275,'大姚县','675400'),(2509,275,'永仁县','651400'),(2510,275,'元谋县','651300'),(2511,275,'武定县','651600'),(2512,275,'禄丰县','651200'),(2513,276,'个旧市','661000'),(2514,276,'开远市','661600'),(2515,276,'蒙自县','661100'),(2516,276,'屏边苗族自治县','661200'),(2517,276,'建水县','654300'),(2518,276,'石屏县','662200'),(2519,276,'弥勒县','652300'),(2520,276,'泸西县','652400'),(2521,276,'元阳县','662400'),(2522,276,'红河县','654400'),(2523,276,'金平苗族瑶族傣族自治县','661500'),(2524,276,'绿春县','662500'),(2525,276,'河口瑶族自治县','661300'),(2526,277,'文山县','663000'),(2527,277,'砚山县','663100'),(2528,277,'西畴县','663500'),(2529,277,'麻栗坡县','663600'),(2530,277,'马关县','663700'),(2531,277,'丘北县','663200'),(2532,277,'广南县','663300'),(2533,277,'富宁县','663400'),(2534,278,'景洪市','666100'),(2535,278,'勐海县','666200'),(2536,278,'勐腊县','666300'),(2537,279,'大理市','671000'),(2538,279,'漾濞彝族自治县','672500'),(2539,279,'祥云县','672100'),(2540,279,'宾川县','671600'),(2541,279,'弥渡县','675600'),(2542,279,'南涧彝族自治县','675700'),(2543,279,'巍山彝族回族自治县','672400'),(2544,279,'永平县','672600'),(2545,279,'云龙县','672700'),(2546,279,'洱源县','671200'),(2547,279,'剑川县','671300'),(2548,279,'鹤庆县','671500'),(2549,280,'瑞丽市','678600'),(2550,280,'潞西市','678400'),(2551,280,'梁河县','679200'),(2552,280,'盈江县','679300'),(2553,280,'陇川县','678700'),(2554,281,'泸水县','673100'),(2555,281,'福贡县','673400'),(2556,281,'贡山独龙族怒族自治县','673500'),(2557,281,'兰坪白族普米族自治县','671400'),(2558,282,'香格里拉县','674400'),(2559,282,'德钦县','674500'),(2560,282,'维西傈僳族自治县','674600');

/*Table structure for table `file_info` */

DROP TABLE IF EXISTS `file_info`;

CREATE TABLE `file_info` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `file_group` int(11) DEFAULT NULL,
  `file_num` int(11) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `file_size` bigint(11) DEFAULT NULL,
  `file_img` int(11) DEFAULT NULL,
  `file_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

/*Data for the table `file_info` */

insert  into `file_info`(`file_id`,`t_id`,`file_name`,`file_group`,`file_num`,`file_path`,`file_size`,`file_img`,`file_remark`) values (193,16,'IMG_20151003_135152_AO_HDR.jpg',1,NULL,'/16/1504019418102.jpg',2358224,1,NULL),(195,16,'IMG_20151003_132405_AO_HDR.jpg',2,NULL,'/16/1504019433689.jpg',2078329,1,NULL),(196,16,'IMG_20151005_145449_HDR.jpg',3,NULL,'/16/1504019442480.jpg',1503551,1,NULL),(201,16,'model.xml',6,NULL,'/16/1504019542774.xml',54014,0,NULL),(202,16,'IMG_20151003_135249_AO_HDR.jpg',7,NULL,'/16/1504019561731.jpg',1605215,1,NULL),(205,36,'model.xml',1,NULL,'/36/1504019359964.xml',54014,0,NULL),(206,36,'IMG_20151003_135152_AO_HDR.jpg',1,NULL,'/36/1504019418102.jpg',2358224,1,NULL),(207,36,'IMG_20151003_144147_HDR.jpg',1,NULL,'/36/1504019425534.jpg',2182850,1,NULL),(208,36,'IMG_20151003_132405_AO_HDR.jpg',2,NULL,'/36/1504019433689.jpg',2078329,1,NULL),(209,36,'IMG_20151005_145449_HDR.jpg',3,NULL,'/36/1504019442480.jpg',1503551,1,NULL),(210,36,'ShareInfoDao.java',3,NULL,'/36/1504019482520.java',22281,0,NULL),(211,36,'model.xml',6,NULL,'/36/1504019542774.xml',54014,0,NULL),(212,36,'IMG_20151003_135249_AO_HDR.jpg',7,NULL,'/36/1504019561731.jpg',1605215,1,NULL),(213,36,'IMG_20151003_123234_AO_HDR.jpg',4,NULL,'/36/1504019601168.jpg',2941409,1,NULL),(214,36,'IMG_20150926_190658_HDR.jpg',4,NULL,'/36/1504019620171.jpg',1465399,1,NULL),(220,16,'??????????????????????.jpg',4,NULL,'/16/1504499454842.jpg',728616,1,NULL),(221,16,'IMG_20150927_181208.jpg',10,NULL,'/16/1505146614264.jpg',2015640,1,NULL),(222,16,'IMG_20151001_093715.jpg',10,NULL,'/16/1505146637105.jpg',1827418,1,NULL);

/*Table structure for table `microwave` */

DROP TABLE IF EXISTS `microwave`;

CREATE TABLE `microwave` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '微波设备ID',
  `t_id` int(11) DEFAULT NULL,
  `m_name` varchar(100) DEFAULT NULL COMMENT '台站名称',
  `m_t_frequency` int(11) DEFAULT NULL COMMENT '传输频率',
  `m_t_capacity` int(11) DEFAULT NULL COMMENT '传输容量',
  `m_u_capacity` int(11) DEFAULT NULL COMMENT '已用容量',
  `m_t_content` varchar(100) DEFAULT NULL COMMENT '传输节目内容',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `microwave` */

insert  into `microwave`(`m_id`,`t_id`,`m_name`,`m_t_frequency`,`m_t_capacity`,`m_u_capacity`,`m_t_content`) values (1,16,'吃撒撒大声地',1222,33,23,'斯蒂芬斯蒂芬'),(6,29,'吃撒撒大声地',1222,33,23,'斯蒂芬斯蒂芬'),(7,30,'吃撒撒大声地',1222,33,23,'斯蒂芬斯蒂芬'),(8,31,'吃撒撒大声地',1222,33,23,'斯蒂芬斯蒂芬'),(9,32,'吃撒撒大声地',1222,33,23,'斯蒂芬斯蒂芬'),(10,33,'吃撒撒大声地',1222,33,23,'斯蒂芬斯蒂芬'),(11,34,'吃撒撒大声地',1222,33,23,'斯蒂芬斯蒂芬'),(12,35,'吃撒撒大声地',1222,33,23,'斯蒂芬斯蒂芬'),(13,36,'吃撒撒大声地',1222,33,23,'斯蒂芬斯蒂芬');

/*Table structure for table `optical_cable` */

DROP TABLE IF EXISTS `optical_cable`;

CREATE TABLE `optical_cable` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '光缆ID',
  `t_id` int(11) DEFAULT NULL,
  `o_direction` int(11) DEFAULT NULL COMMENT '1.有线网络公司方向 2.广播电视台方向',
  `o_c_count` int(11) DEFAULT NULL COMMENT '总芯数',
  `o_t_capacity` int(11) DEFAULT NULL COMMENT '传输容量',
  `o_p_content` varchar(100) DEFAULT NULL COMMENT '传输节目内容',
  `o_c_free` int(11) DEFAULT NULL COMMENT '空余芯数',
  `o_s_format` varchar(20) DEFAULT NULL COMMENT '信号格式',
  `o_s_code` varchar(20) DEFAULT NULL COMMENT '信号编码格式',
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `optical_cable` */

insert  into `optical_cable`(`o_id`,`t_id`,`o_direction`,`o_c_count`,`o_t_capacity`,`o_p_content`,`o_c_free`,`o_s_format`,`o_s_code`) values (1,16,1,33,12312,'斯蒂芬斯蒂芬',23,'ASI','H264'),(6,29,1,33,12312,'斯蒂芬斯蒂芬',23,'ASI','H264'),(7,30,1,33,12312,'斯蒂芬斯蒂芬',23,'ASI','H264'),(8,31,1,33,12312,'斯蒂芬斯蒂芬',23,'ASI','H264'),(9,32,1,33,12312,'斯蒂芬斯蒂芬',23,'ASI','H264'),(10,33,1,33,12312,'斯蒂芬斯蒂芬',23,'ASI','H264'),(11,34,1,33,12312,'斯蒂芬斯蒂芬',23,'ASI','H264'),(12,35,1,33,12312,'斯蒂芬斯蒂芬',23,'ASI','H264'),(13,36,1,33,12312,'斯蒂芬斯蒂芬',23,'ASI','H264');

/*Table structure for table `power_device` */

DROP TABLE IF EXISTS `power_device`;

CREATE TABLE `power_device` (
  `power_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `power_type` int(11) DEFAULT NULL COMMENT '1 ups  2稳压器',
  `power_capacity` int(11) DEFAULT NULL COMMENT '容量',
  `power_quantity` int(11) DEFAULT NULL COMMENT '数量',
  `power_load` int(11) DEFAULT NULL COMMENT '负荷',
  PRIMARY KEY (`power_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `power_device` */

insert  into `power_device`(`power_id`,`t_id`,`power_type`,`power_capacity`,`power_quantity`,`power_load`) values (1,16,1,122,1222222,123),(2,16,2,111,22211111,333111),(4,16,1,2,3,4);

/*Table structure for table `satellite_info` */

DROP TABLE IF EXISTS `satellite_info`;

CREATE TABLE `satellite_info` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '卫星设备ID',
  `t_id` int(11) DEFAULT NULL COMMENT '传输机房',
  `s_name` varchar(50) DEFAULT NULL COMMENT '卫星名称',
  `s_a_caliber` int(11) DEFAULT NULL,
  `s_p_content` varchar(100) DEFAULT NULL COMMENT '节目内容',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `satellite_info` */

insert  into `satellite_info`(`s_id`,`t_id`,`s_name`,`s_a_caliber`,`s_p_content`) values (1,16,'cvxvvxvc',1,'sdf'),(3,16,'sfsdfsdf',10,'222222'),(17,29,'cvxvvxvc',1,'sdf'),(18,29,'sfsdfsdf',10,'222222'),(19,29,'sdfsdfsdf',12,'dfdf'),(20,30,'cvxvvxvc',1,'sdf'),(21,30,'sfsdfsdf',10,'222222'),(22,30,'sdfsdfsdf',12,'dfdf'),(23,31,'cvxvvxvc',1,'sdf'),(24,31,'sfsdfsdf',10,'222222'),(25,31,'sdfsdfsdf',12,'dfdf'),(26,32,'cvxvvxvc',1,'sdf'),(27,32,'sfsdfsdf',10,'222222'),(28,32,'sdfsdfsdf',12,'dfdf'),(29,33,'cvxvvxvc',1,'sdf'),(30,33,'sfsdfsdf',10,'222222'),(31,33,'sdfsdfsdf',12,'dfdf'),(32,34,'cvxvvxvc',1,'sdf'),(33,34,'sfsdfsdf',10,'222222'),(34,34,'sdfsdfsdf',12,'dfdf'),(35,35,'cvxvvxvc',1,'sdf'),(36,35,'sfsdfsdf',10,'222222'),(37,35,'sdfsdfsdf',12,'dfdf'),(38,36,'cvxvvxvc',1,'sdf'),(39,36,'sfsdfsdf',10,'222222'),(40,36,'sdfsdfsdf',12,'dfdf'),(41,16,'中星6B',3,'CCTV-1');

/*Table structure for table `Tower_group` */

DROP TABLE IF EXISTS `Tower_group`;

CREATE TABLE `Tower_group` (
  `t_group` int(11) NOT NULL AUTO_INCREMENT,
  `t_group_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`t_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `Tower_group` */

insert  into `Tower_group`(`t_group`,`t_group_name`) values (2,'测试一下'),(3,'昆明电视台');

/*Table structure for table `Tower_info` */

DROP TABLE IF EXISTS `Tower_info`;

CREATE TABLE `Tower_info` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(200) DEFAULT '',
  `t_city` varchar(50) DEFAULT '',
  `t_county` varchar(50) DEFAULT '',
  `t_township` varchar(50) DEFAULT '',
  `t_address` varchar(200) DEFAULT '',
  `t_longitude` double DEFAULT '0',
  `t_latitude` double DEFAULT '0',
  `t_accuracy` int(11) DEFAULT NULL COMMENT '精度',
  `t_altitude` int(11) DEFAULT NULL COMMENT '海拔高度',
  `t_build_date` varchar(10) DEFAULT '',
  `t_purpose` varchar(20) DEFAULT '' COMMENT '发射任务1调频广播  2电视 3调频广播&电视',
  `t_parent` varchar(100) DEFAULT '' COMMENT '上级主管部门',
  `t_distance` int(11) DEFAULT NULL COMMENT '运输车辆能通达的距台站的最近距离',
  `t_move` varchar(20) DEFAULT NULL COMMENT '搬迁计划',
  `t_version` int(11) DEFAULT '1' COMMENT '版本',
  `t_group` int(11) DEFAULT '-1' COMMENT '按名称分组',
  `t_c_time` datetime DEFAULT NULL,
  `t_c_u_id` int(11) DEFAULT NULL,
  `t_cg_time` datetime DEFAULT NULL,
  `t_cg_u_id` int(11) DEFAULT NULL,
  `p_primary` int(11) DEFAULT NULL COMMENT '主路',
  `p_standby` int(11) DEFAULT NULL COMMENT '辅路',
  `p_t_capacity` int(11) DEFAULT NULL COMMENT '变压器 容量',
  `p_t_quantity` int(11) DEFAULT NULL COMMENT '变压器 数量',
  `p_t_load` int(11) DEFAULT NULL COMMENT '变压器 实际负荷',
  `p_a_power` int(11) DEFAULT NULL COMMENT '柴油发电机输出功率',
  `p_u_capacity` int(11) DEFAULT NULL COMMENT 'ups 容量 ',
  `p_u_quantity` int(11) DEFAULT NULL COMMENT 'ups数量',
  `p_u_load` int(11) DEFAULT NULL COMMENT 'ups 实际负荷',
  `p_m_capacity` int(11) DEFAULT NULL COMMENT '稳压器 容量',
  `p_m_quantity` int(11) DEFAULT NULL COMMENT '稳压器 数量',
  `p_m_load` int(11) DEFAULT NULL COMMENT '稳压器 实际负荷',
  `p_resistance` int(11) DEFAULT NULL COMMENT '场区接地电阻值',
  `c_p_layers` int(11) DEFAULT NULL COMMENT '传送机房----',
  `c_c_layers` int(11) DEFAULT NULL,
  `c_l_type` varchar(32) DEFAULT '' COMMENT '走线类型',
  `c_l_v1` int(11) DEFAULT '0' COMMENT '走线数值1',
  `c_l_v2` int(11) DEFAULT '0' COMMENT '走线数值2',
  `c_g_type` varchar(32) DEFAULT '' COMMENT '工艺接地 1接地排 2接地极  3地网',
  `c_g_v` int(11) DEFAULT NULL COMMENT '接地电阻值',
  `c_as_type` varchar(32) DEFAULT '' COMMENT '空调形式',
  `c_as_cool` int(11) DEFAULT NULL COMMENT '制冷量',
  `c_as_power` int(11) DEFAULT NULL COMMENT '功率',
  `c_a_type` varchar(32) DEFAULT '' COMMENT '通风形式',
  `c_a_volume` int(11) DEFAULT NULL COMMENT '风量',
  `c_a_power` int(11) DEFAULT NULL COMMENT '功率',
  `c_a_pressure` int(11) DEFAULT NULL COMMENT '风压',
  `t_p_layers` int(11) DEFAULT NULL COMMENT '发射机房-- 位置层数',
  `t_c_layers` int(11) DEFAULT NULL COMMENT '总层数',
  `t_l_type` varchar(32) DEFAULT '' COMMENT '走线类型',
  `t_l_v1` int(11) DEFAULT '0' COMMENT '走线数值1',
  `t_l_v2` int(11) DEFAULT '0' COMMENT '走线数值2',
  `t_g_type` varchar(32) DEFAULT '' COMMENT '工艺接地 1接地排 2接地极  3地网',
  `t_g_v` int(11) DEFAULT NULL COMMENT '接地电阻值',
  `t_as_type` varchar(32) DEFAULT '' COMMENT '空调形式',
  `t_as_cool` int(11) DEFAULT NULL COMMENT '制冷量',
  `t_as_power` int(11) DEFAULT NULL COMMENT '功率',
  `t_a_type` varchar(32) DEFAULT '' COMMENT '通风形式',
  `t_a_volume` int(11) DEFAULT NULL COMMENT '风量',
  `t_a_power` int(11) DEFAULT NULL COMMENT '功率',
  `t_a_pressure` int(11) DEFAULT NULL COMMENT '风压',
  `t_d_type` varchar(32) DEFAULT '' COMMENT '发射机类型',
  `t_d_v` int(11) DEFAULT '0' COMMENT '发射机模拟数量',
  `cm_p_layers` int(11) DEFAULT NULL COMMENT '控制室位置层数',
  `cm_c_layers` int(11) DEFAULT NULL COMMENT '总层数',
  `cm_l_type` varchar(32) DEFAULT '' COMMENT '走线类型',
  `cm_l_v1` int(11) DEFAULT '0' COMMENT '走线数值1',
  `cm_l_v2` int(11) DEFAULT '0' COMMENT '走线数值2',
  `cm_l_v3` varchar(32) DEFAULT '' COMMENT '线缆敷设方式 1沟底 2沟壁',
  `cm_g_type` varchar(32) DEFAULT '' COMMENT '工艺接地 1接地排 2接地极  3地网',
  `cm_g_v` int(11) DEFAULT NULL COMMENT '接地电阻值',
  `cm_as_type` varchar(32) DEFAULT '' COMMENT '空调形式',
  `cm_as_cool` int(11) DEFAULT NULL COMMENT '制冷量',
  `cm_as_power` int(11) DEFAULT NULL COMMENT '功率',
  `cm_a_type` varchar(32) DEFAULT '' COMMENT '通风形式',
  `cm_a_volume` int(11) DEFAULT NULL COMMENT '风量',
  `cm_a_power` int(11) DEFAULT NULL COMMENT '功率',
  `cm_a_pressure` int(11) DEFAULT NULL COMMENT '风压',
  `ta_net` varchar(32) DEFAULT '' COMMENT '1光缆  2微波  3无',
  `ta_s_centre` int(11) DEFAULT NULL COMMENT '是否通过网络传输到中心 1是 0否',
  `ta_sm_i` int(11) DEFAULT NULL COMMENT '对外智能接口 1是 0否',
  `ta_sm_i_type` varchar(32) DEFAULT '' COMMENT '接口方式为 1公开    2未公开；',
  `ta_sm_c_i` varchar(32) DEFAULT '' COMMENT '控制接口 1.RS485  2.RS232  3.以太网',
  `ta_sm_m_c` varchar(200) DEFAULT '' COMMENT '监测内容 1功率  2开关机控制  3输入输出信号 4主备倒换  5频率监测  6电流电压',
  `ta_pm` int(11) DEFAULT NULL COMMENT '是否具备电力自动化系统 1是 0否',
  `ta_pm_ups` int(11) DEFAULT NULL COMMENT 'UPS监控功能 1具备  0不具备',
  `ta_pm_pc` int(11) DEFAULT NULL COMMENT '配电柜监控功能1具备  0不具备',
  `ta_pm_rp` int(11) DEFAULT NULL COMMENT '稳压电源监控功能 1具备  0不具备',
  `ta_vs` varchar(32) DEFAULT '' COMMENT '视频监控系统  0不具备  1数字  2模拟',
  `ta_vs_region` varchar(200) DEFAULT '' COMMENT '区域 1设备区  2办公区 3场区',
  `ta_vs_am` varchar(32) DEFAULT '' COMMENT '访问方式 1.本地访问 2.IP联网访问',
  `ta_vs_ia` int(11) DEFAULT NULL COMMENT '入侵报警系统 1具备  0不具备',
  `ta_vs_ia_n` int(11) DEFAULT NULL COMMENT '入侵报警系统必要性  1需要  0不需要',
  `ta_vs_io` int(11) DEFAULT NULL COMMENT '出入口控制系统 1具备  0不具备',
  `ta_vs_io_n` int(11) DEFAULT NULL COMMENT '出入口控制系统必要性  1需要  0不需要',
  `ta_vs_pg` int(11) DEFAULT NULL COMMENT '周界防范系统 1具备  0不具备',
  `ta_vs_pg_n` int(11) DEFAULT NULL COMMENT '周界防范系统必要性 1需要  0不需要',
  `ta_vs_em` int(11) DEFAULT NULL COMMENT '是否具备环境监测 1具备  0不具备',
  `ta_vs_em_n` int(11) DEFAULT NULL COMMENT '环境监测必要性 1需要  0不需要',
  `ta_vs_em_position` varchar(32) DEFAULT '' COMMENT '温湿度监控点位置  1设备间  2机房  3中控室',
  `ta_vs_em_ci` varchar(32) DEFAULT '' COMMENT '通信接口  1.RS485  2.RS232  3.以太网',
  `tm_longitude` double DEFAULT '0' COMMENT '塔址经纬度',
  `tm_latitude` double DEFAULT '0',
  `tm_altitude` int(11) DEFAULT NULL COMMENT '海拔高度',
  `tm_position` varchar(11) DEFAULT '' COMMENT '位置  1山顶  2山坡  3城镇',
  `tm_ice` int(11) DEFAULT NULL COMMENT ' 有无裹冰现象 1是 0否 ',
  `tm_height` int(11) DEFAULT NULL COMMENT ' 铁塔高度 ',
  `tm_hemline` int(11) DEFAULT NULL COMMENT ' 底部根开 ',
  `tm_style` varchar(32) DEFAULT '' COMMENT '结构形式 1自立塔 2钢管 3角钢 4拉线塔',
  `tm_style_v` int(11) DEFAULT NULL COMMENT '边数',
  `tm_build_unit` varchar(32) DEFAULT '' COMMENT '铁塔生产单位',
  `tm_design_unit` varchar(32) DEFAULT '' COMMENT '铁塔设计单位',
  `tm_lifespan` int(11) DEFAULT NULL COMMENT ' 已使用年限 ',
  `tm_s_status` varchar(500) DEFAULT '' COMMENT '铁塔维护状况描述',
  `t_new_sign` int(11) DEFAULT '0' COMMENT '1最新版本 0否',
  `t_status` int(11) DEFAULT '-1' COMMENT '1 有效入库 0正在入库 -1 无效',
  `t_remarks_1` text,
  `t_remarks_2` text,
  `t_remarks_3` text,
  `t_remarks_4` text,
  `t_remarks_7` text,
  `t_remarks_8` text,
  `t_remarks_9` text,
  `t_version_1` int(11) DEFAULT '0' COMMENT '市级版本',
  `t_version_2` int(11) DEFAULT '0' COMMENT '县级版本',
  `c_l_type_a` varchar(20) DEFAULT '' COMMENT '3走线-地板',
  `c_l_type_b` varchar(20) DEFAULT '' COMMENT '3走线-地沟',
  `c_l_v1_3` float DEFAULT '0' COMMENT '3走线-地沟1',
  `c_l_v2_3` float DEFAULT '0' COMMENT '3走线-地沟2',
  `t_l_type_a` varchar(20) DEFAULT '' COMMENT '4走线-地板',
  `t_l_type_b` varchar(20) DEFAULT '' COMMENT '4走线-地沟',
  `t_l_v1_3` float DEFAULT '0' COMMENT '4走线-地沟1',
  `t_l_v2_3` float DEFAULT '0' COMMENT '4走线-地沟2',
  `cm_l_type_a` varchar(20) DEFAULT '' COMMENT '7走线-地板',
  `cm_l_type_b` varchar(20) DEFAULT '' COMMENT '7走线-地板',
  `cm_l_v1_3` float DEFAULT '0' COMMENT '7走线-地沟',
  `cm_l_v2_3` float DEFAULT '0' COMMENT '7走线-地沟',
  `t_d_v_a` int(11) DEFAULT '0' COMMENT '现有发射机 数字数量',
  `t_d_v_b` int(11) DEFAULT '0' COMMENT '现有发射机 调频数量',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `Tower_info` */

insert  into `Tower_info`(`t_id`,`t_name`,`t_city`,`t_county`,`t_township`,`t_address`,`t_longitude`,`t_latitude`,`t_accuracy`,`t_altitude`,`t_build_date`,`t_purpose`,`t_parent`,`t_distance`,`t_move`,`t_version`,`t_group`,`t_c_time`,`t_c_u_id`,`t_cg_time`,`t_cg_u_id`,`p_primary`,`p_standby`,`p_t_capacity`,`p_t_quantity`,`p_t_load`,`p_a_power`,`p_u_capacity`,`p_u_quantity`,`p_u_load`,`p_m_capacity`,`p_m_quantity`,`p_m_load`,`p_resistance`,`c_p_layers`,`c_c_layers`,`c_l_type`,`c_l_v1`,`c_l_v2`,`c_g_type`,`c_g_v`,`c_as_type`,`c_as_cool`,`c_as_power`,`c_a_type`,`c_a_volume`,`c_a_power`,`c_a_pressure`,`t_p_layers`,`t_c_layers`,`t_l_type`,`t_l_v1`,`t_l_v2`,`t_g_type`,`t_g_v`,`t_as_type`,`t_as_cool`,`t_as_power`,`t_a_type`,`t_a_volume`,`t_a_power`,`t_a_pressure`,`t_d_type`,`t_d_v`,`cm_p_layers`,`cm_c_layers`,`cm_l_type`,`cm_l_v1`,`cm_l_v2`,`cm_l_v3`,`cm_g_type`,`cm_g_v`,`cm_as_type`,`cm_as_cool`,`cm_as_power`,`cm_a_type`,`cm_a_volume`,`cm_a_power`,`cm_a_pressure`,`ta_net`,`ta_s_centre`,`ta_sm_i`,`ta_sm_i_type`,`ta_sm_c_i`,`ta_sm_m_c`,`ta_pm`,`ta_pm_ups`,`ta_pm_pc`,`ta_pm_rp`,`ta_vs`,`ta_vs_region`,`ta_vs_am`,`ta_vs_ia`,`ta_vs_ia_n`,`ta_vs_io`,`ta_vs_io_n`,`ta_vs_pg`,`ta_vs_pg_n`,`ta_vs_em`,`ta_vs_em_n`,`ta_vs_em_position`,`ta_vs_em_ci`,`tm_longitude`,`tm_latitude`,`tm_altitude`,`tm_position`,`tm_ice`,`tm_height`,`tm_hemline`,`tm_style`,`tm_style_v`,`tm_build_unit`,`tm_design_unit`,`tm_lifespan`,`tm_s_status`,`t_new_sign`,`t_status`,`t_remarks_1`,`t_remarks_2`,`t_remarks_3`,`t_remarks_4`,`t_remarks_7`,`t_remarks_8`,`t_remarks_9`,`t_version_1`,`t_version_2`,`c_l_type_a`,`c_l_type_b`,`c_l_v1_3`,`c_l_v2_3`,`t_l_type_a`,`t_l_type_b`,`t_l_v1_3`,`t_l_v2_3`,`cm_l_type_a`,`cm_l_type_b`,`cm_l_v1_3`,`cm_l_v2_3`,`t_d_v_a`,`t_d_v_b`) values (6,'昆明xxxx台站32432423423电饭锅电饭锅','昆明市','发的高度分工',NULL,'斯蒂芬斯蒂芬的',24.88593611111111,102.83966111111111,10,102,'2017-08','调频广播','123123',11,'2017-08',1,2,'2017-08-12 10:51:47',1,'2017-08-27 23:11:07',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',0,0,'0','0',0,0,'0','0',0,0,0,0),(7,'昆明yyyyy电饭锅电饭锅','昆明市','五华区',NULL,'斯蒂芬斯蒂芬',1.2002777777777778,1.0169444444444444,5,20,'2017-09','调频广播','123',10,'2017-08',2,2,'2017-08-14 11:59:30',1,'2017-09-05 22:03:43',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'sdfsdfsdfsdfsdfsdfsdfsdfsdfdsdfsdf',NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',0,0,'0','0',0,0,'0','0',0,0,0,0),(9,'玉溪的发送到非','玉溪市',NULL,NULL,NULL,0,0,3,NULL,NULL,NULL,NULL,NULL,'2017-08',1,0,'2017-08-14 13:40:40',1,'2017-08-14 13:40:43',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',0,0,'0','0',0,0,'0','0',0,0,0,0),(16,'曲靖电视发射台','曲靖市','罗平县',NULL,'发生的水电费三大的是否地方',56.389786111111114,102.63980833333333,12,12,'2017-08','调频广播、电视','12水电费',12,'2017-08',1,1,'2017-08-19 00:34:47',1,'2017-09-19 16:51:44',1,1000,1000,1000,3,1000,1000,1000,3,1000,1000,3,1000,19996,4,10,'',0,0,'接地排',4,'VRV空调系统',500,500,'机械通风',500,500,500,1,4,'走线架',1,2,'接地极',222,'VRV空调系统',100,100,'自然通风',100,100,100,'调频发射机',2,4,6,'',0,0,NULL,'接地排',333,'机房专用空调',100,100,'机械通风',100,100,100,'无',0,0,'未公开','以太网','开关机控制,输入输出信号,主备倒换',0,0,0,1,'数字','设备区,办公区,场区','IP联网访问',0,0,0,0,0,0,0,0,'中控室','以太网',23.38978611111111,23.389725,23,'城镇',0,24,2,'拉线塔',22,'打发斯蒂芬','胜多负少',10,'12312 是的发送到分',0,0,'123','123','123','1233','123',NULL,NULL,0,0,'活动地板','',0,0,'活动地板','地沟',3,3.2,'活动地板','地沟',1,1.2,8,5),(17,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'2017-08',1,1,'2017-08-26 22:56:53',1,'2017-08-26 22:56:53',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',0,0,'0','0',0,0,'0','0',0,0,0,0),(18,'测试一下','昆明市','斯蒂芬斯蒂芬',NULL,'水电费',1.0169444444444444,1.0169444444444444,12,12,'2017-08','调频广播','舒服舒服',11,'2017-08',2,1,'2017-08-27 00:37:11',1,'2017-08-27 12:20:18',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',0,0,'0','0',0,0,'0','0',0,0,0,0),(36,'是的发送到','曲靖市','防守打法',NULL,'发生的水电费三大的是否地方',23.38978611111111,102.63980833333333,12,12,'2017-08','调频广播','12水电费',12,'2017-08',2,1,'2017-08-19 00:34:47',1,'2017-08-27 23:02:10',1,1000,1000,1000,3,1000,1000,1000,3,1000,1000,3,1000,20000,4,10,'走线架',1,1,'接地排',4,'VRV空调系统',500,500,'机械通风',500,500,500,1,4,'地沟',11,2,'接地极',222,'VRV空调系统',100,100,'自然通风',100,100,100,'调频发射机',3,4,6,'活动地板',2,2,'','接地排',333,'机房专用空调',100,100,'机械通风',100,100,100,'无',0,0,'未公开','以太网','电流电压',0,0,0,1,'数字','场区','IP联网访问',0,0,0,0,0,0,0,0,'中控室','以太网',23.38978611111111,23.389725,23,'城镇',0,23,2,'拉线塔',22,'打发斯蒂芬','胜多负少',10,'12312 是的发送到分',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',0,0,'0','0',0,0,'0','0',0,0,0,0),(38,'昆明电视台','昆明市','五华区','','西边',1.0194444444444444,1.0169444444444444,1,1,'2017-09','调频广播','111',12,'2017-08',1,3,'2017-09-05 22:08:42',1,'2017-09-05 22:10:02',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'',NULL,NULL,'',NULL,NULL,NULL,'',NULL,NULL,NULL,'',NULL,NULL,'','',NULL,'',NULL,NULL,'',NULL,NULL,NULL,'',NULL,NULL,'','','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,0,NULL,'',NULL,NULL,NULL,'',NULL,'','',NULL,'',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',0,0,'0','0',0,0,'0','0',0,0,0,0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `user_pwd` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  `user_status` int(11) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`user_pwd`,`city`,`district`,`lasttime`,`user_status`) values (1,'admin','*4ACFE3202A5FF5CF467898FC58AAB1D615029441','','','2017-09-04 22:33:40',1),(103,'wangyanjie','','','','2017-09-05 12:02:01',0),(104,'wangyanjie1','*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9','昆明市','五华区','2017-09-05 14:29:03',1),(105,'www','','','','2017-09-05 12:01:35',0),(106,'tyyyy','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257','昆明市','','2017-09-05 12:01:53',0),(107,'wyj','*E56A114692FE0DE073F9A1DD68A00EEB9703F3F1','昆明市','','2017-09-12 00:07:52',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
