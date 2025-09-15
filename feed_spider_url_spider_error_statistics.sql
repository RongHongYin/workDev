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

 Date: 15/09/2025 18:35:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_url_spider_error_statistics
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_url_spider_error_statistics`;
CREATE TABLE `feed_spider_url_spider_error_statistics`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '抓取链接',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站名称',
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '国家',
  `error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '错误信息',
  `ctime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `utime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `detailurl` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发生错误时的详情页URL，如果发生错误时还没有详情URL则为空',
  `taskid` int NULL DEFAULT NULL COMMENT '任务ID，关联feed_spider_task表的id字段',
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类，对应url表中的category字段',
  `orcategory` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类，对应url表中的orcategory字段',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_country`(`country` ASC) USING BTREE,
  INDEX `idx_publisher`(`publisher` ASC) USING BTREE,
  INDEX `idx_ctime`(`ctime` ASC) USING BTREE,
  INDEX `idx_country_publisher`(`country` ASC, `publisher` ASC) USING BTREE,
  INDEX `idx_error_statistics_orcategory`(`orcategory` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106059 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '抓取错误统计表' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
