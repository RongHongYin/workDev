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

 Date: 15/09/2025 18:33:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_queue_tasks
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_queue_tasks`;
CREATE TABLE `feed_spider_queue_tasks`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '队列任务ID',
  `queueid` int NOT NULL COMMENT '队列ID',
  `taskid` int NOT NULL COMMENT '任务ID',
  `taskname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `publisher` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发布者',
  `priority` int NULL DEFAULT 5 COMMENT '优先级：1-10，数字越小优先级越高',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'PENDING' COMMENT '状态：PENDING-待执行，RUNNING-执行中，SUCCESS-执行成功，FAILED-执行失败，CANCELLED-已取消',
  `retrycount` int NULL DEFAULT 0 COMMENT '重试次数',
  `maxretrycount` int NULL DEFAULT 3 COMMENT '最大重试次数',
  `scheduledtime` datetime NULL DEFAULT NULL COMMENT '计划执行时间',
  `starttime` datetime NULL DEFAULT NULL COMMENT '开始执行时间',
  `endtime` datetime NULL DEFAULT NULL COMMENT '结束执行时间',
  `errormessage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '错误信息',
  `createdtime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_queueid`(`queueid` ASC) USING BTREE,
  INDEX `idx_taskid`(`taskid` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE,
  INDEX `idx_priority`(`priority` ASC) USING BTREE,
  INDEX `idx_scheduledtime`(`scheduledtime` ASC) USING BTREE,
  INDEX `idx_queue_tasks_status_scheduled_priority_created`(`status` ASC, `scheduledtime` ASC, `priority` ASC, `createdtime` ASC) USING BTREE,
  INDEX `idx_queue_tasks_status`(`status` ASC) USING BTREE,
  INDEX `idx_queue_tasks_scheduled`(`scheduledtime` ASC) USING BTREE,
  INDEX `idx_queue_tasks_priority_created`(`priority` ASC, `createdtime` ASC) USING BTREE,
  CONSTRAINT `feed_spider_queue_tasks_ibfk_1` FOREIGN KEY (`queueid`) REFERENCES `feed_spider_task_queues` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13095 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '队列任务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_queue_tasks
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
