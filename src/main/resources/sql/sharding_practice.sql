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

 Date: 26/10/2020 15:59:28
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

SET FOREIGN_KEY_CHECKS = 1;
