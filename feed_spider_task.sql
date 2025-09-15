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

 Date: 15/09/2025 18:33:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_task
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_task`;
CREATE TABLE `feed_spider_task`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `server` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL COMMENT '任务状态\r\n0：未运行\r\n1：执行中\r\n',
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `publisher` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `interval` int NOT NULL DEFAULT 30,
  `datastatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'test' COMMENT '数据状态：test-测试数据，prod-正式数据',
  `nextexecutiontime` datetime NULL DEFAULT NULL COMMENT '下次可执行时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE,
  INDEX `idx_publisher_status`(`publisher` ASC, `status` ASC) USING BTREE,
  INDEX `idx_country_status`(`country` ASC, `status` ASC) USING BTREE,
  INDEX `idx_datastatus`(`datastatus` ASC) USING BTREE,
  INDEX `idx_publisher_datastatus`(`publisher` ASC, `datastatus` ASC) USING BTREE,
  INDEX `idx_task_nextexecutiontime`(`nextexecutiontime` ASC) USING BTREE,
  INDEX `idx_task_status_nextexecution`(`status` ASC, `nextexecutiontime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7797 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_task
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
