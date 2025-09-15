/*
 Navicat Premium Dump SQL

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 80043 (8.0.43)
 Source Host           : localhost:3306
 Source Schema         : feed

 Target Server Type    : MySQL
 Target Server Version : 80043 (8.0.43)
 File Encoding         : 65001

 Date: 15/09/2025 18:34:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_time_analysis_tem
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_time_analysis_tem`;
CREATE TABLE `feed_spider_time_analysis_tem`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '时间格式模板，如 %Y-%m-%d %H:%M:%S',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_time_analysis_tem
-- ----------------------------
INSERT INTO `feed_spider_time_analysis_tem` VALUES (8, 'yyyy-MM-dd\'T\'HH:mm:ss.SSSX');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (9, 'yyyy-MM-dd\'T\'HH:mm:ssXXX');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (10, 'yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (11, 'yyyy-MM-dd HH:mm:ss');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (13, 'yyyy-MM-dd\'T\'HH:mm:ssX');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (14, 'yyyy-MM-dd HH:mm:ss.S');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (15, 'yyyy-MM-dd\'T\'HH:mm:ssZ');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (16, 'yyyy-MM-dd\'T\'HH:mm:ss');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (17, 'dd.MM.yyyy HH:mm:ss');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (18, 'dd.MM.yyyy HH:mm');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (19, 'EEE, dd MMM yyyy HH:mm:ss Z');
INSERT INTO `feed_spider_time_analysis_tem` VALUES (20, 'yyyy-MM-dd\'T\'HH:mm');

SET FOREIGN_KEY_CHECKS = 1;
