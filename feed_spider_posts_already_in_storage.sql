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

 Date: 15/09/2025 18:32:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_posts_already_in_storage
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_posts_already_in_storage`;
CREATE TABLE `feed_spider_posts_already_in_storage`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '已入库文章的详情页地址（源网站地址，抓取的详情页地址）',
  `ctime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `utime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_url`(`url`(255) ASC) USING BTREE COMMENT 'URL唯一索引',
  INDEX `idx_ctime`(`ctime` ASC) USING BTREE COMMENT '创建时间索引',
  INDEX `idx_utime`(`utime` ASC) USING BTREE COMMENT '更新时间索引'
) ENGINE = InnoDB AUTO_INCREMENT = 38418 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已入库文章检查表，用于避免重复抓取已入库的文章' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_posts_already_in_storage
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
