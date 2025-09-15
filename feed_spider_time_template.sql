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

 Date: 15/09/2025 18:34:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_time_template
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_time_template`;
CREATE TABLE `feed_spider_time_template`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fathertag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父标签',
  `childtag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子标签',
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `target_attr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '提取的目标属性名，例如 datetime、href、content',
  `regex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '正则表达式',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_fathertag_prefix`(`fathertag`(100) ASC) USING BTREE,
  INDEX `idx_childtag_prefix`(`childtag`(100) ASC) USING BTREE,
  INDEX `idx_target_attr_prefix`(`target_attr` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_time_template
-- ----------------------------
INSERT INTO `feed_spider_time_template` VALUES (16, '', '', '2025-09-07 22:37:10', '2025-09-07 22:37:18', '', 'datePublished\"\\s*:\\s*\"([^\"]+)');
INSERT INTO `feed_spider_time_template` VALUES (17, '', 'meta[name=cXenseParse:publishtime]', '2025-09-07 22:57:06', '2025-09-07 22:57:06', 'content', '');
INSERT INTO `feed_spider_time_template` VALUES (18, '', 'meta[itemprop=datePublished]', '2025-09-07 23:39:00', '2025-09-07 23:39:00', 'content', '');
INSERT INTO `feed_spider_time_template` VALUES (19, '', 'meta[property=article:published_time]', '2025-09-08 17:12:14', '2025-09-08 17:12:14', 'content', '');
INSERT INTO `feed_spider_time_template` VALUES (20, '', 'meta[name=publish-date]', '2025-09-08 20:47:39', '2025-09-08 20:47:39', 'content', '');
INSERT INTO `feed_spider_time_template` VALUES (21, 'div.article-date', 'time', '2025-09-08 21:07:47', '2025-09-08 21:07:47', 'datetime', '');
INSERT INTO `feed_spider_time_template` VALUES (22, '', 'meta[property=og:updated_time]', '2025-09-08 21:20:42', '2025-09-08 21:20:42', 'content', '');
INSERT INTO `feed_spider_time_template` VALUES (23, '', 'time[class=wp-article-content-date]', '2025-09-08 21:26:12', '2025-09-08 21:26:12', 'datetime', '');
INSERT INTO `feed_spider_time_template` VALUES (24, '', 'article.article', '2025-09-09 18:48:17', '2025-09-09 18:48:17', 'data-datepub', '');
INSERT INTO `feed_spider_time_template` VALUES (25, '', 'time[itemprop=datePublished]', '2025-09-09 19:11:37', '2025-09-09 19:11:37', 'datetime', '');
INSERT INTO `feed_spider_time_template` VALUES (26, '', 'span.news-date-time', '2025-09-09 20:14:56', '2025-09-09 20:14:56', '', '');
INSERT INTO `feed_spider_time_template` VALUES (27, '', '', '2025-09-09 20:30:19', '2025-09-09 20:30:19', '', 'publishDate\"\\s*:\\s*\"([^\"]+)');
INSERT INTO `feed_spider_time_template` VALUES (28, '', 'time[itemprop=datePublished dateModified]', '2025-09-09 21:03:26', '2025-09-09 21:03:26', 'content', '');
INSERT INTO `feed_spider_time_template` VALUES (29, 'div.page-block.news-detail:first-of-type', 'span.date', '2025-09-09 21:11:37', '2025-09-09 21:11:37', '', '');
INSERT INTO `feed_spider_time_template` VALUES (30, '', 'meta[name=item-publish-date]', '2025-09-10 14:48:33', '2025-09-10 14:48:33', 'content', '');
INSERT INTO `feed_spider_time_template` VALUES (31, '', 'meta[name=datePublished]', '2025-09-10 18:39:34', '2025-09-10 18:39:34', 'content', '');
INSERT INTO `feed_spider_time_template` VALUES (32, 'div[class=pc:col-8 col-6 info align:right]', 'time:first-of-type', '2025-09-10 19:58:13', '2025-09-10 19:58:13', 'datetime', '');
INSERT INTO `feed_spider_time_template` VALUES (33, '', 'meta[property=dateModified]', '2025-09-13 19:08:27', '2025-09-13 19:08:27', 'content', '');

SET FOREIGN_KEY_CHECKS = 1;
