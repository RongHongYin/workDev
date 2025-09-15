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

 Date: 15/09/2025 18:31:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_c_template
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_c_template`;
CREATE TABLE `feed_spider_c_template`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `publishtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fulltext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章tags',
  `fulltextfliter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '全文过滤杂项元素',
  `fulltextisp` tinyint(1) NOT NULL DEFAULT 1 COMMENT '全文提取方式控制：1=true(保持现在的全文获取，获取p标签)，0=false(不获取p标签，而是直接使用获取到的元素的文本)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createdtime`(`createdtime` ASC) USING BTREE,
  INDEX `idx_updatedtime`(`updatedtime` ASC) USING BTREE,
  INDEX `idx_fulltextisp`(`fulltextisp` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_c_template
-- ----------------------------
INSERT INTO `feed_spider_c_template` VALUES (17, '16', '9', '10', '10', 'div.jupiter-paragraph-fragment', '2025-09-07 22:48:38', '2025-09-07 22:48:38', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (18, '17', '9', '11', '10', 'div.article-content', '2025-09-07 23:19:48', '2025-09-07 23:19:48', 'ul[class=flex items-start]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (19, '16', '9', '11', '10', 'div.m-content', '2025-09-07 23:28:39', '2025-09-07 23:28:39', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (20, '18', '9', '10', '10', 'article', '2025-09-07 23:44:33', '2025-09-07 23:44:33', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (21, '19', '9', '11', '10', 'div.c-news__content', '2025-09-08 17:13:56', '2025-09-08 17:13:56', 'ul.c-topics__list', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (22, '16', '9', '11', '10', 'div.content-wrapper.news-body.container.content.template-reportagem', '2025-09-08 17:25:27', '2025-09-08 17:25:27', 'ul.tags-list', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (23, '16', '9', '12', '10', 'div.context', '2025-09-08 17:38:45', '2025-09-08 17:38:45', 'ul.list-inline', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (24, '16', '9', '11', '10', 'div.content-closed.contentOpen', '2025-09-08 17:51:17', '2025-09-08 17:51:17', 'section.s-tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (25, '16', '9', '10', '10', 'div.cb-content-materia', '2025-09-08 18:02:39', '2025-09-08 18:02:39', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (26, '19', '9', '11', '11', 'div.single-content', '2025-09-08 20:11:09', '2025-09-08 20:11:09', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (27, '19', '9', '10', '11', 'div#content-area', '2025-09-08 20:22:12', '2025-09-08 20:22:12', 'div.post-tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (28, '19', '9', '13', '11', 'div.article-body', '2025-09-08 20:35:24', '2025-09-08 20:35:24', 'div#tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (29, '20', '9', '11', '10', 'div.article__content--body.article__content--internal', '2025-09-08 20:49:57', '2025-09-08 20:49:57', 'div.t360-tags__list', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (30, '16', '9', '10', '10', 'div.contentparts', '2025-09-08 20:56:17', '2025-09-08 20:56:17', 'div.content-tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (31, '18', '9', '11', '10', 'section[data-section=article-body]', '2025-09-08 21:05:05', '2025-09-08 21:05:05', 'div[data-section=article_tags]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (32, '21', '9', '11', '10', 'section.main.article.whitelistPremium', '2025-09-08 21:09:18', '2025-09-08 21:09:18', 'div.article-tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (33, '16', '9', '11', '10', 'p[class=ids-typeset-body ids-typeset-body--preset-large link paragraph ids-paragraph ids-paragraph--default]', '2025-09-08 21:18:14', '2025-09-08 21:18:14', 'div.tag-group.tags--desktop', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (34, '22', '9', '14', '10', 'div[class=paragraph-item paragraph-item--text-item paragraph-item--small-margin]', '2025-09-08 21:23:20', '2025-09-08 21:23:20', 'div[class=bottom-article__tags]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (35, '23', '9', '10', '10', 'div[class=mb-4 flex flex-col gap-6]', '2025-09-08 21:27:30', '2025-09-08 21:27:30', 'div[class=flex justify-between]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (36, '19', '9', '11', '10', 'div.art-content', '2025-09-08 21:33:52', '2025-09-08 21:33:52', 'ul[class=art-text-relation-inner]', '6', 1);
INSERT INTO `feed_spider_c_template` VALUES (37, '16', '9', '11', '10', 'article#content>div[class=space-y-8 w-full px-4 md:px-0]', '2025-09-08 21:39:55', '2025-09-08 21:39:55', 'div[class=flex flex-row space-x-4 items-center flex-wrap space-y-2]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (38, '16', '9', '11', '10', 'div[class=block_list__container]', '2025-09-08 21:43:21', '2025-09-08 21:43:21', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (39, '16', '9', '11', '10', 'div.block_list__container', '2025-09-08 21:55:47', '2025-09-08 21:55:47', 'div[class=tags gl_plugin]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (40, '16', '9', '11', '10', 'div[class=space-y-8 w-full px-4 md:px-0]', '2025-09-08 22:00:31', '2025-09-08 22:00:31', 'div[class=flex flex-row space-x-4 items-center flex-wrap space-y-2]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (41, '16', '9', '11', '10', 'div.article__text', '2025-09-09 10:55:45', '2025-09-09 10:55:45', 'section.article__tags>ul', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (42, '16', '9', '10', '10', 'div#story-elements', '2025-09-09 11:00:45', '2025-09-09 11:00:45', 'ul[class=tspYe9 tspBi]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (43, '16', '9', '15', '10', 'div[class=w-full min-w-[20em] md:relative md:border-r md:border-solid md:border-whitelilac md:z-stream-layout-stream-style]', '2025-09-09 14:19:45', '2025-09-09 14:19:45', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (44, '16', '9', '16', '10', 'div.Article-Content', '2025-09-09 14:25:16', '2025-09-09 14:25:16', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (45, '16', '9', '17', '10', 'div[class=article-body relative]', '2025-09-09 14:33:49', '2025-09-09 14:33:49', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (46, '16', '9', '18', '10', 'section.artdetail_text', '2025-09-09 15:37:13', '2025-09-09 15:37:13', 'ul[class=flex-container start]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (47, '16', '9', '10', '10', 'article[class=id-Page-skyLayout-content idjs-Story]', '2025-09-09 15:48:57', '2025-09-09 15:48:57', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (48, '16', '9', '11', '12', 'div.kick__article__content__child', '2025-09-09 16:03:40', '2025-09-09 16:03:40', 'div[class=kick__slick-list kick__draggable]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (49, '16', '9', '10', '10', 'div.main>div[class=flex flex-col w-full py-0 px-5 items-center]', '2025-09-09 16:11:58', '2025-09-09 16:11:58', 'ul[class=flex sm:flex-wrap sm:justify-start gap-3 w-full]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (50, '16', '9', '11', '11', 'div[class=article-body content-padding]', '2025-09-09 16:20:33', '2025-09-09 16:20:33', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (51, '16', '9', '19', '10', 'div[class=article__body js-article-body]', '2025-09-09 16:26:38', '2025-09-09 16:26:38', 'ul.links__items', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (52, '16', '9', '10', '10', 'div.ezxmltext-field', '2025-09-09 16:51:32', '2025-09-09 16:51:32', 'ul.article-tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (53, '16', '9', '20', '10', 'div.article-body', '2025-09-09 16:59:43', '2025-09-09 16:59:43', 'div[class=widget-topic_page_links-default_root__ZdHmR]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (54, '16', '9', '11', '10', 'div[class=alice-layout-article-body alice-layout-content alice-layout-width-inner]', '2025-09-09 17:05:06', '2025-09-09 17:05:06', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (55, '16', '9', '10', '10', 'article', '2025-09-09 17:15:40', '2025-09-09 17:15:40', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (56, '16', '9', '19', '10', 'div[class=article__body js-article-body]', '2025-09-09 17:19:54', '2025-09-09 17:19:54', 'ul.links__items', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (57, '18', '9', '10', '10', 'section[itemprop=articleBody]', '2025-09-09 17:23:50', '2025-09-09 17:23:50', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (58, '16', '9', '21', '10', 'div.article-body', '2025-09-09 17:26:37', '2025-09-09 17:26:37', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (59, '16', '9', '22', '10', 'div[class=watson-story__content text-base watson_week]', '2025-09-09 17:31:27', '2025-09-09 17:31:27', 'div', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (60, '16', '9', '10', '10', 'div[class=paragraph paraTypeText]', '2025-09-09 17:36:07', '2025-09-09 17:36:07', 'ul.article__tags__list', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (61, '16', '9', '11', '10', 'div.Article-Content', '2025-09-09 17:40:21', '2025-09-09 17:40:21', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (62, '16', '9', '11', '10', 'main[data-testid=article-body]', '2025-09-09 17:46:41', '2025-09-09 17:46:41', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (63, '18', '9', '11', '10', 'div.article__text', '2025-09-09 18:38:08', '2025-09-09 18:38:08', '', '', 0);
INSERT INTO `feed_spider_c_template` VALUES (64, '16', '9', '11', '10', 'div[class=topic-body__content]', '2025-09-09 18:44:30', '2025-09-09 18:44:30', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (65, '24', '9', '23', '10', 'div.article__text', '2025-09-09 18:48:17', '2025-09-09 18:48:17', 'div.tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (66, '16', '9', '11', '10', 'div.article_text', '2025-09-09 19:01:46', '2025-09-09 19:01:46', 'div.tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (67, '16', '9', '11', '10', 'div[data-gtm-el=content-body]', '2025-09-09 19:06:45', '2025-09-09 19:06:45', 'div[class=sc-9fsk80-0 iBJTlo sc-1wayp1z-7 iyqvHt]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (68, '25', '9', '24', '10', 'div.b_article-text[itemprop=articleBody]', '2025-09-09 19:11:37', '2025-09-09 19:11:37', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (69, '18', '9', '10', '10', 'div.post-detail__content', '2025-09-09 19:20:13', '2025-09-09 19:20:13', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (70, '18', '9', '11', '10', 'div.article__description', '2025-09-09 19:22:40', '2025-09-09 19:22:40', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (71, '25', '9', '25', '10', 'div.item-text', '2025-09-09 19:28:01', '2025-09-09 19:28:01', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (72, '16', '9', '11', '10', 'div.article-content', '2025-09-09 19:31:24', '2025-09-09 19:31:24', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (73, '26', '10', '10', '10', 'div[class=poster-text detail]', '2025-09-09 20:14:56', '2025-09-09 20:14:56', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (74, '16', '9', '10', '10', 'div[class=mb-10 ProseMirror-view linked-data-post]', '2025-09-09 20:18:47', '2025-09-09 20:18:47', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (75, '27', '9', '11', '10', 'div.A4O9qB', '2025-09-09 20:30:19', '2025-09-09 20:30:19', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (76, '16', '9', '11', '10', 'article', '2025-09-09 20:33:50', '2025-09-09 20:33:50', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (77, '16', '9', '26', '10', 'div.article-detail', '2025-09-09 20:43:32', '2025-09-09 20:43:32', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (78, '16', '9', '10', '10', 'main[itemprop=articleBody]', '2025-09-09 20:54:36', '2025-09-09 20:54:36', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (79, '16', '9', '11', '10', 'div.article_content', '2025-09-09 20:57:11', '2025-09-09 20:57:11', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (80, '28', '9', '10', '10', 'div[class=article_body row]', '2025-09-09 21:03:26', '2025-09-09 21:03:26', 'ul.article_footer_tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (81, '29', '9', '11', '10', 'div.page-block.news-detail:first-of-type div.news-content', '2025-09-09 21:11:37', '2025-09-09 21:11:37', 'div.page-block.news-detail:first-of-type span.news-tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (82, '22', '9', '10', '10', 'div[itemprop=articleBody]', '2025-09-09 21:14:55', '2025-09-09 21:14:55', 'ul.list-unstyled', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (83, '16', '9', '11', '10', 'div[class=post-body post-body__content]', '2025-09-10 12:58:40', '2025-09-10 12:58:40', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (84, '16', '9', '11', '10', 'div.articleBody-draft', '2025-09-10 13:02:10', '2025-09-10 13:02:10', 'ul.tagList-list', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (85, '16', '9', '10', '10', 'div[class=u-width-100% gs-column]', '2025-09-10 13:08:23', '2025-09-10 13:08:23', 'div[class=u-flex-row single__keywords]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (86, '16', '9', '10', '10', 'div[class=article-content]', '2025-09-10 13:11:46', '2025-09-10 13:11:46', 'div[class=articleTags-content]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (87, '16', '', '11', '10', 'div.article-content', '2025-09-10 13:25:33', '2025-09-10 13:25:33', 'ul.tag-carousel__container', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (88, '16', '9', '11', '10', 'div[class=content_element]', '2025-09-10 13:29:19', '2025-09-10 13:29:19', 'ul.GFWK_tagsList', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (89, '16', '9', '11', '10', 'article', '2025-09-10 13:36:02', '2025-09-10 13:36:02', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (90, '16', '9', '11', '10', 'div.IciBody', '2025-09-10 13:40:14', '2025-09-10 13:40:14', 'ul[class=g-unstyled-list svelte-1256flo]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (91, '16', '9', '10', '10', 'div#ob-article-body', '2025-09-10 13:45:42', '2025-09-10 13:45:42', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (92, '16', '9', '10', '10', 'section.article-page__body>div.content', '2025-09-10 13:56:02', '2025-09-10 13:57:21', '', '[7,8,9]', 1);
INSERT INTO `feed_spider_c_template` VALUES (93, '16', '9', '11', '10', 'div[class=text-slate-600 font-[\'Mulish\',Arial,sans-serif] text-base/7 [&_a]:text-[#0077c8]]', '2025-09-10 14:05:35', '2025-09-10 14:05:35', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (94, '16', '9', '11', '10', 'div.main-content', '2025-09-10 14:09:54', '2025-09-10 14:09:54', 'div.post-tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (95, '16', '9', '11', '10', 'div.body__inner-container', '2025-09-10 14:16:30', '2025-09-10 14:16:30', 'div[data-testid=TagCloudWrapper]', '7', 1);
INSERT INTO `feed_spider_c_template` VALUES (96, '16', '9', '27', '10', 'article>section div.col-md-6', '2025-09-10 14:41:38', '2025-09-10 14:41:38', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (97, '30', '9', '11', '10', 'div.article', '2025-09-10 14:48:33', '2025-09-10 14:48:33', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (98, '16', '9', '11', '10', 'div.articleBody-draft', '2025-09-10 14:52:56', '2025-09-10 14:52:56', 'ul.tagList-list', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (100, '16', '9', '10', '10', 'div.prose', '2025-09-10 15:00:15', '2025-09-10 15:00:15', 'ul[class=flex flex-wrap gap-8]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (101, '16', '9', '10', '10', 'div[class=article-content thecontent]', '2025-09-10 15:12:37', '2025-09-10 15:12:37', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (102, '16', '9', '11', '10', 'div#post-content', '2025-09-10 15:18:46', '2025-09-10 15:18:46', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (103, '16', '9', '28', '10', 'article', '2025-09-10 15:25:13', '2025-09-10 15:25:13', '', '10', 1);
INSERT INTO `feed_spider_c_template` VALUES (104, '16', '9', '10', '10', 'div[class=field-item even]', '2025-09-10 15:45:53', '2025-09-10 16:42:53', 'div[class=field-items]', '[11,7]', 1);
INSERT INTO `feed_spider_c_template` VALUES (105, '16', '9', '11', '10', 'div#content_nitf', '2025-09-10 15:48:55', '2025-09-10 16:42:51', 'div[class=pills mb-3]', '[11,7]', 1);
INSERT INTO `feed_spider_c_template` VALUES (106, '16', '9', '11', '10', 'div.news-body', '2025-09-10 15:52:23', '2025-09-10 16:42:52', 'ul.mod-content', '[11,7]', 1);
INSERT INTO `feed_spider_c_template` VALUES (107, '16', '9', '11', '10', 'article', '2025-09-10 15:58:04', '2025-09-10 16:42:51', 'div[data-testid=article-container]', '[11,7]', 1);
INSERT INTO `feed_spider_c_template` VALUES (108, '16', '9', '10', '10', 'div[class=sc pl-3]', '2025-09-10 16:01:58', '2025-09-10 16:01:58', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (109, '16', '9', '11', '10', 'div#lanota', '2025-09-10 16:04:40', '2025-09-10 16:42:50', 'div#trends', '[11,7]', 1);
INSERT INTO `feed_spider_c_template` VALUES (110, '16', '9', '11', '10', 'div.BlocksArticleFirstItem-body', '2025-09-10 16:09:12', '2025-09-10 16:09:12', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (111, '16', '9', '11', '10', 'div.txt', '2025-09-10 16:14:43', '2025-09-10 16:14:43', 'div.unotv-taglist', '7', 1);
INSERT INTO `feed_spider_c_template` VALUES (112, '16', '9', '11', '10', 'article.b-article-body', '2025-09-10 16:21:29', '2025-09-10 16:42:49', '', '[11,7]', 1);
INSERT INTO `feed_spider_c_template` VALUES (113, '16', '9', '11', '10', 'div[class=RichTextTvNotasArticleBody RichTextBody]', '2025-09-10 16:25:16', '2025-09-10 16:42:48', 'div.Page-tags', '[11,7]', 1);
INSERT INTO `feed_spider_c_template` VALUES (114, '16', '9', '11', '10', 'article.ei-article-body-ctn', '2025-09-10 16:30:11', '2025-09-10 16:42:47', 'ul.ei-tags-bar-unordered-list', '[11,7]', 1);
INSERT INTO `feed_spider_c_template` VALUES (115, '16', '9', '11', '10', 'div.RichTextArticleBody-body', '2025-09-10 16:35:48', '2025-09-10 16:42:45', '', '[11,7]', 1);
INSERT INTO `feed_spider_c_template` VALUES (116, '16', '9', '11', '10', 'article.b-article-body', '2025-09-10 16:41:57', '2025-09-10 16:42:39', '', '[11,7]', 1);
INSERT INTO `feed_spider_c_template` VALUES (117, '16', '9', '10', '10', 'div[class=article-text txt]', '2025-09-10 16:55:08', '2025-09-10 16:55:08', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (118, '16', '9', '10', '10', 'div[class=entry-content clearfix]', '2025-09-10 16:57:03', '2025-09-10 16:57:03', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (119, '16', '9', '29', '10', 'article>section', '2025-09-10 17:01:40', '2025-09-10 17:01:40', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (120, '18', '9', '11', '10', 'div.articulo__cuerpo', '2025-09-10 17:04:17', '2025-09-10 17:04:17', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (121, '16', '9', '11', '10', 'div[class=content vsmcontent news-mx gallerydisabled]', '2025-09-10 17:07:25', '2025-09-10 17:07:25', 'ul.tag-list', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (122, '31', '9', '30', '10', 'figcaption.card-caption', '2025-09-10 18:39:34', '2025-09-10 18:39:34', 'ul.tag-nav-list', '', 0);
INSERT INTO `feed_spider_c_template` VALUES (123, '31', '9', '31', '10', 'div.article-body', '2025-09-10 19:02:10', '2025-09-10 19:02:10', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (124, '31', '9', '11', '10', 'div.content-news-tag-selector', '2025-09-10 19:07:19', '2025-09-10 19:07:19', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (125, '31', '9', '11', '10', 'div#news', '2025-09-10 19:14:57', '2025-09-10 19:14:57', 'div#nwsKeywords', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (126, '31', '9', '10', '10', 'div.text-content', '2025-09-10 19:18:15', '2025-09-10 19:18:15', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (127, '31', '9', '11', '10', 'div[class=news-content news-content readingTime]', '2025-09-10 19:23:25', '2025-09-10 19:23:25', 'div.news-tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (128, '31', '9', '31', '10', 'div.news-content', '2025-09-10 19:26:41', '2025-09-10 19:26:41', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (129, '31', '9', '10', '10', 'div.detail-content-inner', '2025-09-10 19:31:36', '2025-09-10 19:31:36', 'div[class=tags-word  pt-2 d-flex flex-nowrap overflow-auto hide-scrollbar]', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (130, '31', '9', '11', '10', 'div[class=wrapper detay-v3_3 haber_metni]', '2025-09-10 19:36:20', '2025-09-10 19:36:20', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (131, '31', '9', '31', '10', 'div[class=cms-container]', '2025-09-10 19:40:36', '2025-09-10 19:40:36', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (132, '31', '9', '31', '10', 'div[property=articleBody]', '2025-09-10 19:45:45', '2025-09-10 19:45:45', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (133, '31', '9', '10', '10', 'div.content-text', '2025-09-10 19:49:32', '2025-09-10 19:49:32', 'div.tags', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (134, '32', '9', '11', '10', 'div#article-detail-container', '2025-09-10 19:58:13', '2025-09-10 19:58:13', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (135, '31', '9', '11', '10', 'div.content-text', '2025-09-10 20:04:41', '2025-09-10 20:04:41', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (136, '16', '9', '32', '10', 'div[class=article-content article-theme-light]', '2025-09-10 20:10:17', '2025-09-10 20:10:17', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (137, '16', '9', '10', '10', 'div[data-testid=paragraph-content]', '2025-09-10 20:17:46', '2025-09-12 17:26:23', 'div[class=flex gap-2 bg-white p-4 lg:px-6 no-scrollbar overflow-x-scroll scroll-smooth]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (138, '16', '9', '33', '10', 'div[class=post-single-text rich-text news-txt]', '2025-09-10 20:23:49', '2025-09-10 20:23:49', 'ul#all-tags', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (139, '16', '9', '10', '10', 'article.fieldContainerTag', '2025-09-10 20:26:36', '2025-09-10 20:26:36', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (140, '16', '9', '34', '10', 'div.fqm-post-content__text', '2025-09-10 20:29:39', '2025-09-10 20:29:39', 'ul.fqm-tag-list', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (141, '16', '9', '35', '10', 'div.entry-content', '2025-09-10 20:33:36', '2025-09-10 20:33:36', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (142, '16', '9', '10', '10', 'div.article__content', '2025-09-10 20:36:03', '2025-09-10 20:36:03', 'ul.tag__list', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (143, '16', '9', '11', '10', 'div[class=col-lg-10]', '2025-09-10 20:39:17', '2025-09-10 20:39:17', 'ul[class=afoot-args list-inline]', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (144, '16', '9', '10', '10', 'div.body-text', '2025-09-10 20:42:20', '2025-09-10 20:42:20', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (145, '16', '9', '11', '10', 'div.ar-main', '2025-09-10 20:45:03', '2025-09-10 20:45:03', 'div.list-tag', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (146, '16', '9', '10', '10', 'div[class=ArticleText_article__text__6wANz ArticleText_article__text--quotidianosportivo__fomrJ]', '2025-09-10 20:48:15', '2025-09-10 20:48:15', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (147, '16', '9', '10', '10', 'div.c-entry', '2025-09-10 20:51:02', '2025-09-10 20:51:02', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (148, '16', '9', '11', '10', 'div[class=column gz-content-center-col main-content-center is-6]', '2025-09-10 20:57:33', '2025-09-10 20:57:33', '', '7', 1);
INSERT INTO `feed_spider_c_template` VALUES (149, '25', '9', '10', '10', 'div.testo_notizia', '2025-09-10 21:00:17', '2025-09-10 21:00:17', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (150, '16', '9', '36', '10', 'div.entry-content', '2025-09-10 21:04:50', '2025-09-10 21:04:50', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (151, '16', '9', '37', '10', 'div[class=text mbottom]', '2025-09-10 21:09:39', '2025-09-10 21:09:39', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (152, '16', '9', '10', '10', 'div[class=g1-content-narrow g1-typography-xl entry-content]', '2025-09-10 21:16:11', '2025-09-10 21:16:11', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (153, '16', '9', '10', '10', 'div.testo_align span', '2025-09-10 21:19:04', '2025-09-10 21:19:04', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (154, '16', '9', '10', '10', 'div.mbottom.text', '2025-09-10 21:20:58', '2025-09-11 20:19:41', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (155, '16', '9', '10', '10', 'article div.voc-d', '2025-09-11 14:23:09', '2025-09-11 14:23:09', 'ul.voc-topics__list', '12', 1);
INSERT INTO `feed_spider_c_template` VALUES (156, '16', '9', '10', '10', 'div.article-main__content', '2025-09-11 14:27:03', '2025-09-11 14:27:03', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (157, '16', '9', '10', '10', 'article.article-body-wrapper-bl', '2025-09-11 14:32:00', '2025-09-11 14:32:00', 'div.tags-holder', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (158, '16', '9', '11', '10', 'div.article-body', '2025-09-11 14:34:59', '2025-09-11 14:34:59', 'div.cont-tags', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (159, '16', '9', '11', '10', 'div[itemprop=articleBody]', '2025-09-11 14:39:02', '2025-09-11 14:39:02', 'ul.palabras', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (160, '16', '9', '10', '10', 'div.Article__paragraphGroup', '2025-09-11 14:44:56', '2025-09-11 14:44:56', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (161, '16', '9', '11', '10', 'div.ue-c-article__body', '2025-09-11 14:52:29', '2025-09-11 14:52:29', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (162, '16', '9', '11', '10', 'div[data-dtm-region=articulo_cuerpo]', '2025-09-11 15:02:36', '2025-09-11 15:02:36', 'ul[class=w_ul w_ul--mh _df _ls]', '7', 1);
INSERT INTO `feed_spider_c_template` VALUES (163, '16', '9', '10', '10', 'div.ho-theme.ldJsonContent', '2025-09-11 15:10:32', '2025-09-11 15:10:32', 'ul[aria-label=Otros Temas]', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (164, '16', '9', '11', '10', 'div.body-article', '2025-09-11 15:14:08', '2025-09-11 15:14:08', 'div.article-tags', '13', 1);
INSERT INTO `feed_spider_c_template` VALUES (165, '16', '9', '10', '10', 'div.article-main__content', '2025-09-11 16:46:40', '2025-09-11 16:46:40', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (166, '16', '9', '10', '11', 'div.entry-content', '2025-09-11 16:49:36', '2025-09-11 16:49:36', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (167, '16', '9', '10', '10', 'div.article-modules', '2025-09-11 16:53:41', '2025-09-11 16:53:41', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (168, '16', '9', '10', '10', 'div.td-post-content div[class=tdb-block-inner td-fix-index]', '2025-09-11 17:09:28', '2025-09-11 17:09:28', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (169, '16', '9', '10', '10', 'article[class=b-article-body article-body]', '2025-09-11 17:54:17', '2025-09-11 17:54:17', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (170, '16', '9', '10', '10', 'div[class=blob js-post-images-container]', '2025-09-11 17:57:17', '2025-09-11 17:57:17', 'ul.post-link-list', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (171, '16', '9', '10', '10', 'div.article-content', '2025-09-11 17:59:52', '2025-09-11 17:59:52', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (172, '16', '9', '10', '10', 'div#article-body-content', '2025-09-11 18:06:53', '2025-09-11 18:06:53', 'ol.tags__list', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (173, '16', '9', '10', '10', 'div[class=ft-layout-grid-flex__colXs-12 ft-layout-grid-flex__colSm-11]', '2025-09-11 18:15:25', '2025-09-11 18:15:25', 'ul.lnk', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (174, '16', '9', '11', '10', 'div.content-inner', '2025-09-11 18:21:44', '2025-09-11 18:21:44', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (175, '16', '9', '11', '10', 'article.b-post-detail', '2025-09-11 18:25:36', '2025-09-11 18:25:36', '', '7', 1);
INSERT INTO `feed_spider_c_template` VALUES (176, '16', '9', '11', '10', 'div.article-detail__main-content', '2025-09-11 18:45:12', '2025-09-11 18:45:12', '', '13', 1);
INSERT INTO `feed_spider_c_template` VALUES (177, '33', '9', '38', '10', 'section.lead', '2025-09-11 18:59:17', '2025-09-13 19:09:19', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (178, '16', '9', '39', '10', 'article', '2025-09-11 19:03:26', '2025-09-11 19:03:26', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (179, '16', '9', '10', '10', 'div[class=td-post-content tagdiv-type]', '2025-09-12 18:06:29', '2025-09-12 18:06:29', '', '', 1);
INSERT INTO `feed_spider_c_template` VALUES (180, '31', '9', '30', '10', 'article.detail-container.active', '2025-09-15 17:27:46', '2025-09-15 17:27:46', '', '11', 1);
INSERT INTO `feed_spider_c_template` VALUES (181, '31', '9', '30', '10', ' article.detail-container.active section.detail-content', '2025-09-15 17:31:18', '2025-09-15 17:31:18', '', '11', 1);

SET FOREIGN_KEY_CHECKS = 1;
