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

 Date: 15/09/2025 18:33:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_task_resource_monitor
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_task_resource_monitor`;
CREATE TABLE `feed_spider_task_resource_monitor`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `taskid` int NOT NULL COMMENT '任务ID',
  `starttime` bigint NOT NULL COMMENT '开始时间戳',
  `endtime` bigint NULL DEFAULT NULL COMMENT '结束时间戳',
  `duration` bigint NULL DEFAULT NULL COMMENT '执行时长(毫秒)',
  `cpuusage` double NULL DEFAULT NULL COMMENT 'CPU使用率(%)',
  `systemcpuusage` double NULL DEFAULT NULL COMMENT '系统整体CPU使用率(%)',
  `memoryusage` bigint NULL DEFAULT NULL COMMENT '内存使用量(字节)',
  `heapmemoryusage` bigint NULL DEFAULT NULL COMMENT '堆内存使用量(字节)',
  `processedurls` int NULL DEFAULT 0 COMMENT '处理的URL数量',
  `processedarticles` int NULL DEFAULT 0 COMMENT '处理的文章数量',
  `httprequests` int NULL DEFAULT 0 COMMENT 'HTTP请求次数',
  `avgresponsetime` bigint NULL DEFAULT NULL COMMENT '平均响应时间(毫秒)',
  `sqlexecutions` bigint NULL DEFAULT 0 COMMENT 'SQL执行次数',
  `sqltotaltime` bigint NULL DEFAULT NULL COMMENT 'SQL总耗时(毫秒)',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'RUNNING' COMMENT '执行状态',
  `errormessage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '错误信息',
  `threadcputime` bigint NULL DEFAULT NULL COMMENT '线程CPU时间',
  `lastupdatetime` bigint NULL DEFAULT NULL COMMENT '上次更新时间',
  `processid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '进程ID',
  `createdtime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_taskid`(`taskid` ASC) USING BTREE,
  INDEX `idx_createdtime`(`createdtime` ASC) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 222 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务资源监控表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_task_resource_monitor
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
