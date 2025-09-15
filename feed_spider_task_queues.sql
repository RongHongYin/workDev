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

 Date: 15/09/2025 18:33:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_task_queues
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_task_queues`;
CREATE TABLE `feed_spider_task_queues`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '队列ID',
  `queuename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '队列名称',
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国家代码',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '队列描述',
  `status` tinyint NULL DEFAULT 1 COMMENT '状态：1-启用，0-禁用',
  `createdtime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `queuename`(`queuename` ASC) USING BTREE,
  INDEX `idx_queuename`(`queuename` ASC) USING BTREE,
  INDEX `idx_country`(`country` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 452 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务队列表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_task_queues
-- ----------------------------
INSERT INTO `feed_spider_task_queues` VALUES (443, 'spider:queue:es', 'es', '默认es国家队列', 1, '2025-09-15 18:11:29', '2025-09-15 18:11:29');
INSERT INTO `feed_spider_task_queues` VALUES (444, 'spider:queue:de', 'de', '默认de国家队列', 1, '2025-09-15 18:11:29', '2025-09-15 18:11:29');
INSERT INTO `feed_spider_task_queues` VALUES (445, 'spider:queue:fr', 'fr', '默认fr国家队列', 1, '2025-09-15 18:11:29', '2025-09-15 18:11:29');
INSERT INTO `feed_spider_task_queues` VALUES (446, 'spider:queue:pl', 'pl', '默认pl国家队列', 1, '2025-09-15 18:11:29', '2025-09-15 18:11:29');
INSERT INTO `feed_spider_task_queues` VALUES (447, 'spider:queue:br', 'br', '默认br国家队列', 1, '2025-09-15 18:11:29', '2025-09-15 18:11:29');
INSERT INTO `feed_spider_task_queues` VALUES (448, 'spider:queue:mx', 'mx', '默认mx国家队列', 1, '2025-09-15 18:11:29', '2025-09-15 18:11:29');
INSERT INTO `feed_spider_task_queues` VALUES (449, 'spider:queue:ru', 'ru', '默认ru国家队列', 1, '2025-09-15 18:11:29', '2025-09-15 18:11:29');
INSERT INTO `feed_spider_task_queues` VALUES (450, 'spider:queue:it', 'it', '默认it国家队列', 1, '2025-09-15 18:11:29', '2025-09-15 18:11:29');
INSERT INTO `feed_spider_task_queues` VALUES (451, 'spider:queue:tr', 'tr', '默认tr国家队列', 1, '2025-09-15 18:11:29', '2025-09-15 18:11:29');

SET FOREIGN_KEY_CHECKS = 1;
