/*
 Navicat Premium Data Transfer

 Source Server         : MySql
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : elderly

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 07/06/2025 15:40:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (2, 'tb_order_items', '订单明细表', NULL, NULL, 'OrderItems', 'crud', 'element-plus', 'com.elderly.manage', 'manage', 'items', '订单明细', 'rj', '0', '/', '{\"parentMenuId\":\"\"}', 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:29:19', NULL);
INSERT INTO `gen_table` VALUES (3, 'tb_service_orders', '服务订单主表', NULL, NULL, 'ServiceOrders', 'crud', 'element-plus', 'com.elderly.manage', 'manage', 'orders', '服务订单', 'rj', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14', NULL);
INSERT INTO `gen_table` VALUES (4, 'tb_service_providers', '家政服务人员信息表', NULL, NULL, 'ServiceProviders', 'crud', 'element-plus', 'com.elderly.manage', 'manage', 'providers', '服务人员', 'ry', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06', NULL);
INSERT INTO `gen_table` VALUES (5, 'tb_services', '服务信息表', NULL, NULL, 'Services', 'crud', 'element-plus', 'com.elderly.manage', 'manage', 'services', '服务信息', 'rj', '0', '/', '{\"parentMenuId\":2001}', 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17', NULL);
INSERT INTO `gen_table` VALUES (6, 'tb_client', '客户信息表', NULL, NULL, 'Client', 'crud', 'element-plus', 'com.elderly.manage', 'manage', 'client', '客户信息', 'rj', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51', NULL);
INSERT INTO `gen_table` VALUES (7, 'tb_activity', '活动主表', NULL, NULL, 'Activity', 'crud', 'element-plus', 'com.elderly.manage', 'manage', 'activity', '活动信息', 'rj', '0', '/', '{\"parentMenuId\":2046}', 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39', NULL);
INSERT INTO `gen_table` VALUES (8, 'tb_activity_type', '活动类型表', NULL, NULL, 'ActivityType', 'crud', 'element-plus', 'com.elderly.manage', 'manage', 'type', '活动类型', 'rj', '0', '/', '{\"parentMenuId\":2046}', 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:52:38', NULL);
INSERT INTO `gen_table` VALUES (10, 'tb_activity_participant', '活动参与表', NULL, NULL, 'ActivityParticipant', 'crud', 'element-plus', 'com.elderly.manage', 'manage', 'participant', '活动参与', 'rj', '0', '/', '{\"parentMenuId\":2046}', 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (15, 2, 'item_id', '序号', 'bigint unsigned', 'String', 'itemId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', NULL, '', 1, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:29:19');
INSERT INTO `gen_table_column` VALUES (16, 2, 'order_id', '关联订单号', 'varchar(32)', 'String', 'orderId', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:29:19');
INSERT INTO `gen_table_column` VALUES (17, 2, 'service_id', '服务人员', 'int unsigned', 'String', 'serviceId', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:29:19');
INSERT INTO `gen_table_column` VALUES (18, 2, 'hourly_rate', '小时单价', 'decimal(10,2) unsigned', 'BigDecimal', 'hourlyRate', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:29:19');
INSERT INTO `gen_table_column` VALUES (19, 2, 'service_hours', '服务时长（小时）', 'decimal(5,1) unsigned', 'BigDecimal', 'serviceHours', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:29:19');
INSERT INTO `gen_table_column` VALUES (20, 2, 'start_time', '服务开始时间', 'datetime', 'Date', 'startTime', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 6, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:29:19');
INSERT INTO `gen_table_column` VALUES (21, 2, 'end_time', '服务结束时间', 'datetime', 'Date', 'endTime', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 7, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:29:19');
INSERT INTO `gen_table_column` VALUES (22, 2, 'item_amount', '单项金额', 'decimal(10,2) unsigned', 'BigDecimal', 'itemAmount', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:29:19');
INSERT INTO `gen_table_column` VALUES (23, 3, 'order_id', '订单号', 'varchar(32)', 'String', 'orderId', '1', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14');
INSERT INTO `gen_table_column` VALUES (24, 3, 'user_id', '用户ID', 'int unsigned', 'String', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', NULL, '', 2, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14');
INSERT INTO `gen_table_column` VALUES (25, 3, 'provider_id', '服务人员ID', 'bigint unsigned', 'String', 'providerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', NULL, '', 3, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14');
INSERT INTO `gen_table_column` VALUES (26, 3, 'order_time', '下单时间', 'datetime', 'Date', 'orderTime', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 4, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14');
INSERT INTO `gen_table_column` VALUES (27, 3, 'service_address', '服务地址', 'varchar(255)', 'String', 'serviceAddress', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14');
INSERT INTO `gen_table_column` VALUES (28, 3, 'total_amount', '订单总金额', 'decimal(10,2) unsigned', 'BigDecimal', 'totalAmount', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14');
INSERT INTO `gen_table_column` VALUES (29, 3, 'order_status', '订单状态', 'enum(\'待支付\',\'待确认\',\'已预约\',\'服务中\',\'已完成\',\'已取消\')', 'String', 'orderStatus', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'radio', 'order_status', 7, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14');
INSERT INTO `gen_table_column` VALUES (30, 3, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14');
INSERT INTO `gen_table_column` VALUES (31, 3, 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14');
INSERT INTO `gen_table_column` VALUES (32, 3, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:36:14');
INSERT INTO `gen_table_column` VALUES (33, 4, 'id', '序号', 'bigint unsigned', 'String', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', NULL, '', 1, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (34, 4, 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (35, 4, 'gender', '性别', 'char(1)', 'String', 'gender', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', 'sys_user_sex', 3, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (36, 4, 'address', '住址地址', 'varchar(255)', 'String', 'address', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (37, 4, 'contact_number', '手机号', 'varchar(20)', 'String', 'contactNumber', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (38, 4, 'age', '年龄', 'tinyint unsigned', 'String', 'age', '0', '0', '1', '1', '1', '1', '0', 'EQ', NULL, '', 6, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (39, 4, 'experience_years', '工作年限', 'tinyint unsigned', 'String', 'experienceYears', '0', '0', '1', '1', '1', '1', '0', 'EQ', NULL, '', 7, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (40, 4, 'details', '具体详情', 'text', 'String', 'details', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'textarea', '', 8, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (41, 4, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (42, 4, 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (43, 4, 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (44, 4, 'update_by', '修改人', 'varchar(50)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (45, 4, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'input', '', 13, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 22:17:06');
INSERT INTO `gen_table_column` VALUES (46, 5, 'id', '序号', 'int unsigned', 'String', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', NULL, '', 1, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (47, 5, 'service_name', '服务名称', 'varchar(50)', 'String', 'serviceName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (48, 5, 'service_desc', '服务描述', 'varchar(255)', 'String', 'serviceDesc', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (49, 5, 'price', '服务价格', 'decimal(10,2) unsigned', 'BigDecimal', 'price', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (50, 5, 'service_category', '服务类别', 'char(1)', 'String', 'serviceCategory', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', 'service_category', 5, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (51, 5, 'details', '具体详情', 'text', 'String', 'details', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'textarea', '', 6, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (52, 5, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (53, 5, 'date_time', '修改时间', 'datetime', 'Date', 'dateTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'datetime', '', 8, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (54, 5, 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (55, 5, 'update_by', '修改人', 'varchar(50)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (56, 5, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2025-04-22 21:20:18', '', '2025-04-22 21:39:17');
INSERT INTO `gen_table_column` VALUES (57, 6, 'id', '序号', 'int unsigned', 'String', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', NULL, '', 1, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (58, 6, 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (59, 6, 'gender', '性别', 'tinyint', 'Long', 'gender', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', 'sys_user_sex', 3, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (60, 6, 'phone', '联系电话', 'varchar(20)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (61, 6, 'address', '居住地址', 'varchar(255)', 'String', 'address', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (62, 6, 'client_type', '类型', 'varchar(255)', 'String', 'clientType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'client_type', 6, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (63, 6, 'emergency_contact', '紧急联系人姓名', 'varchar(50)', 'String', 'emergencyContact', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (64, 6, 'emergency_phone', '紧急联系人电话', 'varchar(20)', 'String', 'emergencyPhone', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (65, 6, 'health_description', '健康状况描述', 'text', 'String', 'healthDescription', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 9, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (66, 6, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (67, 6, 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (68, 6, 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (69, 6, 'update_by', '修改人', 'varchar(50)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (70, 6, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2025-04-23 12:00:29', '', '2025-04-23 21:05:51');
INSERT INTO `gen_table_column` VALUES (71, 7, 'activity_id', '活动序号', 'int unsigned', 'String', 'activityId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', NULL, '', 1, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (72, 7, 'activity_name', '活动名称', 'varchar(100)', 'String', 'activityName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (73, 7, 'activity_type_id', '活动类型', 'int unsigned', 'String', 'activityTypeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', NULL, '', 3, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (74, 7, 'start_time', '开始时间', 'datetime', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 4, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (75, 7, 'end_time', '结束时间', 'datetime', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 5, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (76, 7, 'location', '活动地址', 'varchar(255)', 'String', 'location', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (77, 7, 'status', '活动状态', 'enum(\'未开始\',\'进行中\',\'已结束\',\'已取消\')', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'activity_status', 7, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (78, 7, 'max_participants', '最大参与人数', 'int unsigned', 'String', 'maxParticipants', '0', '0', '1', '1', '1', '1', '0', 'EQ', NULL, '', 8, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (79, 7, 'cover_image', '封面图URL', 'varchar(255)', 'String', 'coverImage', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'imageUpload', '', 9, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (80, 7, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (81, 7, 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (82, 7, 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (83, 7, 'update_by', '修改人', 'varchar(50)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (84, 7, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '0', '0', '0', NULL, 'EQ', 'input', '', 14, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:50:39');
INSERT INTO `gen_table_column` VALUES (85, 8, 'type_id', '活动类型ID', 'int unsigned', 'String', 'typeId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', NULL, '', 1, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:52:38');
INSERT INTO `gen_table_column` VALUES (86, 8, 'type_name', '类型名称', 'varchar(50)', 'String', 'typeName', '0', '0', '1', '1', '1', '1', '0', 'LIKE', 'input', '', 2, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:52:38');
INSERT INTO `gen_table_column` VALUES (87, 8, 'type_desc', '类型描述', 'varchar(255)', 'String', 'typeDesc', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:52:38');
INSERT INTO `gen_table_column` VALUES (88, 8, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, '1', NULL, 'EQ', 'datetime', '', 4, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:52:38');
INSERT INTO `gen_table_column` VALUES (89, 8, 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', '1', NULL, 'EQ', 'datetime', '', 5, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:52:38');
INSERT INTO `gen_table_column` VALUES (90, 8, 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '0', '0', NULL, '0', NULL, 'EQ', 'input', '', 6, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:52:38');
INSERT INTO `gen_table_column` VALUES (91, 8, 'update_by', '修改人', 'varchar(50)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:52:38');
INSERT INTO `gen_table_column` VALUES (92, 8, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '0', '0', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2025-04-26 10:42:28', '', '2025-04-26 10:52:38');
INSERT INTO `gen_table_column` VALUES (106, 10, 'participant_id', '序号', 'int unsigned', 'String', 'participantId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', NULL, '', 1, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (107, 10, 'activity_id', '活动ID', 'int unsigned', 'String', 'activityId', '0', '0', '1', '1', '1', '1', '1', 'EQ', NULL, '', 2, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (108, 10, 'user_id', '用户ID', 'int unsigned', 'String', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', NULL, '', 3, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (109, 10, 'register_time', '报名时间', 'datetime', 'Date', 'registerTime', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 4, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (110, 10, 'participant_status', '参与状态', 'int', 'Long', 'participantStatus', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'radio', 'participant_statu', 5, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (111, 10, 'sign_in_time', '签到时间', 'datetime', 'Date', 'signInTime', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 6, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (112, 10, 'feedback', '参与反馈', 'varchar(500)', 'String', 'feedback', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 7, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (113, 10, 'rating', '活动评分(1-5分)', 'tinyint', 'Long', 'rating', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (114, 10, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (115, 10, 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (116, 10, 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (117, 10, 'update_by', '修改人', 'varchar(50)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');
INSERT INTO `gen_table_column` VALUES (118, 10, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'input', '', 13, 'admin', '2025-04-27 16:13:41', '', '2025-04-27 16:17:49');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2025-04-22 17:48:02', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2025-04-22 17:48:02', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2025-04-22 17:48:02', 'admin', '2025-05-04 20:51:25', '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'N', 'admin', '2025-04-22 17:48:02', 'admin', '2025-05-13 23:48:55', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2025-04-22 17:48:02', 'admin', '2025-05-04 20:50:55', '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2025-04-22 17:48:02', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-04-22 17:48:01', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-04-22 17:48:01', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2025-04-22 17:48:01', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-04-22 17:48:01', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-04-22 17:48:01', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-04-22 17:48:01', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-04-22 17:48:01', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-04-22 17:48:01', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2025-04-22 17:48:01', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2025-04-22 17:48:01', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '老人', '1', 'client_type', NULL, 'default', 'N', '0', 'admin', '2025-04-22 21:16:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '家属', '2', 'client_type', NULL, 'default', 'N', '0', 'admin', '2025-04-22 21:16:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 1, '助餐', '1', 'service_category', NULL, 'default', 'N', '0', 'admin', '2025-04-22 21:21:59', 'admin', '2025-04-25 10:01:44', NULL);
INSERT INTO `sys_dict_data` VALUES (103, 2, '助洁', '2', 'service_category', NULL, 'default', 'N', '0', 'admin', '2025-04-22 21:22:09', 'admin', '2025-04-25 10:02:00', NULL);
INSERT INTO `sys_dict_data` VALUES (104, 3, '助浴', '3', 'service_category', NULL, 'default', 'N', '0', 'admin', '2025-04-22 21:22:24', 'admin', '2025-04-25 10:04:14', NULL);
INSERT INTO `sys_dict_data` VALUES (105, 4, '助行', '4', 'service_category', NULL, 'default', 'N', '0', 'admin', '2025-04-25 10:04:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 5, '助医', '5', 'service_category', NULL, 'default', 'N', '0', 'admin', '2025-04-25 10:04:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 0, '已预约', '0', 'order_status', NULL, 'default', 'N', '0', 'admin', '2025-04-25 22:49:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 1, '服务中', '1', 'order_status', NULL, 'default', 'N', '0', 'admin', '2025-04-25 22:50:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 2, '已完成', '2', 'order_status', NULL, 'default', 'N', '0', 'admin', '2025-04-25 22:50:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 0, '未开始', '0', 'activity_status', NULL, 'default', 'N', '0', 'admin', '2025-04-26 10:47:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 1, '进行中', '1', 'activity_status', NULL, 'default', 'N', '0', 'admin', '2025-04-26 10:48:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 2, '已完成', '2', 'activity_status', NULL, 'default', 'N', '0', 'admin', '2025-04-26 10:48:38', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 3, '与取消', '3', 'activity_status', NULL, 'default', 'N', '0', 'admin', '2025-04-26 10:48:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 0, '已报名', '0', 'participant_statu', NULL, 'default', 'N', '0', 'admin', '2025-04-27 16:16:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 2, '已取消', '2', 'participant_statu', NULL, 'default', 'N', '0', 'admin', '2025-04-27 16:16:16', 'admin', '2025-04-28 16:24:37', NULL);
INSERT INTO `sys_dict_data` VALUES (116, 1, '已签到', '1', 'participant_statu', NULL, 'default', 'N', '0', 'admin', '2025-04-27 16:16:35', 'admin', '2025-04-28 16:24:51', NULL);
INSERT INTO `sys_dict_data` VALUES (118, 0, '男', '0', 'user_sex', NULL, 'default', 'N', '0', 'admin', '2025-04-27 20:27:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (119, 1, '女', '1', 'user_sex', NULL, 'default', 'N', '0', 'admin', '2025-04-27 20:27:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (120, 3, '已完成', '3', 'participant_statu', NULL, 'default', 'N', '0', 'admin', '2025-04-28 16:26:21', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2025-04-22 17:48:02', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '客户类型', 'client_type', '0', 'admin', '2025-04-22 21:15:55', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, '服务类型', 'service_category', '0', 'admin', '2025-04-22 21:21:43', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '订单状态', 'order_status', '0', 'admin', '2025-04-22 21:24:09', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '活动状态', 'activity_status', '0', 'admin', '2025-04-26 10:46:22', 'admin', '2025-04-26 10:46:40', NULL);
INSERT INTO `sys_dict_type` VALUES (104, '参与状态', 'participant_statu', '0', 'admin', '2025-04-27 16:15:26', 'admin', '2025-04-27 16:15:42', NULL);
INSERT INTO `sys_dict_type` VALUES (105, '用户性别', 'user_sex', '0', 'admin', '2025-04-27 20:26:46', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-16 22:07:35');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-05-16 22:19:21');
INSERT INTO `sys_logininfor` VALUES (3, 'awork', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-05-16 22:19:32');
INSERT INTO `sys_logininfor` VALUES (4, 'awork', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2025-05-16 22:19:39');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-16 22:19:48');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-05-16 22:20:06');
INSERT INTO `sys_logininfor` VALUES (7, '123', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-16 22:20:13');
INSERT INTO `sys_logininfor` VALUES (8, '123', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-05-16 22:22:47');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-16 22:22:51');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-17 09:52:43');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-17 13:07:44');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-17 14:08:24');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-05-17 14:10:52');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-05-17 14:33:05');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-17 14:33:09');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-05-17 14:37:49');
INSERT INTO `sys_logininfor` VALUES (17, '123', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-17 14:37:56');
INSERT INTO `sys_logininfor` VALUES (18, '123', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-05-17 14:38:07');
INSERT INTO `sys_logininfor` VALUES (19, '234', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-17 14:38:14');
INSERT INTO `sys_logininfor` VALUES (20, '234', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-05-17 14:38:29');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-05-17 14:38:32');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-17 14:38:35');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-17 17:24:43');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-17 20:07:15');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-22 17:16:51');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-22 21:51:36');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-22 22:49:08');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-05-22 23:05:04');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2067 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 9, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2025-04-22 17:48:01', 'admin', '2025-05-14 18:28:47', '系统管理目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '', 1, 0, 'M', '1', '1', '', 'tool', 'admin', '2025-04-22 17:48:01', 'admin', '2025-05-10 16:14:39', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2025-04-22 17:48:01', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2025-04-22 17:48:01', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '1', '0', 'system:menu:list', 'tree-table', 'admin', '2025-02-19 19:14:47', 'admin', '2025-05-14 18:33:32', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '1', '1', 'system:dept:list', 'tree', 'admin', '2025-02-19 19:14:47', 'admin', '2025-05-14 18:28:24', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '1', '1', 'system:post:list', 'post', 'admin', '2025-04-22 17:48:01', 'admin', '2025-05-14 18:33:15', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '1', '0', 'system:dict:list', 'dict', 'admin', '2025-04-22 17:48:01', 'admin', '2025-05-07 16:37:25', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '1', '1', 'system:config:list', 'edit', 'admin', '2025-04-22 17:48:01', 'admin', '2025-05-14 18:28:33', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2025-04-22 17:48:01', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '1', 'tool:gen:list', 'code', 'admin', '2025-04-22 17:48:01', 'admin', '2025-05-14 18:32:12', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2025-04-22 17:48:01', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2025-04-22 17:48:01', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2025-02-19 19:14:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2025-02-19 19:14:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2025-02-19 19:14:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2025-02-19 19:14:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '档案管理', 0, 1, 'elderly', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'logininfor', 'admin', '2025-04-22 21:17:55', 'admin', '2025-04-29 16:34:49', '');
INSERT INTO `sys_menu` VALUES (2001, '家政服务管理', 0, 2, 'service', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'job', 'admin', '2025-04-22 21:19:07', 'admin', '2025-04-29 16:35:30', '');
INSERT INTO `sys_menu` VALUES (2002, '订单明细', 2044, 1, 'items', 'manage/items/index', NULL, '', 1, 0, 'C', '0', '0', 'manage:items:list', '#', 'admin', '2025-04-22 21:40:56', 'admin', '2025-04-25 15:29:40', '订单明细菜单');
INSERT INTO `sys_menu` VALUES (2003, '订单明细查询', 2002, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:items:query', '#', 'admin', '2025-04-22 21:40:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '订单明细新增', 2002, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:items:add', '#', 'admin', '2025-04-22 21:40:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '订单明细修改', 2002, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:items:edit', '#', 'admin', '2025-04-22 21:40:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '订单明细删除', 2002, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:items:remove', '#', 'admin', '2025-04-22 21:40:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '订单明细导出', 2002, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:items:export', '#', 'admin', '2025-04-22 21:40:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '服务订单', 2044, 1, 'orders', 'manage/orders/index', NULL, '', 1, 0, 'C', '0', '0', 'manage:orders:list', '#', 'admin', '2025-04-22 21:41:08', 'admin', '2025-04-25 15:29:18', '服务订单菜单');
INSERT INTO `sys_menu` VALUES (2009, '服务订单查询', 2008, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:orders:query', '#', 'admin', '2025-04-22 21:41:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '服务订单新增', 2008, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:orders:add', '#', 'admin', '2025-04-22 21:41:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '服务订单修改', 2008, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:orders:edit', '#', 'admin', '2025-04-22 21:41:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '服务订单删除', 2008, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:orders:remove', '#', 'admin', '2025-04-22 21:41:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '服务订单导出', 2008, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:orders:export', '#', 'admin', '2025-04-22 21:41:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '服务人员', 2001, 1, 'providers', 'manage/providers/index', NULL, '', 1, 0, 'C', '0', '0', 'manage:providers:list', '#', 'admin', '2025-04-22 21:41:20', '', NULL, '服务人员菜单');
INSERT INTO `sys_menu` VALUES (2015, '服务人员查询', 2014, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:providers:query', '#', 'admin', '2025-04-22 21:41:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '服务人员新增', 2014, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:providers:add', '#', 'admin', '2025-04-22 21:41:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '服务人员修改', 2014, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:providers:edit', '#', 'admin', '2025-04-22 21:41:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '服务人员删除', 2014, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:providers:remove', '#', 'admin', '2025-04-22 21:41:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '服务人员导出', 2014, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:providers:export', '#', 'admin', '2025-04-22 21:41:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '服务项目', 2001, 1, 'services', 'manage/services/index', NULL, '', 1, 0, 'C', '0', '0', 'manage:services:list', '#', 'admin', '2025-04-22 21:41:31', 'admin', '2025-05-02 15:30:03', '服务信息菜单');
INSERT INTO `sys_menu` VALUES (2021, '服务信息查询', 2020, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:services:query', '#', 'admin', '2025-04-22 21:41:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '服务信息新增', 2020, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:services:add', '#', 'admin', '2025-04-22 21:41:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '服务信息修改', 2020, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:services:edit', '#', 'admin', '2025-04-22 21:41:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '服务信息删除', 2020, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:services:remove', '#', 'admin', '2025-04-22 21:41:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '服务信息导出', 2020, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:services:export', '#', 'admin', '2025-04-22 21:41:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '老人信息', 2000, 1, 'elderly', 'manage/elderly/index', NULL, '', 1, 0, 'C', '0', '0', 'manage:elderly:list', '#', 'admin', '2025-04-23 21:10:43', 'admin', '2025-04-29 15:54:57', '客户信息菜单');
INSERT INTO `sys_menu` VALUES (2039, '老人信息查询', 2038, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:elderly:query', '#', 'admin', '2025-04-23 21:10:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '老人信息新增', 2038, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:elderly:add', '#', 'admin', '2025-04-23 21:10:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '老人信息修改', 2038, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:elderly:edit', '#', 'admin', '2025-04-23 21:10:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '老人信息删除', 2038, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:elderly:remove', '#', 'admin', '2025-04-23 21:10:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '老人信息导出', 2038, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:elderly:export', '#', 'admin', '2025-04-23 21:10:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '服务订单管理', 0, 4, 'order', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'form', 'admin', '2025-04-25 15:28:38', 'admin', '2025-04-29 16:37:10', '');
INSERT INTO `sys_menu` VALUES (2045, '预约服务管理', 0, 3, 'manage/orders/addOrders', 'manage/orders/addOrders', '', '', 1, 0, 'C', '0', '0', 'manage:orders:add', 'skill', 'admin', '2025-04-25 17:47:10', 'admin', '2025-04-29 16:35:49', '');
INSERT INTO `sys_menu` VALUES (2046, '活动管理', 0, 5, 'activity', NULL, NULL, '', 1, 0, 'M', '0', '0', '', '活动管理', 'admin', '2025-04-26 10:44:15', 'admin', '2025-04-29 16:40:17', '');
INSERT INTO `sys_menu` VALUES (2047, '活动信息', 2046, 1, 'activity', 'manage/activity/index', NULL, '', 1, 0, 'C', '0', '0', 'manage:activity:list', '#', 'admin', '2025-04-26 10:53:26', '', NULL, '活动信息菜单');
INSERT INTO `sys_menu` VALUES (2048, '活动信息查询', 2047, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:activity:query', '#', 'admin', '2025-04-26 10:53:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '活动信息新增', 2047, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:activity:add', '#', 'admin', '2025-04-26 10:53:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '活动信息修改', 2047, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:activity:edit', '#', 'admin', '2025-04-26 10:53:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '活动信息删除', 2047, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:activity:remove', '#', 'admin', '2025-04-26 10:53:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '活动信息导出', 2047, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:activity:export', '#', 'admin', '2025-04-26 10:53:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '活动类型', 2046, 1, 'type', 'manage/type/index', NULL, '', 1, 0, 'C', '0', '0', 'manage:type:list', '#', 'admin', '2025-04-26 10:53:37', '', NULL, '活动类型菜单');
INSERT INTO `sys_menu` VALUES (2054, '活动类型查询', 2053, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:type:query', '#', 'admin', '2025-04-26 10:53:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '活动类型新增', 2053, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:type:add', '#', 'admin', '2025-04-26 10:53:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '活动类型修改', 2053, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:type:edit', '#', 'admin', '2025-04-26 10:53:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '活动类型删除', 2053, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:type:remove', '#', 'admin', '2025-04-26 10:53:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '活动类型导出', 2053, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:type:export', '#', 'admin', '2025-04-26 10:53:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '数据统计', 0, 7, 'manage/statistics/index', 'manage/statistics/index', NULL, '', 1, 0, 'C', '0', '0', 'manage:statistics:list', 'chart', 'admin', '2025-04-26 12:25:05', 'admin', '2025-04-29 16:43:26', '');
INSERT INTO `sys_menu` VALUES (2060, '活动参与', 2066, 2, 'participant', 'manage/participant/index', NULL, '', 1, 0, 'C', '0', '0', 'manage:participant:list', '#', 'admin', '2025-04-27 16:18:20', 'admin', '2025-04-28 15:25:20', '活动参与菜单');
INSERT INTO `sys_menu` VALUES (2061, '活动参与查询', 2060, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:participant:query', '#', 'admin', '2025-04-27 16:18:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2062, '活动参与新增', 2060, 2, '#', '', NULL, '', 1, 0, 'F', '0', '1', 'manage:participant:add', '#', 'admin', '2025-04-27 16:18:20', 'admin', '2025-04-28 15:18:13', '');
INSERT INTO `sys_menu` VALUES (2063, '活动参与修改', 2060, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:participant:edit', '#', 'admin', '2025-04-27 16:18:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '活动参与删除', 2060, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:participant:remove', '#', 'admin', '2025-04-27 16:18:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '活动参与导出', 2060, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'manage:participant:export', '#', 'admin', '2025-04-27 16:18:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2066, '活动参与管理', 0, 6, 'participant', NULL, NULL, '', 1, 0, 'M', '0', '0', '', '报名活动管理', 'admin', '2025-04-28 15:10:47', 'admin', '2025-04-29 16:42:45', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2025-04-22 17:48:02', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2025-04-22 17:48:02', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.elderly.web.controller.monitor.SysOperlogController.clean()', 'DELETE', 1, 'admin', '研发部门', '/monitor/operlog/clean', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-14 18:42:47', 179);
INSERT INTO `sys_oper_log` VALUES (2, '登录日志', 9, 'com.elderly.web.controller.monitor.SysLogininforController.clean()', 'DELETE', 1, 'admin', '研发部门', '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-14 18:42:50', 136);
INSERT INTO `sys_oper_log` VALUES (3, '服务订单', 1, 'com.elderly.manage.controller.ServiceOrdersController.add()', 'POST', 1, 'admin', '研发部门', '/manage/orders', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-05-16 22:08:38\",\"orderId\":\"SO20250516220838921\",\"orderStatus\":\"0\",\"params\":{},\"providerId\":\"6\",\"serviceAddress\":\"幸福家园小区7号楼1单元201\",\"totalAmount\":150,\"userId\":\"5\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-16 22:08:39', 70);
INSERT INTO `sys_oper_log` VALUES (4, '订单明细', 1, 'com.elderly.manage.controller.OrderItemsController.add()', 'POST', 1, 'admin', '研发部门', '/manage/items', '127.0.0.1', '内网IP', '{\"endTime\":\"2025-05-17 00:00:00\",\"hourlyRate\":150,\"itemId\":\"34\",\"orderId\":\"SO20250516220838921\",\"params\":{},\"serviceHours\":1,\"serviceId\":\"6\",\"startTime\":\"2025-05-16 23:00:00\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-16 22:08:39', 22);
INSERT INTO `sys_oper_log` VALUES (5, '服务订单', 1, 'com.elderly.manage.controller.ServiceOrdersController.add()', 'POST', 1, 'admin', '研发部门', '/manage/orders', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-05-16 22:17:35\",\"orderId\":\"SO20250516221735713\",\"orderStatus\":\"0\",\"params\":{},\"providerId\":\"3\",\"serviceAddress\":\"幸福家园小区5号楼1单元302\",\"totalAmount\":60,\"userId\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-16 22:17:35', 51);
INSERT INTO `sys_oper_log` VALUES (6, '订单明细', 1, 'com.elderly.manage.controller.OrderItemsController.add()', 'POST', 1, 'admin', '研发部门', '/manage/items', '127.0.0.1', '内网IP', '{\"endTime\":\"2025-05-17 01:00:00\",\"hourlyRate\":30,\"itemId\":\"35\",\"orderId\":\"SO20250516221735713\",\"params\":{},\"serviceHours\":2,\"serviceId\":\"3\",\"startTime\":\"2025-05-16 23:00:00\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-16 22:17:35', 13);
INSERT INTO `sys_oper_log` VALUES (7, '服务订单', 2, 'com.elderly.manage.controller.ServiceOrdersController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/orders', '127.0.0.1', '内网IP', '{\"orderId\":\"SO20250115120000345\",\"orderStatus\":\"2\",\"params\":{},\"remark\":\"心脏术后护理\",\"updateTime\":\"2025-05-16 22:17:44\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-16 22:17:44', 13);
INSERT INTO `sys_oper_log` VALUES (8, '老人信息', 1, 'com.elderly.manage.controller.ElderlyController.add()', 'POST', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"中国\",\"age\":54,\"createTime\":\"2025-05-17 10:08:21\",\"emergencyContact\":\"张一\",\"emergencyPhone\":\"19313926505\",\"gender\":0,\"healthDescription\":\"有高血压\",\"id\":\"21\",\"name\":\"张三\",\"params\":{},\"phone\":\"15571140607\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 10:08:21', 24);
INSERT INTO `sys_oper_log` VALUES (9, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"中国\",\"age\":50,\"createBy\":\"system\",\"createTime\":\"2025-05-17 10:08:21\",\"emergencyContact\":\"张一\",\"emergencyPhone\":\"19313926505\",\"gender\":0,\"healthDescription\":\"有高血压\",\"id\":\"21\",\"name\":\"张三\",\"params\":{},\"phone\":\"15571140607\",\"updateBy\":\"system\",\"updateTime\":\"2025-05-17 10:08:34\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 10:08:34', 13);
INSERT INTO `sys_oper_log` VALUES (10, '老人信息', 3, 'com.elderly.manage.controller.ElderlyController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/elderly/20', '127.0.0.1', '内网IP', '[\"20\"]', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`elderly`.`tb_service_orders`, CONSTRAINT `tb_service_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_elderly` (`id`) ON DELETE RESTRICT)\r\n### The error may exist in file [D:\\WorkSpace\\BS\\ElderlyServicePlatform\\elderly\\elderly-manage\\target\\classes\\mapper\\manage\\ElderlyMapper.xml]\r\n### The error may involve com.elderly.manage.mapper.ElderlyMapper.deleteElderlyByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from tb_elderly where id in          (               ?          )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`elderly`.`tb_service_orders`, CONSTRAINT `tb_service_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_elderly` (`id`) ON DELETE RESTRICT)\n; Cannot delete or update a parent row: a foreign key constraint fails (`elderly`.`tb_service_orders`, CONSTRAINT `tb_service_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_elderly` (`id`) ON DELETE RESTRICT); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`elderly`.`tb_service_orders`, CONSTRAINT `tb_service_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_elderly` (`id`) ON DELETE RESTRICT)', '2025-05-17 10:08:52', 73);
INSERT INTO `sys_oper_log` VALUES (11, '订单明细', 3, 'com.elderly.manage.controller.OrderItemsController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/items/35', '127.0.0.1', '内网IP', '[\"35\"]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 10:18:06', 12);
INSERT INTO `sys_oper_log` VALUES (12, '老人信息', 3, 'com.elderly.manage.controller.ElderlyController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/elderly/21', '127.0.0.1', '内网IP', '[\"21\"]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 10:19:57', 58);
INSERT INTO `sys_oper_log` VALUES (13, '服务订单', 1, 'com.elderly.manage.controller.ServiceOrdersController.add()', 'POST', 1, 'admin', '研发部门', '/manage/orders', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-05-17 13:09:13\",\"orderId\":\"SO20250517130913329\",\"orderStatus\":\"0\",\"params\":{},\"providerId\":\"4\",\"serviceAddress\":\"幸福家园小区8号楼2单元303\",\"totalAmount\":90}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'elderly_id\' cannot be null\r\n### The error may exist in file [D:\\WorkSpace\\BS\\ElderlyServicePlatform\\elderly\\elderly-manage\\target\\classes\\mapper\\manage\\ServiceOrdersMapper.xml]\r\n### The error may involve com.elderly.manage.mapper.ServiceOrdersMapper.insertServiceOrders-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_service_orders (             order_id,elderly_id,provider_id,service_address,total_amount,order_status,create_time)             values (?,?,?,?,?,?,sysdate())\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'elderly_id\' cannot be null\n; Column \'elderly_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'elderly_id\' cannot be null', '2025-05-17 13:09:13', 89);
INSERT INTO `sys_oper_log` VALUES (14, '服务订单', 1, 'com.elderly.manage.controller.ServiceOrdersController.add()', 'POST', 1, 'admin', '研发部门', '/manage/orders', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-05-17 13:11:56\",\"orderId\":\"SO20250517131156676\",\"orderStatus\":\"0\",\"params\":{},\"providerId\":\"8\",\"serviceAddress\":\"幸福家园小区8号楼3单元102\",\"totalAmount\":60}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'elderly_id\' cannot be null\r\n### The error may exist in file [D:\\WorkSpace\\BS\\ElderlyServicePlatform\\elderly\\elderly-manage\\target\\classes\\mapper\\manage\\ServiceOrdersMapper.xml]\r\n### The error may involve com.elderly.manage.mapper.ServiceOrdersMapper.insertServiceOrders-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_service_orders (             order_id,elderly_id,provider_id,service_address,total_amount,order_status,create_time)             values (?,?,?,?,?,?,sysdate())\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'elderly_id\' cannot be null\n; Column \'elderly_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'elderly_id\' cannot be null', '2025-05-17 13:11:56', 4);
INSERT INTO `sys_oper_log` VALUES (15, '服务订单', 1, 'com.elderly.manage.controller.ServiceOrdersController.add()', 'POST', 1, 'admin', '研发部门', '/manage/orders', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-05-17 13:18:34\",\"elderlyId\":\"4\",\"orderId\":\"SO20250517131834039\",\"orderStatus\":\"0\",\"params\":{},\"providerId\":\"5\",\"serviceAddress\":\"幸福家园小区2号楼2单元401\",\"totalAmount\":30}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 13:18:34', 16);
INSERT INTO `sys_oper_log` VALUES (16, '订单明细', 1, 'com.elderly.manage.controller.OrderItemsController.add()', 'POST', 1, 'admin', '研发部门', '/manage/items', '127.0.0.1', '内网IP', '{\"endTime\":\"2025-05-17 15:00:00\",\"hourlyRate\":30,\"itemId\":\"36\",\"orderId\":\"SO20250517131834039\",\"params\":{},\"serviceHours\":1,\"serviceId\":\"3\",\"startTime\":\"2025-05-17 14:00:00\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 13:18:34', 23);
INSERT INTO `sys_oper_log` VALUES (17, '服务订单', 2, 'com.elderly.manage.controller.ServiceOrdersController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/orders', '127.0.0.1', '内网IP', '{\"orderId\":\"SO20250517131834039\",\"orderStatus\":\"1\",\"params\":{},\"remark\":\"\",\"updateTime\":\"2025-05-17 13:18:48\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 13:18:48', 13);
INSERT INTO `sys_oper_log` VALUES (18, '服务订单', 2, 'com.elderly.manage.controller.ServiceOrdersController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/orders', '127.0.0.1', '内网IP', '{\"orderId\":\"SO20250517131834039\",\"orderStatus\":\"2\",\"params\":{},\"remark\":\"\",\"updateTime\":\"2025-05-17 13:18:52\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 13:18:52', 12);
INSERT INTO `sys_oper_log` VALUES (19, '服务订单', 3, 'com.elderly.manage.controller.ServiceOrdersController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/orders/SO20250517131834039', '127.0.0.1', '内网IP', '[\"SO20250517131834039\"]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 13:19:40', 73);
INSERT INTO `sys_oper_log` VALUES (20, '活动信息', 1, 'com.elderly.manage.controller.ActivityController.add()', 'POST', 1, 'admin', '研发部门', '/manage/activity', '127.0.0.1', '内网IP', '{\"activityId\":\"21\",\"activityName\":\"广场舞\",\"activityTypeId\":\"3\",\"coverImage\":\"/profile/upload/2025/05/17/跳舞_20250517132217A001.jpg\",\"createTime\":\"2025-05-17 13:22:19\",\"endTime\":\"2025-05-18 19:00:00\",\"location\":\"活动室\",\"maxParticipants\":\"30\",\"params\":{},\"startTime\":\"2025-05-18 09:00:00\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 13:22:19', 21);
INSERT INTO `sys_oper_log` VALUES (21, '活动参与', 1, 'com.elderly.manage.controller.ActivityParticipantController.add()', 'POST', 1, 'admin', '研发部门', '/manage/participant', '127.0.0.1', '内网IP', '{\"activityId\":\"21\",\"createTime\":\"2025-05-17 13:22:32\",\"feedback\":\"\",\"params\":{},\"participantId\":\"21\",\"participantStatus\":0,\"registerTime\":\"2025-05-17 13:22:26\",\"remark\":\"\",\"userId\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 13:22:32', 17);
INSERT INTO `sys_oper_log` VALUES (22, '活动参与', 1, 'com.elderly.manage.controller.ActivityParticipantController.add()', 'POST', 1, 'admin', '研发部门', '/manage/participant', '127.0.0.1', '内网IP', '{\"activityId\":\"21\",\"createTime\":\"2025-05-17 13:22:39\",\"feedback\":\"\",\"params\":{},\"participantId\":\"22\",\"participantStatus\":0,\"registerTime\":\"2025-05-17 13:22:33\",\"remark\":\"\",\"userId\":\"6\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 13:22:39', 56);
INSERT INTO `sys_oper_log` VALUES (23, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"幸福家园小区3号楼2单元501\",\"age\":78,\"createBy\":\"admin\",\"createTime\":\"2025-05-03 14:07:32\",\"emergencyContact\":\"张明\",\"emergencyPhone\":\"13900139001\",\"gender\":0,\"healthDescription\":\"高血压，轻度关节炎，需定期测量血压\",\"id\":\"1\",\"name\":\"张建国\",\"params\":{},\"phone\":\"13800138001\",\"remark\":\"子女常年在国外\",\"updateBy\":\"admin\",\"updateTime\":\"2025-05-17 14:09:47\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:09:47', 62);
INSERT INTO `sys_oper_log` VALUES (24, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"幸福家园小区5号楼1单元302\",\"age\":82,\"createBy\":\"admin\",\"createTime\":\"2025-05-03 14:07:32\",\"emergencyContact\":\"李强\",\"emergencyPhone\":\"13900139002\",\"gender\":1,\"healthDescription\":\"糖尿病，需按时注射胰岛素\",\"id\":\"2\",\"name\":\"李淑芬\",\"params\":{},\"phone\":\"13800138002\",\"remark\":\"独居老人\",\"updateBy\":\"admin\",\"updateTime\":\"2025-05-17 14:09:53\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:09:53', 12);
INSERT INTO `sys_oper_log` VALUES (25, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"幸福家园小区8号楼3单元102\",\"age\":85,\"createBy\":\"system\",\"createTime\":\"2025-05-03 14:07:32\",\"emergencyContact\":\"王丽\",\"emergencyPhone\":\"13900139003\",\"gender\":0,\"healthDescription\":\"冠心病，安装过心脏支架\",\"id\":\"3\",\"name\":\"王德顺\",\"params\":{},\"phone\":\"13800138003\",\"remark\":\"喜欢下棋\",\"updateBy\":\"system\",\"updateTime\":\"2025-05-17 14:09:58\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:09:58', 12);
INSERT INTO `sys_oper_log` VALUES (26, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"幸福家园小区2号楼2单元401\",\"age\":79,\"createBy\":\"admin\",\"createTime\":\"2025-05-03 14:07:32\",\"emergencyContact\":\"赵刚\",\"emergencyPhone\":\"13900139004\",\"gender\":1,\"healthDescription\":\"骨质疏松，需补钙\",\"id\":\"4\",\"name\":\"赵桂英\",\"params\":{},\"phone\":\"13800138004\",\"remark\":\"有养猫\",\"updateBy\":\"admin\",\"updateTime\":\"2025-05-17 14:10:03\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:10:03', 11);
INSERT INTO `sys_oper_log` VALUES (27, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"幸福家园小区1号楼3单元601\",\"age\":76,\"createBy\":\"admin\",\"createTime\":\"2025-05-03 14:07:32\",\"emergencyContact\":\"陈明\",\"emergencyPhone\":\"13900139006\",\"gender\":1,\"healthDescription\":\"腰椎间盘突出，行动不便\",\"id\":\"6\",\"name\":\"陈秀兰\",\"params\":{},\"phone\":\"13800138006\",\"remark\":\"喜欢听京剧\",\"updateBy\":\"admin\",\"updateTime\":\"2025-05-17 14:10:10\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:10:10', 12);
INSERT INTO `sys_oper_log` VALUES (28, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"幸福家园小区6号楼2单元301\",\"age\":81,\"createBy\":\"system\",\"createTime\":\"2025-05-03 14:07:32\",\"emergencyContact\":\"杨静\",\"emergencyPhone\":\"13900139007\",\"gender\":0,\"healthDescription\":\"前列腺增生，定期检查\",\"id\":\"7\",\"name\":\"杨志强\",\"params\":{},\"phone\":\"13800138007\",\"updateBy\":\"system\",\"updateTime\":\"2025-05-17 14:10:15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:10:15', 40);
INSERT INTO `sys_oper_log` VALUES (29, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"幸福家园小区4号楼1单元502\",\"age\":83,\"createBy\":\"admin\",\"createTime\":\"2025-05-03 14:07:32\",\"emergencyContact\":\"周涛\",\"emergencyPhone\":\"13900139008\",\"gender\":1,\"healthDescription\":\"白内障，视力较差\",\"id\":\"8\",\"name\":\"周凤霞\",\"params\":{},\"phone\":\"13800138008\",\"remark\":\"需要助行器\",\"updateBy\":\"admin\",\"updateTime\":\"2025-05-17 14:10:20\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:10:20', 12);
INSERT INTO `sys_oper_log` VALUES (30, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"幸福家园小区9号楼3单元202\",\"age\":77,\"createBy\":\"system\",\"createTime\":\"2025-05-03 14:07:32\",\"emergencyContact\":\"吴敏\",\"emergencyPhone\":\"13900139009\",\"gender\":0,\"healthDescription\":\"慢性支气管炎，需注意保暖\",\"id\":\"9\",\"name\":\"吴文彬\",\"params\":{},\"phone\":\"13800138009\",\"remark\":\"退休教师\",\"updateBy\":\"system\",\"updateTime\":\"2025-05-17 14:10:25\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:10:25', 10);
INSERT INTO `sys_oper_log` VALUES (31, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"幸福家园小区10号楼2单元103\",\"age\":84,\"createBy\":\"admin\",\"createTime\":\"2025-05-03 14:07:32\",\"emergencyContact\":\"郑伟\",\"emergencyPhone\":\"13900139010\",\"gender\":1,\"healthDescription\":\"轻度帕金森，手部颤抖\",\"id\":\"10\",\"name\":\"郑玉珍\",\"params\":{},\"phone\":\"13800138010\",\"remark\":\"喜欢种花\",\"updateBy\":\"admin\",\"updateTime\":\"2025-05-17 14:10:29\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:10:29', 44);
INSERT INTO `sys_oper_log` VALUES (32, '老人信息', 2, 'com.elderly.manage.controller.ElderlyController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/elderly', '127.0.0.1', '内网IP', '{\"address\":\"幸福家园小区3号楼2单元501\",\"age\":78,\"createBy\":\"admin\",\"createTime\":\"2025-05-03 14:07:32\",\"emergencyContact\":\"张明\",\"emergencyPhone\":\"13900139001\",\"gender\":1,\"healthDescription\":\"高血压，轻度关节炎，需定期测量血压\",\"id\":\"1\",\"name\":\"张建国\",\"params\":{},\"phone\":\"13800138001\",\"remark\":\"子女常年在国外\",\"updateBy\":\"admin\",\"updateTime\":\"2025-05-17 14:33:50\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:33:50', 38);
INSERT INTO `sys_oper_log` VALUES (33, '服务订单', 1, 'com.elderly.manage.controller.ServiceOrdersController.add()', 'POST', 1, 'admin', '研发部门', '/manage/orders', '127.0.0.1', '内网IP', '{\"createTime\":\"2025-05-17 14:34:51\",\"elderlyId\":\"4\",\"orderId\":\"SO20250517143451597\",\"orderStatus\":\"0\",\"params\":{},\"providerId\":\"4\",\"serviceAddress\":\"幸福家园小区2号楼2单元401\",\"totalAmount\":60}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:34:51', 65);
INSERT INTO `sys_oper_log` VALUES (34, '订单明细', 1, 'com.elderly.manage.controller.OrderItemsController.add()', 'POST', 1, 'admin', '研发部门', '/manage/items', '127.0.0.1', '内网IP', '{\"endTime\":\"2025-05-17 17:00:00\",\"hourlyRate\":30,\"itemId\":\"37\",\"orderId\":\"SO20250517143451597\",\"params\":{},\"serviceHours\":2,\"serviceId\":\"3\",\"startTime\":\"2025-05-17 15:00:00\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:34:51', 15);
INSERT INTO `sys_oper_log` VALUES (35, '服务订单', 2, 'com.elderly.manage.controller.ServiceOrdersController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/orders', '127.0.0.1', '内网IP', '{\"orderId\":\"SO20250517143451597\",\"orderStatus\":\"1\",\"params\":{},\"remark\":\"\",\"updateTime\":\"2025-05-17 14:35:07\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:35:07', 58);
INSERT INTO `sys_oper_log` VALUES (36, '活动信息', 1, 'com.elderly.manage.controller.ActivityController.add()', 'POST', 1, 'admin', '研发部门', '/manage/activity', '127.0.0.1', '内网IP', '{\"activityId\":\"22\",\"activityName\":\"下棋\",\"activityTypeId\":\"3\",\"coverImage\":\"/profile/upload/2025/05/17/下象棋_20250517143556A002.jpg\",\"createTime\":\"2025-05-17 14:35:57\",\"endTime\":\"2025-05-17 17:00:00\",\"location\":\"活动室一楼\",\"maxParticipants\":\"30\",\"params\":{},\"startTime\":\"2025-05-17 12:00:00\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:35:57', 17);
INSERT INTO `sys_oper_log` VALUES (37, '活动参与', 1, 'com.elderly.manage.controller.ActivityParticipantController.add()', 'POST', 1, 'admin', '研发部门', '/manage/participant', '127.0.0.1', '内网IP', '{\"activityId\":\"22\",\"createTime\":\"2025-05-17 14:36:15\",\"feedback\":\"\",\"params\":{},\"participantId\":\"23\",\"participantStatus\":0,\"registerTime\":\"2025-05-17 14:36:05\",\"remark\":\"\",\"userId\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:36:15', 50);
INSERT INTO `sys_oper_log` VALUES (38, '活动参与', 2, 'com.elderly.manage.controller.ActivityParticipantController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/participant', '127.0.0.1', '内网IP', '{\"params\":{},\"participantId\":\"23\",\"participantStatus\":1,\"signInTime\":\"2025-05-17 14:36:30\",\"updateTime\":\"2025-05-17 14:36:30\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:36:31', 59);
INSERT INTO `sys_oper_log` VALUES (39, '活动参与', 2, 'com.elderly.manage.controller.ActivityParticipantController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/participant', '127.0.0.1', '内网IP', '{\"activityId\":\"22\",\"createBy\":\"system\",\"createTime\":\"2025-05-17 14:36:16\",\"feedback\":\"好\",\"params\":{},\"participantId\":\"23\",\"participantStatus\":3,\"rating\":5,\"registerTime\":\"2025-05-17 14:36:05\",\"remark\":\"\",\"signInTime\":\"2025-05-17 14:36:30\",\"updateBy\":\"system\",\"updateTime\":\"2025-05-17 14:36:51\",\"userId\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-05-17 14:36:51', 17);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2025-04-22 17:48:01', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2025-04-22 17:48:01', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2025-04-22 17:48:01', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '2', 'admin', '2025-04-22 17:48:01', '', NULL, '普通角色');
INSERT INTO `sys_role` VALUES (100, '测试', 'test', 0, '1', 1, 1, '0', '0', 'admin', '2025-04-23 18:26:57', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (101, '服务工作人员', 'swork', 2, '1', 1, 1, '0', '0', 'admin', '2025-05-07 16:38:54', 'admin', '2025-05-14 17:52:40', NULL);
INSERT INTO `sys_role` VALUES (102, '活动工作人员', 'awork', 3, '1', 1, 1, '0', '0', 'admin', '2025-05-07 16:39:26', 'admin', '2025-05-14 00:22:23', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2010);
INSERT INTO `sys_role_menu` VALUES (100, 2011);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2032);
INSERT INTO `sys_role_menu` VALUES (100, 2033);
INSERT INTO `sys_role_menu` VALUES (100, 2034);
INSERT INTO `sys_role_menu` VALUES (100, 2035);
INSERT INTO `sys_role_menu` VALUES (100, 2036);
INSERT INTO `sys_role_menu` VALUES (100, 2037);
INSERT INTO `sys_role_menu` VALUES (101, 2000);
INSERT INTO `sys_role_menu` VALUES (101, 2001);
INSERT INTO `sys_role_menu` VALUES (101, 2002);
INSERT INTO `sys_role_menu` VALUES (101, 2003);
INSERT INTO `sys_role_menu` VALUES (101, 2004);
INSERT INTO `sys_role_menu` VALUES (101, 2005);
INSERT INTO `sys_role_menu` VALUES (101, 2006);
INSERT INTO `sys_role_menu` VALUES (101, 2007);
INSERT INTO `sys_role_menu` VALUES (101, 2008);
INSERT INTO `sys_role_menu` VALUES (101, 2009);
INSERT INTO `sys_role_menu` VALUES (101, 2010);
INSERT INTO `sys_role_menu` VALUES (101, 2011);
INSERT INTO `sys_role_menu` VALUES (101, 2012);
INSERT INTO `sys_role_menu` VALUES (101, 2013);
INSERT INTO `sys_role_menu` VALUES (101, 2014);
INSERT INTO `sys_role_menu` VALUES (101, 2015);
INSERT INTO `sys_role_menu` VALUES (101, 2016);
INSERT INTO `sys_role_menu` VALUES (101, 2017);
INSERT INTO `sys_role_menu` VALUES (101, 2018);
INSERT INTO `sys_role_menu` VALUES (101, 2019);
INSERT INTO `sys_role_menu` VALUES (101, 2020);
INSERT INTO `sys_role_menu` VALUES (101, 2021);
INSERT INTO `sys_role_menu` VALUES (101, 2022);
INSERT INTO `sys_role_menu` VALUES (101, 2023);
INSERT INTO `sys_role_menu` VALUES (101, 2024);
INSERT INTO `sys_role_menu` VALUES (101, 2025);
INSERT INTO `sys_role_menu` VALUES (101, 2038);
INSERT INTO `sys_role_menu` VALUES (101, 2039);
INSERT INTO `sys_role_menu` VALUES (101, 2040);
INSERT INTO `sys_role_menu` VALUES (101, 2041);
INSERT INTO `sys_role_menu` VALUES (101, 2042);
INSERT INTO `sys_role_menu` VALUES (101, 2043);
INSERT INTO `sys_role_menu` VALUES (101, 2044);
INSERT INTO `sys_role_menu` VALUES (101, 2045);
INSERT INTO `sys_role_menu` VALUES (101, 2059);
INSERT INTO `sys_role_menu` VALUES (102, 2000);
INSERT INTO `sys_role_menu` VALUES (102, 2038);
INSERT INTO `sys_role_menu` VALUES (102, 2039);
INSERT INTO `sys_role_menu` VALUES (102, 2040);
INSERT INTO `sys_role_menu` VALUES (102, 2041);
INSERT INTO `sys_role_menu` VALUES (102, 2042);
INSERT INTO `sys_role_menu` VALUES (102, 2043);
INSERT INTO `sys_role_menu` VALUES (102, 2046);
INSERT INTO `sys_role_menu` VALUES (102, 2047);
INSERT INTO `sys_role_menu` VALUES (102, 2048);
INSERT INTO `sys_role_menu` VALUES (102, 2049);
INSERT INTO `sys_role_menu` VALUES (102, 2050);
INSERT INTO `sys_role_menu` VALUES (102, 2051);
INSERT INTO `sys_role_menu` VALUES (102, 2052);
INSERT INTO `sys_role_menu` VALUES (102, 2053);
INSERT INTO `sys_role_menu` VALUES (102, 2054);
INSERT INTO `sys_role_menu` VALUES (102, 2055);
INSERT INTO `sys_role_menu` VALUES (102, 2056);
INSERT INTO `sys_role_menu` VALUES (102, 2057);
INSERT INTO `sys_role_menu` VALUES (102, 2058);
INSERT INTO `sys_role_menu` VALUES (102, 2060);
INSERT INTO `sys_role_menu` VALUES (102, 2061);
INSERT INTO `sys_role_menu` VALUES (102, 2062);
INSERT INTO `sys_role_menu` VALUES (102, 2063);
INSERT INTO `sys_role_menu` VALUES (102, 2064);
INSERT INTO `sys_role_menu` VALUES (102, 2065);
INSERT INTO `sys_role_menu` VALUES (102, 2066);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'rj', '00', 'rj@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-05-22 23:05:05', 'admin', '2025-04-22 17:48:01', '', '2025-05-22 23:05:04', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2025-05-14 18:15:14', 'admin', '2025-04-22 17:48:01', '', '2025-05-14 18:15:13', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, '123', '服务工作人员', '00', '', '', '1', '', '$2a$10$x/pA.qoWqy58/LxYzczuiO1t967IgJJ8YT/wDoLfoQ8iyOYOJGvvC', '0', '0', '127.0.0.1', '2025-05-17 14:37:56', 'admin', '2025-05-14 00:03:52', 'admin', '2025-05-17 14:37:55', NULL);
INSERT INTO `sys_user` VALUES (101, NULL, '活动服务人员', '234', '00', '', '', '0', '', '$2a$10$HWvxQSbSMlTwp9yxzluYi.gVICOERj9dl0CC42tA0w2sJ6Evtnb4.', '0', '2', '', NULL, 'admin', '2025-05-14 18:21:36', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (102, NULL, '活动工作人员', '234', '00', '', '', '0', '', '$2a$10$1FwItmPBbMa3vIN9cP9U0OP0XUhV8/qIoC.6DxvwwgnL7yk.zKN3C', '0', '2', '', NULL, 'admin', '2025-05-14 18:22:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (103, NULL, '234', '活动工作人员', '00', '', '', '0', '', '$2a$10$W5TcTy3REFHwoRtYs6ZxFegF1p4hLRAQ3s07DX1uGGwXEghE9krT2', '0', '0', '127.0.0.1', '2025-05-17 14:38:15', 'admin', '2025-05-14 18:22:43', '', '2025-05-17 14:38:14', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (100, 101);
INSERT INTO `sys_user_role` VALUES (103, 102);

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity`  (
  `activity_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `activity_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动名称',
  `activity_type_id` int UNSIGNED NOT NULL COMMENT '活动类型ID',
  `start_time` datetime(0) NOT NULL COMMENT '开始时间',
  `end_time` datetime(0) NOT NULL COMMENT '结束时间',
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动地址',
  `max_participants` int UNSIGNED NULL DEFAULT NULL COMMENT '最大参与人数',
  `cover_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面图',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '修改人',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`activity_id`) USING BTREE,
  UNIQUE INDEX `activity_name`(`activity_name`) USING BTREE,
  INDEX `activity_type_id`(`activity_type_id`) USING BTREE,
  INDEX `idx_time_range`(`start_time`, `end_time`) USING BTREE,
  CONSTRAINT `tb_activity_ibfk_1` FOREIGN KEY (`activity_type_id`) REFERENCES `tb_activity_type` (`type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '活动主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES (18, '春季养生健康讲座', 1, '2025-05-04 08:00:00', '2025-05-04 18:00:00', '幸福家园小区活动中心', 30, '/profile/upload/2025/05/03/讲座_20250503231557A001.jpg', '2025-05-03 23:15:59', '2025-05-03 23:15:58', 'system', 'system', NULL);
INSERT INTO `tb_activity` VALUES (19, '五一劳动，强身健体', 4, '2025-05-06 09:00:00', '2025-05-06 18:00:00', '小区广场', 30, '/profile/upload/2025/05/05/锻炼_20250505172903A001.jpg', '2025-05-05 17:30:02', '2025-05-05 17:30:01', 'system', 'system', NULL);
INSERT INTO `tb_activity` VALUES (20, '兴趣书法', 6, '2025-05-05 09:00:00', '2025-05-05 20:00:00', '一楼活动室', 30, '/profile/upload/2025/05/05/书法_20250505174146A002.jpg', '2025-05-05 17:42:46', '2025-05-05 17:42:46', 'system', 'system', NULL);
INSERT INTO `tb_activity` VALUES (21, '广场舞', 3, '2025-05-18 09:00:00', '2025-05-18 19:00:00', '活动室', 30, '/profile/upload/2025/05/17/跳舞_20250517132217A001.jpg', '2025-05-17 13:22:20', '2025-05-17 13:22:19', 'system', 'system', NULL);
INSERT INTO `tb_activity` VALUES (22, '下棋', 3, '2025-05-17 12:00:00', '2025-05-17 17:00:00', '活动室一楼', 30, '/profile/upload/2025/05/17/下象棋_20250517143556A002.jpg', '2025-05-17 14:35:57', '2025-05-17 14:35:57', 'system', 'system', NULL);

-- ----------------------------
-- Table structure for tb_activity_participant
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_participant`;
CREATE TABLE `tb_activity_participant`  (
  `participant_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '参与记录ID',
  `activity_id` int UNSIGNED NOT NULL COMMENT '活动ID',
  `user_id` int UNSIGNED NOT NULL COMMENT '用户ID',
  `register_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '报名时间',
  `participant_status` int NOT NULL DEFAULT 0 COMMENT '参与状态',
  `sign_in_time` datetime(0) NULL DEFAULT NULL COMMENT '签到时间',
  `feedback` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参与反馈',
  `rating` tinyint(10) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '活动评分(1-5分)',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '修改人',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`participant_id`) USING BTREE,
  UNIQUE INDEX `idx_activity_user`(`activity_id`, `user_id`) USING BTREE COMMENT '活动用户唯一索引',
  INDEX `idx_user_id`(`user_id`) USING BTREE COMMENT '用户ID索引',
  INDEX `idx_activity_id`(`activity_id`) USING BTREE COMMENT '活动ID索引',
  INDEX `idx_register_time`(`register_time`) USING BTREE COMMENT '报名时间索引',
  CONSTRAINT `tb_activity_participant_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `tb_activity` (`activity_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '活动参与表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_activity_participant
-- ----------------------------
INSERT INTO `tb_activity_participant` VALUES (16, 18, 1, '2025-05-03 23:31:01', 3, '2025-05-03 23:31:15', '非常好', 0000000005, '2025-05-03 23:31:07', '2025-05-03 23:31:52', 'system', 'system', '');
INSERT INTO `tb_activity_participant` VALUES (19, 19, 2, '2025-05-05 17:41:16', 0, NULL, '', NULL, '2025-05-05 17:41:21', '2025-05-05 17:41:21', 'system', 'system', '');
INSERT INTO `tb_activity_participant` VALUES (20, 20, 4, '2025-05-05 17:42:51', 1, '2025-05-05 18:13:18', '', NULL, '2025-05-05 17:42:57', '2025-05-05 18:13:19', 'system', 'system', '');
INSERT INTO `tb_activity_participant` VALUES (21, 21, 2, '2025-05-17 13:22:26', 0, NULL, '', NULL, '2025-05-17 13:22:32', '2025-05-17 13:22:32', 'system', 'system', '');
INSERT INTO `tb_activity_participant` VALUES (22, 21, 6, '2025-05-17 13:22:33', 0, NULL, '', NULL, '2025-05-17 13:22:39', '2025-05-17 13:22:39', 'system', 'system', '');
INSERT INTO `tb_activity_participant` VALUES (23, 22, 1, '2025-05-17 14:36:05', 3, '2025-05-17 14:36:30', '好', 0000000005, '2025-05-17 14:36:16', '2025-05-17 14:36:52', 'system', 'system', '');

-- ----------------------------
-- Table structure for tb_activity_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_type`;
CREATE TABLE `tb_activity_type`  (
  `type_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '活动类型ID',
  `type_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类型名称',
  `type_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型描述',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '修改人',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`type_id`) USING BTREE,
  UNIQUE INDEX `type_name`(`type_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '活动类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_activity_type
-- ----------------------------
INSERT INTO `tb_activity_type` VALUES (1, '健康讲座', '定期举办的老年人健康知识讲座', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'admin', 'admin', '每月至少举办一次');
INSERT INTO `tb_activity_type` VALUES (2, '手工制作', '锻炼手脑协调能力的手工艺活动', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'admin', 'admin', '如剪纸、插花等');
INSERT INTO `tb_activity_type` VALUES (3, '文娱表演', '老年人文艺表演和观赏活动', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'system', 'system', '包含戏曲、歌舞等');
INSERT INTO `tb_activity_type` VALUES (4, '健身活动', '适合老年人的健身锻炼活动', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'system', 'system', '如太极拳、八段锦等');
INSERT INTO `tb_activity_type` VALUES (5, '节日庆祝', '传统节日的庆祝和联谊活动', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'admin', 'admin', '春节、中秋等节日');
INSERT INTO `tb_activity_type` VALUES (6, '兴趣小组', '各类兴趣爱好交流小组', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'admin', 'admin', '书法、绘画、合唱等');
INSERT INTO `tb_activity_type` VALUES (7, '心理辅导', '老年人心理健康讲座和咨询', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'system', 'system', '专业心理咨询师指导');
INSERT INTO `tb_activity_type` VALUES (8, '科技助老', '智能设备使用培训活动', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'system', 'system', '手机、平板电脑使用教学');
INSERT INTO `tb_activity_type` VALUES (9, '美食分享', '健康饮食制作与分享活动', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'admin', 'admin', '低糖低盐健康食谱');
INSERT INTO `tb_activity_type` VALUES (10, '户外郊游', '组织老年人短途户外活动', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'admin', 'admin', '需家属陪同');
INSERT INTO `tb_activity_type` VALUES (11, '读书会', '老年人读书分享交流活动', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'system', 'system', '每月推荐一本书');
INSERT INTO `tb_activity_type` VALUES (12, '生日会', '为当月生日老人集体庆生', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'system', 'system', '每月末举办');
INSERT INTO `tb_activity_type` VALUES (13, '记忆训练', '预防阿尔茨海默病的认知训练', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'admin', 'admin', '专业训练课程');
INSERT INTO `tb_activity_type` VALUES (14, '志愿服务', '组织老年人参与社区志愿服务', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'admin', 'admin', '发挥余热');
INSERT INTO `tb_activity_type` VALUES (15, '法律咨询', '老年人权益保护法律咨询服务', '2025-05-03 20:57:38', '2025-05-03 20:57:38', 'system', 'system', '专业律师坐诊');

-- ----------------------------
-- Table structure for tb_elderly
-- ----------------------------
DROP TABLE IF EXISTS `tb_elderly`;
CREATE TABLE `tb_elderly`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '老人ID（主键）',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '老人姓名',
  `gender` int NOT NULL COMMENT '性别（0:男，1:女）',
  `age` int UNSIGNED NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '居住地址',
  `emergency_contact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '紧急联系人姓名',
  `emergency_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '紧急联系人电话',
  `health_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '健康状况描述',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '修改人',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '老人信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_elderly
-- ----------------------------
INSERT INTO `tb_elderly` VALUES (1, '张建国', 1, 78, '13800138001', '幸福家园小区3号楼2单元501', '张明', '13900139001', '高血压，轻度关节炎，需定期测量血压', '2025-05-03 14:07:32', '2025-05-17 14:33:51', 'admin', 'admin', '子女常年在国外');
INSERT INTO `tb_elderly` VALUES (2, '李淑芬', 1, 82, '13800138002', '幸福家园小区5号楼1单元302', '李强', '13900139002', '糖尿病，需按时注射胰岛素', '2025-05-03 14:07:32', '2025-05-17 14:09:54', 'admin', 'admin', '独居老人');
INSERT INTO `tb_elderly` VALUES (3, '王德顺', 0, 85, '13800138003', '幸福家园小区8号楼3单元102', '王丽', '13900139003', '冠心病，安装过心脏支架', '2025-05-03 14:07:32', '2025-05-17 14:09:58', 'system', 'system', '喜欢下棋');
INSERT INTO `tb_elderly` VALUES (4, '赵桂英', 1, 79, '13800138004', '幸福家园小区2号楼2单元401', '赵刚', '13900139004', '骨质疏松，需补钙', '2025-05-03 14:07:32', '2025-05-17 14:10:04', 'admin', 'admin', '有养猫');
INSERT INTO `tb_elderly` VALUES (5, '刘宝华', 1, 88, '13800138005', '幸福家园小区7号楼1单元201', '刘芳', '13900139005', '轻度老年痴呆，需人陪伴', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'system', 'system', '退伍军人');
INSERT INTO `tb_elderly` VALUES (6, '陈秀兰', 1, 76, '13800138006', '幸福家园小区1号楼3单元601', '陈明', '13900139006', '腰椎间盘突出，行动不便', '2025-05-03 14:07:32', '2025-05-17 14:10:10', 'admin', 'admin', '喜欢听京剧');
INSERT INTO `tb_elderly` VALUES (7, '杨志强', 0, 81, '13800138007', '幸福家园小区6号楼2单元301', '杨静', '13900139007', '前列腺增生，定期检查', '2025-05-03 14:07:32', '2025-05-17 14:10:16', 'system', 'system', NULL);
INSERT INTO `tb_elderly` VALUES (8, '周凤霞', 1, 83, '13800138008', '幸福家园小区4号楼1单元502', '周涛', '13900139008', '白内障，视力较差', '2025-05-03 14:07:32', '2025-05-17 14:10:21', 'admin', 'admin', '需要助行器');
INSERT INTO `tb_elderly` VALUES (9, '吴文彬', 0, 77, '13800138009', '幸福家园小区9号楼3单元202', '吴敏', '13900139009', '慢性支气管炎，需注意保暖', '2025-05-03 14:07:32', '2025-05-17 14:10:25', 'system', 'system', '退休教师');
INSERT INTO `tb_elderly` VALUES (10, '郑玉珍', 1, 84, '13800138010', '幸福家园小区10号楼2单元103', '郑伟', '13900139010', '轻度帕金森，手部颤抖', '2025-05-03 14:07:32', '2025-05-17 14:10:29', 'admin', 'admin', '喜欢种花');
INSERT INTO `tb_elderly` VALUES (11, '孙志刚', 1, 80, '13800138011', '幸福家园小区3号楼1单元402', '孙丽华', '13900139011', '高血压、高血脂，需低盐低脂饮食', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'system', 'system', '参加过抗美援朝');
INSERT INTO `tb_elderly` VALUES (12, '朱秀芳', 0, 79, '13800138012', '幸福家园小区5号楼3单元203', '朱建国', '13900139012', '类风湿关节炎，关节变形', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'admin', 'admin', '需要送餐服务');
INSERT INTO `tb_elderly` VALUES (13, '胡志明', 1, 86, '13800138013', '幸福家园小区8号楼2单元303', '胡小燕', '13900139013', '轻度心衰，需定期复查', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'system', 'system', '清华大学退休教授');
INSERT INTO `tb_elderly` VALUES (14, '林淑华', 0, 81, '13800138014', '幸福家园小区2号楼1单元602', '林志强', '13900139014', '骨质疏松，曾骨折过', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'admin', 'admin', '喜欢读书');
INSERT INTO `tb_elderly` VALUES (15, '黄德昌', 1, 89, '13800138015', '幸福家园小区7号楼3单元104', '黄美丽', '13900139015', '听力障碍，需助听器', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'system', 'system', '百岁老人');
INSERT INTO `tb_elderly` VALUES (16, '徐桂香', 0, 78, '13800138016', '幸福家园小区1号楼2单元501', '徐刚', '13900139016', '轻度抑郁症，需心理关怀', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'admin', 'admin', '老伴刚去世');
INSERT INTO `tb_elderly` VALUES (17, '高志远', 1, 82, '13800138017', '幸福家园小区6号楼1单元401', '高红', '13900139017', '胃溃疡，需注意饮食', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'system', 'system', '喜欢书法');
INSERT INTO `tb_elderly` VALUES (18, '马秀珍', 0, 85, '13800138018', '幸福家园小区4号楼3单元204', '马建军', '13900139018', '阿尔茨海默病中期', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'admin', 'admin', '需要24小时看护');
INSERT INTO `tb_elderly` VALUES (19, '谢光荣', 1, 90, '13800138019', '幸福家园小区9号楼2单元304', '谢小芳', '13900139019', '慢性阻塞性肺疾病', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'system', 'system', '抗战老兵');
INSERT INTO `tb_elderly` VALUES (20, '钱淑芬', 0, 83, '13800138020', '幸福家园小区10号楼1单元503', '钱学森', '13900139020', '高血压、糖尿病综合症', '2025-05-03 14:07:32', '2025-05-03 14:07:32', 'admin', 'admin', '子女每周探望');

-- ----------------------------
-- Table structure for tb_order_items
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_items`;
CREATE TABLE `tb_order_items`  (
  `item_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '明细项ID',
  `order_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单号',
  `service_id` int UNSIGNED NOT NULL COMMENT '服务ID',
  `hourly_rate` decimal(10, 2) UNSIGNED NOT NULL COMMENT '单价',
  `service_hours` decimal(5, 1) UNSIGNED NOT NULL COMMENT '服务时长（小时）',
  `start_time` datetime(0) NOT NULL COMMENT '服务开始时间',
  `end_time` datetime(0) NOT NULL COMMENT '服务结束时间',
  `item_amount` decimal(10, 2) UNSIGNED GENERATED ALWAYS AS ((`hourly_rate` * `service_hours`)) STORED COMMENT '单项金额' NULL,
  PRIMARY KEY (`item_id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  INDEX `service_id`(`service_id`) USING BTREE,
  INDEX `idx_service_time`(`start_time`, `end_time`) USING BTREE,
  CONSTRAINT `tb_order_items_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `tb_services` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order_items
-- ----------------------------
INSERT INTO `tb_order_items` VALUES (2, 'SO20250110141515234', 18, 60.00, 1.5, '2025-01-10 14:00:00', '2025-01-10 15:30:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (3, 'SO20250115120000345', 11, 120.00, 2.0, '2025-01-15 11:00:00', '2025-01-15 13:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (4, 'SO20250120163030456', 6, 150.00, 1.0, '2025-01-20 16:00:00', '2025-01-20 17:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (5, 'SO20250125104545567', 20, 200.00, 1.0, '2025-01-25 10:30:00', '2025-01-25 11:30:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (6, 'SO20250130133030678', 16, 120.00, 1.0, '2025-01-30 13:00:00', '2025-01-30 14:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (7, 'SO20250204173045789', 12, 150.00, 1.2, '2025-02-04 17:00:00', '2025-02-04 18:12:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (8, 'SO20250209114530901', 15, 80.00, 2.0, '2025-02-09 11:00:00', '2025-02-09 13:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (9, 'SO20250214143045112', 19, 150.00, 1.5, '2025-02-14 14:00:00', '2025-02-14 14:36:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (10, 'SO20250219101515223', 17, 40.00, 3.0, '2025-02-19 10:00:00', '2025-02-19 13:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (11, 'SO20250224113030334', 20, 200.00, 1.2, '2025-02-24 11:00:00', '2025-02-24 12:12:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (12, 'SO20250301104545445', 1, 25.00, 3.2, '2025-03-01 10:30:00', '2025-03-01 13:42:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (13, 'SO20250306120000556', 19, 150.00, 1.0, '2025-03-06 11:30:00', '2025-03-06 12:30:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (14, 'SO20250311141515667', 16, 120.00, 1.0, '2025-03-11 14:00:00', '2025-03-11 15:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (15, 'SO20250316103030778', 20, 200.00, 1.0, '2025-03-16 10:00:00', '2025-03-16 11:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (16, 'SO20250321114545889', 18, 60.00, 3.0, '2025-03-21 11:00:00', '2025-03-21 14:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (17, 'SO20250326130000901', 17, 40.00, 3.8, '2025-03-26 12:30:00', '2025-03-26 16:18:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (18, 'SO20250331141515112', 20, 200.00, 1.2, '2025-03-31 14:00:00', '2025-03-31 15:12:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (19, 'SO20250405153030223', 11, 120.00, 1.7, '2025-04-05 15:00:00', '2025-04-05 16:42:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (20, 'SO20250410174545334', 3, 30.00, 4.0, '2025-04-10 17:00:00', '2025-04-10 21:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (21, 'SO20250415103030123', 8, 200.00, 1.0, '2025-04-15 10:00:00', '2025-04-15 10:54:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (22, 'SO20250420141515234', 18, 60.00, 2.5, '2025-04-20 14:00:00', '2025-04-20 16:30:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (23, 'SO20250425120000345', 14, 100.00, 3.5, '2025-04-25 11:30:00', '2025-04-25 15:06:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (24, 'SO20250430163030456', 8, 200.00, 1.1, '2025-04-30 16:00:00', '2025-04-30 17:06:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (25, 'SO20250501104545567', 20, 200.00, 1.5, '2025-05-01 10:30:00', '2025-05-01 12:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (26, 'SO20250502133030678', 16, 120.00, 1.5, '2025-05-02 13:00:00', '2025-05-02 14:30:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (27, 'SO20250503173045789', 12, 150.00, 1.5, '2025-05-03 17:00:00', '2025-05-03 18:48:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (28, 'SO20250504114530901', 15, 80.00, 3.0, '2025-05-04 11:00:00', '2025-05-04 14:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (29, 'SO20250504143045112', 19, 150.00, 1.0, '2025-05-04 14:00:00', '2025-05-04 14:54:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (30, 'SO20250504101515223', 16, 120.00, 1.5, '2025-05-04 10:00:00', '2025-05-04 11:30:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (34, 'SO20250516220838921', 6, 150.00, 1.0, '2025-05-16 23:00:00', '2025-05-17 00:00:00', DEFAULT);
INSERT INTO `tb_order_items` VALUES (37, 'SO20250517143451597', 3, 30.00, 2.0, '2025-05-17 15:00:00', '2025-05-17 17:00:00', DEFAULT);

-- ----------------------------
-- Table structure for tb_service_orders
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_orders`;
CREATE TABLE `tb_service_orders`  (
  `order_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单号',
  `elderly_id` int UNSIGNED NOT NULL COMMENT '老人ID',
  `provider_id` int UNSIGNED NULL DEFAULT NULL COMMENT '服务人员ID',
  `service_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务地址',
  `total_amount` decimal(10, 2) UNSIGNED NOT NULL COMMENT '订单总金额',
  `order_status` int(1) UNSIGNED ZEROFILL NOT NULL COMMENT '订单状态',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `user_id`(`elderly_id`) USING BTREE,
  INDEX `idx_order_status`(`order_status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '服务订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_service_orders
-- ----------------------------
INSERT INTO `tb_service_orders` VALUES ('SO20250115120000345', 3, 6, '幸福家园小区8号楼3单元102', 240.00, 2, '2025-01-15 12:00:00', '2025-05-16 22:17:44', '心脏术后护理');
INSERT INTO `tb_service_orders` VALUES ('SO20250120163030456', 4, 3, '幸福家园小区2号楼2单元401', 150.00, 2, '2025-01-20 16:30:30', '2025-01-20 16:30:30', '深度清洁');
INSERT INTO `tb_service_orders` VALUES ('SO20250125104545567', 5, 9, '幸福家园小区7号楼1单元201', 200.00, 2, '2025-01-25 10:45:45', '2025-01-25 10:45:45', '老年痴呆陪护');
INSERT INTO `tb_service_orders` VALUES ('SO20250130133030678', 6, 5, '幸福家园小区1号楼3单元601', 120.00, 2, '2025-01-30 13:30:30', '2025-01-30 13:30:30', '腰椎护理');
INSERT INTO `tb_service_orders` VALUES ('SO20250204173045789', 7, 10, '幸福家园小区6号楼2单元301', 180.00, 2, '2025-02-04 17:30:45', '2025-02-04 17:30:45', '前列腺护理');
INSERT INTO `tb_service_orders` VALUES ('SO20250209114530901', 8, 2, '幸福家园小区4号楼1单元502', 160.00, 2, '2025-02-09 11:45:30', '2025-02-09 11:45:30', '视力辅助');
INSERT INTO `tb_service_orders` VALUES ('SO20250214143045112', 9, 7, '幸福家园小区9号楼3单元202', 90.00, 2, '2025-02-14 14:30:45', '2025-02-14 14:30:45', '支气管护理');
INSERT INTO `tb_service_orders` VALUES ('SO20250219101515223', 10, 13, '幸福家园小区10号楼2单元103', 120.00, 2, '2025-02-19 10:15:15', '2025-02-19 10:15:15', '帕金森护理');
INSERT INTO `tb_service_orders` VALUES ('SO20250224113030334', 11, 16, '幸福家园小区3号楼1单元402', 240.00, 2, '2025-02-24 11:30:30', '2025-02-24 11:30:30', '高血压护理');
INSERT INTO `tb_service_orders` VALUES ('SO20250301104545445', 12, 12, '幸福家园小区5号楼3单元203', 80.00, 2, '2025-03-01 10:45:45', '2025-03-01 10:45:45', '送餐服务');
INSERT INTO `tb_service_orders` VALUES ('SO20250306120000556', 13, 19, '幸福家园小区8号楼2单元303', 150.00, 2, '2025-03-06 12:00:00', '2025-03-06 12:00:00', '心衰监测');
INSERT INTO `tb_service_orders` VALUES ('SO20250311141515667', 14, 14, '幸福家园小区2号楼1单元602', 120.00, 2, '2025-03-11 14:15:15', '2025-03-11 14:15:15', '骨折康复');
INSERT INTO `tb_service_orders` VALUES ('SO20250316103030778', 15, 20, '幸福家园小区7号楼3单元104', 200.00, 2, '2025-03-16 10:30:30', '2025-03-16 10:30:30', '听力辅助');
INSERT INTO `tb_service_orders` VALUES ('SO20250321114545889', 16, 17, '幸福家园小区1号楼2单元501', 180.00, 2, '2025-03-21 11:45:45', '2025-03-21 11:45:45', '心理关怀');
INSERT INTO `tb_service_orders` VALUES ('SO20250326130000901', 17, 11, '幸福家园小区6号楼1单元401', 150.00, 2, '2025-03-26 13:00:00', '2025-03-26 13:00:00', '胃溃疡护理');
INSERT INTO `tb_service_orders` VALUES ('SO20250331141515112', 18, 8, '幸福家园小区4号楼3单元204', 240.00, 2, '2025-03-31 14:15:15', '2025-03-31 14:15:15', '24小时看护');
INSERT INTO `tb_service_orders` VALUES ('SO20250405153030223', 19, 15, '幸福家园小区9号楼2单元304', 200.00, 2, '2025-04-05 15:30:30', '2025-04-05 15:30:30', '肺病护理');
INSERT INTO `tb_service_orders` VALUES ('SO20250410174545334', 20, 18, '幸福家园小区10号楼1单元503', 120.00, 2, '2025-04-10 17:45:45', '2025-04-10 17:45:45', '糖尿病综合护理');
INSERT INTO `tb_service_orders` VALUES ('SO20250415103030123', 1, 4, '幸福家园小区3号楼2单元501', 180.00, 2, '2025-04-15 10:30:30', '2025-04-15 10:30:30', '月度深度清洁');
INSERT INTO `tb_service_orders` VALUES ('SO20250420141515234', 2, 1, '幸福家园小区5号楼1单元302', 150.00, 2, '2025-04-20 14:15:15', '2025-04-20 14:15:15', '定期血糖监测');
INSERT INTO `tb_service_orders` VALUES ('SO20250425120000345', 3, 6, '幸福家园小区8号楼3单元102', 360.00, 2, '2025-04-25 12:00:00', '2025-04-25 12:00:00', '心脏复查陪同');
INSERT INTO `tb_service_orders` VALUES ('SO20250430163030456', 4, 3, '幸福家园小区2号楼2单元401', 225.00, 2, '2025-04-30 16:30:30', '2025-04-30 16:30:30', '季度大扫除');
INSERT INTO `tb_service_orders` VALUES ('SO20250501104545567', 5, 9, '幸福家园小区7号楼1单元201', 300.00, 2, '2025-05-01 10:45:45', '2025-05-01 10:45:45', '节日特别陪护');
INSERT INTO `tb_service_orders` VALUES ('SO20250502133030678', 6, 5, '幸福家园小区1号楼3单元601', 180.00, 2, '2025-05-02 13:30:30', '2025-05-02 13:30:30', '腰椎康复训练');
INSERT INTO `tb_service_orders` VALUES ('SO20250503173045789', 7, 10, '幸福家园小区6号楼2单元301', 270.00, 2, '2025-05-03 17:30:45', '2025-05-03 17:30:45', '前列腺复查');
INSERT INTO `tb_service_orders` VALUES ('SO20250504101515223', 10, 13, '幸福家园小区10号楼2单元103', 180.00, 2, '2025-05-04 10:15:15', '2025-05-04 10:15:15', '帕金森康复训练');
INSERT INTO `tb_service_orders` VALUES ('SO20250504114530901', 8, 2, '幸福家园小区4号楼1单元502', 240.00, 2, '2025-05-04 11:45:30', '2025-05-04 11:45:30', '视力检查陪同');
INSERT INTO `tb_service_orders` VALUES ('SO20250504143045112', 9, 7, '幸福家园小区9号楼3单元202', 135.00, 2, '2025-05-04 14:30:45', '2025-05-04 14:30:45', '支气管复查');
INSERT INTO `tb_service_orders` VALUES ('SO20250516220838921', 5, 6, '幸福家园小区7号楼1单元201', 150.00, 0, '2025-05-16 22:08:38', '2025-05-16 22:08:38', NULL);
INSERT INTO `tb_service_orders` VALUES ('SO20250516221735713', 2, 3, '幸福家园小区5号楼1单元302', 60.00, 0, '2025-05-16 22:17:35', '2025-05-16 22:17:35', NULL);
INSERT INTO `tb_service_orders` VALUES ('SO20250517143451597', 4, 4, '幸福家园小区2号楼2单元401', 60.00, 1, '2025-05-17 14:34:51', '2025-05-17 14:35:08', '');

-- ----------------------------
-- Table structure for tb_service_providers
-- ----------------------------
DROP TABLE IF EXISTS `tb_service_providers`;
CREATE TABLE `tb_service_providers`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '家政人员ID（自增主键）',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '家政姓名',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别（0:男，1:女）',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '住址地址',
  `contact_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `age` int UNSIGNED NULL DEFAULT NULL COMMENT '年龄',
  `experience_years` int UNSIGNED NULL DEFAULT NULL COMMENT '工作年限',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '具体详情',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '修改人',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `contact_number`(`contact_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '家政服务人员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_service_providers
-- ----------------------------
INSERT INTO `tb_service_providers` VALUES (1, '王丽华', '1', '阳光小区5栋302室', '13800138001', 35, 8, '擅长老人护理、日常照料，有护士资格证书', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '服务耐心细致');
INSERT INTO `tb_service_providers` VALUES (2, '张建国', '0', '和谐家园3栋101室', '13800138002', 42, 12, '擅长重物搬运、简单维修，体力好', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '退伍军人');
INSERT INTO `tb_service_providers` VALUES (3, '李淑芬', '1', '温馨苑8栋503室', '13800138003', 38, 10, '专业老年护理，擅长失能老人照料', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'system', 'system', '有养老院工作经验');
INSERT INTO `tb_service_providers` VALUES (4, '刘强', '0', '平安里2栋201室', '13800138004', 45, 15, '全能型家政，擅长烹饪、清洁、陪护', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '会简单医疗护理');
INSERT INTO `tb_service_providers` VALUES (5, '陈美玲', '1', '幸福城10栋102室', '13800138005', 32, 6, '专业月子护理，也擅长老人日常陪护', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'system', 'system', '性格开朗');
INSERT INTO `tb_service_providers` VALUES (6, '赵志刚', '0', '绿洲花园6栋401室', '13800138006', 40, 11, '擅长卧床老人护理，会使用各种护理设备', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '有急救证书');
INSERT INTO `tb_service_providers` VALUES (7, '周晓梅', '1', '金域华府4栋303室', '13800138007', 28, 5, '专业营养师，能为老人制定健康食谱', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'system', 'system', '年轻有活力');
INSERT INTO `tb_service_providers` VALUES (8, '吴卫国', '0', '蓝天公寓7栋202室', '13800138008', 50, 20, '资深家政，擅长各种家务和老人心理疏导', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '经验丰富');
INSERT INTO `tb_service_providers` VALUES (9, '黄雅琴', '1', '玫瑰园9栋104室', '13800138009', 36, 9, '擅长阿尔茨海默病老人护理', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'system', 'system', '有心理学背景');
INSERT INTO `tb_service_providers` VALUES (10, '马建军', '0', '梧桐苑1栋501室', '13800138010', 43, 13, '擅长康复训练辅助，会按摩理疗', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '体育专业毕业');
INSERT INTO `tb_service_providers` VALUES (11, '林小芳', '1', '紫荆花园3栋302室', '13800138011', 31, 7, '专业护工，擅长术后护理', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'system', 'system', '细心负责');
INSERT INTO `tb_service_providers` VALUES (12, '徐国强', '0', '百合公寓5栋103室', '13800138012', 47, 16, '全能型男护工，体力好有耐心', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '会简单维修');
INSERT INTO `tb_service_providers` VALUES (13, '孙丽娜', '1', '香樟苑7栋204室', '13800138013', 34, 8, '擅长糖尿病老人饮食管理和日常护理', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'system', 'system', '营养学专业');
INSERT INTO `tb_service_providers` VALUES (14, '郑文明', '0', '枫林绿洲2栋402室', '13800138014', 39, 10, '擅长卧床老人护理和康复训练', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '有康复师证书');
INSERT INTO `tb_service_providers` VALUES (15, '高秀英', '1', '银杏小区4栋105室', '13800138015', 44, 14, '资深月嫂转型老人护理，经验丰富', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'system', 'system', '擅长沟通');
INSERT INTO `tb_service_providers` VALUES (16, '钱学军', '0', '棕榈泉6栋203室', '13800138016', 41, 12, '擅长失能老人全护理，会使用护理床', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '力气大');
INSERT INTO `tb_service_providers` VALUES (17, '朱爱珍', '1', '牡丹园8栋304室', '13800138017', 37, 9, '专业护工，擅长临终关怀', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'system', 'system', '性格温和');
INSERT INTO `tb_service_providers` VALUES (18, '胡志强', '0', '海棠苑10栋501室', '13800138018', 46, 15, '擅长老年男性护理，会理发刮脸', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '多才多艺');
INSERT INTO `tb_service_providers` VALUES (19, '方美丽', '1', '茉莉花园1栋102室', '13800138019', 33, 7, '专业护士转型家政，医疗知识丰富', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'system', 'system', '技术全面');
INSERT INTO `tb_service_providers` VALUES (20, '董建军', '0', '松柏公寓3栋201室', '13800138020', 48, 17, '资深家政，擅长各种家务和老人陪护', '2025-05-03 14:13:14', '2025-05-03 14:13:14', 'admin', 'admin', '服务周到');

-- ----------------------------
-- Table structure for tb_services
-- ----------------------------
DROP TABLE IF EXISTS `tb_services`;
CREATE TABLE `tb_services`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '服务ID（自增主键）',
  `service_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务名称',
  `service_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务描述',
  `price` decimal(10, 2) UNSIGNED NOT NULL COMMENT '服务价格',
  `service_category` int NULL DEFAULT NULL COMMENT '服务类别',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '具体详情',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `date_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'system' COMMENT '修改人',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '服务信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_services
-- ----------------------------
INSERT INTO `tb_services` VALUES (1, '营养午餐配送', '为老人提供营养均衡的午餐配送服务', 25.00, 1, '包含两荤一素一汤，适合老年人口味，每周菜单更新', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '需提前一天预订');
INSERT INTO `tb_services` VALUES (2, '早餐上门服务', '为老人准备健康早餐并上门服务', 15.00, 1, '包含粥品、面点和鸡蛋等，可根据老人健康状况调整', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '适合独居老人');
INSERT INTO `tb_services` VALUES (3, '糖尿病专用餐', '专为糖尿病老人设计的控糖餐食', 30.00, 1, '低糖低脂餐食，严格控制碳水化合物含量', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'system', 'system', '需提供健康档案');
INSERT INTO `tb_services` VALUES (4, '节日特别餐', '节日期间为老人提供的特别餐食服务', 50.00, 1, '传统节日特色餐食，营造节日氛围', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '需提前三天预订');
INSERT INTO `tb_services` VALUES (5, '日常居家清洁', '老人居所的日常清洁打扫服务', 60.00, 2, '包括地面清洁、家具擦拭、卫生间消毒等', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'system', 'system', '基础2小时服务');
INSERT INTO `tb_services` VALUES (6, '深度全屋清洁', '全屋深度清洁和整理服务', 150.00, 2, '包含窗户清洁、厨房油污处理、衣柜整理等', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '4小时服务时长');
INSERT INTO `tb_services` VALUES (7, '衣物洗涤服务', '老人衣物的收取、洗涤和送回服务', 40.00, 2, '专业洗涤，分类处理，特殊面料特别护理', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'system', 'system', '每周一次');
INSERT INTO `tb_services` VALUES (8, '季节性大扫除', '季节性全屋彻底清洁服务', 200.00, 2, '包含窗帘清洗、床品除螨、家具移位清洁等', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '每年四次');
INSERT INTO `tb_services` VALUES (9, '基础助浴服务', '协助老人完成洗浴过程', 80.00, 3, '帮助老人安全入浴、洗浴和出浴', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'system', 'system', '含防滑措施');
INSERT INTO `tb_services` VALUES (10, '专业床上擦浴', '为卧床老人提供的专业擦浴服务', 100.00, 3, '使用专业护理手法为卧床老人清洁身体', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '需自备护理用品');
INSERT INTO `tb_services` VALUES (11, '康复助浴服务', '针对术后康复老人的专业洗浴协助', 120.00, 3, '包含简单按摩和康复指导', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'system', 'system', '需提供医嘱');
INSERT INTO `tb_services` VALUES (12, '家庭浴室改造咨询', '评估和指导老人浴室安全改造', 150.00, 3, '提供防滑、扶手等安全改造建议', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '一次性服务');
INSERT INTO `tb_services` VALUES (13, '日常陪同外出', '陪同老人外出散步或购物', 50.00, 4, '2小时内陪同外出活动，确保安全', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'system', 'system', '超时另计费');
INSERT INTO `tb_services` VALUES (14, '医院陪同就诊', '全程陪同老人医院就诊服务', 100.00, 4, '包含挂号、候诊、取药等全程陪同', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '含往返交通');
INSERT INTO `tb_services` VALUES (15, '轮椅出行协助', '为行动不便老人提供轮椅出行服务', 80.00, 4, '包含轮椅使用和全程照护', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'system', 'system', '需提前预约轮椅');
INSERT INTO `tb_services` VALUES (16, '康复行走训练', '专业康复师指导的行走训练', 120.00, 4, '针对术后或中风老人的行走能力恢复训练', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '需医嘱');
INSERT INTO `tb_services` VALUES (17, '基础健康监测', '定期上门测量血压血糖等指标', 40.00, 5, '包含血压、血糖、体温等基础监测', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'system', 'system', '每周一次');
INSERT INTO `tb_services` VALUES (18, '药品管理服务', '帮助老人分药、提醒服药', 60.00, 5, '按医嘱分装药品并设置服药提醒', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '需提供处方');
INSERT INTO `tb_services` VALUES (19, '专业伤口护理', '护士上门进行伤口换药护理', 150.00, 5, '专业无菌操作，包含基础敷料', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'system', 'system', '复杂伤口另计');
INSERT INTO `tb_services` VALUES (20, '24小时紧急呼叫', '紧急情况下的快速响应服务', 200.00, 5, '全天候紧急情况响应和初步处理', '2025-05-03 14:31:09', '2025-05-03 14:31:09', 'admin', 'admin', '月费制');

SET FOREIGN_KEY_CHECKS = 1;
