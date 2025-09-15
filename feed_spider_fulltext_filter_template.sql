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

 Date: 15/09/2025 18:32:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_fulltext_filter_template
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_fulltext_filter_template`;
CREATE TABLE `feed_spider_fulltext_filter_template`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fathertag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父标签',
  `childtag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子标签',
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `target_attr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '提取的目标属性名，例如 datetime、href、content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_fulltext_filter_template
-- ----------------------------
INSERT INTO `feed_spider_fulltext_filter_template` VALUES (6, '', 'div#paywall-message', '2025-09-08 21:33:52', '2025-09-08 21:33:52', '');
INSERT INTO `feed_spider_fulltext_filter_template` VALUES (7, '', 'figure', '2025-09-10 13:54:03', '2025-09-10 13:54:03', '');
INSERT INTO `feed_spider_fulltext_filter_template` VALUES (8, '', 'div.advertising', '2025-09-10 13:54:21', '2025-09-10 13:54:21', '');
INSERT INTO `feed_spider_fulltext_filter_template` VALUES (9, '', 'div[class=paywall2025 d-flex flex-column mb-8]', '2025-09-10 13:54:50', '2025-09-10 13:54:50', '');
INSERT INTO `feed_spider_fulltext_filter_template` VALUES (10, '', 'div.code-block', '2025-09-10 15:25:13', '2025-09-10 15:25:13', '');
INSERT INTO `feed_spider_fulltext_filter_template` VALUES (11, '', 'div', '2025-09-10 15:45:53', '2025-09-10 15:45:53', '');
INSERT INTO `feed_spider_fulltext_filter_template` VALUES (12, '', 'section', '2025-09-11 14:23:09', '2025-09-11 14:23:09', '');
INSERT INTO `feed_spider_fulltext_filter_template` VALUES (13, '', 'figcaption', '2025-09-11 15:14:08', '2025-09-11 15:14:08', '');

SET FOREIGN_KEY_CHECKS = 1;
