/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : data_view

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-04-09 14:39:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chart_item
-- ----------------------------
DROP TABLE IF EXISTS `chart_item`;
CREATE TABLE `chart_item` (
  `item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) DEFAULT NULL,
  `item_chart_data` text,
  `item_chart_type` varchar(20) DEFAULT NULL,
  `item_choose` varchar(10) DEFAULT NULL,
  `item_data` text,
  `item_height` bigint(20) DEFAULT NULL,
  `item_i` varchar(20) DEFAULT NULL,
  `item_interval` varchar(10) DEFAULT NULL,
  `item_option` text,
  `item_refresh` varchar(10) DEFAULT NULL,
  `item_width` bigint(20) DEFAULT NULL,
  `item_x` bigint(20) DEFAULT NULL,
  `item_y` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for data_source
-- ----------------------------
DROP TABLE IF EXISTS `data_source`;
CREATE TABLE `data_source` (
  `data_source_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_source_name` varchar(50) DEFAULT NULL COMMENT '数据源名称',
  `data_source_type` varchar(50) DEFAULT NULL COMMENT '数据源类型',
  `data_source_database_name` varchar(100) DEFAULT NULL COMMENT '数据源的数据库名称',
  `data_source_ip` varchar(50) DEFAULT NULL COMMENT '数据源的IP地址',
  `data_source_port` int(5) DEFAULT NULL COMMENT '数据源的端口号',
  `data_source_username` varchar(50) DEFAULT NULL COMMENT '数据源的账户名称',
  `data_source_password` varchar(50) DEFAULT NULL COMMENT '数据源的账户密码',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `add_user` bigint(20) DEFAULT NULL COMMENT '添加者',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `edit_user` bigint(20) DEFAULT NULL COMMENT '编辑者',
  `del_flag` int(1) DEFAULT NULL COMMENT '是否删除（1：存在；0：删除）',
  PRIMARY KEY (`data_source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for screen_instance
-- ----------------------------
DROP TABLE IF EXISTS `screen_instance`;
CREATE TABLE `screen_instance` (
  `instance_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_time` datetime DEFAULT NULL,
  `add_user` bigint(20) DEFAULT NULL,
  `del_flag` int(1) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `edit_user` bigint(20) DEFAULT NULL,
  `instance_background_color` varchar(20) DEFAULT NULL,
  `instance_background_img` varchar(200) DEFAULT NULL,
  `instance_height` bigint(20) DEFAULT NULL,
  `instance_title` varchar(30) DEFAULT NULL,
  `instance_view_img` mediumtext,
  `instance_width` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
