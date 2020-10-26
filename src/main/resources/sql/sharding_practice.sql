/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : sharding_practice

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 26/10/2020 20:23:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_order0
-- ----------------------------
DROP TABLE IF EXISTS `t_order0`;
CREATE TABLE `t_order0`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单号',
  `order_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单名称',
  `order_status` int NOT NULL COMMENT '订单状态',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order0
-- ----------------------------
INSERT INTO `t_order0` VALUES (1, '527515632757899264', '黄焖鸡米饭2020-10-26T15:58:46.716', 1, 10001, '2020-10-26 15:58:47', '2020-10-26 15:58:47');
INSERT INTO `t_order0` VALUES (2, '527515633491902464', '黄焖鸡米饭2020-10-26T15:58:47.790', 1, 10003, '2020-10-26 15:58:47', '2020-10-26 15:58:47');
INSERT INTO `t_order0` VALUES (3, '527549200682975232', '黄焖鸡米饭2020-10-26T18:12:10.185', 1, 10001, '2020-10-26 18:12:10', '2020-10-26 18:12:10');
INSERT INTO `t_order0` VALUES (4, '527549201068851201', '黄焖鸡米饭2020-10-26T18:12:10.924', 1, 10002, '2020-10-26 18:12:10', '2020-10-26 18:12:10');
INSERT INTO `t_order0` VALUES (5, '527549201102405632', '黄焖鸡米饭2020-10-26T18:12:10.932', 1, 10003, '2020-10-26 18:12:10', '2020-10-26 18:12:10');
INSERT INTO `t_order0` VALUES (6, '527549429016690688', '黄焖鸡米饭2020-10-26T18:13:04.653', 1, 10001, '2020-10-26 18:13:05', '2020-10-26 18:13:05');
INSERT INTO `t_order0` VALUES (7, '527549429419343873', '黄焖鸡米饭2020-10-26T18:13:05.368', 1, 10002, '2020-10-26 18:13:05', '2020-10-26 18:13:05');
INSERT INTO `t_order0` VALUES (8, '527549429444509696', '黄焖鸡米饭2020-10-26T18:13:05.373', 1, 10003, '2020-10-26 18:13:05', '2020-10-26 18:13:05');
INSERT INTO `t_order0` VALUES (9, '527549541495341056', '黄焖鸡米饭2020-10-26T18:13:31.245', 1, 10001, '2020-10-26 18:13:32', '2020-10-26 18:13:32');
INSERT INTO `t_order0` VALUES (10, '527549541969297409', '黄焖鸡米饭2020-10-26T18:13:32.201', 1, 10002, '2020-10-26 18:13:32', '2020-10-26 18:13:32');
INSERT INTO `t_order0` VALUES (11, '527549542002851840', '黄焖鸡米饭2020-10-26T18:13:32.208', 1, 10003, '2020-10-26 18:13:32', '2020-10-26 18:13:32');
INSERT INTO `t_order0` VALUES (12, '527577943837245440', '黄焖鸡米饭2020-10-26T20:06:23.165', 1, 10001, '2020-10-26 20:06:23', '2020-10-26 20:06:23');
INSERT INTO `t_order0` VALUES (13, '527577944235704321', '黄焖鸡米饭2020-10-26T20:06:23.829', 1, 10002, '2020-10-26 20:06:23', '2020-10-26 20:06:23');
INSERT INTO `t_order0` VALUES (14, '527577944256675840', '黄焖鸡米饭2020-10-26T20:06:23.834', 1, 10003, '2020-10-26 20:06:23', '2020-10-26 20:06:23');
INSERT INTO `t_order0` VALUES (15, '527577944277647361', '黄焖鸡米饭2020-10-26T20:06:23.839', 1, 10004, '2020-10-26 20:06:23', '2020-10-26 20:06:23');
INSERT INTO `t_order0` VALUES (16, '527577944298618880', '黄焖鸡米饭2020-10-26T20:06:23.844', 1, 10005, '2020-10-26 20:06:23', '2020-10-26 20:06:23');
INSERT INTO `t_order0` VALUES (17, '527578805783494656', '黄焖鸡米饭2020-10-26T20:09:48.683', 1, 10001, '2020-10-26 20:09:49', '2020-10-26 20:09:49');
INSERT INTO `t_order0` VALUES (18, '527578806332948480', '黄焖鸡米饭2020-10-26T20:09:49.368', 1, 10003, '2020-10-26 20:09:49', '2020-10-26 20:09:49');

-- ----------------------------
-- Table structure for t_order1
-- ----------------------------
DROP TABLE IF EXISTS `t_order1`;
CREATE TABLE `t_order1`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单号',
  `order_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单名称',
  `order_status` int NOT NULL COMMENT '订单状态',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order1
