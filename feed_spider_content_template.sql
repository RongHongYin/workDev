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

 Date: 15/09/2025 18:32:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_content_template
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_content_template`;
CREATE TABLE `feed_spider_content_template`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fathertag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父标签',
  `childtag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子标签',
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `target_attr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '提取的目标属性名，例如 datetime、href、content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_content_template
-- ----------------------------
INSERT INTO `feed_spider_content_template` VALUES (10, '', 'meta[name=description]', '2025-09-07 22:42:17', '2025-09-07 22:42:17', 'content');
INSERT INTO `feed_spider_content_template` VALUES (11, '', 'meta[property=og:description]', '2025-09-08 20:10:13', '2025-09-08 20:10:13', 'content');
INSERT INTO `feed_spider_content_template` VALUES (12, '', 'p.kick__article__teaser', '2025-09-09 16:03:40', '2025-09-09 16:03:40', '');

SET FOREIGN_KEY_CHECKS = 1;
