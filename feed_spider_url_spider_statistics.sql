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

 Date: 15/09/2025 18:35:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_url_spider_statistics
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_url_spider_statistics`;
CREATE TABLE `feed_spider_url_spider_statistics`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '抓取链接',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站名称',
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '国家',
  `total` int NULL DEFAULT NULL COMMENT '抓取总数，失败时为NULL',
  `success` int NULL DEFAULT NULL COMMENT '成功数，失败时为NULL',
  `error` int NULL DEFAULT NULL COMMENT '失败数，失败时为NULL',
  `percent` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0.00' COMMENT '成功率(%)，失败时为error',
  `ctime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据创建时间',
  `utime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  `taskid` int NULL DEFAULT NULL COMMENT '任务ID，关联feed_spider_task表的id字段',
  `orcategory` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类，对应url表中的orcategory字段',
  `starttime` datetime NULL DEFAULT NULL COMMENT '抓取开始时间',
  `endtime` datetime NULL DEFAULT NULL COMMENT '抓取结束时间',
  `runtime` bigint NULL DEFAULT NULL COMMENT '抓取运行时间（毫秒）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_publisher`(`publisher` ASC) USING BTREE,
  INDEX `idx_ctime`(`ctime` ASC) USING BTREE,
  INDEX `idx_country`(`country` ASC) USING BTREE,
  INDEX `idx_publisher_country`(`publisher` ASC, `country` ASC) USING BTREE,
  INDEX `idx_statistics_orcategory`(`orcategory` ASC) USING BTREE,
  INDEX `idx_statistics_starttime`(`starttime` ASC) USING BTREE,
  INDEX `idx_statistics_endtime`(`endtime` ASC) USING BTREE,
  INDEX `idx_statistics_runtime`(`runtime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9285 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '抓取任务统计表' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