-- ----------------------------
INSERT INTO `t_order1` VALUES (1, '527515633466736641', '黄焖鸡米饭2020-10-26T15:58:47.783', 1, 10002, '2020-10-26 15:58:47', '2020-10-26 15:58:47');
INSERT INTO `t_order1` VALUES (2, '527549200682975232', '黄焖鸡米饭2020-10-26T18:12:10.185', 1, 10001, '2020-10-26 18:12:10', '2020-10-26 18:12:10');
INSERT INTO `t_order1` VALUES (3, '527549201068851201', '黄焖鸡米饭2020-10-26T18:12:10.924', 1, 10002, '2020-10-26 18:12:10', '2020-10-26 18:12:10');
INSERT INTO `t_order1` VALUES (4, '527549201102405632', '黄焖鸡米饭2020-10-26T18:12:10.932', 1, 10003, '2020-10-26 18:12:10', '2020-10-26 18:12:10');
INSERT INTO `t_order1` VALUES (5, '527549429016690688', '黄焖鸡米饭2020-10-26T18:13:04.653', 1, 10001, '2020-10-26 18:13:05', '2020-10-26 18:13:05');
INSERT INTO `t_order1` VALUES (6, '527549429419343873', '黄焖鸡米饭2020-10-26T18:13:05.368', 1, 10002, '2020-10-26 18:13:05', '2020-10-26 18:13:05');
INSERT INTO `t_order1` VALUES (7, '527549429444509696', '黄焖鸡米饭2020-10-26T18:13:05.373', 1, 10003, '2020-10-26 18:13:05', '2020-10-26 18:13:05');
INSERT INTO `t_order1` VALUES (8, '527549541495341056', '黄焖鸡米饭2020-10-26T18:13:31.245', 1, 10001, '2020-10-26 18:13:32', '2020-10-26 18:13:32');
INSERT INTO `t_order1` VALUES (9, '527549541969297409', '黄焖鸡米饭2020-10-26T18:13:32.201', 1, 10002, '2020-10-26 18:13:32', '2020-10-26 18:13:32');
INSERT INTO `t_order1` VALUES (10, '527549542002851840', '黄焖鸡米饭2020-10-26T18:13:32.208', 1, 10003, '2020-10-26 18:13:32', '2020-10-26 18:13:32');
INSERT INTO `t_order1` VALUES (11, '527578131456851968', '黄焖鸡米饭2020-10-26T20:07:07.656', 1, 10001, '2020-10-26 20:07:08', '2020-10-26 20:07:08');
INSERT INTO `t_order1` VALUES (12, '527578131972751361', '黄焖鸡米饭2020-10-26T20:07:08.589', 1, 10002, '2020-10-26 20:07:08', '2020-10-26 20:07:08');
INSERT INTO `t_order1` VALUES (13, '527578131997917184', '黄焖鸡米饭2020-10-26T20:07:08.595', 1, 10003, '2020-10-26 20:07:08', '2020-10-26 20:07:08');
INSERT INTO `t_order1` VALUES (14, '527578132018888705', '黄焖鸡米饭2020-10-26T20:07:08.600', 1, 10004, '2020-10-26 20:07:08', '2020-10-26 20:07:08');
INSERT INTO `t_order1` VALUES (15, '527578132044054528', '黄焖鸡米饭2020-10-26T20:07:08.606', 1, 10005, '2020-10-26 20:07:08', '2020-10-26 20:07:08');
INSERT INTO `t_order1` VALUES (16, '527578806307782657', '黄焖鸡米饭2020-10-26T20:09:49.363', 1, 10002, '2020-10-26 20:09:49', '2020-10-26 20:09:49');

-- ----------------------------
-- Table structure for t_user0
-- ----------------------------
DROP TABLE IF EXISTS `t_user0`;
CREATE TABLE `t_user0`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '地址',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `age` int NOT NULL COMMENT '年龄',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user0
-- ----------------------------

-- ----------------------------
-- Table structure for t_user1
-- ----------------------------
DROP TABLE IF EXISTS `t_user1`;
CREATE TABLE `t_user1`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '地址',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `age` int NOT NULL COMMENT '年龄',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user1
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
