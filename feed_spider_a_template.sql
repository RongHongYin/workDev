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

 Date: 15/09/2025 18:31:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_a_template
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_a_template`;
CREATE TABLE `feed_spider_a_template`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fathertag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `childtag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attr` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 170 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_a_template
-- ----------------------------
INSERT INTO `feed_spider_a_template` VALUES (11, 'div.thumbnails-wrapper', 'a', 'href', '2025-09-05 18:05:54', '2025-09-05 18:05:54');
INSERT INTO `feed_spider_a_template` VALUES (12, 'div[class=flex flex-row text-gzh-primary]', 'a', 'href', '2025-09-07 22:54:38', '2025-09-07 22:54:38');
INSERT INTO `feed_spider_a_template` VALUES (13, 'h4[class=Text__TextBase-sc-1d75gww-0 iOcCKi noticia__titulo]', 'a', 'href', '2025-09-07 23:24:52', '2025-09-07 23:24:52');
INSERT INTO `feed_spider_a_template` VALUES (14, 'div.feed-post-body-title', 'a', 'href', '2025-09-07 23:36:36', '2025-09-07 23:36:36');
INSERT INTO `feed_spider_a_template` VALUES (15, 'div.c-headline__content', 'a', 'href', '2025-09-08 17:09:35', '2025-09-08 17:09:35');
INSERT INTO `feed_spider_a_template` VALUES (16, '', 'a[data-component-name=lista-ultimas]', 'href', '2025-09-08 17:20:52', '2025-09-08 17:20:52');
INSERT INTO `feed_spider_a_template` VALUES (17, 'h2.post-title', 'a', 'href', '2025-09-08 17:28:56', '2025-09-08 17:28:56');
INSERT INTO `feed_spider_a_template` VALUES (18, 'div.nc-opening__posts', 'a', 'href', '2025-09-08 17:46:12', '2025-09-08 17:46:12');
INSERT INTO `feed_spider_a_template` VALUES (19, '', 'a.l-list__item', 'href', '2025-09-08 17:46:26', '2025-09-08 17:46:26');
INSERT INTO `feed_spider_a_template` VALUES (20, 'div.hardnews-duo>article', 'a', 'href', '2025-09-08 17:59:56', '2025-09-08 17:59:56');
INSERT INTO `feed_spider_a_template` VALUES (21, 'div.box-text', 'a', 'href', '2025-09-08 18:00:16', '2025-09-08 18:00:16');
INSERT INTO `feed_spider_a_template` VALUES (22, '', 'a.title-text', 'href', '2025-09-08 20:08:23', '2025-09-08 20:08:23');
INSERT INTO `feed_spider_a_template` VALUES (23, 'li.infinite-post', 'a', 'href', '2025-09-08 20:15:34', '2025-09-08 20:15:34');
INSERT INTO `feed_spider_a_template` VALUES (24, 'div.home-feat-main', 'a', 'href', '2025-09-08 20:16:08', '2025-09-08 20:16:08');
INSERT INTO `feed_spider_a_template` VALUES (25, 'article.teaser', 'a', 'href', '2025-09-08 20:23:44', '2025-09-08 20:23:44');
INSERT INTO `feed_spider_a_template` VALUES (26, '', 'a.card-news__text--title', 'href', '2025-09-08 20:45:30', '2025-09-08 20:45:30');
INSERT INTO `feed_spider_a_template` VALUES (27, '', 'a.teaser__title', 'href', '2025-09-08 20:52:50', '2025-09-08 20:52:50');
INSERT INTO `feed_spider_a_template` VALUES (28, 'div.desc', 'a', 'href', '2025-09-08 20:58:39', '2025-09-08 20:58:39');
INSERT INTO `feed_spider_a_template` VALUES (29, '', 'a[class=text-left flex w-full mb-6 last:mb-0 h-30]', 'href', '2025-09-08 21:01:57', '2025-09-08 21:01:57');
INSERT INTO `feed_spider_a_template` VALUES (30, '', 'a.list-item-link', 'href', '2025-09-08 21:06:37', '2025-09-08 21:06:37');
INSERT INTO `feed_spider_a_template` VALUES (31, '', 'a.ids-card__ancho', 'href', '2025-09-08 21:13:11', '2025-09-08 21:13:11');
INSERT INTO `feed_spider_a_template` VALUES (32, 'h2.article-l__text', 'a', 'href', '2025-09-08 21:19:37', '2025-09-08 21:19:37');
INSERT INTO `feed_spider_a_template` VALUES (33, 'h2.article-xl__text', 'a', 'href', '2025-09-08 21:19:54', '2025-09-08 21:19:54');
INSERT INTO `feed_spider_a_template` VALUES (34, '', 'a[class=group no-underline]', 'href', '2025-09-08 21:24:47', '2025-09-08 21:24:47');
INSERT INTO `feed_spider_a_template` VALUES (35, 'li[class=bli size-1x1 bli-rwd-row bli-rwd-row- bli-lead h-dt]', 'a', 'href', '2025-09-08 21:29:01', '2025-09-08 21:29:01');
INSERT INTO `feed_spider_a_template` VALUES (36, 'li.bli-tp-image_text.bli-rwd-row', 'a', 'href', '2025-09-08 21:30:20', '2025-09-08 21:30:20');
INSERT INTO `feed_spider_a_template` VALUES (37, 'li.bli-rwd-box-large', 'a', 'href', '2025-09-08 21:30:53', '2025-09-08 21:30:53');
INSERT INTO `feed_spider_a_template` VALUES (38, '', 'a[class=flex flex-row md:flex-col bg-white shadow-sm hover:bg-gray h-[108px] md:h-[268px] hover:no-underline]', 'href', '2025-09-08 21:38:07', '2025-09-08 21:38:07');
INSERT INTO `feed_spider_a_template` VALUES (39, 'div.element__headline', 'a', 'href', '2025-09-08 21:41:45', '2025-09-08 21:41:45');
INSERT INTO `feed_spider_a_template` VALUES (40, '', 'a.type--articles', 'href', '2025-09-08 21:54:28', '2025-09-08 21:54:28');
INSERT INTO `feed_spider_a_template` VALUES (41, '', 'a[class=flex flex-row md:flex-col bg-white shadow-sm hover:bg-gray h-[108px] md:h-[268px] hover:no-underline]', 'href', '2025-09-08 21:57:30', '2025-09-08 21:57:30');
INSERT INTO `feed_spider_a_template` VALUES (42, 'article.teaser.teaser--inline', 'a', 'href', '2025-09-09 10:52:09', '2025-09-09 10:52:09');
INSERT INTO `feed_spider_a_template` VALUES (43, 'article', 'a', 'href', '2025-09-09 10:58:08', '2025-09-09 10:58:08');
INSERT INTO `feed_spider_a_template` VALUES (44, 'h3.headline', 'a', 'href', '2025-09-09 15:33:22', '2025-09-09 15:33:22');
INSERT INTO `feed_spider_a_template` VALUES (45, 'div[class=id-LinkOverlay id-Teaser-el id-Teaser-el--blockStyle id-Teaser-el--varFrame id-Teaser-el--hasimage id-Teaser-el--hasrelatedOnImage  id-Teaser-el--even]', 'a', 'href', '2025-09-09 15:43:25', '2025-09-09 15:43:25');
INSERT INTO `feed_spider_a_template` VALUES (46, 'div[class=id-LinkOverlay id-Teaser-el id-Teaser-el--listLeftStyle id-Teaser-el--varDivider id-Teaser-el--hasimage  id-Teaser-el--odd]', 'a', 'href', '2025-09-09 15:45:20', '2025-09-09 15:45:20');
INSERT INTO `feed_spider_a_template` VALUES (47, 'div[class=id-LinkOverlay id-Teaser-el id-Teaser-el--blockStyle  id-Teaser-el--hasimage id-Teaser-el--hasrelatedOnImage  id-Teaser-el--even]', 'a', 'href', '2025-09-09 15:46:04', '2025-09-09 15:46:04');
INSERT INTO `feed_spider_a_template` VALUES (48, 'div[class=id-LinkOverlay id-Teaser-el id-Teaser-el--blockStyle  id-Teaser-el--hasimage id-Teaser-el--hasrelatedOnImage  id-Teaser-el--odd]', 'a', 'href', '2025-09-09 15:57:23', '2025-09-09 15:57:23');
INSERT INTO `feed_spider_a_template` VALUES (49, 'div.kick__liveblog--main_item-content>h2', 'a', 'href', '2025-09-09 16:00:02', '2025-09-09 16:00:02');
INSERT INTO `feed_spider_a_template` VALUES (50, 'section[class=rubric-teasers overview__rubric-teasers]', 'a.teaser__link', 'href', '2025-09-09 16:16:28', '2025-09-09 16:16:28');
INSERT INTO `feed_spider_a_template` VALUES (51, 'aside.left-col>div.teasers', 'a.teaser__link', 'href', '2025-09-09 16:17:23', '2025-09-09 16:17:23');
INSERT INTO `feed_spider_a_template` VALUES (52, 'article[class=teaser teaser--plaintext group-teaserlist__item group-teaserlist__item--teaser-plaintext item--context-group-teaserlist]', 'a[class=teaser__link teaser__link--overlay]', 'href', '2025-09-09 16:22:12', '2025-09-09 16:22:12');
INSERT INTO `feed_spider_a_template` VALUES (53, 'div.list-item', 'a', 'href', '2025-09-09 16:49:01', '2025-09-09 16:49:01');
INSERT INTO `feed_spider_a_template` VALUES (54, '', 'a[class=Link_link__mGpGY Teaser_link__WPoAd]', 'href', '2025-09-09 16:54:23', '2025-09-09 16:54:23');
INSERT INTO `feed_spider_a_template` VALUES (55, 'li[class=alice-teaser-list-item]', 'a.alice-teaser-link', 'href', '2025-09-09 17:02:58', '2025-09-09 17:02:58');
INSERT INTO `feed_spider_a_template` VALUES (56, 'div[class=id-LinkOverlay id-Teaser-el id-Teaser-el--blockStyle id-Teaser-el--varFrame id-Teaser-el--hasimage id-Teaser-el--hasrelatedOnImage  id-Teaser-el--odd]', 'a', 'href', '2025-09-09 17:08:39', '2025-09-09 17:08:39');
INSERT INTO `feed_spider_a_template` VALUES (58, 'div.teaser__text-content', 'a', 'href', '2025-09-09 17:17:28', '2025-09-09 17:17:28');
INSERT INTO `feed_spider_a_template` VALUES (59, '', 'a[class=sc-1deaf193-11 gDiDgb]', 'href', '2025-09-09 17:22:12', '2025-09-09 17:22:12');
INSERT INTO `feed_spider_a_template` VALUES (60, 'article.post', 'a', 'href', '2025-09-09 17:25:01', '2025-09-09 17:25:01');
INSERT INTO `feed_spider_a_template` VALUES (61, '', 'a[aria-label=Zur Story]', 'href', '2025-09-09 17:28:17', '2025-09-09 17:28:17');
INSERT INTO `feed_spider_a_template` VALUES (62, 'div[class=relative]', 'a', 'href', '2025-09-09 17:38:25', '2025-09-09 17:38:25');
INSERT INTO `feed_spider_a_template` VALUES (63, 'div[data-testid=related-article-teaser-group]', 'a', 'href', '2025-09-09 17:43:53', '2025-09-09 17:43:53');
INSERT INTO `feed_spider_a_template` VALUES (64, 'li.rubric-page__item._article, li.rubric-page__item._news', 'a', 'href', '2025-09-09 18:42:49', '2025-09-09 18:42:49');
INSERT INTO `feed_spider_a_template` VALUES (65, 'div.list__item', 'a', 'href', '2025-09-09 18:45:38', '2025-09-09 18:45:38');
INSERT INTO `feed_spider_a_template` VALUES (66, 'div.list_item', 'a', 'href', '2025-09-09 18:49:41', '2025-09-09 18:49:41');
INSERT INTO `feed_spider_a_template` VALUES (67, 'div.sc-1tputnk-12', 'a', 'href', '2025-09-09 19:03:44', '2025-09-09 19:03:44');
INSERT INTO `feed_spider_a_template` VALUES (68, '', 'a.b_ear.m_techlisting', 'href', '2025-09-09 19:08:06', '2025-09-09 19:08:06');
INSERT INTO `feed_spider_a_template` VALUES (70, 'h2.post-item__title', 'a', 'href', '2025-09-09 19:18:41', '2025-09-09 19:18:41');
INSERT INTO `feed_spider_a_template` VALUES (71, '', 'a.listing-preview__content', 'href', '2025-09-09 19:21:24', '2025-09-09 19:21:24');
INSERT INTO `feed_spider_a_template` VALUES (72, 'div.rubrics-publication-block-wrapper', 'a', 'href', '2025-09-09 19:25:56', '2025-09-09 19:25:56');
INSERT INTO `feed_spider_a_template` VALUES (73, 'div.news-item', 'a[class=news-item__title _important]', 'href', '2025-09-09 19:29:16', '2025-09-09 19:29:16');
INSERT INTO `feed_spider_a_template` VALUES (74, 'div.star-summary-2', 'a', 'href', '2025-09-09 19:34:05', '2025-09-09 19:34:05');
INSERT INTO `feed_spider_a_template` VALUES (75, '', 'a.inline-flex.cursor-pointer.items-center.justify-center', 'href', '2025-09-09 20:17:34', '2025-09-09 20:17:34');
INSERT INTO `feed_spider_a_template` VALUES (76, 'div.styles_grid__LgYqR', 'a', 'href', '2025-09-09 20:32:01', '2025-09-09 20:32:01');
INSERT INTO `feed_spider_a_template` VALUES (77, 'div.list-prev__item', 'a', 'href', '2025-09-09 20:35:11', '2025-09-09 20:35:11');
INSERT INTO `feed_spider_a_template` VALUES (78, 'h3[data-qa=Title]', 'a', 'href', '2025-09-09 20:48:25', '2025-09-09 20:48:25');
INSERT INTO `feed_spider_a_template` VALUES (79, '', 'a.section_item-body-link', 'href', '2025-09-09 20:55:52', '2025-09-09 20:55:52');
INSERT INTO `feed_spider_a_template` VALUES (80, 'p.cardnews_title', 'a', 'href', '2025-09-09 20:58:57', '2025-09-09 20:58:57');
INSERT INTO `feed_spider_a_template` VALUES (81, 'section.news-item', 'a', 'href', '2025-09-09 21:04:22', '2025-09-09 21:04:22');
INSERT INTO `feed_spider_a_template` VALUES (82, 'div[class=article article__md article-md]', 'a', 'href', '2025-09-09 21:13:23', '2025-09-09 21:13:23');
INSERT INTO `feed_spider_a_template` VALUES (83, 'li.articlesSection-item', 'a', 'href', '2025-09-10 13:00:29', '2025-09-10 13:00:29');
INSERT INTO `feed_spider_a_template` VALUES (84, 'article.article-card', 'a', 'href', '2025-09-10 13:04:22', '2025-09-10 13:04:22');
INSERT INTO `feed_spider_a_template` VALUES (85, 'article.articlePreview-card', 'a', 'href', '2025-09-10 13:09:36', '2025-09-10 13:09:36');
INSERT INTO `feed_spider_a_template` VALUES (86, 'li.list__item article', 'a', 'href', '2025-09-10 13:15:52', '2025-09-10 13:15:52');
INSERT INTO `feed_spider_a_template` VALUES (87, 'article.viewListRow.richcontent', 'a', 'href', '2025-09-10 13:26:54', '2025-09-10 13:26:54');
INSERT INTO `feed_spider_a_template` VALUES (88, 'div[data-testid=ArticleList] article', 'a', 'href', '2025-09-10 13:33:00', '2025-09-10 13:33:00');
INSERT INTO `feed_spider_a_template` VALUES (89, '', 'a.IciLink.title', 'href', '2025-09-10 13:38:38', '2025-09-10 13:38:38');
INSERT INTO `feed_spider_a_template` VALUES (90, 'article', 'a.rev-main-card__link', 'href', '2025-09-10 13:43:28', '2025-09-10 13:43:28');
INSERT INTO `feed_spider_a_template` VALUES (91, 'article', 'a.link--box', 'href', '2025-09-10 13:48:28', '2025-09-10 13:48:28');
INSERT INTO `feed_spider_a_template` VALUES (92, 'main[role=main] h2.card-title', 'a', 'href', '2025-09-10 14:00:14', '2025-09-10 14:00:14');
INSERT INTO `feed_spider_a_template` VALUES (93, 'div.main-content', 'a.thumb-link', 'href', '2025-09-10 14:07:37', '2025-09-10 14:07:37');
INSERT INTO `feed_spider_a_template` VALUES (94, '', 'a.summary-item__image-link', 'href', '2025-09-10 14:12:38', '2025-09-10 14:12:38');
INSERT INTO `feed_spider_a_template` VALUES (95, 'article#landing-page>section>div.row', 'a', 'href', '2025-09-10 14:37:56', '2025-09-10 14:37:56');
INSERT INTO `feed_spider_a_template` VALUES (96, 'div#blune1,div#bloc2,div#bloc3,div#bloc4,div#bloc5', 'a', 'href', '2025-09-10 14:45:46', '2025-09-10 14:45:46');
INSERT INTO `feed_spider_a_template` VALUES (97, 'li.articlesSection-item,div.articlesSection-hero', 'a.articleCard', 'href', '2025-09-10 14:51:16', '2025-09-10 14:51:16');
INSERT INTO `feed_spider_a_template` VALUES (98, 'p.post_title', 'a', 'href', '2025-09-10 15:02:26', '2025-09-10 15:02:26');
INSERT INTO `feed_spider_a_template` VALUES (99, 'div.post-item-img ', 'span.float-image', 'data-ref', '2025-09-10 15:03:25', '2025-09-10 15:03:25');
INSERT INTO `feed_spider_a_template` VALUES (100, 'h3.nota-titulo', 'a', 'href', '2025-09-10 15:46:54', '2025-09-10 15:46:54');
INSERT INTO `feed_spider_a_template` VALUES (101, 'h2.news-title', 'a', 'href', '2025-09-10 15:50:00', '2025-09-10 15:50:00');
INSERT INTO `feed_spider_a_template` VALUES (102, 'div[class=c-grid b-top-table-list] article,div[class=b-results-list b-results-list--show-image]', 'a', 'href', '2025-09-10 15:56:06', '2025-09-10 15:56:06');
INSERT INTO `feed_spider_a_template` VALUES (103, 'div.paginated-list article', 'a[itemprop=url]', 'href', '2025-09-10 16:00:30', '2025-09-10 16:00:30');
INSERT INTO `feed_spider_a_template` VALUES (104, 'div.LargePromo-media', 'a', 'href', '2025-09-10 16:07:59', '2025-09-10 16:07:59');
INSERT INTO `feed_spider_a_template` VALUES (105, '', 'a.item', 'href', '2025-09-10 16:13:08', '2025-09-10 16:13:08');
INSERT INTO `feed_spider_a_template` VALUES (107, 'div[class=b-results-list b-results-list--show-image]', 'a.c-link', 'href', '2025-09-10 16:19:46', '2025-09-10 16:19:46');
INSERT INTO `feed_spider_a_template` VALUES (108, 'div.PagePromo-title.padding-Notmusa', 'a', 'href', '2025-09-10 16:23:24', '2025-09-10 16:23:24');
INSERT INTO `feed_spider_a_template` VALUES (109, '', 'a.ei-result-item-anchor', 'href', '2025-09-10 16:28:09', '2025-09-10 16:28:09');
INSERT INTO `feed_spider_a_template` VALUES (110, 'div.Promo-title', 'a', 'href', '2025-09-10 16:34:32', '2025-09-10 16:34:32');
INSERT INTO `feed_spider_a_template` VALUES (111, 'div[class=b-results-list b-results-list--show-image],article.b-top-table-list-xl div.c-stack', 'a', 'href', '2025-09-10 16:39:30', '2025-09-10 16:39:30');
INSERT INTO `feed_spider_a_template` VALUES (112, 'header.widget-article-header', 'a', 'href', '2025-09-10 16:52:49', '2025-09-10 16:52:49');
INSERT INTO `feed_spider_a_template` VALUES (113, 'h2.entry-title', 'a', 'href', '2025-09-10 16:55:59', '2025-09-10 16:55:59');
INSERT INTO `feed_spider_a_template` VALUES (114, 'h2[class=Card-Title Card-Title]', 'a', 'href', '2025-09-10 16:58:38', '2025-09-10 16:58:38');
INSERT INTO `feed_spider_a_template` VALUES (115, 'article.nota.nota--linea', 'a', 'href', '2025-09-10 17:02:52', '2025-09-10 17:02:52');
INSERT INTO `feed_spider_a_template` VALUES (116, 'section[class=piece news standard  grid  grid] div.headline-title', 'a', 'href', '2025-09-10 17:06:09', '2025-09-10 17:06:09');
INSERT INTO `feed_spider_a_template` VALUES (117, '', 'a.img-holder', 'href', '2025-09-10 18:59:27', '2025-09-10 18:59:27');
INSERT INTO `feed_spider_a_template` VALUES (118, 'div.card-text-wrapper', 'a', 'href', '2025-09-10 19:04:09', '2025-09-10 19:04:09');
INSERT INTO `feed_spider_a_template` VALUES (119, 'div.new3sondk-news-card,div.new3card-reklam', 'a', 'href', '2025-09-10 19:12:59', '2025-09-10 19:12:59');
INSERT INTO `feed_spider_a_template` VALUES (120, 'div.post-item.ia,div.item.has-title', 'a', 'href', '2025-09-10 19:17:02', '2025-09-10 19:17:02');
INSERT INTO `feed_spider_a_template` VALUES (121, 'div[class=card card--tiny],div.swiper-slide.swiper-slide-active', 'a', 'href', '2025-09-10 19:20:39', '2025-09-10 19:20:39');
INSERT INTO `feed_spider_a_template` VALUES (122, '', 'a.news-box,a.headline-slider-item.slick-slide', 'href', '2025-09-10 19:25:15', '2025-09-10 19:25:15');
INSERT INTO `feed_spider_a_template` VALUES (123, '', 'a.line-clamp-2', 'href', '2025-09-10 19:29:16', '2025-09-10 19:29:16');
INSERT INTO `feed_spider_a_template` VALUES (124, 'ul[class=news-list ml-md-0]', 'a', 'href', '2025-09-10 19:32:56', '2025-09-10 19:32:56');
INSERT INTO `feed_spider_a_template` VALUES (125, 'div[class=w-full h-auto self-stretch dark:border-gray-800 mb-5]', 'a', 'href', '2025-09-10 19:39:12', '2025-09-10 19:39:12');
INSERT INTO `feed_spider_a_template` VALUES (126, 'div.list-thumb-news.list-thumb-news mb-5 div.item,div.news-card,div[class=row row-cols-1 row-cols-lg-2]', 'a', 'href', '2025-09-10 19:43:07', '2025-09-10 19:43:07');
INSERT INTO `feed_spider_a_template` VALUES (127, 'div[class=col-12 col-md-6]', 'a', 'href', '2025-09-10 19:48:12', '2025-09-10 19:48:12');
INSERT INTO `feed_spider_a_template` VALUES (128, 'section[class=content-items grid gap:4x section]', 'a.item', 'href', '2025-09-10 19:52:34', '2025-09-10 19:53:52');
INSERT INTO `feed_spider_a_template` VALUES (129, '', 'a.box.only-text,a.image-right_text-left,a.swiper-slide', 'href', '2025-09-10 20:01:13', '2025-09-10 20:01:13');
INSERT INTO `feed_spider_a_template` VALUES (130, '', 'a.outline-none', 'href', '2025-09-10 20:08:07', '2025-09-10 20:08:07');
INSERT INTO `feed_spider_a_template` VALUES (131, 'article', 'a.cursor-pointer', 'href', '2025-09-10 20:15:10', '2025-09-10 20:15:10');
INSERT INTO `feed_spider_a_template` VALUES (133, 'div.article-image', 'a', 'href', '2025-09-10 20:22:04', '2025-09-10 20:22:04');
INSERT INTO `feed_spider_a_template` VALUES (134, '', 'a.sequenceContainerTag', 'href', '2025-09-10 20:25:17', '2025-09-10 20:25:17');
INSERT INTO `feed_spider_a_template` VALUES (135, 'h1.fqm-post-title,h1.fqm-leading-post-title', 'a', 'href', '2025-09-10 20:28:00', '2025-09-10 20:28:00');
INSERT INTO `feed_spider_a_template` VALUES (136, '', 'a.lancio-h__cont', 'href', '2025-09-10 20:30:56', '2025-09-10 20:30:56');
INSERT INTO `feed_spider_a_template` VALUES (137, 'h3.launch-item__header', 'a', 'href', '2025-09-10 20:34:39', '2025-09-10 20:34:39');
INSERT INTO `feed_spider_a_template` VALUES (138, 'h3.aprev-title', 'a', 'href', '2025-09-10 20:37:34', '2025-09-10 20:37:34');
INSERT INTO `feed_spider_a_template` VALUES (139, 'section#main-content h2.titolo', 'a', 'href', '2025-09-10 20:41:01', '2025-09-10 20:41:01');
INSERT INTO `feed_spider_a_template` VALUES (140, 'h3.title', 'a', 'href', '2025-09-10 20:43:49', '2025-09-10 20:43:49');
INSERT INTO `feed_spider_a_template` VALUES (141, 'div.Slots_autoWidget___Uykt header', 'a', 'href', '2025-09-10 20:47:02', '2025-09-10 20:47:02');
INSERT INTO `feed_spider_a_template` VALUES (142, 'h1.u-mb-small', 'a', 'href', '2025-09-10 20:49:38', '2025-09-10 20:49:38');
INSERT INTO `feed_spider_a_template` VALUES (143, 'ul[class=section-list pagination] figure.media-left', 'a', 'href', '2025-09-10 20:54:30', '2025-09-10 20:54:30');
INSERT INTO `feed_spider_a_template` VALUES (144, 'article.fvideogioco', 'a', 'href', '2025-09-10 20:58:40', '2025-09-10 20:58:40');
INSERT INTO `feed_spider_a_template` VALUES (145, 'div.tcc-list-news', 'a', 'href', '2025-09-10 21:07:36', '2025-09-10 21:07:36');
INSERT INTO `feed_spider_a_template` VALUES (146, 'article', 'a.g1-frame', 'href', '2025-09-10 21:14:37', '2025-09-10 21:14:37');
INSERT INTO `feed_spider_a_template` VALUES (147, 'div.list', 'a', 'href', '2025-09-10 21:17:24', '2025-09-10 21:17:24');
INSERT INTO `feed_spider_a_template` VALUES (148, 'h2.voc-title', 'a', 'href', '2025-09-11 14:19:32', '2025-09-11 14:19:32');
INSERT INTO `feed_spider_a_template` VALUES (149, 'p.article__title,h3.article__title', 'a', 'href', '2025-09-11 14:25:41', '2025-09-11 14:25:41');
INSERT INTO `feed_spider_a_template` VALUES (150, 'div.promo-image', 'a', 'href', '2025-09-11 14:30:03', '2025-09-11 14:30:03');
INSERT INTO `feed_spider_a_template` VALUES (151, 'article div.nota__media ', 'a', 'href', '2025-09-11 14:37:29', '2025-09-11 14:37:29');
INSERT INTO `feed_spider_a_template` VALUES (152, 'div.articleImage ', 'a', 'href', '2025-09-11 14:43:31', '2025-09-11 14:43:31');
INSERT INTO `feed_spider_a_template` VALUES (153, 'header', 'a.ue-c-cover-content__link', 'href', '2025-09-11 14:47:05', '2025-09-11 14:47:05');
INSERT INTO `feed_spider_a_template` VALUES (154, 'main div.b-b.b-au_b article h2.c_t,main div.b-au_o article h2.c_t ', 'a', 'href', '2025-09-11 15:00:21', '2025-09-11 15:00:21');
INSERT INTO `feed_spider_a_template` VALUES (155, 'article.ho-theme.ho-card', 'a', 'href', '2025-09-11 15:08:33', '2025-09-11 15:08:33');
INSERT INTO `feed_spider_a_template` VALUES (156, '', 'a.feed-list-card', 'href', '2025-09-11 15:11:51', '2025-09-11 15:11:51');
INSERT INTO `feed_spider_a_template` VALUES (157, 'div.container__main>div[class=container] h2.article__title', 'a', 'href', '2025-09-11 16:44:09', '2025-09-11 16:44:09');
INSERT INTO `feed_spider_a_template` VALUES (158, 'div.article-details h2.title ', 'a', 'href', '2025-09-11 16:52:17', '2025-09-11 16:52:17');
INSERT INTO `feed_spider_a_template` VALUES (159, 'h3.entry-title.td-module-title ', 'a', 'href', '2025-09-11 16:57:20', '2025-09-11 16:57:20');
INSERT INTO `feed_spider_a_template` VALUES (160, 'h2.abstract-title', 'a', 'href', '2025-09-11 17:55:34', '2025-09-11 17:55:34');
INSERT INTO `feed_spider_a_template` VALUES (161, '', 'a.tracked-offpage', 'href', '2025-09-11 17:58:37', '2025-09-11 17:58:37');
INSERT INTO `feed_spider_a_template` VALUES (162, 'h2.art__title', 'a', 'href', '2025-09-11 18:01:14', '2025-09-11 18:01:14');
INSERT INTO `feed_spider_a_template` VALUES (163, 'article.ep-article.lateral h2.title', 'a', 'href', '2025-09-11 18:12:20', '2025-09-11 18:12:20');
INSERT INTO `feed_spider_a_template` VALUES (164, 'article.b-ultimas__item', 'div.b-ultimas__item-author>a', 'href', '2025-09-11 18:20:25', '2025-09-11 18:20:25');
INSERT INTO `feed_spider_a_template` VALUES (165, 'div[class=article b-post-teaser]', 'a.container', 'href', '2025-09-11 18:24:10', '2025-09-11 18:24:10');
INSERT INTO `feed_spider_a_template` VALUES (166, '', 'a.hero__caption,a.widget__title', 'href', '2025-09-11 18:41:31', '2025-09-11 18:41:31');
INSERT INTO `feed_spider_a_template` VALUES (167, '', 'a.o-link.no-decoration', 'href', '2025-09-11 18:57:29', '2025-09-11 18:57:29');
INSERT INTO `feed_spider_a_template` VALUES (168, '', 'a.ods-c-card__link', 'href', '2025-09-11 19:01:53', '2025-09-11 19:01:53');
INSERT INTO `feed_spider_a_template` VALUES (169, 'div[class=td_block_inner td-mc1-wrap]', 'a.td-image-wrap', 'href', '2025-09-12 17:48:50', '2025-09-12 17:56:27');

SET FOREIGN_KEY_CHECKS = 1;
