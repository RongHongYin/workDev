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

 Date: 15/09/2025 18:34:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_title_template
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_title_template`;
CREATE TABLE `feed_spider_title_template`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fathertag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父标签',
  `childtag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子标签',
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `target_attr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '提取的目标属性名，例如 datetime、href、content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_title_template
-- ----------------------------
INSERT INTO `feed_spider_title_template` VALUES (10, '', 'title', '2025-09-07 22:40:57', '2025-09-07 22:40:57', '');
INSERT INTO `feed_spider_title_template` VALUES (11, '', 'meta[property=og:title]', '2025-09-07 22:58:08', '2025-09-07 22:58:08', 'content');
INSERT INTO `feed_spider_title_template` VALUES (12, '', 'h1.post-title', '2025-09-08 17:36:30', '2025-09-08 17:36:30', '');
INSERT INTO `feed_spider_title_template` VALUES (13, 'main[class=article container] header', 'h1', '2025-09-08 20:27:00', '2025-09-08 20:27:00', '');
INSERT INTO `feed_spider_title_template` VALUES (14, '', 'h1.header-article__title', '2025-09-08 21:21:05', '2025-09-08 21:21:05', '');
INSERT INTO `feed_spider_title_template` VALUES (15, 'article.container h2', 'div[class=text-22 leading-12 font-bold md:text-28]', '2025-09-09 14:16:39', '2025-09-09 14:16:39', '');
INSERT INTO `feed_spider_title_template` VALUES (16, '', 'h2.Article-Title', '2025-09-09 14:24:14', '2025-09-09 14:24:14', '');
INSERT INTO `feed_spider_title_template` VALUES (17, '', 'h2[class=outline-none expressive-heading-3xl text-copy-primary ]', '2025-09-09 14:33:49', '2025-09-09 14:33:49', '');
INSERT INTO `feed_spider_title_template` VALUES (18, 'header.artdetail_header', 'h1', '2025-09-09 15:37:12', '2025-09-09 15:37:12', '');
INSERT INTO `feed_spider_title_template` VALUES (19, '', 'meta[name=ob_headline]', '2025-09-09 16:26:38', '2025-09-09 16:26:38', 'content');
INSERT INTO `feed_spider_title_template` VALUES (20, '', 'h2[class=Headline_headline__FYI_w]', '2025-09-09 16:59:43', '2025-09-09 16:59:43', '');
INSERT INTO `feed_spider_title_template` VALUES (21, '', 'p[class=headline headline--article]', '2025-09-09 17:26:37', '2025-09-09 17:26:37', '');
INSERT INTO `feed_spider_title_template` VALUES (22, '', 'h2[class=watson-snippet__title text-hyphens font-Onest text-[29px] md:text-4xl lg:text-6xl font-bold leading-tight lg:leading-extra-tight mb-5 lg:mb-8]', '2025-09-09 17:31:27', '2025-09-09 17:31:27', '');
INSERT INTO `feed_spider_title_template` VALUES (23, '', 'h1.article__title', '2025-09-09 18:48:17', '2025-09-09 18:48:17', '');
INSERT INTO `feed_spider_title_template` VALUES (24, '', 'h1.headline[itemprop=headline]', '2025-09-09 19:11:37', '2025-09-09 19:11:37', '');
INSERT INTO `feed_spider_title_template` VALUES (25, '', 'meta[property=yandex_recommendations_title]', '2025-09-09 19:28:01', '2025-09-09 19:28:01', 'content');
INSERT INTO `feed_spider_title_template` VALUES (26, 'div.container _white>div.navigation div.bx-breadcrumb-item:not([id])', 'span[itemprop=name]', '2025-09-09 20:43:32', '2025-09-09 20:43:32', '');
INSERT INTO `feed_spider_title_template` VALUES (27, 'article', 'h1', '2025-09-10 14:41:38', '2025-09-10 14:41:38', '');
INSERT INTO `feed_spider_title_template` VALUES (28, '', 'h1[class=font-size-title-1 font-weight-bold mb-4]', '2025-09-10 15:25:13', '2025-09-10 15:25:13', '');
INSERT INTO `feed_spider_title_template` VALUES (29, '', 'h1[class=Title ArticleHeader-Title]', '2025-09-10 17:01:40', '2025-09-10 17:01:40', '');
INSERT INTO `feed_spider_title_template` VALUES (30, '', 'meta[name=twitter:title]', '2025-09-10 18:39:34', '2025-09-10 18:39:34', 'content');
INSERT INTO `feed_spider_title_template` VALUES (31, '', 'meta[name=title]', '2025-09-10 19:02:10', '2025-09-10 19:02:10', 'content');
INSERT INTO `feed_spider_title_template` VALUES (32, '', 'h1[class=text-grey-1000 font-anton text-display-s-mobile lg:text-display-s-desktop md:!text-display-s-desktop !text-[61px] uppercase]', '2025-09-10 20:10:17', '2025-09-10 20:10:17', '');
INSERT INTO `feed_spider_title_template` VALUES (33, '', 'meta[name=EdTitle]', '2025-09-10 20:23:49', '2025-09-10 20:23:49', 'content');
INSERT INTO `feed_spider_title_template` VALUES (34, '', 'h1.fqm-post-header__title', '2025-09-10 20:29:39', '2025-09-10 20:29:39', '');
INSERT INTO `feed_spider_title_template` VALUES (35, '', 'meta[name=vsport:speakable_title]', '2025-09-10 20:33:36', '2025-09-10 20:33:36', 'content');
INSERT INTO `feed_spider_title_template` VALUES (36, '', 'h1.entry-title', '2025-09-10 21:04:50', '2025-09-10 21:04:50', '');
INSERT INTO `feed_spider_title_template` VALUES (37, '', 'h1[class=title serif]', '2025-09-10 21:09:39', '2025-09-10 21:09:39', '');
INSERT INTO `feed_spider_title_template` VALUES (38, '', 'h1.a__title', '2025-09-11 18:59:17', '2025-09-11 18:59:17', '');
INSERT INTO `feed_spider_title_template` VALUES (39, '', 'h1[data-selector=storyTitleSelector]', '2025-09-11 19:03:26', '2025-09-11 19:03:26', '');

SET FOREIGN_KEY_CHECKS = 1;
