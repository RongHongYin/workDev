/*
 Navicat Premium Dump SQL

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80042 (8.0.42)
 Source Host           : localhost:3306
 Source Schema         : feed

 Target Server Type    : MySQL
 Target Server Version : 80042 (8.0.42)
 File Encoding         : 65001

 Date: 17/08/2025 19:21:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for api_perf
-- ----------------------------
DROP TABLE IF EXISTS `api_perf`;
CREATE TABLE `api_perf`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ts` bigint UNSIGNED NOT NULL DEFAULT 0,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `uri` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `request` bigint UNSIGNED NOT NULL DEFAULT 0,
  `cost` bigint UNSIGNED NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_ts_uri_method`(`ts` ASC, `uri` ASC, `method` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142405 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of api_perf
-- ----------------------------
INSERT INTO `api_perf` VALUES (142373, 1753945200000, 'GET', '/supply/item/', 1, 13, '2025-07-31 16:00:13', '2025-07-31 16:00:13');
INSERT INTO `api_perf` VALUES (142374, 1753945200000, 'GET', '/feed/m/ve/list', 1, 58, '2025-07-31 16:00:13', '2025-07-31 16:00:13');
INSERT INTO `api_perf` VALUES (142375, 1753945200000, 'POST', '/supply/item/add', 3, 737, '2025-07-31 16:00:13', '2025-07-31 16:00:13');
INSERT INTO `api_perf` VALUES (142376, 1753945200000, 'GET', '/favicon.ico', 1, 3, '2025-07-31 16:00:13', '2025-07-31 16:00:13');
INSERT INTO `api_perf` VALUES (142377, 1753945200000, 'GET', '/supply/item/add', 1, 27, '2025-07-31 16:00:13', '2025-07-31 16:00:13');
INSERT INTO `api_perf` VALUES (142378, 1753952400000, 'POST', '/supply/item/add', 166, 4203, '2025-07-31 18:09:49', '2025-07-31 18:09:49');
INSERT INTO `api_perf` VALUES (142379, 1754384400000, 'GET', '/feed/m/ve/list', 3, 160, '2025-08-05 18:01:45', '2025-08-05 18:01:45');
INSERT INTO `api_perf` VALUES (142380, 1754384400000, 'GET', '/favicon.ico', 1, 9, '2025-08-05 18:01:45', '2025-08-05 18:01:45');
INSERT INTO `api_perf` VALUES (142381, 1754881200000, 'GET', '/feed/detail', 1, 52, '2025-08-11 12:08:23', '2025-08-11 12:08:23');
INSERT INTO `api_perf` VALUES (142382, 1754881200000, 'GET', '/.well-known/appspecific/com.chrome.devtools.json', 1, 9, '2025-08-11 12:08:24', '2025-08-11 12:08:24');
INSERT INTO `api_perf` VALUES (142383, 1754884800000, 'POST', '/feed/open', 5, 167, '2025-08-11 13:08:23', '2025-08-11 13:08:23');
INSERT INTO `api_perf` VALUES (142384, 1754884800000, 'GET', '/feed/detail', 5, 25, '2025-08-11 13:08:23', '2025-08-11 13:08:23');
INSERT INTO `api_perf` VALUES (142385, 1754884800000, 'OPTIONS', '/feed/open', 5, 36, '2025-08-11 13:08:23', '2025-08-11 13:08:23');
INSERT INTO `api_perf` VALUES (142386, 1754888400000, 'POST', '/feed/open', 39, 353, '2025-08-11 14:08:23', '2025-08-11 14:08:23');
INSERT INTO `api_perf` VALUES (142387, 1754888400000, 'GET', '/feed/detail', 39, 179, '2025-08-11 14:08:23', '2025-08-11 14:08:23');
INSERT INTO `api_perf` VALUES (142388, 1754888400000, 'OPTIONS', '/feed/open', 39, 35, '2025-08-11 14:08:23', '2025-08-11 14:08:23');
INSERT INTO `api_perf` VALUES (142389, 1754888400000, 'GET', '/feed/detail/recData', 28, 187, '2025-08-11 14:08:23', '2025-08-11 14:08:23');
INSERT INTO `api_perf` VALUES (142390, 1754888400000, 'OPTIONS', '/feed/reveal', 28, 7, '2025-08-11 14:08:23', '2025-08-11 14:08:23');
INSERT INTO `api_perf` VALUES (142391, 1754888400000, 'POST', '/feed/reveal', 28, 219, '2025-08-11 14:08:23', '2025-08-11 14:08:23');
INSERT INTO `api_perf` VALUES (142392, 1754906400000, 'POST', '/feed/open', 62, 693, '2025-08-11 19:03:14', '2025-08-11 19:03:14');
INSERT INTO `api_perf` VALUES (142393, 1754906400000, 'GET', '/feed/imgtobase64', 7, 80, '2025-08-11 19:03:14', '2025-08-11 19:03:14');
INSERT INTO `api_perf` VALUES (142394, 1754906400000, 'GET', '/feed/detail', 62, 390, '2025-08-11 19:03:14', '2025-08-11 19:03:14');
INSERT INTO `api_perf` VALUES (142395, 1754906400000, 'OPTIONS', '/feed/open', 62, 43, '2025-08-11 19:03:14', '2025-08-11 19:03:14');
INSERT INTO `api_perf` VALUES (142396, 1754906400000, 'GET', '/feed/detail/recData', 31, 272, '2025-08-11 19:03:14', '2025-08-11 19:03:14');
INSERT INTO `api_perf` VALUES (142397, 1754906400000, 'OPTIONS', '/feed/reveal', 31, 6, '2025-08-11 19:03:14', '2025-08-11 19:03:14');
INSERT INTO `api_perf` VALUES (142398, 1754906400000, 'POST', '/feed/reveal', 31, 292, '2025-08-11 19:03:14', '2025-08-11 19:03:14');
INSERT INTO `api_perf` VALUES (142399, 1754964000000, 'GET', '/supply/item/add', 1, 36, '2025-08-12 11:08:30', '2025-08-12 11:08:30');
INSERT INTO `api_perf` VALUES (142400, 1754978400000, 'POST', '/supply/item/add', 4, 191, '2025-08-12 15:04:47', '2025-08-12 15:04:47');
INSERT INTO `api_perf` VALUES (142401, 1754978400000, 'GET', '/', 1, 64, '2025-08-12 15:04:47', '2025-08-12 15:04:47');
INSERT INTO `api_perf` VALUES (142402, 1754978400000, 'GET', '/favicon.ico', 1, 2, '2025-08-12 15:04:47', '2025-08-12 15:04:47');
INSERT INTO `api_perf` VALUES (142403, 1754978400000, 'GET', '/supply/item/add', 1, 38, '2025-08-12 15:04:47', '2025-08-12 15:04:47');
INSERT INTO `api_perf` VALUES (142404, 1755244800000, 'POST', '/supply/item/add', 62, 1093, '2025-08-15 17:04:11', '2025-08-15 17:04:11');

-- ----------------------------
-- Table structure for cmx_upv
-- ----------------------------
DROP TABLE IF EXISTS `cmx_upv`;
CREATE TABLE `cmx_upv`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ts` bigint UNSIGNED NOT NULL DEFAULT 0,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `uri` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `request` bigint UNSIGNED NOT NULL DEFAULT 0,
  `cost` bigint UNSIGNED NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_ts_uri_method`(`ts` ASC, `uri` ASC, `method` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cmx_upv
-- ----------------------------

-- ----------------------------
-- Table structure for common_stats
-- ----------------------------
DROP TABLE IF EXISTS `common_stats`;
CREATE TABLE `common_stats`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ts` bigint UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'uid',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_category_ts_name`(`category` ASC, `ts` ASC, `name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 678822 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of common_stats
-- ----------------------------

-- ----------------------------
-- Table structure for crawl_task
-- ----------------------------
DROP TABLE IF EXISTS `crawl_task`;
CREATE TABLE `crawl_task`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ts` bigint UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `cost` int UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tid`(`tid` ASC) USING BTREE,
  INDEX `uk_ts`(`ts` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 777157396 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of crawl_task
-- ----------------------------

-- ----------------------------
-- Table structure for date_crawl_info
-- ----------------------------
DROP TABLE IF EXISTS `date_crawl_info`;
CREATE TABLE `date_crawl_info`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `date` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `fid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `country` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `publishTime` bigint UNSIGNED NOT NULL DEFAULT 0,
  `storeTime` bigint UNSIGNED NOT NULL DEFAULT 0,
  `pubstore` int NOT NULL DEFAULT 0,
  `site` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sourceCategory` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `sourceUrl` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tag` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签-用于区分抓取方',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_fid`(`fid` ASC) USING BTREE,
  INDEX `idx_date_country_site`(`date` ASC, `country` ASC, `site` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143003872 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of date_crawl_info
-- ----------------------------
INSERT INTO `date_crawl_info` VALUES (143003283, '20250731', 'd71c88f233114704aee674b6b1106df1', 'es', 1753674443, 1753947808, 0, 'abc.es', '[\"España_Casa Real\"]', 'https://www.abc.es/espana/casa-real/felipe-inaugura-palma-agenda-institucional-autoridades-baleares-20250728114722-nt.html', '2025-07-31 15:43:28', '2025-07-31 15:43:28', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003284, '20250731', '6ff5b27ff6b65e3035d9d472869594e6', 'es', 1753606324, 1753947827, 0, 'abc.es', '[\"España_Casa Real\"]', 'https://www.abc.es/espana/casa-real/reencuentro-rey-tripulacion-aifos-inaugura-vacaciones-oficiales-20250727165203-nt.html', '2025-07-31 15:43:47', '2025-07-31 15:43:47', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003285, '20250731', '6c3c15d1aa197e13c70cdcaa99047fe1', 'es', 1753619163, 1753947845, 0, 'abc.es', '[\"España_Casa Real\"]', 'https://www.abc.es/espana/casa-real/princesa-leonor-infanta-sofia-apoyan-espana-final-20250727202603-nt.html', '2025-07-31 15:44:05', '2025-07-31 15:44:05', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003286, '20250731', 'ee153aa35dc94224af4deee0d7e0a4ec', 'es', 1753875166, 1753950834, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/energia/plantas-termosolares-pierden-cada-vez-dinero-asi-que-ahora-tienen-dos-trabajos-generar-energia-cazar-asteroides', '2025-07-31 16:33:54', '2025-07-31 16:33:54', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003287, '20250731', 'ee1f65a3d97f7e59d31b756cf65d8e34', 'es', 1753788600, 1753950835, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/2023-alguien-hackeo-gps-20-aviones-satelites-europeos-galileo-ahora-tienen-firma-digital-para-evitarlo', '2025-07-31 16:33:55', '2025-07-31 16:33:55', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003288, '20250731', '1ad383ece6abf42306bea4878ac97c89', 'es', 1753772400, 1753950836, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/trafico-espacial-empieza-a-ser-caotico-starlink-ha-hecho-144-000-maniobras-seis-meses-para-evitar-colisiones', '2025-07-31 16:33:56', '2025-07-31 16:33:56', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003289, '20250731', 'cf3b555fb297d77eb6a417c190b0c930', 'es', 1753768838, 1753950837, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/china-esta-construyendo-telescopio-grande-mundo-pregunta-que-esta-haciendo-secreto', '2025-07-31 16:33:57', '2025-07-31 16:33:57', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003290, '20250731', 'e67c5c640f43a29b4916491062f7ecf9', 'es', 1753707600, 1753950837, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/decision-que-demuestra-poder-precedentes-elon-musk-dejar-internet-a-ejercito-mitad-batalla', '2025-07-31 16:33:57', '2025-07-31 16:33:57', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003291, '20250731', '59dcae2bb2a53acb296699b2874fdfec', 'es', 1753704000, 1753950838, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/galileo-galilei-siglo-xxi-senor-desconocido-que-ha-descubierto-lunas-que-nadie-va-a-descubrir', '2025-07-31 16:33:58', '2025-07-31 16:33:58', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003292, '20250731', 'f2258835ef0e0c4a4f2702d9a54af1f7', 'es', 1753686000, 1753950839, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/fin-hemos-visto-que-materia-antimateria-no-reflejo-perfecto-primer-paso-para-entender-que-existimos', '2025-07-31 16:33:59', '2025-07-31 16:33:59', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003293, '20250731', 'cd9ecaa4ceac5e49e72ec61439486687', 'es', 1753510560, 1753950840, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/engano-a-todo-mundo-haciendose-pasar-astronauta-durante-anos-no-tenia-carnet-conducir', '2025-07-31 16:34:00', '2025-07-31 16:34:00', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003294, '20250731', 'd44481ad9b0ef5850036d21183e735cf', 'es', 1753473600, 1753950840, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/tenemos-solucion-a-problema-que-nos-llevaba-intrigando-400-anos-que-algunas-manchas-solares-resisten-que-otras', '2025-07-31 16:34:00', '2025-07-31 16:34:00', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003295, '20250731', '5e7124bc558390a2505a5d8495fea0e3', 'es', 1753444836, 1753950841, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/taiwan-china-plan-para-fabricar-semiconductores-puros-mundo-irse-al-espacio', '2025-07-31 16:34:01', '2025-07-31 16:34:01', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003296, '20250731', 'c78de63653ea9fc7a186c34a703f82fa', 'es', 1753360200, 1753950842, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/ayer-evite-tomar-cafe-desagradable-averia-bano-iss-obliga-a-astronautas-a-extremar-precauciones', '2025-07-31 16:34:02', '2025-07-31 16:34:02', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003297, '20250731', '3db688790c0111802a2bc252e70aecae', 'es', 1753336800, 1753950842, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/nasa-perdio-mejor-camara-que-tenia-jupiter-plan-suicida-ha-servido-para-recuperarla-exito', '2025-07-31 16:34:02', '2025-07-31 16:34:02', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003298, '20250731', '84c3a924ecbbf2ffde020b97c1dfa0aa', 'es', 1753270317, 1753950843, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/cometa-antiguo-que-sol-ha-invadido-sistema-solar-viejo-confiable-telescopio-hubble-tiene-fotos', '2025-07-31 16:34:03', '2025-07-31 16:34:03', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003299, '20250731', 'e81ae5cf01c1e2640d2e7dbc0434c646', 'es', 1753185900, 1753950844, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/que-spacex-ha-conseguido-starship-increible-unico-problema-que-ha-hecho-a-costa-salud-sus-empleados', '2025-07-31 16:34:04', '2025-07-31 16:34:04', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003300, '20250731', '65de522b6785c827b521fc6060b1c7fb', 'es', 1753173301, 1753950845, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/que-tipos-satelites-existen-guia-para-no-perderse-gigantesca-red-que-somos-cada-vez-dependientes', '2025-07-31 16:34:05', '2025-07-31 16:34:05', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003301, '20250731', '9b9ff57aa66f007444dd2c8207d53851', 'es', 1753167240, 1753950846, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/hoy-tierra-gira-rapido-normal-estamos-atravesando-uno-dias-cortos-toda-historia', '2025-07-31 16:34:06', '2025-07-31 16:34:06', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003302, '20250731', '1be2ba03862d9bf187ce2bb1496542b8', 'es', 1753135380, 1753950847, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/tenemos-nuevo-planeta-fosil-sistema-solar-amonite-pesimas-noticias-para-fans-planeta-nueve', '2025-07-31 16:34:07', '2025-07-31 16:34:07', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003303, '20250731', 'c2ad30e4d105dd428619acc9b1eef2f5', 'es', 1753099293, 1753950848, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/llevamos-75-anos-enviando-nuestra-ubicacion-al-espacio-darnos-cuenta-ahora-detectable-120-000-estrellas', '2025-07-31 16:34:08', '2025-07-31 16:34:08', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003304, '20250731', '22e550729d1153b773e8259a70f1193e', 'es', 1753095694, 1753950848, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/pld-space-tiene-plan-para-convertirse-fabrica-cohetes-europa-todas-piezas-han-empezado-a-encajar', '2025-07-31 16:34:08', '2025-07-31 16:34:08', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003305, '20250731', '820296b9623d97ef4b6eead9539e026a', 'es', 1753048800, 1753950849, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/mejor-momento-para-viajar-a-marte-se-decide-guadalajara-aqui-se-instalo-observatorio-neutrones-calma', '2025-07-31 16:34:09', '2025-07-31 16:34:09', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003306, '20250731', '57059c87241b14aef8af51af8f53d92d', 'es', 1753002000, 1753950851, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/italia-tiene-objetivo-que-luna-se-coma-risotto-investigan-arroz-superenano-proteinas', '2025-07-31 16:34:11', '2025-07-31 16:34:11', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003307, '20250731', '48bdb4e6822158ad83aa3bb65d7307e0', 'es', 1752919200, 1753950852, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/hemos-detectado-mayor-fusion-agujeros-negros-vista-fecha-problema-para-nuestros-modelos-teoricos', '2025-07-31 16:34:12', '2025-07-31 16:34:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003308, '20250731', '90fc22877cf92059b92a6c04fd3279b6', 'es', 1752901200, 1753950852, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/1178-monje-se-dio-cuenta-que-luna-latia-como-serpiente-herida-hoy-sabemos-que-esos-destellos', '2025-07-31 16:34:12', '2025-07-31 16:34:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003309, '20250731', '53e6eb477886d16c29c1f2319b3bcad5', 'es', 1752892200, 1753950853, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/china-acaba-abrir-primera-gasolinera-espacial-satelite-habria-repostado-a-36-000-km-a-eeuu-no-le-hace-gracia', '2025-07-31 16:34:13', '2025-07-31 16:34:13', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003310, '20250731', '57581d0fd126aa39bcf654ae8307e448', 'es', 1752843693, 1753950854, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/se-especula-suelo-marciano-trozo-grande-marte-tierra-acaba-venderse-5-3-millones-dolares', '2025-07-31 16:34:14', '2025-07-31 16:34:14', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003311, '20250731', 'fa7aa8d4b08d5f0168533f9716259ce2', 'es', 1752757200, 1753950854, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/nasa-lleva-equivocada-1986-repaso-mision-voyager-2-ha-revelado-que-urano-no-como-describen', '2025-07-31 16:34:14', '2025-07-31 16:34:14', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003312, '20250731', 'a8e0abbe6c84791647bc41bc95101155', 'es', 1752721200, 1753950855, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/meteorito-que-cayo-luna-ha-ayudado-a-resolver-misterio-que-misiones-apolo-dejaron-abierto-que-paso-volcanes-lunares', '2025-07-31 16:34:15', '2025-07-31 16:34:15', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003313, '20250731', 'df06db78a7d16058afd47f963cb36a74', 'es', 1752670919, 1753950856, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/imagenes-cercanas-al-sol-jamas-tomadas-no-solo-hipnoticas-muestran-como-se-invierte-campo-magnetico', '2025-07-31 16:34:16', '2025-07-31 16:34:16', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003314, '20250731', '2f9e8701d0da2df7101cda0a1b330716', 'es', 1752656400, 1753950857, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/unos-astronomos-analizaron-sonido-big-bang-ahora-creen-que-tierra-esta-vacio-2-000-millones-anos-luz', '2025-07-31 16:34:17', '2025-07-31 16:34:17', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003315, '20250731', '894bcee9a322c4ada882bd747eb2a7da', 'es', 1752580919, 1753950857, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/sabemos-exactamente-donde-cuando-ocurrira-eclipse-solar-largo-historia-veran-nuestros-bisnietos', '2025-07-31 16:34:17', '2025-07-31 16:34:17', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003316, '20250731', '077a051c8cf3910ec18055856e6e2087', 'es', 1752559200, 1753950858, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/ocho-personas-fueron-encerradas-dos-anos-mini-tierra-unicas-que-prosperaron-fueron-cucarachas', '2025-07-31 16:34:18', '2025-07-31 16:34:18', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003317, '20250731', 'b2c1ebd69accae5f11c4eeabb22f6f0e', 'es', 1752486300, 1753950859, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/que-paradoja-fermi-conversacion-genios-que-dio-nombre-al-mayor-enigma-universo', '2025-07-31 16:34:19', '2025-07-31 16:34:19', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003318, '20250731', '3342cd4bfd416fddea26248d7b7571de', 'es', 1752397200, 1753950859, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/eeuu-spacex-querian-revolucionar-entrega-armas-cualquier-parte-mundo-pajaro-tropical-tenia-otros-planes', '2025-07-31 16:34:19', '2025-07-31 16:34:19', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003319, '20250731', '0fb835f0742afb80dcdf17ee2778df2a', 'es', 1752310852, 1753950860, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/narcosubmarinos-a-control-remoto-como-usar-starlink-para-llevar-trafico-drogas-al-siguiente-nivel', '2025-07-31 16:34:20', '2025-07-31 16:34:20', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003320, '20250731', '7ec2cc20b7c2fd2f6e40624e1703c9e4', 'es', 1752300000, 1753950861, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/elon-musk-ha-dejado-entrever-su-proximo-objetivo-paises-que-no-fabriquen-sus-propios-drones-seran-estados-vasallo', '2025-07-31 16:34:21', '2025-07-31 16:34:21', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003321, '20250731', '6414e75d83fc24906b8e5ad439085fa2', 'es', 1752231600, 1753950862, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/pensabamos-que-viajeros-interestelares-eran-imposibles-encontrar-tecnologia-actual-se-han-descubierto-tres', '2025-07-31 16:34:22', '2025-07-31 16:34:22', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003322, '20250731', '08b36e9b8ab237f3ff88375f69d34e1b', 'es', 1752152400, 1753950862, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/hay-unica-oportunidad-11-000-anos-llegar-al-planeta-sedna-unos-italianos-quieren-usar-este-motor-nuclear', '2025-07-31 16:34:22', '2025-07-31 16:34:22', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003323, '20250731', 'd6cdd9dda4d2572a6fce2374f8a8e4d2', 'es', 1752062511, 1753950863, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/trozo-grande-marte-que-hay-tierra-no-esta-museo-laboratorio-esta-casa-subastas', '2025-07-31 16:34:23', '2025-07-31 16:34:23', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003324, '20250731', '1fa4b18f501851f56e51e8ac49920608', 'es', 1751986740, 1753950864, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/evento-raro-que-ha-presenciado-humanidad-ocurre-media-cada-billon-veces-edad-universo', '2025-07-31 16:34:24', '2025-07-31 16:34:24', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003325, '20250731', 'fd2df477563fe4102c39a3d74c274feb', 'es', 1751956281, 1753950864, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/nos-esperan-tres-eclipses-tres-anos-instituto-geografico-nacional-nos-ayuda-a-planificar-estos-eventos', '2025-07-31 16:34:24', '2025-07-31 16:34:24', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003326, '20250731', '0dd746b38fe9437047d21f8a89aa6340', 'es', 1751893213, 1753950866, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/eeuu-quiere-renunciar-a-traer-muestras-valiosas-recogidas-marte-lockheed-promete-hacerlo-mitad', '2025-07-31 16:34:26', '2025-07-31 16:34:26', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003327, '20250731', 'c69c7559824817551ea642b535e3ac43', 'es', 1751877014, 1753950867, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/nasa-encerro-a-cuatro-voluntarios-ano-simulando-su-vida-marte-que-no-falto-biblioteca-entera-juegos-ps4', '2025-07-31 16:34:27', '2025-07-31 16:34:27', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003328, '20250731', '30a099f7443ce539402899a932c1bfb5', 'es', 1751769012, 1753950867, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/unos-fisicos-creen-haber-descubierto-santo-grial-que-unifica-fisica-solucion-cuantica-para-agujeros-negros', '2025-07-31 16:34:27', '2025-07-31 16:34:27', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003329, '20250731', 'b1d596d0a47026e0c1a6ff6ef74757c1', 'es', 1751679000, 1753950868, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/que-tormentas-solares-que-sociedad-se-ha-vuelto-vulnerable-a-algo-que-lleva-ocurriendo-millones-anos', '2025-07-31 16:34:28', '2025-07-31 16:34:28', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003330, '20250731', '6235cd6c9660c60425bf332bf68ac181', 'es', 1751630400, 1753950869, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/queremos-buscar-vida-fuera-nuestro-planeta-tenemos-mision-que-cumplir-encontrar-todos-exoplanetas-que-podamos', '2025-07-31 16:34:29', '2025-07-31 16:34:29', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003331, '20250731', 'dd0c5bfc31fe389442ea0ede3d2d27f2', 'es', 1751542200, 1753950869, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/celestis-prometia-homenaje-espacial-inolvidable-capsula-europea-acabo-estrellada-restos-humanos-dentro', '2025-07-31 16:34:29', '2025-07-31 16:34:29', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003332, '20250731', '426b41a82036df10f17190be1d9d88af', 'es', 1751443200, 1753950870, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/astronomos-llevan-anos-teorizando-planetas-kamikaze-acaban-encontrar-uno-100-veces-violento-esperado', '2025-07-31 16:34:30', '2025-07-31 16:34:30', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003333, '20250731', 'a3bda0a25c0feaf8b2e525f5f1be7ba2', 'es', 1751277600, 1753950871, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/rusia-esta-desplegando-ejercito-matrioshkas-espia-espacio-satelites-que-se-dividen-satelites-para-acosar-al-enemigo', '2025-07-31 16:34:31', '2025-07-31 16:34:31', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003334, '20250731', 'b3656b8110ba623ce7ce9ae9d045c995', 'es', 1751209260, 1753950872, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/taiwan-cree-haber-encontrado-mitico-planeta-9-sistema-solar-vez-buscar-su-luz-ha-estado-buscando-su-calor', '2025-07-31 16:34:32', '2025-07-31 16:34:32', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003335, '20250731', 'faf88a7bc507db0b5f4920fbb75b8bf6', 'es', 1751191205, 1753950872, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/hemos-enviado-150-semillas-cannabis-a-darse-paseo-espacio-motivos-cientificos-supuesto', '2025-07-31 16:34:32', '2025-07-31 16:34:32', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003336, '20250731', '72347cac1607f26f964d2b18b996df45', 'es', 1751090400, 1753950873, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/astrofisico-ha-hecho-calculos-dia-corto-nuestra-vida-podria-ocurrir-proximo-mes', '2025-07-31 16:34:33', '2025-07-31 16:34:33', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003337, '20250731', '0e9c516eda9d05b29d4364e85408bf1e', 'es', 1751025600, 1753950874, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/spacex-ha-pedido-a-mexico-que-deje-invadir-su-propiedad-le-devuelva-trozos-starship-que-cayeron-pais', '2025-07-31 16:34:34', '2025-07-31 16:34:34', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003338, '20250731', '24874de60333f1d5c95713123ff28f9e', 'es', 1750899900, 1753950874, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/hay-algo-que-biologos-no-esperaban-descubrir-que-miles-millones-polillas-miran-a-estrellas-para-orientarse', '2025-07-31 16:34:34', '2025-07-31 16:34:34', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003339, '20250731', 'e9952562dc832baa246682bafc5c784e', 'es', 1750863660, 1753950875, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/tercio-espana-se-quedara-completamente-a-oscuras-durante-1-2-minutos-se-acerca-evento-astronomico-siglo', '2025-07-31 16:34:35', '2025-07-31 16:34:35', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003340, '20250731', '5b00a149494a418eaa1bd3ca8c0e549f', 'es', 1750739510, 1753950876, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/primera-vez-hemos-apuntado-al-cielo-camara-3-200-megapixeles-solo-10-horas-ha-hecho-trabajo-varios-anos', '2025-07-31 16:34:36', '2025-07-31 16:34:36', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003341, '20250731', 'f78edb931a80875ada04be4453750546', 'es', 1750485669, 1753950877, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/astrofisico-pone-duda-a-elon-musk-incluso-apocalipsis-nuclear-tierra-seria-paraiso-comparacion-marte', '2025-07-31 16:34:37', '2025-07-31 16:34:37', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003342, '20250731', '4a174850ef7cd03cde6b32c54e6b4137', 'es', 1750413600, 1753950878, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/cumulos-galacticos-inmensas-estructuras-que-reunen-decenas-galaxias-ultima-imagen-jwst-parecen-minusculos', '2025-07-31 16:34:38', '2025-07-31 16:34:38', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003343, '20250731', '8a7751ba29de99129976db0651da94f7', 'es', 1750406468, 1753950878, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/nasa-se-propuso-enviar-mujer-a-luna-haga-china-se-le-esta-complicando-cada-vez', '2025-07-31 16:34:38', '2025-07-31 16:34:38', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003344, '20250731', '9037686e9218c33c17948e14cafc584f', 'es', 1750388468, 1753950879, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/criar-lubinas-luna-rocambolesca-idea-que-esta-dando-comer-a-piscifactoria-pueblo-francia', '2025-07-31 16:34:39', '2025-07-31 16:34:39', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003345, '20250731', '1e9f36c68192ebebf17958238c352c52', 'es', 1750309200, 1753950880, 0, 'xataka.com', '[\"Ciencia_Espacio\"]', 'https://www.xataka.com/espacio/hemos-encontrado-materia-barionica-que-faltaba-universo-estaba-escondida-filamentos-red-cosmica', '2025-07-31 16:34:40', '2025-07-31 16:34:40', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003346, '20250731', '65de8ac406f5820a77e0602402a1b7dc', 'es', 1748484056, 1753951937, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/otros-dispositivos/google-quiere-replicar-sus-gafas-ia-exito-android-moviles-a-diferencia-glass-2013-ahora-tiene-sentido', '2025-07-31 16:52:17', '2025-07-31 16:52:17', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003347, '20250731', '5a2554b73b8ddeb106761bcba70f1065', 'es', 1747823400, 1753951938, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/robotica-e-ia/auriculares-relojes-inteligentes-accesorio-que-plantea-conquistar-mundo-gafas-conectadas-android-xr', '2025-07-31 16:52:18', '2025-07-31 16:52:18', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003348, '20250731', 'cf4bc5b8060a64228bbc872f7d05d85c', 'es', 1747809000, 1753951939, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/robotica-e-ia/google-ha-pegado-aceleron-carrera-ia-eso-multiplica-valor-android', '2025-07-31 16:52:19', '2025-07-31 16:52:19', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003349, '20250731', '97b43f9e1b453f541e0dbbcab16903de', 'es', 1747798200, 1753951940, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/probamos-visor-realidad-aumentada-samsung-google-gemini-equilibra-balanza-nuevo-enemigo-vision-pro', '2025-07-31 16:52:20', '2025-07-31 16:52:20', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003350, '20250731', 'a61c164db5af76499db571830f832bef', 'es', 1747747340, 1753951941, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/google-enseno-primera-vez-sus-nuevas-gafas-demo-real-imprevisto-directo-apuesta-que-apunta-lejos', '2025-07-31 16:52:21', '2025-07-31 16:52:21', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003351, '20250731', 'b11b0a99130e325f588b29645c3ff597', 'es', 1739343658, 1753951941, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/microsoft-ha-cancelado-desarrollo-hololens-militares-quien-toma-relevo-fundador-oculus', '2025-07-31 16:52:21', '2025-07-31 16:52:21', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003352, '20250731', '69b8694f5bc9a5280701140a91f29a50', 'es', 1738674000, 1753951942, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/meta-se-acerca-a-100-000-millones-invertidos-metaverso-no-tiene-intencion-levantar-pie-acelerador', '2025-07-31 16:52:22', '2025-07-31 16:52:22', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003353, '20250731', 'ee9d25a418da181e6ddd581c7fe52d7b', 'es', 1738143088, 1753951944, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/samsung-google-tienen-casi-listas-sus-propias-vision-pro-cuentan-dos-ventajas-fundamentales-gemini-voz', '2025-07-31 16:52:24', '2025-07-31 16:52:24', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003354, '20250731', '9d803681afc26995cad226a8c6903c4e', 'es', 1737551287, 1753951945, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/estas-gafas-realidad-aumentada-samsung-project-moohan-se-acerca-estara-gobernado-android-xr', '2025-07-31 16:52:25', '2025-07-31 16:52:25', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003355, '20250731', '4a97ebd97d42ba231bd24dae764c6e41', 'es', 1737547560, 1753951946, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/samsung-google-tienen-gran-plan-para-realidad-aumentada-desarrollar-unas-gafas-conjunto', '2025-07-31 16:52:26', '2025-07-31 16:52:26', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003356, '20250731', '83059a3748d76eb852183a538b7ec228', 'es', 1734073236, 1753951946, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/google-ha-declarado-guerra-segmento-realidad-aumentada-apple-meta-no-van-a-ponerselo-facil', '2025-07-31 16:52:26', '2025-07-31 16:52:26', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003357, '20250731', '21bc88f24b49a4332ba5d688de8354da', 'es', 1733999225, 1753952130, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/google-samsung-unen-fuerzas-frente-a-apple-meta-presentan-android-xr-gafas-que-estrenaran-nuevo-sistema', '2025-07-31 16:55:30', '2025-07-31 16:55:30', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003358, '20250731', 'bdea881044a8d0f23d183eca2eb4ea9b', 'es', 1733803261, 1753952131, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/mark-zuckerberg-cree-que-2030-no-sacaremos-smartphone-bolsillo-haremos-casi-todo-gafas', '2025-07-31 16:55:31', '2025-07-31 16:55:31', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003359, '20250731', 'e4729938dd78748665db8afd4ce81fab', 'es', 1731331804, 1753952132, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/metaversidades-aterrizan-europa-universidad-pais-vasco-utilizara-gafas-meta-algunas-clases', '2025-07-31 16:55:32', '2025-07-31 16:55:32', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003360, '20250731', 'f49a4b7b34c1c75502805d58d5ce9383', 'es', 1730697345, 1753952133, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/apple-tiene-camino-para-hacer-vision-pro-mucho-baratas-uso-apple-watch', '2025-07-31 16:55:33', '2025-07-31 16:55:33', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003361, '20250731', '4c7469276df78a780213106a0558d531', 'es', 1730169914, 1753952134, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/telecinco-acaba-llevar-sus-informativos-a-otro-nivel-realidad-aumentada-como-nunca-se-habia-visto-espana', '2025-07-31 16:55:34', '2025-07-31 16:55:34', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003362, '20250731', '3fb36804f1c2c3a693ee9cf720e67fca', 'es', 1729681302, 1753952135, 0, 'xataka.com', '[\"Dispositivos_Realidad Virtual/Aumentada\"]', 'https://www.xataka.com/realidad-virtual-aumentada/vision-pro-originales-su-tramo-final-apple-recorta-produccion-sopesa-dejar-fabricarlas-the-information', '2025-07-31 16:55:35', '2025-07-31 16:55:35', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003363, '20250731', '4cedbdcc26e541b326c95145f1a40b22', 'es', 1740972915, 1753952337, 0, 'xataka.com', '[\"Imagen Y Sonido_Fotografía y Vídeo\"]', 'https://www.xataka.com/moviles/realme-presenta-concepto-movil-objetivos-intercambiables-sueno-para-fans-fotografia', '2025-07-31 16:58:57', '2025-07-31 16:58:57', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003364, '20250731', '65a65c049ccfc9b0611be1b84d14081c', 'es', 1735977699, 1753952338, 0, 'xataka.com', '[\"Imagen Y Sonido_Fotografía y Vídeo\"]', 'https://www.xataka.com/fotografia-y-video/dificil-que-nunca-identificar-fotos-falsas-hace-120-anos-tenian-problema', '2025-07-31 16:58:58', '2025-07-31 16:58:58', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003365, '20250731', '6e7f104ed704a24bad065edce82bcfb0', 'es', 1731985200, 1753952339, 0, 'xataka.com', '[\"Imagen Y Sonido_Fotografía y Vídeo\"]', 'https://www.xataka.com/fotografia-y-video/gran-sorpresa-podcast-que-gente-esta-escuchando-que-esta-viendo', '2025-07-31 16:58:59', '2025-07-31 16:58:59', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003366, '20250731', 'a7bf24aeb92e7d6a87aef851791aace6', 'es', 1730798190, 1753952340, 0, 'xataka.com', '[\"Imagen Y Sonido_Fotografía y Vídeo\"]', 'https://www.xataka.com/fotografia-y-video/no-tires-tus-fotos-embarradas-uv-abre-laboratorio-gratuito-para-rescatar-recuerdos-familiares-inundaciones', '2025-07-31 16:59:00', '2025-07-31 16:59:00', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003367, '20250731', '51834882dfebe44dfba930f310aca5d1', 'es', 1729929722, 1753952341, 0, 'xataka.com', '[\"Imagen Y Sonido_Fotografía y Vídeo\"]', 'https://www.xataka.com/fotografia-y-video/me-he-comprado-camara-2024-reflexion-ha-sido-clara-moviles-estan-dando-pasos-direccion-equivocada', '2025-07-31 16:59:01', '2025-07-31 16:59:01', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003368, '20250731', '8e1fe3f1376c53505a05bf7578dff418', 'es', 1729312279, 1753952342, 0, 'xataka.com', '[\"Imagen Y Sonido_Fotografía y Vídeo\"]', 'https://www.xataka.com/fotografia-y-video/a-este-usuario-no-le-convencian-dslr-tradicionales-asi-que-se-hizo-para-ha-publicado-proyecto-como-open-source', '2025-07-31 16:59:02', '2025-07-31 16:59:02', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003369, '20250731', '6c91fd9060da5814ed814dff9a4f9fb8', 'es', 1726725722, 1753952343, 0, 'xataka.com', '[\"Imagen Y Sonido_Fotografía y Vídeo\"]', 'https://www.xataka.com/fotografia-y-video/dji-osmo-action-5-pro-caracteristicas-precio-ficha-tecnica', '2025-07-31 16:59:03', '2025-07-31 16:59:03', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003370, '20250731', '9dbce72a2ea5dd0c7ccce1ba4de8e81c', 'es', 1721185263, 1753952736, 0, 'xataka.com', '[\"Imagen Y Sonido_Fotografía y Vídeo\"]', 'https://www.xataka.com/fotografia-y-video/canon-eos-r1-canon-eos-r5-mark-ii-caracteristicas-precio-ficha-tecnica', '2025-07-31 17:05:36', '2025-07-31 17:05:36', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003371, '20250731', '0a2c456007ee467860687d86893f2c28', 'es', 1720063800, 1753952737, 0, 'xataka.com', '[\"Imagen Y Sonido_Fotografía y Vídeo\"]', 'https://www.xataka.com/fotografia-y-video/poder-nostalgia-fujifilm-esta-fuerte-que-nunca-gracias-a-camaras-digitales', '2025-07-31 17:05:37', '2025-07-31 17:05:37', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003372, '20250731', 'ab0f823bfb7b86a6a6a17bb1605a0e5f', 'es', 1718420450, 1753952738, 0, 'xataka.com', '[\"Imagen Y Sonido_Fotografía y Vídeo\"]', 'https://www.xataka.com/fotografia-y-video/1975-fotografa-se-lanzo-a-documentar-fiestas-populares-espana-libro-resultante-cambio-todo', '2025-07-31 17:05:38', '2025-07-31 17:05:38', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003373, '20250731', 'ce5a56f3b6143d193e6b552643d50778', 'es', 1749472080, 1753952788, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/liquid-glass-ios-26-macos-tahoe-watchos-26-nueva-app-games-todas-novedades-que-dejo-wwdc-2025-apple', '2025-07-31 17:06:28', '2025-07-31 17:06:28', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003374, '20250731', 'a6dbde720b19d071f0ee5bbc58b2a578', 'es', 1749427200, 1753952789, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/robotica-e-ia/hoy-apple-tiene-su-evento-complicado-muchos-anos', '2025-07-31 17:06:29', '2025-07-31 17:06:29', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003375, '20250731', '802409830610751d5baa980d22ae2b82', 'es', 1747751280, 1753952822, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/ai-mode-project-beam-veo-3-gafas-project-aura-jules-todo-presentado-google-i-2025-cargado-ambicion', '2025-07-31 17:07:02', '2025-07-31 17:07:02', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003376, '20250731', '6c4999a303adcf7c6432b41f01a7f37a', 'es', 1742904000, 1753952823, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-anuncia-fecha-wwdc25-todo-apunta-a-que-ambicioso-rediseno-ios-19-no-sera-unica-gran-novedad', '2025-07-31 17:07:03', '2025-07-31 17:07:03', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003377, '20250731', '48061eee70a870f60f593b2f519a9fee', 'es', 1742347800, 1753952824, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/ai2030-sigue-directo-conferencias-paneles-gran-evento-ia-generativa', '2025-07-31 17:07:04', '2025-07-31 17:07:04', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003378, '20250731', '2a88769403442547f03b8624c0fe815e', 'es', 1740650515, 1753952825, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/a-solo-unos-dias-mwc-aeropuerto-barcelona-han-tomado-decision-polemica-desalojar-a-sintecho', '2025-07-31 17:07:05', '2025-07-31 17:07:05', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003379, '20250731', 'a2249531aefc3a687dd991f97bc7f52e', 'es', 1739288700, 1753952825, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/google-i-2025-tiene-fecha-cuando-sera-gran-evento-tecnologica-estadounidense-que-podemos-esperar', '2025-07-31 17:07:05', '2025-07-31 17:07:05', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003380, '20250731', 'ca200fe56fd4194de7786ac63e366762', 'es', 1729764052, 1753952826, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/ordenadores/apple-anuncia-varios-lanzamientos-para-proxima-semana-directivo-deja-caer-que-vienen-nuevos-mac', '2025-07-31 17:07:06', '2025-07-31 17:07:06', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003381, '20250731', '501b422a8c3213b69672b80d6282002c', 'es', 1728382445, 1753952827, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/seleccion/nos-gastamos-paga-amazon-prime-day-descubre-nosotros-mejores-ofertas-nuestro-live-shopping', '2025-07-31 17:07:07', '2025-07-31 17:07:07', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003382, '20250731', '48f6ec57b9c22a50e3fb443226ede7dc', 'es', 1728292500, 1753952828, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/xataka/inspirational-2024-gran-evento-publicidad-comunicacion-se-celebrara-15-17-octubre-xataka-como-mediapartner', '2025-07-31 17:07:08', '2025-07-31 17:07:08', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003383, '20250731', '70feb3a273d22f2dddbbcc89e220049e', 'es', 1725885300, 1753952829, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevos-iphone-16-nuevos-apple-watch-todas-novedades-keynote-apple', '2025-07-31 17:07:09', '2025-07-31 17:07:09', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003384, '20250731', 'd1ce519ff0e18463ed42ff4889c06bab', 'es', 1725882529, 1753952830, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/nuevo-iphone-16-seguir-presentacion-directo', '2025-07-31 17:07:10', '2025-07-31 17:07:10', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003385, '20250731', '60d502c725cc6e5b1d385f140fb49280', 'es', 1725516652, 1753952830, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/honor-magic-v3-ifa-2024-seguir-keynote-directo', '2025-07-31 17:07:10', '2025-07-31 17:07:10', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003386, '20250731', '7004878a6c0b42732f421fe779cc437b', 'es', 1725347700, 1753952831, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/alla-iphone-todo-que-esperamos-que-no-evento-apple-9-septiembre', '2025-07-31 17:07:11', '2025-07-31 17:07:11', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003387, '20250731', '11ad5ca14a828c008146d48859b413d3', 'es', 1725246755, 1753952832, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/moviles/iphone-16-no-estara-solo-huawei-presentara-su-plegable-triple-casi-al-tiempo', '2025-07-31 17:07:12', '2025-07-31 17:07:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003388, '20250731', '3884e42c246a71bbd969d45b299689dd', 'es', 1724668500, 1753952833, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/iphone-16-estan-ansiosos-llegar-al-mercado-apple-confirma-que-apple-event-sera-9-septiembre', '2025-07-31 17:07:13', '2025-07-31 17:07:13', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003389, '20250731', '6673a233c1e3895bd76d3ef357a0c6d2', 'es', 1721101072, 1753952834, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/seleccion/hoy-nos-gastamos-paga-prime-day-amazon-acompananos-descubre-mejores-ofertas-nuestro-live-shopping', '2025-07-31 17:07:14', '2025-07-31 17:07:14', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003390, '20250731', 'a1c4f94b8b8df79366f95f16ee7c1a9b', 'es', 1720595588, 1753952834, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevos-plegables-galaxy-ring-galaxy-watch-ultra-todas-novedades-evento-samsung-galaxy-unpacked-2024', '2025-07-31 17:07:14', '2025-07-31 17:07:14', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003391, '20250731', '162a59a2fb1d5340e898e05d73b0d0ac', 'es', 1720595810, 1753952835, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/samsung-galaxy-unpacked-paris-2024-seguir-conferencia-directo', '2025-07-31 17:07:15', '2025-07-31 17:07:15', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003392, '20250731', '0f25decf85dbaf886dc2af5d034fac22', 'es', 1719312300, 1753952836, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/google-pone-fecha-hora-a-presentacion-sus-nuevos-telefonos-pixel-tambien-esperamos-novedades-android-e-ia', '2025-07-31 17:07:16', '2025-07-31 17:07:16', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003393, '20250731', 'c4c0015d75f89ff699efe0c849dfb329', 'es', 1718025360, 1753952838, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-intelligence-ios-18-siri-junto-a-chatgpt-macos-15-sequoia-y-todo-lo-anunciado-en-la-wwdc2024', '2025-07-31 17:07:18', '2025-07-31 17:07:18', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003394, '20250731', '26f7226cf07f6259096b6f1a5a281a36', 'es', 1716890760, 1753952838, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-acaba-enviar-invitaciones-para-wwdc-2024-toda-industria-espera-que-compania-mueva-ficha-ia', '2025-07-31 17:07:18', '2025-07-31 17:07:18', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003395, '20250731', '3b18dfbdf4a195e8ea45251757f5d6af', 'es', 1715695021, 1753952840, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/evolucion-gemini-project-astra-nueva-busqueda-generativa-todo-anunciado-google-i-2024', '2025-07-31 17:07:20', '2025-07-31 17:07:20', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003396, '20250731', '4169398d31b47e391f5d5f803b43e993', 'es', 1715143680, 1753952841, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/presentacion-ipad-2024-ocultaban-secreto-que-paso-inadvertido-exclusivas-nike-tim-cook', '2025-07-31 17:07:21', '2025-07-31 17:07:21', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003397, '20250731', '0ebe41ce5a4d52ce864ab393ae512a09', 'es', 1715072100, 1753952842, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevos-ipad-air-ipad-pro-apple-pencil-pro-magic-keyboard-todas-novedades-evento-let-loose-apple', '2025-07-31 17:07:22', '2025-07-31 17:07:22', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003398, '20250731', '944609bdc9606fc728a6f73d64da38fc', 'es', 1715070368, 1753952843, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/apple-ipad-pro-ipad-air-marzo-2024-seguir-presentacion-directo', '2025-07-31 17:07:23', '2025-07-31 17:07:23', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003399, '20250731', '178719a7ae7ca3d708fc735c10133531', 'es', 1713856320, 1753952843, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-anuncia-evento-para-7-mayo-nuevos-ipad-a-vista', '2025-07-31 17:07:23', '2025-07-31 17:07:23', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003400, '20250731', '52098b6df2143b92f92ecffd93cf8a55', 'es', 1711449120, 1753952844, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-anuncia-fecha-wwdc-2024-ios-18-esperadas-novedades-ia-cada-vez-cerca-hacerse-realidad', '2025-07-31 17:07:24', '2025-07-31 17:07:24', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003401, '20250731', 'e0b2ffdb41db550113245bd02886c58d', 'es', 1710423900, 1753952845, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/google-i-2024-sabemos-cuando-sera-gran-evento-google-que-podemos-esperar', '2025-07-31 17:07:25', '2025-07-31 17:07:25', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003402, '20250731', 'af8b557ebadbecf3bc41d119d44fa3e3', 'es', 1709254656, 1753953029, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/mwc-2024-recupera-su-mejor-version-ha-superado-expectativas-100-000-asistentes', '2025-07-31 17:10:29', '2025-07-31 17:10:29', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003403, '20250731', '02817e1389748d2ae9ce133e1052f04c', 'es', 1706239892, 1753953029, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/xataka/xataka-se-estrena-como-media-partner-mwc-barcelona-2024-sigue-nosotros-todas-novedades', '2025-07-31 17:10:29', '2025-07-31 17:10:29', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003404, '20250731', '40f5f95ffe7c03811c2dbf64d36efe7a', 'es', 1705497000, 1753953030, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevos-samsung-galaxy-s24-galaxy-ring-galaxy-ai-todas-novedades-unpacked-2024', '2025-07-31 17:10:30', '2025-07-31 17:10:30', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003405, '20250731', '09d38270afb8236c43f2ae8fd8a3c3d2', 'es', 1700840638, 1753953038, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/seleccion/sigue-siendo-mejor-ratones-para-productividad-este-black-friday-tiene-precio-irresistible', '2025-07-31 17:10:38', '2025-07-31 17:10:38', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003406, '20250731', 'f3bd3075b9d1095d4a4d488438d763a6', 'es', 1698139860, 1753953222, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/ordenadores/apple-anuncia-evento-para-30-octubre-durante-madrugada-espanola-todo-apunta-a-nuevos-mac-chip-m3', '2025-07-31 17:13:42', '2025-07-31 17:13:42', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003407, '20250731', 'c93cc12cc81c2521629c7d9ea8f44e5e', 'es', 1695704973, 1753953223, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/xiaomi-13t-seguir-conferencia-directo', '2025-07-31 17:13:43', '2025-07-31 17:13:43', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003408, '20250731', 'b079dcffcdf223f45fef2574a3e9a5b0', 'es', 1694518380, 1753953224, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevos-iphone-15-nuevos-apple-watch-todas-novedades-evento-wonderlust-apple', '2025-07-31 17:13:44', '2025-07-31 17:13:44', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003409, '20250731', 'caf5ecd41759d0bfd34ed848a3aaaf36', 'es', 1694518828, 1753953225, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/apple-iphone-15-seguir-presentacion-directo', '2025-07-31 17:13:45', '2025-07-31 17:13:45', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003410, '20250731', '81b2ea249c350770c6c47da8f9bb8da1', 'es', 1690436845, 1753953226, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/samung-galaxy-unpacked-26-julio-seguir-conferencia-directo', '2025-07-31 17:13:46', '2025-07-31 17:13:46', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003411, '20250731', 'fd7eed7ccba239fcce8bffdf5bb34efd', 'es', 1689067425, 1753953228, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/nothing-phone-2-seguir-conferencia-directo', '2025-07-31 17:13:48', '2025-07-31 17:13:48', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003412, '20250731', 'c1f42b417c61e4607536963c9e0edbf6', 'es', 1685968140, 1753953262, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevas-gafas-apple-vision-pro-ios-17-todo-que-apple-ha-presentado-wwdc-2023', '2025-07-31 17:14:22', '2025-07-31 17:14:22', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003413, '20250731', 'b4dd422b88606c0a9644b6e15ddc459b', 'es', 1683765078, 1753953263, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/google-i-2023-seguir-conferencia-directo', '2025-07-31 17:14:23', '2025-07-31 17:14:23', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003414, '20250731', '17c1da73c0593ae1fbf70361dc9390c9', 'es', 1683677474, 1753953264, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/xiaomi-poco-f5-poco-f5-pro-seguir-conferencia-directo', '2025-07-31 17:14:24', '2025-07-31 17:14:24', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003415, '20250731', '7f92b7af49759f8449327b30175767c2', 'es', 1680103140, 1753953265, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/tenemos-fecha-presentacion-ios-17-apple-confirma-cuando-se-celebrara-wwdc-2023', '2025-07-31 17:14:25', '2025-07-31 17:14:25', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003416, '20250731', '1d9d4c0b4cbb39eb9babdd037a82af2f', 'es', 1677468876, 1753953266, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/honor-magic5-magic-vs-mwc-2023-seguir-conferencia-directo', '2025-07-31 17:14:26', '2025-07-31 17:14:26', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003417, '20250731', '3e2bfbc9f651a9a86c2b8f4c7d28bdc1', 'es', 1664326838, 1753953267, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/entrevistamos-a-javier-santaolalla-directo-vente-a-hablar-ciencia-espacio-nosotros-xtk-programa-xataka-twitch', '2025-07-31 17:14:27', '2025-07-31 17:14:27', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003418, '20250731', '2234441eb68876d93c51f6d614422735', 'es', 1663759800, 1753953268, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/microsoft-pone-fecha-para-su-proximo-evento-hardware-nuevos-surface-a-vista', '2025-07-31 17:14:28', '2025-07-31 17:14:28', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003419, '20250731', '7d9c3e5c65b4c61ef685cd3b26bd1e91', 'es', 1663549200, 1753953269, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/descubre-hoy-iphone-14-14-pro-xtk-programa-xataka-twitch-amparo-babiloni-ricardo-aguilar-anna-marti', '2025-07-31 17:14:29', '2025-07-31 17:14:29', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003420, '20250731', 'ce7052bb5e18dc6a2247995f512d71ff', 'es', 1662538980, 1753953270, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevos-iphone-14-apple-watch-series-8-apple-watch-ultra-airpods-pro-2-todas-novedades-evento-apple', '2025-07-31 17:14:30', '2025-07-31 17:14:30', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003421, '20250731', '756cb78fd5407379cbc8d6f3ecd8368b', 'es', 1662463980, 1753953271, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/pixel-7-pixel-watch-tienen-fecha-presentacion-google-anuncia-su-evento-hardware', '2025-07-31 17:14:31', '2025-07-31 17:14:31', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003422, '20250731', '9cb4bb6d8347205cc6ae32a56e8c53b0', 'es', 1662379698, 1753953272, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/cinco-cosas-que-he-aprendido-futuro-tecnologia-me-perdia-ifa-2022', '2025-07-31 17:14:32', '2025-07-31 17:14:32', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003423, '20250731', '99e43ba0979719c8ce87addc455515e9', 'es', 1661315280, 1753953306, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-confirma-su-proxima-keynote-hay-fecha-para-presentacion-iphone-14', '2025-07-31 17:15:06', '2025-07-31 17:15:06', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003424, '20250731', '0622c447418a49daa66bd60d4195124f', 'es', 1660205940, 1753953306, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/xiaomi-mix-fold-2-pad-5-pro-12-4-watch-s1-pro-buds-4-pro-robot-humanoide-todo-presentado-compania-china', '2025-07-31 17:15:06', '2025-07-31 17:15:06', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003425, '20250731', '8581a91363fc1de52111f01f0ebed503', 'es', 1660114980, 1753953307, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/fold4-flip4-watch5-buds2-pro-todo-que-samsung-ha-presentado-galaxy-unpacked', '2025-07-31 17:15:07', '2025-07-31 17:15:07', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003426, '20250731', 'b47eafaa9fae19b0f7ebe0dd4255db3f', 'es', 1658891940, 1753953308, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/entrevistamos-a-mouredev-directo-vente-a-hablar-programacion-nosotros-xtk-programa-xataka-twitch', '2025-07-31 17:15:08', '2025-07-31 17:15:08', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003427, '20250731', 'eef6579b3663ae5be8184f6c2c815820', 'es', 1656288160, 1753953309, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/mwc-renueva-barcelona-espana-se-quedara-mayor-feria-moviles-mundo-2030', '2025-07-31 17:15:09', '2025-07-31 17:15:09', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003428, '20250731', 'f3ac95ff6d897afb078929ca57a0c645', 'es', 1654520340, 1753953311, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/ios-16-nuevo-macbook-air-m2-macos-ventura-todo-que-apple-ha-presentado-wwdc-2022', '2025-07-31 17:15:11', '2025-07-31 17:15:11', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003429, '20250731', 'c624e1c0d6b83dd627fc7cf67523b61f', 'es', 1651635085, 1753953312, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/moviles/todo-que-esperamos-google-i-2022-android-13-todo-pixel-6a-pixel-watch', '2025-07-31 17:15:12', '2025-07-31 17:15:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003430, '20250731', 'fecfd37ddaf58df1ef6adb49afb92c11', 'es', 1649151540, 1753953313, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-confirma-fecha-wwdc-2022-ano-se-celebrara-online', '2025-07-31 17:15:13', '2025-07-31 17:15:13', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003431, '20250731', 'c7fd753a8232e9d779256d0fa467de96', 'es', 1646747460, 1753953314, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevo-iphone-se-ipad-air-mac-studio-studio-display-todas-novedades-evento-peek-performance-apple', '2025-07-31 17:15:14', '2025-07-31 17:15:14', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003432, '20250731', '3d0df6604bc9a21592a7ab6286e6f6f3', 'es', 1646182800, 1753953315, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/moviles/vuelta-a-2000-mwc-ha-ido-portatiles-que-moviles', '2025-07-31 17:15:15', '2025-07-31 17:15:15', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003433, '20250731', 'aeaecaa040a578bfd2ec2b70e1dc4c2f', 'es', 1646022631, 1753953316, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/moviles/moviles-plegables-enrollables-tres-pantallas-asi-conceptos-que-nos-ha-ensenado-tcl-mwc22', '2025-07-31 17:15:16', '2025-07-31 17:15:16', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003434, '20250731', '9f1465c6153e3c19582fce3dfb1020a9', 'es', 1643103900, 1753953317, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/lenovo-sigue-a-sony-no-asistira-al-mobile-world-congress-2022-su-presencia-sera-virtual', '2025-07-31 17:15:17', '2025-07-31 17:15:17', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003435, '20250731', '2504587ca54356685eb4e2ffcc516c61', 'es', 1642059308, 1753953318, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/sony-cancela-su-participacion-mwc-2022-llega-primera-baja-significativa-para-congreso-moviles', '2025-07-31 17:15:18', '2025-07-31 17:15:18', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003436, '20250731', '0aa69d9364352c0e73c280b86fd7305a', 'es', 1641524476, 1753953319, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/e3-2022-no-sera-presencial-debido-a-covid-19-su-potencial-impacto-seguridad-asistentes', '2025-07-31 17:15:19', '2025-07-31 17:15:19', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003437, '20250731', '27c5f9735e710657fbd41acd6f00a41d', 'es', 1634716424, 1753953320, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/todas-novedades-samsung-galaxy-unpacked-2-carcasas-colores-actualizaciones-galaxy-watch4', '2025-07-31 17:15:20', '2025-07-31 17:15:20', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003438, '20250731', '2efb75751c6ee22c0c29344f4d456803', 'es', 1634690100, 1753953321, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/samsung-unpacked-part-2-seguir-presentacion-directo', '2025-07-31 17:15:21', '2025-07-31 17:15:21', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003439, '20250731', '698f195a85dc814e436afa55b45d576d', 'es', 1634556446, 1753953322, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevos-apple-macbook-pro-airpods-3-todas-novedades-keynote-apple', '2025-07-31 17:15:22', '2025-07-31 17:15:22', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003440, '20250731', '190654f8caee93122c34e893bec6965b', 'es', 1634083917, 1753953323, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/google-apple-ahora-galaxy-unpacked-samsung-firma-coreana-programa-evento-que-apunta-a-nuevos-moviles-tablets', '2025-07-31 17:15:23', '2025-07-31 17:15:23', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003441, '20250731', 'f991c239cee09f9b58b19e3fed7eb053', 'es', 1631623270, 1753953323, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevos-iphone-13-apple-watch-series-7-todas-novedades-keynote-apple', '2025-07-31 17:15:23', '2025-07-31 17:15:23', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003442, '20250731', '312fb6fbe58f93d9c1576f0b8f133487', 'es', 1631629059, 1753953324, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/nuevo/iphone-13-seguir-presentacion-directo', '2025-07-31 17:15:24', '2025-07-31 17:15:24', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003443, '20250731', 'be7394a2eb9f6ec4fe6d4aeb1a7107f3', 'es', 1631505676, 1753953325, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/iphone-13-apple-watch-series-7-todo-que-esperamos-ver-evento-apple-14-septiembre', '2025-07-31 17:15:25', '2025-07-31 17:15:25', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003444, '20250731', '70cd2c18100d92355c1323bb703d7f72', 'es', 1631146803, 1753953326, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/analisis/oppo-reno6-seguir-presentacion-directo-video', '2025-07-31 17:15:26', '2025-07-31 17:15:26', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003445, '20250731', 'f9566673cbb20f43eace00527ac15440', 'es', 1631005595, 1753953327, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-confirma-su-proximo-evento-para-14-septiembre-esto-todo-que-esperamos-ver-keynote', '2025-07-31 17:15:27', '2025-07-31 17:15:27', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003446, '20250731', '447ec2ea1a428bd6f84e18099f4ccdde', 'es', 1628748865, 1753953329, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/analisis/honor-seguir-presentacion-directo', '2025-07-31 17:15:29', '2025-07-31 17:15:29', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003447, '20250731', '6f64f31627bbc287e3fd3694dd883784', 'es', 1628671565, 1753953330, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/nuevos-telefonos-plegables-relojes-inteligentes-todas-novedades-evento-samsung', '2025-07-31 17:15:30', '2025-07-31 17:15:30', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003448, '20250731', '90c49a95041c186b58c6b27a7ddefbe4', 'es', 1628669980, 1753953363, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/analisis/samsung-unpacked-agosto-2021-seguir-presentacion-directo', '2025-07-31 17:16:03', '2025-07-31 17:16:03', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003449, '20250731', 'cbdd3080e80090c554e4129f92a0261d', 'es', 1626823814, 1753953364, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/confirmado-proximo-samsung-unpacked-para-dar-a-conocer-sus-proximos-dispositivos-plegables-sera-agosto', '2025-07-31 17:16:04', '2025-07-31 17:16:04', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003450, '20250731', '51714385a523fdabc86de1a080fdb194', 'es', 1621935052, 1753953365, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/presencia-xiaomi-mwc-2021-se-plantea-como-uno-principales-eventos-moviles-moviles', '2025-07-31 17:16:05', '2025-07-31 17:16:05', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003451, '20250731', '0c5297261c9fff464a458e92c65b2c19', 'es', 1621478935, 1753953366, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/mobile-world-congress-se-abre-al-publico-30-000-personas-podran-asistir-entrada-21-euros', '2025-07-31 17:16:06', '2025-07-31 17:16:06', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003452, '20250731', '0ce72d0d850d4b50ac3e1e67b67bf36c', 'es', 1621399898, 1753953367, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/ifa-2021-cancela-su-evento-fisico-gran-evento-tecnologia-vuelve-al-formato-virtual-incertidumbres-pandemia', '2025-07-31 17:16:07', '2025-07-31 17:16:07', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003453, '20250731', 'f880485ffa1334abf14afe51e76b4d43', 'es', 1620865292, 1753953368, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/siguen-bajas-mwc-2021-ahora-qualcomm-compania-que-confirma-que-no-asistira-presencialmente', '2025-07-31 17:16:08', '2025-07-31 17:16:08', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003454, '20250731', 'd55cfd10d3da87582d4e3be1df10bd42', 'es', 1620781336, 1753953369, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/empresas-y-economia/lenovo-tampoco-asistira-presencialmente-al-mobile-world-congress-2021-companias-se-siguen-cayendo-evento', '2025-07-31 17:16:09', '2025-07-31 17:16:09', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003455, '20250731', '8a5d49a9b4f5821d44e5033bd424810e', 'es', 1620693265, 1753953369, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/samsung-le-da-planton-al-mwc-2021-no-asistira-forma-presencial-sigue-pasos-ericsson-nokia-sony', '2025-07-31 17:16:09', '2025-07-31 17:16:09', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003456, '20250731', '25dd645c6dda8c26ee0f7c31d9b3255f', 'es', 1618477993, 1753953370, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/ifa-se-celebrara-forma-presencial-gran-evento-tecnologia-berlin-imita-al-mwc-anuncia-sus-planes-para-volver-fisicamente', '2025-07-31 17:16:10', '2025-07-31 17:16:10', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003457, '20250731', '12d3c942616d3f4503c8618593126faf', 'es', 1618332633, 1753953372, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/samsung-nos-cita-para-presentarnos-galaxy-potente-nuevo-evento-unpacked-proximo-28-abril', '2025-07-31 17:16:12', '2025-07-31 17:16:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003458, '20250731', '6d61eee203004b56f08e033e2440eef8', 'es', 1618304796, 1753953372, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-nos-cita-para-evento-proximo-20-abril-esto-que-esperamos-ver-keynote', '2025-07-31 17:16:12', '2025-07-31 17:16:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003459, '20250731', '82b18b37332d39f3d75174b0383d6975', 'es', 1617799386, 1753953373, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/google-i-vuelve-18-mayo-evento-para-desarrolladores-sera-virtual-completamente-gratuito', '2025-07-31 17:16:13', '2025-07-31 17:16:13', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003460, '20250731', '720345a5c34c6646ce0dfce85f75b811', 'es', 1617783509, 1753953374, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/gsma-gobierno-espana-llegan-a-acuerdo-para-permitir-entrada-asistentes-internacionales-al-mwc-2021', '2025-07-31 17:16:14', '2025-07-31 17:16:14', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003461, '20250731', '1277e74454a490638cabc35b8a940571', 'es', 1617250084, 1753953375, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/sony-desvela-fecha-su-proximo-evento-dos-semanas-conoceremos-a-proximos-moviles-xperia', '2025-07-31 17:16:15', '2025-07-31 17:16:15', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003462, '20250731', '21e12c11145638d8dace55ef47957a96', 'es', 1617086947, 1753953559, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/wwdc-2021-apple-se-celebrara-a-partir-proximo-7-junio-sera-nuevo-evento-online', '2025-07-31 17:19:19', '2025-07-31 17:19:19', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003463, '20250731', '94d5b8ba099dae5a7a306000a622533a', 'es', 1616574212, 1753953560, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/analisis/realme-8-pro-seguir-presentacion-directo-video', '2025-07-31 17:19:20', '2025-07-31 17:19:20', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003464, '20250731', '79f07ae9dee03daec93ada482bfdbd61', 'es', 1616391291, 1753953561, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/analisis/xiaomi-poco-2021-seguir-presentacion-directo-video', '2025-07-31 17:19:21', '2025-07-31 17:19:21', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003465, '20250731', 'd0feab613b93da9b2953b01706a72eee', 'es', 1615361189, 1753953577, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/historia-se-repite-nokia-se-une-a-ericsson-anuncia-que-tampoco-asistira-fisicamente-al-mobile-world-congress', '2025-07-31 17:19:37', '2025-07-31 17:19:37', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003466, '20250731', '3b4839eecef307b4fef363637f109896', 'es', 1615334446, 1753953579, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/proximo-samsung-unpacked-sera-proxima-semana-sera-awesome-todo-apunta-a-novedades-galaxy-a', '2025-07-31 17:19:39', '2025-07-31 17:19:39', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003467, '20250731', 'ce41422cd4206c0555c6419b54a8a990', 'es', 1615191009, 1753953580, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/mobile-world-congress-2021-sigue-adelante-habra-que-presentar-test-covid-19-negativo-para-entrar-usar-mascarillas-ffp2', '2025-07-31 17:19:40', '2025-07-31 17:19:40', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003468, '20250731', '735449566e3eeb8c7c5bb9c8bdb151ef', 'es', 1614559668, 1753953581, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/moviles/oppo-find-x3-tienen-fecha-presentacion-serie-potente-marca-se-renueva-poco-semana', '2025-07-31 17:19:41', '2025-07-31 17:19:41', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003469, '20250731', '2c8b14341c24c63bcaaaee012bef8d3f', 'es', 1613553810, 1753953582, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/mobile-world-congress-este-verano-sigue-pie-momento-obligaran-a-presentar-test-negativo-para-entrar', '2025-07-31 17:19:42', '2025-07-31 17:19:42', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003470, '20250731', '062c1e019febb30fbc13f3f17c0bf76c', 'es', 1610350266, 1753953583, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/analisis/samsung-ces-2021-hoy-11-enero-directo', '2025-07-31 17:19:43', '2025-07-31 17:19:43', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003471, '20250731', '9e8cb98831f724e613e28c2f7b1b8ad3', 'es', 1610334071, 1753953584, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/ces-2021-sigue-todas-novedades-hoy-directo-xataka', '2025-07-31 17:19:44', '2025-07-31 17:19:44', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003472, '20250731', 'c7e620304c01648a4992737162be2757', 'es', 1609722738, 1753953585, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/samsung-galaxy-unpacked-2021-presentacion-galaxy-s21-se-adelanta-al-14-enero', '2025-07-31 17:19:45', '2025-07-31 17:19:45', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003473, '20250731', '58697eecaf2ad94bd1199ac83d21851b', 'es', 1609592468, 1753953768, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/ces-2021-televisores-8k-portatiles-todo-que-esperamos-ver-gran-evento-tecnologico-dias-antes-su-apertura-oficial', '2025-07-31 17:22:48', '2025-07-31 17:22:48', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003474, '20250731', 'b1ee4352817930cce5df460ca7a38329', 'es', 1604312848, 1753953770, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-confirma-evento-para-presentar-sus-macs-chip-propio-10-noviembre', '2025-07-31 17:22:50', '2025-07-31 17:22:50', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003475, '20250731', '98caf2d9b8130b1c5b74bac428c97817', 'es', 1601975666, 1753953771, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-anuncia-evento-para-proximo-13-octubre-nuevos-iphone-a-vista', '2025-07-31 17:22:51', '2025-07-31 17:22:51', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003476, '20250731', '6798ef1eea9684ce9aaaa70172b4f153', 'es', 1601424112, 1753953772, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/xiaomi-mi-10t-seguir-presentacion-directo-video', '2025-07-31 17:22:52', '2025-07-31 17:22:52', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003477, '20250731', '8dce2240bdd2e7099044bd0a1b105157', 'es', 1600832481, 1753953774, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/gsma-anuncia-que-mobile-world-congress-se-retrasa-se-celebrara-verano-2021', '2025-07-31 17:22:54', '2025-07-31 17:22:54', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003478, '20250731', 'f5236d8a291c53c8c6991806a73a2a47', 'es', 1600131620, 1753953775, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/apple-keynote-septiembre-2020-seguir-presentacion-directo', '2025-07-31 17:22:55', '2025-07-31 17:22:55', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003479, '20250731', 'd3d65803110fefed7b3afc00b135a24a', 'es', 1600088277, 1753953776, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/google-confirma-nuevos-pixel-chromecast-altavoz-inteligente-para-proximo-30-septiembre', '2025-07-31 17:22:56', '2025-07-31 17:22:56', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003480, '20250731', '5876eb2cb1979521ac8cb69d1c3a99ce', 'es', 1600048916, 1753953777, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/lg-wing-seguir-presentacion-directo', '2025-07-31 17:22:57', '2025-07-31 17:22:57', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003481, '20250731', 'fdda5018f141da511294806c15d0b150', 'es', 1600038735, 1753953778, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/proximo-samsung-unpacked-sera-septiembre-todo-apunta-a-que-presentaran-nuevo-galaxy-s20-economico', '2025-07-31 17:22:58', '2025-07-31 17:22:58', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003482, '20250731', 'ce57ee1d6d566302c0c331168e437add', 'es', 1599696092, 1753953779, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/huawei-developer-conference-2020-seguir-presentacion-directo', '2025-07-31 17:22:59', '2025-07-31 17:22:59', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003483, '20250731', '3ffb636adc2f650eaf98d3620ddb874b', 'es', 1599437281, 1753953780, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/xiaomi-poco-x3-seguir-presentacion-directo', '2025-07-31 17:23:00', '2025-07-31 17:23:00', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003484, '20250731', '0818abbe6f1fb0a8c51c0d0438413ef0', 'es', 1599184907, 1753953781, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/realme-ifa-2020-seguir-presentacion-directo-video', '2025-07-31 17:23:01', '2025-07-31 17:23:01', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003485, '20250731', 'c2b43ff88a1dd1533860964cff455069', 'es', 1599177932, 1753953782, 0, 'xataka.com', '[\"Artículos_Eventos\"]', 'https://www.xataka.com/eventos/honor-ifa-2020-seguir-presentacion-directo-video', '2025-07-31 17:23:02', '2025-07-31 17:23:02', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003486, '20250731', '8ba63ddee6893b101b90649f47baa0b6', 'es', 1753473636, 1753953784, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-26-julio', '2025-07-31 17:23:04', '2025-07-31 17:23:04', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003487, '20250731', '81fdfac628a9a04419ca1abdcea28de1', 'es', 1752868893, 1753953785, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-19-julio', '2025-07-31 17:23:05', '2025-07-31 17:23:05', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003488, '20250731', 'd89424f6fc1bd0b443d5864f457c1257', 'es', 1751659213, 1753953786, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-5-julio', '2025-07-31 17:23:06', '2025-07-31 17:23:06', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003489, '20250731', '78441207caa23ef3a0bedace313be5d7', 'es', 1750449668, 1753953787, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-21-junio', '2025-07-31 17:23:07', '2025-07-31 17:23:07', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003490, '20250731', 'e496612bd0dd957b4dc9d92b17f1b406', 'es', 1749844889, 1753953788, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-14-junio', '2025-07-31 17:23:08', '2025-07-31 17:23:08', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003491, '20250731', '871505e0a7a810aeffc90ac1fbcd17ac', 'es', 1749240109, 1753953789, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-7-junio', '2025-07-31 17:23:09', '2025-07-31 17:23:09', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003492, '20250731', '53086750f4a9bce20da7ec5de5832e6c', 'es', 1748635255, 1753953789, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-31-mayo', '2025-07-31 17:23:09', '2025-07-31 17:23:09', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003493, '20250731', '52756ee45e2043c9bac5fc5d5e31aebe', 'es', 1748030507, 1753953790, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-24-mayo', '2025-07-31 17:23:10', '2025-07-31 17:23:10', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003494, '20250731', 'd1f53d00d9b08481324e3e96cccbd500', 'es', 1747425684, 1753953791, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-17-mayo', '2025-07-31 17:23:11', '2025-07-31 17:23:11', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003495, '20250731', '37ee190622f1ab845d327ddbfc00706e', 'es', 1746820804, 1753953792, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-10-mayo-1', '2025-07-31 17:23:12', '2025-07-31 17:23:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003496, '20250731', '4da3790996061286f4105cd3092cae18', 'es', 1746216113, 1753953793, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-3-mayo', '2025-07-31 17:23:13', '2025-07-31 17:23:13', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003497, '20250731', '8992cfdd3b721326ee3fe3ee3bdba972', 'es', 1745611313, 1753953794, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-26-abril', '2025-07-31 17:23:14', '2025-07-31 17:23:14', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003498, '20250731', '4d07a80edcd479563279a06e157f3916', 'es', 1744401616, 1753953795, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-5-abril-1', '2025-07-31 17:23:15', '2025-07-31 17:23:15', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003499, '20250731', '7ad6f206d5f3636b6b62f0647e65448d', 'es', 1743796820, 1753953796, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-5-abril', '2025-07-31 17:23:16', '2025-07-31 17:23:16', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003500, '20250731', '2f9485f00278d031eb8f487f80852c13', 'es', 1743195636, 1753953797, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-29-marzo', '2025-07-31 17:23:17', '2025-07-31 17:23:17', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003501, '20250731', '597d1af76508ab9019ee01f768616c6b', 'es', 1742590824, 1753953798, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-22-marzo', '2025-07-31 17:23:18', '2025-07-31 17:23:18', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003502, '20250731', '7c10e2c8627dbe97ad95f26d87589f6c', 'es', 1741986043, 1753953799, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-15-marzo', '2025-07-31 17:23:19', '2025-07-31 17:23:19', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003503, '20250731', 'ff1f1fb72b2d5b294347d9d3490547f0', 'es', 1741381213, 1753953800, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-8-marzo', '2025-07-31 17:23:20', '2025-07-31 17:23:20', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003504, '20250731', '87bb569b488d9162e6ca96f27a2bc546', 'es', 1740776516, 1753953801, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-1-marzo', '2025-07-31 17:23:21', '2025-07-31 17:23:21', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003505, '20250731', '2988368a2064477119593d3ad2b6adf6', 'es', 1740171716, 1753953802, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-22-febrero', '2025-07-31 17:23:22', '2025-07-31 17:23:22', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003506, '20250731', '0c4c5d549400d5104cee5902b125df36', 'es', 1739968297, 1753953804, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/pension-bienestar-2025-abre-su-registro-todo-que-debes-saber-no-se-te-pasen-plazos', '2025-07-31 17:23:24', '2025-07-31 17:23:24', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003507, '20250731', '7d1c290c0688cac112139ea00fff950b', 'es', 1739566826, 1753953805, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-15-febrero', '2025-07-31 17:23:25', '2025-07-31 17:23:25', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003508, '20250731', 'e50c75ed35aba6ee163903796d1e0873', 'es', 1738962000, 1753953806, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-8-febrero', '2025-07-31 17:23:26', '2025-07-31 17:23:26', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003509, '20250731', '2c48ad547d7ccb366ce197cf137b1aa3', 'es', 1737752472, 1753953807, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-25-enero', '2025-07-31 17:23:27', '2025-07-31 17:23:27', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003510, '20250731', '14f592b0606fffd44c07ec44f3ac8941', 'es', 1737540072, 1753953807, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/mexico-te-abraza-respuesta-pais-a-amenazas-trump-asi-seran-ayudas-para-ciudadanos-deportados', '2025-07-31 17:23:27', '2025-07-31 17:23:27', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003511, '20250731', 'f4d2e31712d4f59759f91368ae22ddf6', 'es', 1737147690, 1753953808, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-18-enero', '2025-07-31 17:23:28', '2025-07-31 17:23:28', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003512, '20250731', '067c2c4948b08df021eb6ac6d9e4f7c6', 'es', 1736542838, 1753953809, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-11-enero', '2025-07-31 17:23:29', '2025-07-31 17:23:29', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003513, '20250731', 'dd5130ab6dac1670939c279c7ad8edd6', 'es', 1735938099, 1753953810, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-4-enero', '2025-07-31 17:23:30', '2025-07-31 17:23:30', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003514, '20250731', 'f080b63c8f453ec3844e2ebd3a2f2d4d', 'es', 1735333290, 1753953811, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-28-diciembre', '2025-07-31 17:23:31', '2025-07-31 17:23:31', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003515, '20250731', 'cde5c38ab684b9c4453462576465e9cf', 'es', 1734948185, 1753953812, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/gasolina-subira-mexico-a-partir-1-enero-2025-asi-quedara-aumento-cuota-iesp', '2025-07-31 17:23:32', '2025-07-31 17:23:32', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003516, '20250731', 'ae592695dda228ce80d8b14d847d3222', 'es', 1734728490, 1753953813, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-21-diciembre', '2025-07-31 17:23:33', '2025-07-31 17:23:33', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003517, '20250731', 'e544aff6c9f43bfdc0aedaadd5f27574', 'es', 1734258645, 1753953996, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/pension-imss-e-issste-jubilacion-mexico-a-partir-2025-afectara-para-bien-a-miles-personas', '2025-07-31 17:26:36', '2025-07-31 17:26:36', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003518, '20250731', '60229e109b5d3bd7bb93c63a3a69784d', 'es', 1734123638, 1753953997, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-14-diciembre', '2025-07-31 17:26:37', '2025-07-31 17:26:37', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003519, '20250731', 'ea14c485ddb9490e94ea610110a17fcc', 'es', 1733518830, 1753953998, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-7-diciembre', '2025-07-31 17:26:38', '2025-07-31 17:26:38', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003520, '20250731', 'f4db8b67f0515a16b247817f1861092e', 'es', 1732914111, 1753953999, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-30-noviembre', '2025-07-31 17:26:39', '2025-07-31 17:26:39', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003521, '20250731', 'f9e602949315009cc350828050a24140', 'es', 1732309275, 1753954000, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-23-noviembre', '2025-07-31 17:26:40', '2025-07-31 17:26:40', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003522, '20250731', '072574a1ef14cd07a691757bf4ca9c2a', 'es', 1731704514, 1753954002, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-16-noviembre', '2025-07-31 17:26:42', '2025-07-31 17:26:42', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003523, '20250731', 'e74170267a8d2645e8e0c60d488ee752', 'es', 1731099702, 1753954003, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-9-noviembre', '2025-07-31 17:26:43', '2025-07-31 17:26:43', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003524, '20250731', '28eaf7b30f9549757eee78aed5a195a6', 'es', 1730982706, 1753954004, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/pension-bienestar-calendario-pagos-final-2024-viene-sorpresa-hay-triple-pago', '2025-07-31 17:26:44', '2025-07-31 17:26:44', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003525, '20250731', '37db264d8bb0a27678b7ba2ad9359f70', 'es', 1730494892, 1753954052, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-2-noviembre', '2025-07-31 17:27:32', '2025-07-31 17:27:32', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003526, '20250731', '851f94f3ef8230c8363d79473a9d5e60', 'es', 1729886517, 1753954093, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-26-octubre', '2025-07-31 17:28:13', '2025-07-31 17:28:13', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003527, '20250731', 'be319de82ba1ac248fab10b1c008823b', 'es', 1729281677, 1753954095, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-19-octubre', '2025-07-31 17:28:15', '2025-07-31 17:28:15', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003528, '20250731', 'b47324a5a1e1b1cce427ce9749825700', 'es', 1728676897, 1753954098, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-12-octubre', '2025-07-31 17:28:18', '2025-07-31 17:28:18', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003529, '20250731', '59d14eb405838cbf6413e6f8f49dcf56', 'es', 1728072054, 1753954099, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-5-octubre', '2025-07-31 17:28:19', '2025-07-31 17:28:19', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003530, '20250731', '1d134787d67aa8e71bf4ed7ed4b3888d', 'es', 1727467300, 1753954100, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-28-septiembre', '2025-07-31 17:28:20', '2025-07-31 17:28:20', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003531, '20250731', '1dc450acdfa6a8f3b18babcd0ef043c1', 'es', 1726862444, 1753954101, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-21-septiembre', '2025-07-31 17:28:21', '2025-07-31 17:28:21', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003532, '20250731', '4887415a2f29024da19ebb99c4374ea8', 'es', 1726052495, 1753954102, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/pension-bienestar-calendario-pagos-para-septiembre-octubre-2024', '2025-07-31 17:28:22', '2025-07-31 17:28:22', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003533, '20250731', '057b91307624a9b50d4186a485c164e9', 'es', 1725652915, 1753954103, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-7-septiembre', '2025-07-31 17:28:23', '2025-07-31 17:28:23', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003534, '20250731', '4371291efaa4441c4372d20cb58788f1', 'es', 1725048057, 1753954104, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-31-agosto', '2025-07-31 17:28:24', '2025-07-31 17:28:24', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003535, '20250731', '36f68202d79cc4a6644bb8d2392747c4', 'es', 1724850112, 1753954105, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/asi-era-internet-mexico-hace-solo-10-anos-asi-puede-volver-a-serlo-polemica-decision-poner-fin-al-ift', '2025-07-31 17:28:25', '2025-07-31 17:28:25', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003536, '20250731', '01de98eb5ee6ab5502490fe5896555f8', 'es', 1724490000, 1753954105, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/todas-formas-entrar-legalmente-a-eeuu-mexico-visa-pasaporte-incluso-documentos', '2025-07-31 17:28:25', '2025-07-31 17:28:25', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003537, '20250731', '40ce6cb7ac801df0a9949a9cfae6c4ae', 'es', 1724443299, 1753954139, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/hoy-no-circula-sabatino-que-autos-pueden-circular-cuales-descansan-24-agosto', '2025-07-31 17:28:59', '2025-07-31 17:28:59', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003538, '20250731', 'db74a3df04a7135cc1dc5f2321c43653', 'es', 1724153400, 1753954140, 0, 'xataka.com', '[\"Artículos_México\"]', 'https://www.xataka.com/mexico/que-aztecas-no-pudieron-conquistar-cambio-climatico-ha-derrumbado-cae-mitica-piramide-mexico', '2025-07-31 17:29:00', '2025-07-31 17:29:00', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003838, '20250801', '9e34528da9bf22e6acdbe648df0e5ed0', 'ru', 1754022900, 1754038591, 0, 'ura.news', '[\"Природа\"]', 'https://ura.news/news/1052973059', '2025-08-01 16:56:31', '2025-08-01 16:56:31', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003839, '20250801', '01b235fbee405adf0f0487efde025a55', 'ru', 1754020800, 1754038591, 0, 'ura.news', '[\"Развлечения\"]', 'https://ura.news/news/1052972110', '2025-08-01 16:56:31', '2025-08-01 16:56:31', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003840, '20250801', '82686bccad873e768d2f9055305313f8', 'ru', 1754020105, 1754038595, 0, 'ura.news', '[\"Природа\"]', 'https://ura.news/news/1052973025', '2025-08-01 16:56:35', '2025-08-01 16:56:35', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003841, '20250801', 'd884dc1aa40da5a4b7a1dccda3a50eaa', 'ru', 1754020140, 1754038596, 0, 'ura.news', '[\"Развлечения\"]', 'https://ura.news/news/1052973027', '2025-08-01 16:56:36', '2025-08-01 16:56:36', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003842, '20250801', '7b3c061405112a4c41db3cca41536441', 'ru', 1754003103, 1754038632, 0, 'ria.ru', '[\"Спорт_Теннис\"]', 'https://rsport.ria.ru/20250801/medvedev-toronto-2032761763.html', '2025-08-01 16:57:12', '2025-08-01 16:57:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003843, '20250801', '114c69f42df338e4049829230cc69da9', 'ru', 1754013602, 1754038632, 0, 'ria.ru', '[\"Спорт_Хоккей\"]', 'https://rsport.ria.ru/20250801/chaykovski-2032774677.html', '2025-08-01 16:57:12', '2025-08-01 16:57:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003844, '20250801', 'e4a1959fa8008dde9720c60df9294f06', 'ru', 1753956243, 1754038632, 0, 'ria.ru', '[\"Спорт_Бокс и ММА\"]', 'https://rsport.ria.ru/20250731/makgregor-2032695191.html', '2025-08-01 16:57:12', '2025-08-01 16:57:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003845, '20250801', '5d7e39a2ebd62697ecb4d3769bda7176', 'ru', 1754013905, 1754038632, 0, 'ria.ru', '[\"Спорт_Футбол\"]', 'https://rsport.ria.ru/20250801/chervichenko-2032781228.html', '2025-08-01 16:57:12', '2025-08-01 16:57:12', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003846, '20250801', 'ef4b457b4af81aa0ee5cb2c387f890cf', 'ru', 1753974006, 1754038636, 0, 'ria.ru', '[\"Спорт_Хоккей\"]', 'https://rsport.ria.ru/20250731/limozh-2032730126.html', '2025-08-01 16:57:16', '2025-08-01 16:57:16', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003847, '20250801', '8dc3f2e40e4b9bf883d2891bc6f1cd73', 'ru', 1753869725, 1754038636, 0, 'ria.ru', '[\"Спорт_Бокс и ММА\"]', 'https://rsport.ria.ru/20250730/doping-2032440407.html', '2025-08-01 16:57:16', '2025-08-01 16:57:16', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003848, '20250801', 'fe8682ea0821c4d2194a9066db56dbad', 'ru', 1754003041, 1754038636, 0, 'ria.ru', '[\"Спорт_Теннис\"]', 'https://rsport.ria.ru/20250801/zverev-2032760978.html', '2025-08-01 16:57:16', '2025-08-01 16:57:16', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003849, '20250801', 'b0a39bd7b90a620887755fbbdbf3ae88', 'ru', 1754017323, 1754038638, 0, 'ria.ru', '[\"Спорт_Фигурное катание\"]', 'https://rsport.ria.ru/20250801/zhulin-2032790191.html', '2025-08-01 16:57:18', '2025-08-01 16:57:18', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003850, '20250801', '9158162a5ebfa638d63f7ef6e118f21e', 'ru', 1753956304, 1754038639, 0, 'ria.ru', '[\"Спорт_Хоккей\"]', 'https://rsport.ria.ru/20250731/avangard-2032697746.html', '2025-08-01 16:57:19', '2025-08-01 16:57:19', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003851, '20250801', '73fed9d2eb61ed882b764dbd97c6ebeb', 'ru', 1753981382, 1754038640, 0, 'ria.ru', '[\"Спорт_Теннис\"]', 'https://rsport.ria.ru/20250801/tennis-2032740750.html', '2025-08-01 16:57:20', '2025-08-01 16:57:20', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003852, '20250801', '8593b718d5de13abc0c1ccc9d3371907', 'ru', 1753923600, 1754038643, 0, 'ria.ru', '[\"Спорт_Фигурное катание\"]', 'https://rsport.ria.ru/20250731/isu-ubytki-2032510966.html', '2025-08-01 16:57:23', '2025-08-01 16:57:23', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003853, '20250801', '38e45106a84cdaed9cc30df0125bb1fa', 'ru', 1753956187, 1754038643, 0, 'ria.ru', '[\"Спорт_Хоккей\"]', 'https://rsport.ria.ru/20250731/dinamo-2032693074.html', '2025-08-01 16:57:23', '2025-08-01 16:57:23', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003854, '20250801', '696075ec95b66722ae4bbbf3611be8c8', 'ru', 1753848065, 1754038645, 0, 'ria.ru', '[\"Спорт_Бокс и ММА\"]', 'https://rsport.ria.ru/20250730/boks-2031220801.html', '2025-08-01 16:57:25', '2025-08-01 16:57:25', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003855, '20250801', '70d60128cd07a310fc64faddde38aac9', 'ru', 1753858861, 1754038646, 0, 'ria.ru', '[\"Спорт_Фигурное катание\"]', 'https://rsport.ria.ru/20250730/zhurova-2032388441.html', '2025-08-01 16:57:26', '2025-08-01 16:57:26', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003856, '20250801', '49f1379bfc21dfa9edfecb2f4d23a48d', 'ru', 1753949108, 1754038646, 0, 'ria.ru', '[\"Спорт_Хоккей\"]', 'https://rsport.ria.ru/20250731/neftekhimik-2032662160.html', '2025-08-01 16:57:26', '2025-08-01 16:57:26', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003857, '20250801', '0c2f25c08d2bcc64a059d3aadc1fc296', 'ru', 1753837383, 1754038649, 0, 'ria.ru', '[\"Спорт_Бокс и ММА\"]', 'https://rsport.ria.ru/20250730/umar-2032288001.html', '2025-08-01 16:57:29', '2025-08-01 16:57:29', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003858, '20250801', 'd52470196211bb81355bfe935cfd0f37', 'ru', 1753970706, 1754038651, 0, 'ria.ru', '[\"Спорт_Теннис\"]', 'https://rsport.ria.ru/20250731/andreeva-2032729027.html', '2025-08-01 16:57:31', '2025-08-01 16:57:31', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003859, '20250801', 'eefd58f59a34c406242c9ccd5103a40d', 'ru', 1753787047, 1754038652, 0, 'ria.ru', '[\"Спорт_Бокс и ММА\"]', 'https://rsport.ria.ru/20250729/tszyu-2032222153.html', '2025-08-01 16:57:32', '2025-08-01 16:57:32', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003860, '20250801', 'dfbba784607719298dbcac6d3b7d22df', 'ru', 1753963382, 1754038654, 0, 'ria.ru', '[\"Спорт_Теннис\"]', 'https://rsport.ria.ru/20250731/hachanov-2032716365.html', '2025-08-01 16:57:34', '2025-08-01 16:57:34', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003861, '20250801', '688890af0ee89df2bd7722fe2f8a737e', 'ru', 1753938004, 1754038655, 0, 'ria.ru', '[\"Спорт_Хоккей\"]', 'https://rsport.ria.ru/20250731/morozov-2032572362.html', '2025-08-01 16:57:35', '2025-08-01 16:57:35', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003862, '20250801', 'e0bd57340d8812c6dcede341b47b19ad', 'ru', 1753776300, 1754038656, 0, 'ria.ru', '[\"Спорт_Бокс и ММА\"]', 'https://rsport.ria.ru/20250729/trener--2032165086.html', '2025-08-01 16:57:36', '2025-08-01 16:57:36', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003863, '20250801', 'a240eee27c10ab5d78c5d05d08bdbba7', 'ru', 1753855325, 1754038656, 0, 'ria.ru', '[\"Спорт_Фигурное катание\"]', 'https://rsport.ria.ru/20250730/olimpiada-2032366673.html', '2025-08-01 16:57:36', '2025-08-01 16:57:36', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003864, '20250801', 'ade8a30bb2f63c643d04e9334124ffae', 'ru', 1753862526, 1754038658, 0, 'ria.ru', '[\"Спорт_Хоккей\"]', 'https://rsport.ria.ru/20250730/traktor-2032407856.html', '2025-08-01 16:57:38', '2025-08-01 16:57:38', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003865, '20250801', '20c0e84cb652b42ab6f48e73b5af1f05', 'ru', 1753722060, 1754038659, 0, 'ria.ru', '[\"Спорт_Бокс и ММА\"]', 'https://rsport.ria.ru/20250729/insult-2032048451.html', '2025-08-01 16:57:39', '2025-08-01 16:57:39', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003866, '20250801', '16358960e432fc9a06518cd1b2bf97c3', 'ru', 1753858807, 1754038661, 0, 'ria.ru', '[\"Спорт_Хоккей\"]', 'https://rsport.ria.ru/20250730/khafizullin--2032387222.html', '2025-08-01 16:57:41', '2025-08-01 16:57:41', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003867, '20250801', '8c664a7137493e28c16b6c8c357f72c7', 'ru', 1753700705, 1754038663, 0, 'ria.ru', '[\"Спорт_Бокс и ММА\"]', 'https://rsport.ria.ru/20250728/kavi-2032021522.html', '2025-08-01 16:57:43', '2025-08-01 16:57:43', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003868, '20250812', 'dbef344e02cf315030e3ffa2c788c206', 'pl', 1754955083, 1754981177, 0, 'se.pl', '[\"Wiadomości_Polityka\"]', 'https://polityka.se.pl/wiadomosci/czlowiek-nawrockiego-wprost-o-relacjach-prezydenta-z-rzadem-trump-w-tle-aa-2pDW-torP-dNkk.html', '2025-08-12 14:46:17', '2025-08-12 14:46:17', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003869, '20250812', 'b0f086eded0b60b61080706d793aaee9', 'pl', 1754953857, 1754981181, 0, 'se.pl', '[\"Wiadomości_Polityka\"]', 'https://polityka.se.pl/wiadomosci/oto-plany-prezydenta-nawrockiego-chodzi-o-wsi-aa-Am7Z-wcHa-Z232.html', '2025-08-12 14:46:21', '2025-08-12 14:46:21', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003870, '20250812', '8ead1eeb6d5bd1e255a1d6d62579500d', 'pl', 1754950249, 1754981185, 0, 'se.pl', '[\"Wiadomości_Polityka\"]', 'https://polityka.se.pl/wiadomosci/milion-z-kpo-ma-trafic-dla-zony-posla-milionera-lacki-sprawa-jest-czysta-aa-Svts-WxkG-hfe8.html', '2025-08-12 14:46:25', '2025-08-12 14:46:25', 'molitech');
INSERT INTO `date_crawl_info` VALUES (143003871, '20250812', '90f0c674278d6dddc78fa93d8dd5c615', 'pl', 1754948630, 1754981188, 0, 'se.pl', '[\"Wiadomości_Polityka\"]', 'https://polityka.se.pl/wiadomosci/jozefaciuk-szczerze-o-konflikcie-z-ko-nie-boje-sie-ze-mnie-wyrzuca-aa-TQiK-WUBf-aQUa.html', '2025-08-12 14:46:28', '2025-08-12 14:46:28', 'molitech');

-- ----------------------------
-- Table structure for day_rec_feed_info
-- ----------------------------
DROP TABLE IF EXISTS `day_rec_feed_info`;
CREATE TABLE `day_rec_feed_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `time` bigint NULL DEFAULT NULL,
  `fid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_time_country`(`time` ASC, `country` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 560 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of day_rec_feed_info
-- ----------------------------

-- ----------------------------
-- Table structure for distributed_lock
-- ----------------------------
DROP TABLE IF EXISTS `distributed_lock`;
CREATE TABLE `distributed_lock`  (
  `lock_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lock_owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `expire_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of distributed_lock
-- ----------------------------

-- ----------------------------
-- Table structure for feed_dup
-- ----------------------------
DROP TABLE IF EXISTS `feed_dup`;
CREATE TABLE `feed_dup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'fids',
  `uid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'uid',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ctime',
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'uptime',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_feed_dup_uid`(`uid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57484 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_dup
-- ----------------------------

-- ----------------------------
-- Table structure for feed_dup_record
-- ----------------------------
DROP TABLE IF EXISTS `feed_dup_record`;
CREATE TABLE `feed_dup_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `cur` int NOT NULL DEFAULT 0,
  `fids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_uid`(`uid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1378 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_dup_record
-- ----------------------------

-- ----------------------------
-- Table structure for feed_event
-- ----------------------------
DROP TABLE IF EXISTS `feed_event`;
CREATE TABLE `feed_event`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'Fid',
  `publish_time` bigint NULL DEFAULT 0 COMMENT '发布时间',
  `channel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'channel',
  `category` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'category\n',
  `country` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'country',
  `language` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'language',
  `model` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'model',
  `os_ver` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'os_ver',
  `req` bigint NULL DEFAULT 0 COMMENT '下发次数',
  `imp` bigint NULL DEFAULT 0 COMMENT 'imp',
  `click` bigint NULL DEFAULT 0 COMMENT 'click',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'ctime',
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'uptime',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_event_fid`(`fid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24514444 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_event
-- ----------------------------

-- ----------------------------
-- Table structure for feed_info
-- ----------------------------
DROP TABLE IF EXISTS `feed_info`;
CREATE TABLE `feed_info`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `category` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `country` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `language` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ts` bigint UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `contentxml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_fid`(`fid` ASC) USING BTREE,
  UNIQUE INDEX `uk_title`(`title` ASC) USING BTREE,
  INDEX `idx_ts`(`ts` ASC) USING BTREE,
  INDEX `idx_feed_info_ctime`(`ctime` ASC) USING BTREE,
  INDEX `idx_ctime_country`(`ctime` ASC, `country` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98836276 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_info
-- ----------------------------

-- ----------------------------
-- Table structure for feed_rank
-- ----------------------------
DROP TABLE IF EXISTS `feed_rank`;
CREATE TABLE `feed_rank`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rank_ts` bigint NOT NULL DEFAULT 0,
  `news_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '0标识删除1标识有用',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `rank_ts`(`rank_ts` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25168 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_rank
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_a_template
-- ----------------------------
INSERT INTO `feed_spider_a_template` VALUES (1, 'div[class=bstn-hl-wrapper]', 'a', 'href', '2025-08-04 16:58:28', '2025-08-04 16:59:00');
INSERT INTO `feed_spider_a_template` VALUES (2, 'div[class=bastian-feed-item]', 'a', 'href', '2025-08-04 16:58:54', '2025-08-04 16:59:02');
INSERT INTO `feed_spider_a_template` VALUES (3, 'div[class=element__headline]', 'a', 'href', '2025-08-12 14:57:17', '2025-08-12 14:57:17');
INSERT INTO `feed_spider_a_template` VALUES (6, '2', '2', '2', '2025-08-14 18:22:18', '2025-08-14 18:22:18');

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_createdtime`(`createdtime` ASC) USING BTREE,
  INDEX `idx_updatedtime`(`updatedtime` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_c_template
-- ----------------------------
INSERT INTO `feed_spider_c_template` VALUES (1, '1', '1', '2', '2', 'div.mc-column.content-text.active-extra-styles', '2025-08-06 10:22:24', '2025-08-06 11:10:10', NULL, NULL);
INSERT INTO `feed_spider_c_template` VALUES (2, '2', '1', '3', '3', 'div.block_list__container', '2025-08-12 15:14:42', '2025-08-12 15:18:51', 'div.tags.gl_plugin', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_content_template
-- ----------------------------
INSERT INTO `feed_spider_content_template` VALUES (2, NULL, 'meta[property=og:description]', '2025-08-06 11:07:57', '2025-08-06 11:07:57', 'content');
INSERT INTO `feed_spider_content_template` VALUES (3, NULL, 'meta[name=description]', '2025-08-12 15:16:29', '2025-08-12 15:16:29', 'content');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_fulltext_filter_template
-- ----------------------------

-- ----------------------------
-- Table structure for feed_spider_img_template
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_img_template`;
CREATE TABLE `feed_spider_img_template`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fathertag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '父标签',
  `childtag` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子标签',
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `target_attr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '提取的目标属性名，例如 datetime、href、content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_img_template
-- ----------------------------
INSERT INTO `feed_spider_img_template` VALUES (1, NULL, 'meta[property=og:image]', '2025-08-06 10:42:28', '2025-08-06 10:42:33', 'content');

-- ----------------------------
-- Table structure for feed_spider_task
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_task`;
CREATE TABLE `feed_spider_task`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `server` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL COMMENT '任务状态\r\n0：未运行\r\n1：执行中\r\n',
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `publisher` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `interval` int NOT NULL DEFAULT 30,
  `data_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'test' COMMENT '数据状态：test-测试数据，prod-正式数据',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_status`(`status` ASC) USING BTREE,
  INDEX `idx_publisher_status`(`publisher` ASC, `status` ASC) USING BTREE,
  INDEX `idx_country_status`(`country` ASC, `status` ASC) USING BTREE,
  INDEX `idx_data_status`(`data_status` ASC) USING BTREE,
  INDEX `idx_publisher_data_status`(`publisher` ASC, `data_status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_task
-- ----------------------------
INSERT INTO `feed_spider_task` VALUES (97, 'pl', 'pl', NULL, 2, '[9]', 'PolitykaSuperExpress', '2025-08-15 18:11:45', '2025-08-15 18:42:32', 5, 'test');
INSERT INTO `feed_spider_task` VALUES (98, 'pl', 'pl', NULL, 2, '[10]', 'PolitykaSuperExpress', '2025-08-15 18:11:45', '2025-08-15 18:42:37', 30, 'test');
INSERT INTO `feed_spider_task` VALUES (99, 'pl', 'pl', NULL, 0, '[11]', 'PolitykaSuperExpress', '2025-08-15 18:11:45', '2025-08-15 18:11:45', 30, 'test');
INSERT INTO `feed_spider_task` VALUES (100, 'pl', 'pl', NULL, 0, '[12]', 'PolitykaSuperExpress', '2025-08-15 18:11:45', '2025-08-15 18:11:45', 30, 'test');

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
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务资源监控表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feed_spider_task_resource_monitor
-- ----------------------------
INSERT INTO `feed_spider_task_resource_monitor` VALUES (1, 31, 1754632820214, 1754634124041, 1303827, 0, 24.517657390111612, 96499320, 96499320, 2, 20, 20, 0, 0, 0, 'SUCCESS', NULL, 1484375000, 17271934089999, '944', '2025-08-08 14:00:21');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (2, 31, 1754634620208, 1754635872724, 1252516, 0.07859310477356399, 25.054738483270146, 101736536, 101736536, 2, 20, 20, 0, 0, 0, 'SUCCESS', NULL, 1015625000, 19020595922700, '944', '2025-08-08 14:30:20');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (3, 31, 1754636420484, 1754637405804, 985320, 0.1030760981735035, 25.323242545444337, 118627904, 118627904, 2, 20, 20, 0, 0, 0, 'SUCCESS', NULL, 1093750000, 20553691044400, '944', '2025-08-08 15:00:21');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (4, 31, 1754638220224, 1754639426936, 1206712, 0.10488219023299422, 18.543511409427037, 142374904, 142374904, 2, 20, 20, 0, 0, 0, 'SUCCESS', NULL, 1312500000, 22574825730700, '944', '2025-08-08 15:30:20');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (5, 31, 1754640020218, 1754641136747, 1116529, 0.13994673033800503, 24.311192495976186, 68681240, 68681240, 2, 20, 20, 0, 0, 0, 'SUCCESS', NULL, 1640625000, 24284605514900, '944', '2025-08-08 16:00:20');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (6, 31, 1754641820225, NULL, NULL, 0, 33.46907353660349, 75797368, 75797368, 0, 5, 6, 0, 0, 0, 'RUNNING', NULL, 203125000, 24968116160100, '944', '2025-08-08 16:30:20');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (7, 35, 1754984543313, 1754984550775, 7462, 10.680082024638244, 45.58870698326469, 106599552, 106599552, 3, 73, 73, 75, 0, 0, 'SUCCESS', NULL, 812500000, 5428665338200, '19364', '2025-08-12 15:42:24');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (8, 35, 1754985480464, 1754985487363, 6899, 0, 31.816607843071598, 107488664, 107488664, 3, 72, 72, 69, 0, 0, 'SUCCESS', NULL, 1046875000, 6365252168300, '20488', '2025-08-12 15:58:01');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (9, 35, 1754985757247, 1754985757259, 12, 0, 21.617723778914932, 112389832, 112389832, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 0, 6635149921800, '20488', '2025-08-12 16:02:37');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (10, 37, 1754986105622, 1754986236189, 130567, 1.5796608914200654, 27.047913416718117, 174326480, 174326480, 3, 72, 72, 1717, 0, 0, 'SUCCESS', NULL, 2078125000, 7114079348400, '27680', '2025-08-12 16:08:26');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (11, 39, 1754986572727, 1754986573246, 519, 0, 100, 64982328, 64982328, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 375000000, 7451135164000, '15540', '2025-08-12 16:16:13');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (12, 39, 1754986596830, 1754986715331, 118501, 0, 26.38920311867965, 166731264, 166731264, 3, 71, 71, 1587, 0, 0, 'SUCCESS', NULL, 1625000000, 7593221336900, '15540', '2025-08-12 16:16:37');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (13, 41, 1754987279274, 1754987388134, 108860, 0, 32.46195941634238, 168874240, 168874240, 3, 71, 71, 1445, 0, 0, 'SUCCESS', NULL, 2484375000, 8266023515200, '24604', '2025-08-12 16:28:00');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (14, 43, 1754987592839, 1754987696076, 103237, 0, 15.472795805973993, 63242056, 63242056, 3, 71, 71, 1370, 0, 0, 'SUCCESS', NULL, 2265625000, 8573965694099, '29236', '2025-08-12 16:33:13');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (15, 43, 1754989368858, 1754989459629, 90771, 0, 13.045834184628047, 160429104, 160429104, 3, 73, 73, 1181, 0, 0, 'SUCCESS', NULL, 1484375000, 10337504697000, '29236', '2025-08-12 17:02:49');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (16, 45, 1754990585455, 1754990691514, 106059, 2.268791669729791, 13.247867962793103, 85938080, 85938080, 3, 73, 73, 1375, 0, 0, 'SUCCESS', NULL, 2421875000, 11569404860000, '25344', '2025-08-12 17:23:06');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (17, 45, 1754992371948, 1754992489861, 117913, 1.5373234317456632, 13.23612720610381, 167044656, 167044656, 3, 73, 73, 1537, 0, 0, 'SUCCESS', NULL, 1890625000, 13367739501600, '25344', '2025-08-12 17:52:52');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (18, 47, 1754993658242, 1754993780625, 122383, 0, 14.77360329346551, 48151224, 48151224, 3, 73, 73, 1585, 0, 0, 'SUCCESS', NULL, 2515625000, 14658514713700, '27228', '2025-08-12 18:14:19');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (19, 47, 1754995447278, 1754995541460, 94182, 1.327686947698361, 10.478386078983926, 130753720, 130753720, 3, 73, 73, 1225, 0, 0, 'SUCCESS', NULL, 1281250000, 16419317548500, '27228', '2025-08-12 18:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (20, 47, 1754997247278, 1754997341175, 93897, 1.1981247998592428, 10.439158155319017, 74932328, 74932328, 3, 72, 72, 1239, 0, 0, 'SUCCESS', NULL, 1171875000, 18219065346900, '27228', '2025-08-12 19:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (21, 47, 1754999047280, 1754999161307, 114027, 1.0688373441873804, 10.45174575183716, 163356840, 163356840, 3, 72, 72, 1507, 0, 0, 'SUCCESS', NULL, 1453125000, 20039197565000, '27228', '2025-08-12 19:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (22, 47, 1755000847274, 1755000955045, 107771, 0.9570368013572188, 10.924340369825691, 122743312, 122743312, 3, 72, 72, 1424, 0, 0, 'SUCCESS', NULL, 1156250000, 21832920198800, '27228', '2025-08-12 20:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (23, 47, 1755002647290, 1755002773350, 126060, 0.8181728768640553, 10.640499177695217, 94019688, 94019688, 3, 72, 72, 1668, 0, 0, 'SUCCESS', NULL, 1281250000, 23651225114700, '27228', '2025-08-12 20:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (24, 47, 1755004447275, 1755004620392, 173117, 0.6950400980208126, 10.485318534748878, 78659392, 78659392, 3, 72, 72, 2295, 0, 0, 'SUCCESS', NULL, 1515625000, 25498267364100, '27228', '2025-08-12 21:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (25, 47, 1755006247281, 1755006393637, 146356, 0.8220641359512747, 10.669483613603848, 77191680, 77191680, 3, 73, 73, 1912, 0, 0, 'SUCCESS', NULL, 1531250000, 27271527402300, '27228', '2025-08-12 21:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (26, 47, 1755008047276, 1755008196735, 149459, 0.7527209965779236, 10.696296562826358, 85428104, 85428104, 3, 73, 73, 1954, 0, 0, 'SUCCESS', NULL, 1687500000, 29074625001200, '27228', '2025-08-12 22:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (27, 47, 1755009847283, 1755009980542, 133259, 0.9263060496187174, 10.312667648283202, 99208296, 99208296, 3, 73, 73, 1740, 0, 0, 'SUCCESS', NULL, 1796875000, 30858433063300, '27228', '2025-08-12 22:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (28, 47, 1755011647280, 1755011818443, 171163, 0.6573308503771593, 10.538816690916807, 123325456, 123325456, 3, 73, 73, 2237, 0, 0, 'SUCCESS', NULL, 4390625000, 32696318098500, '27228', '2025-08-12 23:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (29, 47, 1755013447275, 1755013593868, 146593, 0.7781115961270871, 10.786447715860048, 56473608, 56473608, 3, 73, 73, 1917, 0, 0, 'SUCCESS', NULL, 2953125000, 34471748819000, '27228', '2025-08-12 23:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (30, 47, 1755015247278, 1755015368837, 121559, 0.9769132689037027, 12.228305381061656, 97866128, 97866128, 3, 73, 73, 1586, 0, 0, 'SUCCESS', NULL, 3015625000, 36246693483100, '27228', '2025-08-13 00:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (31, 47, 1755017047277, 1755017162213, 114936, 1.0741196706182563, 10.377038448959642, 53061248, 53061248, 3, 73, 73, 1500, 0, 0, 'SUCCESS', NULL, 3171875000, 38040042507700, '27228', '2025-08-13 00:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (32, 47, 1755018847276, 1755018936570, 89294, 1.1724097229506485, 10.877487059433877, 104941776, 104941776, 3, 73, 73, 1163, 0, 0, 'SUCCESS', NULL, 2984375000, 39814406792500, '27228', '2025-08-13 01:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (33, 47, 1755020647284, 1755020745882, 98598, 1.251944447852269, 10.614214175057013, 76950960, 76950960, 3, 72, 72, 1302, 0, 0, 'SUCCESS', NULL, 3062500000, 41623714002700, '27228', '2025-08-13 01:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (34, 47, 1755022447281, 1755022534554, 87273, 1.2892649242625962, 10.932027381591613, 58358864, 58358864, 3, 72, 72, 1152, 0, 0, 'SUCCESS', NULL, 3000000000, 43412370446300, '27228', '2025-08-13 02:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (35, 47, 1755024247275, 1755024333300, 86025, 1.4349008848352995, 10.930846827148411, 49281688, 49281688, 3, 72, 72, 1135, 0, 0, 'SUCCESS', NULL, 3406250000, 45211128998200, '27228', '2025-08-13 02:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (36, 47, 1755026047269, 1755026145803, 98534, 1.1734732416146918, 10.908073912590933, 49969000, 49969000, 3, 72, 72, 1300, 0, 0, 'SUCCESS', NULL, 3328125000, 47023630722800, '27228', '2025-08-13 03:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (37, 47, 1755027847275, 1755027946084, 98809, 1.091138233181284, 10.675479376564635, 68585664, 68585664, 3, 73, 73, 1287, 0, 0, 'SUCCESS', NULL, 3312500000, 48823912069300, '27228', '2025-08-13 03:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (38, 47, 1755029647279, 1755029745698, 98419, 1.2541979255591205, 10.944106804566811, 95153576, 95153576, 3, 73, 73, 1283, 0, 0, 'SUCCESS', NULL, 6125000000, 50623525916400, '27228', '2025-08-13 04:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (39, 47, 1755031447280, 1755031543457, 96177, 1.0560177244239977, 11.065784165970172, 65193264, 65193264, 3, 73, 73, 1253, 0, 0, 'SUCCESS', NULL, 4390625000, 52421283484000, '27228', '2025-08-13 04:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (40, 47, 1755033247278, 1755033338387, 91109, 1.2692854573737125, 11.355767454936483, 104306720, 104306720, 3, 73, 73, 1187, 0, 0, 'SUCCESS', NULL, 4687500000, 54216200663800, '27228', '2025-08-13 05:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (41, 47, 1755035047269, 1755035136303, 89034, 1.1407304533701368, 10.756943771628647, 87628064, 87628064, 3, 73, 73, 1158, 0, 0, 'SUCCESS', NULL, 4656250000, 56014129435300, '27228', '2025-08-13 05:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (42, 47, 1755036847268, 1755036945870, 98602, 1.0458831954787273, 11.024555065682605, 79619736, 79619736, 3, 73, 73, 1284, 0, 0, 'SUCCESS', NULL, 4515625000, 57823697246800, '27228', '2025-08-13 06:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (43, 47, 1755038647276, 1755038744727, 97451, 1.0903113937242028, 10.674279167735323, 79735744, 79735744, 3, 73, 73, 1270, 0, 0, 'SUCCESS', NULL, 4718750000, 59622553306500, '27228', '2025-08-13 06:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (44, 47, 1755040447278, 1755040546819, 99541, 1.0831016691254494, 11.792981255500589, 87126224, 87126224, 3, 73, 73, 1297, 0, 0, 'SUCCESS', NULL, 4546875000, 61424645960800, '27228', '2025-08-13 07:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (45, 47, 1755042247282, 1755042345051, 97769, 0.8949719835720047, 10.81142241303028, 48232648, 48232648, 3, 73, 73, 1273, 0, 0, 'SUCCESS', NULL, 4984375000, 63222879066500, '27228', '2025-08-13 07:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (46, 47, 1755044047275, 1755044135437, 88162, 1.364868945938948, 10.432220150268867, 73497648, 73497648, 3, 73, 73, 1148, 0, 0, 'SUCCESS', NULL, 5296875000, 65013251698200, '27228', '2025-08-13 08:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (47, 47, 1755045847282, 1755045944926, 97644, 1.0882956954777099, 10.799068525084976, 60087648, 60087648, 3, 73, 73, 1273, 0, 0, 'SUCCESS', NULL, 5187500000, 66822739479300, '27228', '2025-08-13 08:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (48, 47, 1755047647268, 1755047748520, 101252, 1.0803989377152161, 10.58458080993625, 59258208, 59258208, 3, 73, 73, 1319, 0, 0, 'SUCCESS', NULL, 7718750000, 68626331549600, '27228', '2025-08-13 09:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (49, 47, 1755049447288, 1755049549171, 101883, 1.135041574518756, 11.756405570221373, 64044640, 64044640, 3, 73, 73, 1326, 0, 0, 'SUCCESS', NULL, 6125000000, 70426984212800, '27228', '2025-08-13 09:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (50, 47, 1755051247285, 1755051345263, 97978, 1.1322921908467176, 18.630829731451083, 68858776, 68858776, 3, 73, 73, 1275, 0, 0, 'SUCCESS', NULL, 6296875000, 72223088901400, '27228', '2025-08-13 10:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (51, 47, 1755053047350, 1755053148547, 101197, 1.0344966578260169, 18.40084361018076, 73025736, 73025736, 3, 73, 73, 1301, 0, 0, 'SUCCESS', NULL, 6281250000, 74026373908900, '27228', '2025-08-13 10:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (52, 47, 1755054847337, 1755054956192, 108855, 1.5505202811921042, 20.65760865837746, 76609400, 76609400, 3, 73, 73, 1415, 0, 0, 'SUCCESS', NULL, 6718750000, 75834000173200, '27228', '2025-08-13 11:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (53, 47, 1755060247313, 1755060356910, 109597, 1.2403535848305816, 12.614040412630112, 80288344, 80288344, 3, 73, 73, 1429, 0, 0, 'SUCCESS', NULL, 6593750000, 81234737413200, '27228', '2025-08-13 12:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (54, 47, 1755062047317, 1755062148838, 101521, 1.2466733018531164, 13.272517940589134, 81627200, 81627200, 3, 73, 73, 1322, 0, 0, 'SUCCESS', NULL, 6156250000, 83026665481400, '27228', '2025-08-13 13:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (55, 47, 1755063847271, 1755063963741, 116470, 0.8452854107144584, 12.987192818370264, 88650664, 88650664, 3, 73, 73, 1520, 0, 0, 'SUCCESS', NULL, 6437500000, 84841553513900, '27228', '2025-08-13 13:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (56, 47, 1755065647297, 1755065746951, 99654, 1.3641290976715843, 15.708582806429183, 57886440, 57886440, 3, 73, 73, 1298, 0, 0, 'SUCCESS', NULL, 7140625000, 86624776976700, '27228', '2025-08-13 14:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (57, 47, 1755067447290, 1755067556243, 108953, 1.4197801746427776, 24.675818320406016, 68211904, 68211904, 3, 72, 72, 1440, 0, 0, 'SUCCESS', NULL, 7343750000, 88434069877800, '27228', '2025-08-13 14:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (58, 47, 1755069247295, 1755069355482, 108187, 1.039880643738325, 13.528403937286315, 82493944, 82493944, 3, 73, 73, 1410, 0, 0, 'SUCCESS', NULL, 9234375000, 90233309271100, '27228', '2025-08-13 15:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (59, 47, 1755071047333, 1755071152001, 104668, 0.9404819161471569, 14.444605793281816, 51069552, 51069552, 3, 73, 73, 1365, 0, 0, 'SUCCESS', NULL, 7640625000, 92029827467500, '27228', '2025-08-13 15:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (60, 47, 1755072847351, 1755072952997, 105646, 1.301550246207634, 22.59365411436376, 58171344, 58171344, 3, 72, 72, 1396, 0, 0, 'SUCCESS', NULL, 8078125000, 93830822895400, '27228', '2025-08-13 16:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (61, 47, 1755074647300, 1755074751830, 104530, 1.0017244070279274, 20.65559740303966, 62690808, 62690808, 3, 72, 72, 1378, 0, 0, 'SUCCESS', NULL, 7937500000, 95629634994400, '27228', '2025-08-13 16:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (62, 47, 1755076447335, 1755076554022, 106687, 1.2598287715549952, 14.80062437376819, 70207720, 70207720, 3, 73, 73, 1391, 0, 0, 'SUCCESS', NULL, 8515625000, 97431828602700, '27228', '2025-08-13 17:14:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (63, 47, 1755078247360, 1755078347296, 99936, 1.2351576724810596, 11.486124386611507, 74858816, 74858816, 3, 72, 72, 1317, 0, 0, 'SUCCESS', NULL, 8250000000, 99225124358200, '27228', '2025-08-13 17:44:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (64, 48, 1755159532275, 1755159748518, 216243, 1.8207727430086387, 21.84680344300718, 91883584, 91883584, 1, 136, 136, 1558, 0, 0, 'SUCCESS', NULL, 4000000000, 48692646029900, '30492', '2025-08-14 16:18:53');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (65, 48, 1755161332220, 1755161524450, 192230, 1.8616088137178295, 24.022721077699316, 91132536, 91132536, 1, 137, 137, 1379, 0, 0, 'SUCCESS', NULL, 3734375000, 50468628735500, '30492', '2025-08-14 16:48:52');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (66, 49, 1755227351074, 1755227352247, 1173, 0, 0, 86931896, 86931896, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 593750000, 4698286738400, '23796', '2025-08-15 11:09:12');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (67, 53, 1755227377834, 1755227377851, 17, 110.96985881082924, 18.273207156943847, 94379448, 94379448, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 31250000, 4723891035400, '23796', '2025-08-15 11:09:38');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (68, 63, 1755227757473, 1755227757489, 16, 0, 13.531437687973312, 105044400, 105044400, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 15625000, 5103537607600, '23796', '2025-08-15 11:15:57');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (69, 63, 1755227800877, 1755227850176, 49299, 4.817584906226967, 10.430163263376368, 94816728, 94816728, 5, 50, 50, 882, 0, 0, 'SUCCESS', NULL, 2406250000, 5196228420200, '23796', '2025-08-15 11:16:41');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (70, 63, 1755228057486, 1755228114435, 56949, 4.9661571262877535, 8.837745394278151, 118820088, 118820088, 5, 50, 50, 1023, 0, 0, 'SUCCESS', NULL, 2843750000, 5460492634100, '23796', '2025-08-15 11:20:57');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (71, 65, 1755245397732, 1755245398541, 809, 56.12589442225351, 0, 87776536, 87776536, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 468750000, 22744653113800, '2088', '2025-08-15 16:09:59');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (72, 65, 1755245697729, 1755245731338, 33609, 4.5563942468497975, 20.63404966924296, 54120760, 54120760, 1, 21, 21, 1495, 0, 0, 'SUCCESS', NULL, 1546875000, 23077449377900, '2088', '2025-08-15 16:14:58');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (73, 65, 1755245997724, 1755246031056, 33332, 1.8282835085236218, 19.22670529836301, 119294808, 119294808, 1, 21, 21, 1498, 0, 0, 'SUCCESS', NULL, 625000000, 23377169432400, '2088', '2025-08-15 16:19:58');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (74, 65, 1755246054915, 1755246073735, 18820, 3.072147064212691, 24.628166693980013, 52637888, 52637888, 1, 21, 21, 840, 0, 0, 'SUCCESS', NULL, 625000000, 23419848051700, '2088', '2025-08-15 16:20:55');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (75, 66, 1755246066369, 1755246123874, 57505, 0, 17.729445829396372, 158324984, 158324984, 1, 39, 39, 1424, 0, 0, 'SUCCESS', NULL, 953125000, 23469987184500, '2088', '2025-08-15 16:21:06');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (76, 65, 1755246297722, 1755246330644, 32922, 0.9967535467384625, 25.73448211863679, 77277656, 77277656, 1, 21, 21, 1479, 0, 0, 'SUCCESS', NULL, 375000000, 23676755606300, '2088', '2025-08-15 16:24:58');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (77, 69, 1755246622644, 1755246623071, 427, 0, 0, 73508088, 73508088, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 390625000, 23969182979500, '26784', '2025-08-15 16:30:23');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (78, 69, 1755246630838, 1755246630851, 13, 0, 17.252339341547728, 86800568, 86800568, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 15625000, 23976963866600, '26784', '2025-08-15 16:30:31');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (79, 69, 1755246635238, 1755246682630, 47392, 0, 17.100859268077752, 123113680, 123113680, 1, 21, 21, 2132, 0, 0, 'SUCCESS', NULL, 1234375000, 24028742989500, '26784', '2025-08-15 16:30:35');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (80, 69, 1755246686627, 1755246717503, 30876, 0, 28.46877055129632, 115435544, 115435544, 1, 21, 21, 1388, 0, 0, 'SUCCESS', NULL, 1078125000, 24063616136900, '26784', '2025-08-15 16:31:27');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (81, 73, 1755247301018, 1755247301589, 571, 0, 0, 77339072, 77339072, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 500000000, 24647700931400, '16096', '2025-08-15 16:41:42');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (82, 73, 1755247311173, 1755247311195, 22, 0, 27.472920509040755, 92662848, 92662848, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 0, 24657306821200, '16096', '2025-08-15 16:41:51');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (83, 73, 1755247325228, 1755247325248, 20, 0, 32.226355839944965, 95266184, 95266184, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 0, 24671358301000, '16096', '2025-08-15 16:42:05');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (84, 73, 1755247611178, 1755247611191, 13, 0, 17.221055714909095, 96898000, 96898000, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 0, 24957303978100, '16096', '2025-08-15 16:46:51');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (85, 77, 1755247807087, 1755247807604, 517, 0, 0, 76101328, 76101328, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 484375000, 25153715252800, '9584', '2025-08-15 16:50:08');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (86, 77, 1755247816337, NULL, NULL, 0, 19.681779544615054, 88920912, 88920912, 0, 20, 20, 1831, 0, 0, 'RUNNING', NULL, 0, 25162450915800, '9584', '2025-08-15 16:50:16');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (87, 81, 1755251213289, 1755251213720, 431, 0, 100, 84384720, 84384720, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 375000000, 28559833613400, '6812', '2025-08-15 17:46:54');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (88, 81, 1755251240696, 1755251240715, 19, 0, 25.017883362197534, 85095216, 85095216, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 15625000, 28586825548800, '6812', '2025-08-15 17:47:21');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (89, 81, 1755251287367, 1755251287382, 15, 0, 21.483978724677943, 86430960, 86430960, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 15625000, 28633494361600, '6812', '2025-08-15 17:48:07');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (90, 81, 1755251513289, 1755251513309, 20, 0, 20.944335103823462, 88680656, 88680656, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 0, 28859420209800, '6812', '2025-08-15 17:51:53');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (91, 86, 1755251539899, 1755251539921, 22, 0, 21.33745972960215, 91522448, 91522448, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 15625000, 28886029403300, '6812', '2025-08-15 17:52:20');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (92, 87, 1755251539903, 1755251539922, 19, 94.05794571426853, 21.33745972960215, 91522448, 91522448, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 31250000, 28886033706200, '6812', '2025-08-15 17:52:20');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (93, 88, 1755251539906, 1755251539926, 20, 0, 21.33745972960215, 91522448, 91522448, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 0, 28886037640000, '6812', '2025-08-15 17:52:20');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (94, 85, 1755251572791, 1755251572807, 16, 0, 19.812724114505286, 93653712, 93653712, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 15625000, 28918919699500, '6812', '2025-08-15 17:52:53');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (95, 85, 1755251601447, 1755251601460, 13, 0, 19.174570062569074, 95699856, 95699856, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 15625000, 28947571480900, '6812', '2025-08-15 17:53:21');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (96, 81, 1755251813283, 1755251813294, 11, 0, 16.27228176756533, 96410320, 96410320, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 62500000, 29159405911700, '6812', '2025-08-15 17:56:53');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (97, 85, 1755251872806, 1755251872826, 20, 83.53024195704006, 14.389554162553896, 96410320, 96410320, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 406250000, 29218938726600, '6812', '2025-08-15 17:57:53');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (98, 81, 1755252113293, 1755252113321, 28, 0, 16.877655198042817, 96765520, 96765520, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 15625000, 29459432325100, '6812', '2025-08-15 18:01:53');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (99, 90, 1755252200106, 1755252200522, 416, 90.88734404640635, 8.102194932599339, 70290088, 70290088, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 390625000, 29546632648100, '10444', '2025-08-15 18:03:21');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (100, 89, 1755252225770, 1755252265107, 39337, 0, 18.776494080833984, 99849752, 99849752, 1, 21, 21, 1770, 0, 0, 'SUCCESS', NULL, 1437500000, 29611220165500, '10444', '2025-08-15 18:03:46');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (101, 93, 1755252658116, NULL, NULL, 0, 0, 47471528, 47471528, 0, 11, 11, 1761, 0, 0, 'RUNNING', NULL, 0, 30004231077100, '26596', '2025-08-15 18:10:58');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (102, 98, 1755252705737, 1755252706119, 382, 0, 0, 71238952, 71238952, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 359375000, 30052229667900, '21596', '2025-08-15 18:11:46');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (103, 97, 1755252723741, 1755252723758, 17, 0, 16.518090314090383, 86754248, 86754248, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 0, 30069869320500, '21596', '2025-08-15 18:12:04');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (104, 97, 1755252781834, 1755252823848, 42014, 0, 23.843364248701427, 127769792, 127769792, 1, 21, 21, 1892, 0, 0, 'SUCCESS', NULL, 1187500000, 30169960776500, '21596', '2025-08-15 18:13:02');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (105, 97, 1755253001410, NULL, NULL, 0, 14.77753612831767, 134305672, 134305672, 0, 10, 10, 1895, 0, 0, 'RUNNING', NULL, 0, 30347523739900, '21596', '2025-08-15 18:16:41');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (106, 97, 1755253023750, 1755253023762, 12, 0, 21.564910734557152, 58780672, 58780672, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 0, 30369874312400, '21596', '2025-08-15 18:17:04');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (107, 97, 1755253218244, 1755253256750, 38506, 1.6231583191226904, 18.81213408842479, 106845488, 106845488, 1, 21, 21, 1736, 0, 0, 'SUCCESS', NULL, 640625000, 30602863136700, '21596', '2025-08-15 18:20:18');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (108, 97, 1755253296919, NULL, NULL, 0, 21.952286610225023, 108544512, 108544512, 0, 13, 13, 1798, 0, 0, 'RUNNING', NULL, 31250000, 30643033815400, '21596', '2025-08-15 18:21:37');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (109, 97, 1755253323755, 1755253323766, 11, 0, 14.672414680295908, 53659888, 53659888, 0, 0, 0, 0, 0, 0, 'SUCCESS', NULL, 31250000, 30669879560800, '21596', '2025-08-15 18:22:04');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (110, 97, 1755253623754, 1755253658858, 35104, 2.581812988537776, 24.135268141864575, 91201912, 91201912, 1, 21, 21, 1582, 0, 0, 'SUCCESS', NULL, 953125000, 31004970521000, '21596', '2025-08-15 18:27:04');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (111, 97, 1755253671703, 1755253681725, 10022, 2.494927761961377, 22.364205053576413, 141091560, 141091560, 1, 21, 21, 443, 0, 0, 'SUCCESS', NULL, 265625000, 31027838407700, '21596', '2025-08-15 18:27:52');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (112, 97, 1755253923745, 1755253953121, 29376, 1.0638259411637463, 12.838295240673059, 61430960, 61430960, 1, 21, 21, 1322, 0, 0, 'SUCCESS', NULL, 703125000, 31299234122900, '21596', '2025-08-15 18:32:04');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (113, 97, 1755254223753, 1755254256047, 32294, 1.4031818214994856, 12.38375718975091, 112589952, 112589952, 1, 21, 21, 1455, 0, 0, 'SUCCESS', NULL, 484375000, 31602160349000, '21596', '2025-08-15 18:37:04');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (114, 98, 1755254505731, 1755254557754, 52023, 0.9010538321949235, 12.817651880017156, 131095512, 131095512, 1, 38, 38, 1321, 0, 0, 'SUCCESS', NULL, 1718750000, 31903867363200, '21596', '2025-08-15 18:41:46');
INSERT INTO `feed_spider_task_resource_monitor` VALUES (115, 97, 1755254523747, 1755254552373, 28626, 1.0917047844271348, 14.170389642664604, 119830024, 119830024, 1, 21, 21, 1288, 0, 0, 'SUCCESS', NULL, 421875000, 31898486196600, '21596', '2025-08-15 18:42:04');

-- ----------------------------
-- Table structure for feed_spider_time_analysis_tem
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_time_analysis_tem`;
CREATE TABLE `feed_spider_time_analysis_tem`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '时间格式模板，如 %Y-%m-%d %H:%M:%S',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feed_spider_time_analysis_tem
-- ----------------------------
INSERT INTO `feed_spider_time_analysis_tem` VALUES (1, '%Y-%m-%dT%H:%M:%S.%f%z');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_time_template
-- ----------------------------
INSERT INTO `feed_spider_time_template` VALUES (1, NULL, 'time[itemprop=datePublished]', '2025-08-06 10:12:41', '2025-08-07 15:35:05', 'datetime', NULL);
INSERT INTO `feed_spider_time_template` VALUES (2, NULL, NULL, '2025-08-12 15:13:09', '2025-08-12 16:27:03', NULL, '\"datePublished\"\\s*:\\s*\"([^\"]+)\"');
INSERT INTO `feed_spider_time_template` VALUES (3, '23', '2323', '2025-08-14 14:15:59', '2025-08-14 14:15:59', '232323', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_title_template
-- ----------------------------
INSERT INTO `feed_spider_title_template` VALUES (2, NULL, 'meta[property=og:title]', '2025-08-06 10:43:19', '2025-08-06 10:43:19', 'content');
INSERT INTO `feed_spider_title_template` VALUES (3, NULL, 'div[class=title]', '2025-08-12 15:15:36', '2025-08-12 15:15:36', NULL);

-- ----------------------------
-- Table structure for feed_spider_url
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_url`;
CREATE TABLE `feed_spider_url`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国家',
  `language` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '语言',
  `atemplate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'A模板',
  `ctemplate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'C模板',
  `orcategory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '网站源分类标签',
  `bscategory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务标签',
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站名称\r\n',
  `timedeviation` int NULL DEFAULT NULL COMMENT '时间戳的偏差值，单位小时',
  `timedeviationstr` int NULL DEFAULT NULL COMMENT '时间字符串的偏差值，单位小时',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idxCountry`(`country` ASC) USING BTREE,
  INDEX `idxLanguage`(`language` ASC) USING BTREE,
  INDEX `idxATemplate`(`atemplate` ASC) USING BTREE,
  INDEX `idxCTemplate`(`ctemplate` ASC) USING BTREE,
  INDEX `idxOrCategory`(`orcategory` ASC) USING BTREE,
  INDEX `idxBsCategory`(`bscategory` ASC) USING BTREE,
  INDEX `idx_publisher_atemplate`(`publisher` ASC, `atemplate` ASC) USING BTREE,
  INDEX `idx_publisher_ctemplate`(`publisher` ASC, `ctemplate` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_url
-- ----------------------------
INSERT INTO `feed_spider_url` VALUES (1, 'https://cbn.globo.com/politica/', 'br', 'pt', '[1,2]', '1', 'Política', NULL, '2025-08-04 16:49:57', '2025-08-07 16:40:41', 'CBN', -1, -1);
INSERT INTO `feed_spider_url` VALUES (2, 'https://cbn.globo.com/economia/', 'br', 'pt', '[1,2]', '1', 'Economia', NULL, '2025-08-04 16:52:44', '2025-08-07 15:44:33', 'CBN', 2, NULL);
INSERT INTO `feed_spider_url` VALUES (3, 'https://cbn.globo.com/mundo/', 'br', 'pt', '[1,2]', '1', 'Mundo', NULL, '2025-08-04 16:52:44', '2025-08-06 11:10:50', 'CBN', NULL, NULL);
INSERT INTO `feed_spider_url` VALUES (4, 'https://cbn.globo.com/brasil/', 'br', 'pt', '[1,2]', '1', 'Brasil', NULL, '2025-08-04 16:54:42', '2025-08-06 11:10:50', 'CBN', NULL, NULL);
INSERT INTO `feed_spider_url` VALUES (5, 'https://cbn.globo.com/sao-paulo/', 'br', 'pt', '[1,2]', '1', 'São Paulo', NULL, '2025-08-04 16:57:10', '2025-08-06 11:10:50', 'CBN', NULL, NULL);
INSERT INTO `feed_spider_url` VALUES (6, 'https://cbn.globo.com/rio-de-janeiro/', 'br', 'pt', '[1,2]', '1', 'Rio de Janeiro', NULL, '2025-08-04 16:57:10', '2025-08-06 11:10:51', 'CBN', NULL, NULL);
INSERT INTO `feed_spider_url` VALUES (7, 'https://cbn.globo.com/belo-horizonte/', 'br', 'pt', '[1,2]', '1', 'Belo Horizonte', '', '2025-08-04 16:57:10', '2025-08-06 11:10:52', 'CBN', NULL, NULL);
INSERT INTO `feed_spider_url` VALUES (8, 'https://cbn.globo.com/brasilia/', 'br', 'pt', '[1,2]', '1', 'Brasília', NULL, '2025-08-04 16:57:10', '2025-08-06 11:10:54', 'CBN', NULL, NULL);
INSERT INTO `feed_spider_url` VALUES (9, 'https://polityka.se.pl/', 'pl', 'pl', '[3]', '2', 'Wiadomości_Polityka', NULL, '2025-08-12 14:50:30', '2025-08-15 18:21:22', 'PolitykaSuperExpress', 8, NULL);
INSERT INTO `feed_spider_url` VALUES (10, 'https://www.se.pl/wiadomosci/lekkie/', 'pl', 'pl', '[3]', '2', 'Wiadomości_Polityka - Lekkie', NULL, '2025-08-12 14:51:20', '2025-08-12 16:01:32', 'PolitykaSuperExpress', NULL, NULL);
INSERT INTO `feed_spider_url` VALUES (11, 'https://www.se.pl/wiadomosci/superopinie/', 'pl', 'pl', '[3]', '2', 'Wiadomości_Super Opinie', NULL, '2025-08-12 14:52:53', '2025-08-12 16:01:33', 'PolitykaSuperExpress', NULL, NULL);
INSERT INTO `feed_spider_url` VALUES (12, 'https://www.se.pl/wiadomosci/polska/', 'pl', 'pl', '[3]', '2', 'Wiadomości_Polska', NULL, '2025-08-12 14:53:40', '2025-08-12 16:01:35', 'PolitykaSuperExpress', NULL, NULL);

-- ----------------------------
-- Table structure for feed_spider_url_group
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_url_group`;
CREATE TABLE `feed_spider_url_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `language` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `publishername` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `server` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `groupnumber` int NOT NULL,
  `createdtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '抓取平台：\r\nWebsite/Twitter\r\n',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_country`(`country` ASC) USING BTREE,
  INDEX `idx_language`(`language` ASC) USING BTREE,
  INDEX `idx_publishername`(`publishername` ASC) USING BTREE,
  INDEX `idx_domain`(`domain` ASC) USING BTREE,
  INDEX `idx_server`(`server` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_url_group
-- ----------------------------
INSERT INTO `feed_spider_url_group` VALUES (1, 'br', 'pt', 'CBN', '[[1,2],[3,4],[5,6],[7,8]]', 'https://s2-cbn.glbimg.com/8omCOX83cUkXOwx1pHqZXi2TAew=/192x192/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_d975fad146a14bbfad9e763717b09688/internal_photos/bs/2021/z/M/JpDF4cRs6ZHPip8YMKNw/cbn.png', 'cbn.globo.com', '', 2, '2025-08-04 16:50:52', '2025-08-15 10:21:07', NULL);
INSERT INTO `feed_spider_url_group` VALUES (2, 'pl', 'pl', 'PolitykaSuperExpress', '[[9],[10],[11],[12]]', 'https://polityka.se.pl/favicon_192x192.ico', 'se.pl', NULL, 1, '2025-08-12 14:49:25', '2025-08-15 16:09:40', NULL);
INSERT INTO `feed_spider_url_group` VALUES (3, 'br', 'pt', 'CBN', '[[1,2,3,4,5],[6,7,8]]', '', '', '', 5, '2025-08-15 11:07:39', '2025-08-15 11:08:52', '');

-- ----------------------------
-- Table structure for id_duplicates
-- ----------------------------
DROP TABLE IF EXISTS `id_duplicates`;
CREATE TABLE `id_duplicates`  (
  `title` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` bigint UNSIGNED NOT NULL,
  `min_id` bigint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of id_duplicates
-- ----------------------------

-- ----------------------------
-- Table structure for lock_item
-- ----------------------------
DROP TABLE IF EXISTS `lock_item`;
CREATE TABLE `lock_item`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `k` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `v` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `s` int UNSIGNED NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_k`(`k` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lock_item
-- ----------------------------

-- ----------------------------
-- Table structure for ma_config_item
-- ----------------------------
DROP TABLE IF EXISTS `ma_config_item`;
CREATE TABLE `ma_config_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ns` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `desc` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `op` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ns`(`ns` ASC, `name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 682366 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ma_config_item
-- ----------------------------
INSERT INTO `ma_config_item` VALUES (679094, 'config', 'mysqlTableSync.supply_feed_info', '{\"lastTs\":1753957500000}', '192.168.1.177', '2025-07-31 18:20:02', '2025-07-31 18:24:02', 'robot');
INSERT INTO `ma_config_item` VALUES (679095, 'config', 'publisherIconTable', '[]', 'publisherIconUrl-10min', '2025-07-31 18:20:26', '2025-07-31 18:20:26', 'robot');
INSERT INTO `ma_config_item` VALUES (679097, 'config', 'mysqlTableSync.supply_feed_info_new', '{\"lastTs\":1753957500000}', '192.168.1.177', '2025-07-31 18:21:04', '2025-07-31 18:25:02', 'robot');

-- ----------------------------
-- Table structure for monitor_event
-- ----------------------------
DROP TABLE IF EXISTS `monitor_event`;
CREATE TABLE `monitor_event`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ts` bigint NULL DEFAULT 0 COMMENT '添加时间',
  `type` tinyint NULL DEFAULT NULL COMMENT '1:火山推荐 2：兜底推荐',
  `country` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'country',
  `language` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'language',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'ctime',
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'uptime',
  `errorMessage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT 'errorMessage',
  `detailUrl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT 'detailUrl',
  `recUrl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT 'recUrl',
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '域名\r\n',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_monitor_ctime`(`ctime` ASC) USING BTREE,
  INDEX `idx_monitor_country`(`country` ASC) USING BTREE,
  INDEX `idx_monitor_type`(`type` ASC) USING BTREE,
  INDEX `idx_monitor_ts`(`ts` ASC) USING BTREE,
  INDEX `idx_monitor_domain`(`domain` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51182001 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of monitor_event
-- ----------------------------
INSERT INTO `monitor_event` VALUES (51181823, 1754038558, 1, 'fr', 'fr', '2025-08-01 16:55:58', '2025-08-01 16:55:58', NULL, 'http://localhost:5173/?fid=933c69104c18a830c4658c4b336006cc&country=fr&language=fr', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181824, 1754038639, 1, 'ru', 'ru', '2025-08-01 16:57:19', '2025-08-01 16:57:19', NULL, 'http://localhost:5173/?fid=9e34528da9bf22e6acdbe648df0e5ed0&country=ru&language=ru', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181825, 1754038639, 2, 'ru', 'ru', '2025-08-01 16:57:19', '2025-08-01 16:57:19', '\"No params\"', 'http://localhost:5173/?fid=9e34528da9bf22e6acdbe648df0e5ed0&country=ru&language=ru', '/detail/recData?country=ru&language=ru', NULL);
INSERT INTO `monitor_event` VALUES (51181826, 1754038674, 1, 'ru', 'ru', '2025-08-01 16:57:54', '2025-08-01 16:57:54', NULL, 'http://localhost:5173/?fid=01b235fbee405adf0f0487efde025a55&country=ru&language=ru', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181827, 1754038674, 2, 'ru', 'ru', '2025-08-01 16:57:54', '2025-08-01 16:57:54', '\"No params\"', 'http://localhost:5173/?fid=01b235fbee405adf0f0487efde025a55&country=ru&language=ru', '/detail/recData?country=ru&language=ru', NULL);
INSERT INTO `monitor_event` VALUES (51181828, 1754038696, 1, 'ru', 'ru', '2025-08-01 16:58:16', '2025-08-01 16:58:16', NULL, 'http://localhost:5173/?fid=82686bccad873e768d2f9055305313f8&country=ru&language=ru', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181829, 1754038696, 2, 'ru', 'ru', '2025-08-01 16:58:16', '2025-08-01 16:58:16', '\"No params\"', 'http://localhost:5173/?fid=82686bccad873e768d2f9055305313f8&country=ru&language=ru', '/detail/recData?country=ru&language=ru', NULL);
INSERT INTO `monitor_event` VALUES (51181830, 1754038703, 1, 'ru', 'ru', '2025-08-01 16:58:23', '2025-08-01 16:58:23', NULL, 'http://localhost:5173/?fid=d884dc1aa40da5a4b7a1dccda3a50eaa&country=ru&language=ru', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181831, 1754038703, 2, 'ru', 'ru', '2025-08-01 16:58:23', '2025-08-01 16:58:23', '\"No params\"', 'http://localhost:5173/?fid=d884dc1aa40da5a4b7a1dccda3a50eaa&country=ru&language=ru', '/detail/recData?country=ru&language=ru', NULL);
INSERT INTO `monitor_event` VALUES (51181832, 1754038727, 1, 'ru', 'ru', '2025-08-01 16:58:47', '2025-08-01 16:58:47', NULL, 'http://localhost:5173/?fid=fe8682ea0821c4d2194a9066db56dbad&country=ru&language=ru', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181833, 1754038727, 2, 'ru', 'ru', '2025-08-01 16:58:47', '2025-08-01 16:58:47', '\"No params\"', 'http://localhost:5173/?fid=fe8682ea0821c4d2194a9066db56dbad&country=ru&language=ru', '/detail/recData?country=ru&language=ru', NULL);
INSERT INTO `monitor_event` VALUES (51181834, 1754038743, 1, 'ru', 'ru', '2025-08-01 16:59:03', '2025-08-01 16:59:03', NULL, 'http://localhost:5173/?fid=8593b718d5de13abc0c1ccc9d3371907&country=ru&language=ru', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181835, 1754038744, 2, 'ru', 'ru', '2025-08-01 16:59:04', '2025-08-01 16:59:04', '\"No params\"', 'http://localhost:5173/?fid=8593b718d5de13abc0c1ccc9d3371907&country=ru&language=ru', '/detail/recData?country=ru&language=ru', NULL);
INSERT INTO `monitor_event` VALUES (51181836, 1754888221, 1, 'de', 'de', '2025-08-11 12:57:01', '2025-08-11 12:57:01', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181837, 1754888224, 1, 'de', 'de', '2025-08-11 12:57:04', '2025-08-11 12:57:04', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181838, 1754888226, 1, 'de', 'de', '2025-08-11 12:57:06', '2025-08-11 12:57:06', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181839, 1754888259, 1, 'de', 'de', '2025-08-11 12:57:39', '2025-08-11 12:57:39', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181840, 1754888297, 1, 'de', 'de', '2025-08-11 12:58:17', '2025-08-11 12:58:17', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181841, 1754888415, 1, 'de', 'de', '2025-08-11 13:00:15', '2025-08-11 13:00:15', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181842, 1754888426, 1, 'de', 'de', '2025-08-11 13:00:26', '2025-08-11 13:00:26', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181843, 1754888432, 1, 'de', 'de', '2025-08-11 13:00:32', '2025-08-11 13:00:32', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181844, 1754888446, 1, 'de', 'de', '2025-08-11 13:00:46', '2025-08-11 13:00:46', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181845, 1754888453, 1, 'de', 'de', '2025-08-11 13:00:53', '2025-08-11 13:00:53', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181846, 1754888454, 1, 'de', 'de', '2025-08-11 13:00:54', '2025-08-11 13:00:54', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181847, 1754888459, 1, 'de', 'de', '2025-08-11 13:00:59', '2025-08-11 13:00:59', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181848, 1754888465, 1, 'de', 'de', '2025-08-11 13:01:05', '2025-08-11 13:01:05', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181849, 1754888779, 1, 'de', 'de', '2025-08-11 13:06:19', '2025-08-11 13:06:19', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181850, 1754888814, 1, 'de', 'de', '2025-08-11 13:06:54', '2025-08-11 13:06:54', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181851, 1754888817, 1, 'de', 'de', '2025-08-11 13:06:57', '2025-08-11 13:06:57', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181852, 1754888840, 1, 'de', 'de', '2025-08-11 13:07:20', '2025-08-11 13:07:20', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181853, 1754888840, 2, 'de', 'de', '2025-08-11 13:07:20', '2025-08-11 13:07:20', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181854, 1754888842, 1, 'de', 'de', '2025-08-11 13:07:22', '2025-08-11 13:07:22', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181855, 1754888842, 2, 'de', 'de', '2025-08-11 13:07:22', '2025-08-11 13:07:22', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181856, 1754888983, 1, 'de', 'de', '2025-08-11 13:09:43', '2025-08-11 13:09:43', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181857, 1754888983, 2, 'de', 'de', '2025-08-11 13:09:43', '2025-08-11 13:09:43', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181858, 1754888984, 1, 'de', 'de', '2025-08-11 13:09:44', '2025-08-11 13:09:44', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181859, 1754888984, 2, 'de', 'de', '2025-08-11 13:09:44', '2025-08-11 13:09:44', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181860, 1754888988, 1, 'de', 'de', '2025-08-11 13:09:48', '2025-08-11 13:09:48', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181861, 1754888988, 2, 'de', 'de', '2025-08-11 13:09:48', '2025-08-11 13:09:48', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181862, 1754889004, 1, 'de', 'de', '2025-08-11 13:10:04', '2025-08-11 13:10:04', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181863, 1754889004, 2, 'de', 'de', '2025-08-11 13:10:04', '2025-08-11 13:10:04', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181864, 1754889008, 1, 'de', 'de', '2025-08-11 13:10:08', '2025-08-11 13:10:08', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181865, 1754889008, 2, 'de', 'de', '2025-08-11 13:10:08', '2025-08-11 13:10:08', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181866, 1754889041, 1, 'de', 'de', '2025-08-11 13:10:41', '2025-08-11 13:10:41', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181867, 1754889041, 2, 'de', 'de', '2025-08-11 13:10:41', '2025-08-11 13:10:41', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181868, 1754889103, 1, 'de', 'de', '2025-08-11 13:11:43', '2025-08-11 13:11:43', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181869, 1754889103, 2, 'de', 'de', '2025-08-11 13:11:43', '2025-08-11 13:11:43', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181870, 1754889105, 1, 'de', 'de', '2025-08-11 13:11:45', '2025-08-11 13:11:45', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181871, 1754889105, 2, 'de', 'de', '2025-08-11 13:11:45', '2025-08-11 13:11:45', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181872, 1754889290, 1, 'de', 'de', '2025-08-11 13:14:50', '2025-08-11 13:14:50', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181873, 1754889290, 2, 'de', 'de', '2025-08-11 13:14:50', '2025-08-11 13:14:50', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181874, 1754889321, 1, 'de', 'de', '2025-08-11 13:15:21', '2025-08-11 13:15:21', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181875, 1754889322, 2, 'de', 'de', '2025-08-11 13:15:22', '2025-08-11 13:15:22', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181876, 1754889322, 1, 'de', 'de', '2025-08-11 13:15:22', '2025-08-11 13:15:22', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181877, 1754889322, 2, 'de', 'de', '2025-08-11 13:15:23', '2025-08-11 13:15:23', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181878, 1754889325, 1, 'de', 'de', '2025-08-11 13:15:26', '2025-08-11 13:15:26', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181879, 1754889326, 2, 'de', 'de', '2025-08-11 13:15:26', '2025-08-11 13:15:26', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181880, 1754889337, 1, 'de', 'de', '2025-08-11 13:15:37', '2025-08-11 13:15:37', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181881, 1754889337, 2, 'de', 'de', '2025-08-11 13:15:37', '2025-08-11 13:15:37', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181882, 1754889338, 1, 'de', 'de', '2025-08-11 13:15:38', '2025-08-11 13:15:38', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181883, 1754889338, 2, 'de', 'de', '2025-08-11 13:15:38', '2025-08-11 13:15:38', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181884, 1754889348, 1, 'de', 'de', '2025-08-11 13:15:48', '2025-08-11 13:15:48', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181885, 1754889348, 2, 'de', 'de', '2025-08-11 13:15:48', '2025-08-11 13:15:48', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181886, 1754889365, 1, 'de', 'de', '2025-08-11 13:16:05', '2025-08-11 13:16:05', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181887, 1754889365, 2, 'de', 'de', '2025-08-11 13:16:05', '2025-08-11 13:16:05', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181888, 1754889369, 1, 'de', 'de', '2025-08-11 13:16:09', '2025-08-11 13:16:09', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181889, 1754889369, 2, 'de', 'de', '2025-08-11 13:16:09', '2025-08-11 13:16:09', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181890, 1754889373, 1, 'de', 'de', '2025-08-11 13:16:13', '2025-08-11 13:16:13', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181891, 1754889373, 2, 'de', 'de', '2025-08-11 13:16:13', '2025-08-11 13:16:13', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181892, 1754889452, 1, 'de', 'de', '2025-08-11 13:17:32', '2025-08-11 13:17:32', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181893, 1754889452, 2, 'de', 'de', '2025-08-11 13:17:32', '2025-08-11 13:17:32', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181894, 1754889454, 1, 'de', 'de', '2025-08-11 13:17:34', '2025-08-11 13:17:34', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181895, 1754889454, 2, 'de', 'de', '2025-08-11 13:17:34', '2025-08-11 13:17:34', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181896, 1754889458, 1, 'de', 'de', '2025-08-11 13:17:38', '2025-08-11 13:17:38', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181897, 1754889458, 2, 'de', 'de', '2025-08-11 13:17:38', '2025-08-11 13:17:38', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181898, 1754889459, 1, 'de', 'de', '2025-08-11 13:17:39', '2025-08-11 13:17:39', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181899, 1754889459, 2, 'de', 'de', '2025-08-11 13:17:39', '2025-08-11 13:17:39', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181900, 1754889464, 1, 'de', 'de', '2025-08-11 13:17:44', '2025-08-11 13:17:44', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181901, 1754889464, 2, 'de', 'de', '2025-08-11 13:17:44', '2025-08-11 13:17:44', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181902, 1754889498, 1, 'de', 'de', '2025-08-11 13:18:18', '2025-08-11 13:18:18', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181903, 1754889498, 2, 'de', 'de', '2025-08-11 13:18:18', '2025-08-11 13:18:18', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181904, 1754889522, 1, 'de', 'de', '2025-08-11 13:18:42', '2025-08-11 13:18:42', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181905, 1754889522, 2, 'de', 'de', '2025-08-11 13:18:42', '2025-08-11 13:18:42', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181906, 1754889535, 1, 'de', 'de', '2025-08-11 13:18:55', '2025-08-11 13:18:55', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181907, 1754889535, 2, 'de', 'de', '2025-08-11 13:18:55', '2025-08-11 13:18:55', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181908, 1754906586, 1, 'de', 'de', '2025-08-11 18:03:07', '2025-08-11 18:03:07', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181909, 1754906590, 1, 'de', 'de', '2025-08-11 18:03:10', '2025-08-11 18:03:10', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181910, 1754906595, 1, 'de', 'de', '2025-08-11 18:03:15', '2025-08-11 18:03:15', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181911, 1754906620, 1, 'de', 'de', '2025-08-11 18:03:40', '2025-08-11 18:03:40', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181912, 1754906623, 1, 'de', 'de', '2025-08-11 18:03:43', '2025-08-11 18:03:43', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181913, 1754906625, 1, 'de', 'de', '2025-08-11 18:03:45', '2025-08-11 18:03:45', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181914, 1754906776, 1, 'de', 'de', '2025-08-11 18:06:16', '2025-08-11 18:06:16', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181915, 1754906776, 2, 'de', 'de', '2025-08-11 18:06:16', '2025-08-11 18:06:16', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181916, 1754906777, 1, 'de', 'de', '2025-08-11 18:06:17', '2025-08-11 18:06:17', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181917, 1754906778, 2, 'de', 'de', '2025-08-11 18:06:18', '2025-08-11 18:06:18', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181918, 1754906810, 1, 'de', 'de', '2025-08-11 18:06:50', '2025-08-11 18:06:50', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181919, 1754906810, 2, 'de', 'de', '2025-08-11 18:06:50', '2025-08-11 18:06:50', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181920, 1754906814, 1, 'de', 'de', '2025-08-11 18:06:54', '2025-08-11 18:06:54', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181921, 1754906814, 2, 'de', 'de', '2025-08-11 18:06:54', '2025-08-11 18:06:54', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181922, 1754906849, 1, 'es', 'de', '2025-08-11 18:07:29', '2025-08-11 18:07:29', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=es&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181923, 1754906849, 2, 'es', 'de', '2025-08-11 18:07:29', '2025-08-11 18:07:29', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=es&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=es&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181924, 1754906860, 1, 'de', 'de', '2025-08-11 18:07:40', '2025-08-11 18:07:40', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181925, 1754906860, 2, 'de', 'de', '2025-08-11 18:07:40', '2025-08-11 18:07:40', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181926, 1754906896, 1, 'de', 'de', '2025-08-11 18:08:16', '2025-08-11 18:08:16', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181927, 1754906896, 2, 'de', 'de', '2025-08-11 18:08:16', '2025-08-11 18:08:16', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181928, 1754906927, 1, 'de', 'de', '2025-08-11 18:08:47', '2025-08-11 18:08:47', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181929, 1754906927, 2, 'de', 'de', '2025-08-11 18:08:47', '2025-08-11 18:08:47', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181930, 1754907050, 1, 'de', 'de', '2025-08-11 18:10:50', '2025-08-11 18:10:50', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181931, 1754907050, 2, 'de', 'de', '2025-08-11 18:10:50', '2025-08-11 18:10:50', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181932, 1754907063, 1, 'de', 'de', '2025-08-11 18:11:03', '2025-08-11 18:11:03', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181933, 1754907063, 2, 'de', 'de', '2025-08-11 18:11:03', '2025-08-11 18:11:03', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181934, 1754907082, 1, 'de', 'de', '2025-08-11 18:11:22', '2025-08-11 18:11:22', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181935, 1754907082, 2, 'de', 'de', '2025-08-11 18:11:22', '2025-08-11 18:11:22', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181936, 1754907085, 1, 'de', 'de', '2025-08-11 18:11:25', '2025-08-11 18:11:25', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181937, 1754907085, 2, 'de', 'de', '2025-08-11 18:11:25', '2025-08-11 18:11:25', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181938, 1754907110, 1, 'de', 'de', '2025-08-11 18:11:50', '2025-08-11 18:11:50', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181939, 1754907110, 2, 'de', 'de', '2025-08-11 18:11:50', '2025-08-11 18:11:50', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181940, 1754907111, 1, 'de', 'de', '2025-08-11 18:11:51', '2025-08-11 18:11:51', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181941, 1754907111, 2, 'de', 'de', '2025-08-11 18:11:51', '2025-08-11 18:11:51', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181942, 1754907112, 1, 'de', 'de', '2025-08-11 18:11:52', '2025-08-11 18:11:52', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181943, 1754907112, 2, 'de', 'de', '2025-08-11 18:11:52', '2025-08-11 18:11:52', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181944, 1754907159, 1, 'de', 'de', '2025-08-11 18:12:39', '2025-08-11 18:12:39', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181945, 1754907159, 2, 'de', 'de', '2025-08-11 18:12:39', '2025-08-11 18:12:39', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181946, 1754907399, 1, 'de', 'de', '2025-08-11 18:16:39', '2025-08-11 18:16:39', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181947, 1754907399, 2, 'de', 'de', '2025-08-11 18:16:39', '2025-08-11 18:16:39', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181948, 1754907658, 1, 'de', 'de', '2025-08-11 18:20:58', '2025-08-11 18:20:58', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181949, 1754907658, 2, 'de', 'de', '2025-08-11 18:20:58', '2025-08-11 18:20:58', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181950, 1754907663, 1, 'de', 'de', '2025-08-11 18:21:03', '2025-08-11 18:21:03', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181951, 1754907663, 2, 'de', 'de', '2025-08-11 18:21:03', '2025-08-11 18:21:03', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181952, 1754907667, 1, 'de', 'de', '2025-08-11 18:21:07', '2025-08-11 18:21:07', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181953, 1754907667, 2, 'de', 'de', '2025-08-11 18:21:07', '2025-08-11 18:21:07', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181954, 1754907669, 1, 'de', 'de', '2025-08-11 18:21:09', '2025-08-11 18:21:09', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181955, 1754907669, 2, 'de', 'de', '2025-08-11 18:21:09', '2025-08-11 18:21:09', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181956, 1754907727, 1, 'de', 'de', '2025-08-11 18:22:07', '2025-08-11 18:22:07', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181957, 1754907727, 2, 'de', 'de', '2025-08-11 18:22:07', '2025-08-11 18:22:07', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181958, 1754907733, 1, 'de', 'de', '2025-08-11 18:22:13', '2025-08-11 18:22:13', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181959, 1754907733, 2, 'de', 'de', '2025-08-11 18:22:13', '2025-08-11 18:22:13', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=de&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=de&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181960, 1754907837, 1, 'fr', 'de', '2025-08-11 18:23:57', '2025-08-11 18:23:57', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=fr&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181961, 1754907837, 2, 'fr', 'de', '2025-08-11 18:23:57', '2025-08-11 18:23:57', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=fr&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=fr&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181962, 1754907866, 1, 'fr', 'de', '2025-08-11 18:24:26', '2025-08-11 18:24:26', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=fr&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181963, 1754907866, 2, 'fr', 'de', '2025-08-11 18:24:26', '2025-08-11 18:24:26', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=fr&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=fr&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181964, 1754907874, 1, 'bd', 'de', '2025-08-11 18:24:34', '2025-08-11 18:24:34', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181965, 1754907874, 2, 'bd', 'de', '2025-08-11 18:24:34', '2025-08-11 18:24:34', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=bd&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181966, 1754908838, 1, 'bd', 'de', '2025-08-11 18:40:38', '2025-08-11 18:40:38', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181967, 1754908848, 1, 'bd', 'de', '2025-08-11 18:40:48', '2025-08-11 18:40:48', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181968, 1754908851, 1, 'bd', 'de', '2025-08-11 18:40:51', '2025-08-11 18:40:51', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181969, 1754908851, 1, 'bd', 'de', '2025-08-11 18:40:51', '2025-08-11 18:40:51', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181970, 1754908863, 1, 'bd', 'de', '2025-08-11 18:41:03', '2025-08-11 18:41:03', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181971, 1754908867, 1, 'bd', 'de', '2025-08-11 18:41:07', '2025-08-11 18:41:07', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181972, 1754908889, 1, 'bd', 'de', '2025-08-11 18:41:29', '2025-08-11 18:41:29', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181973, 1754908894, 1, 'bd', 'de', '2025-08-11 18:41:34', '2025-08-11 18:41:34', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181974, 1754908906, 1, 'bd', 'de', '2025-08-11 18:41:46', '2025-08-11 18:41:46', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181975, 1754908907, 1, 'bd', 'de', '2025-08-11 18:41:47', '2025-08-11 18:41:47', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181976, 1754908926, 1, 'bd', 'de', '2025-08-11 18:42:06', '2025-08-11 18:42:06', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181977, 1754908926, 2, 'bd', 'de', '2025-08-11 18:42:06', '2025-08-11 18:42:06', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=bd&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181978, 1754908964, 1, 'bd', 'de', '2025-08-11 18:42:44', '2025-08-11 18:42:44', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181979, 1754908966, 1, 'bd', 'de', '2025-08-11 18:42:46', '2025-08-11 18:42:46', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181980, 1754908994, 1, 'bd', 'de', '2025-08-11 18:43:14', '2025-08-11 18:43:14', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181981, 1754908996, 1, 'bd', 'de', '2025-08-11 18:43:16', '2025-08-11 18:43:16', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181982, 1754909024, 1, 'bd', 'de', '2025-08-11 18:43:44', '2025-08-11 18:43:44', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181983, 1754909033, 1, 'bd', 'de', '2025-08-11 18:43:53', '2025-08-11 18:43:53', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181984, 1754909039, 1, 'bd', 'de', '2025-08-11 18:43:59', '2025-08-11 18:43:59', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181985, 1754909040, 1, 'bd', 'de', '2025-08-11 18:44:00', '2025-08-11 18:44:00', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181986, 1754909043, 1, 'bd', 'de', '2025-08-11 18:44:03', '2025-08-11 18:44:03', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181987, 1754909047, 1, 'bd', 'de', '2025-08-11 18:44:07', '2025-08-11 18:44:07', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181988, 1754909060, 1, 'bd', 'de', '2025-08-11 18:44:20', '2025-08-11 18:44:20', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181989, 1754909062, 1, 'bd', 'de', '2025-08-11 18:44:22', '2025-08-11 18:44:22', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181990, 1754909063, 1, 'bd', 'de', '2025-08-11 18:44:23', '2025-08-11 18:44:23', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181991, 1754909072, 1, 'bd', 'de', '2025-08-11 18:44:32', '2025-08-11 18:44:32', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181992, 1754909073, 1, 'bd', 'de', '2025-08-11 18:44:33', '2025-08-11 18:44:33', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181993, 1754909110, 1, 'bd', 'de', '2025-08-11 18:45:10', '2025-08-11 18:45:10', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181994, 1754909110, 2, 'bd', 'de', '2025-08-11 18:45:10', '2025-08-11 18:45:10', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=bd&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181995, 1754909111, 1, 'bd', 'de', '2025-08-11 18:45:11', '2025-08-11 18:45:11', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181996, 1754909111, 2, 'bd', 'de', '2025-08-11 18:45:11', '2025-08-11 18:45:11', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=bd&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181997, 1754909381, 1, 'bd', 'de', '2025-08-11 18:49:41', '2025-08-11 18:49:41', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51181998, 1754909381, 2, 'bd', 'de', '2025-08-11 18:49:41', '2025-08-11 18:49:41', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=bd&language=de', NULL);
INSERT INTO `monitor_event` VALUES (51181999, 1754909381, 1, 'bd', 'de', '2025-08-11 18:49:41', '2025-08-11 18:49:41', NULL, 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', NULL, 'localhost');
INSERT INTO `monitor_event` VALUES (51182000, 1754909381, 2, 'bd', 'de', '2025-08-11 18:49:41', '2025-08-11 18:49:41', '\"No params\"', 'http://localhost:5173/?fid=76ac1d5cf28b540bda3dbc40108d447a&ctr=0.03&country=bd&publish_time=1744389720&channel=ve_home&language=de&category=Promis', '/detail/recData?country=bd&language=de', NULL);

-- ----------------------------
-- Table structure for rec_feed_info
-- ----------------------------
DROP TABLE IF EXISTS `rec_feed_info`;
CREATE TABLE `rec_feed_info`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `fid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `category` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `country` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `language` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ts` bigint UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `contentxml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `fulltext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `fulltextxml` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `domain` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ctr` decimal(10, 4) NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_fid_sid`(`fid` ASC, `sid` ASC) USING BTREE,
  INDEX `idx_ts`(`ts` ASC) USING BTREE,
  INDEX `idx_country_language_sid`(`country` ASC, `language` ASC, `sid` ASC) USING BTREE,
  INDEX `idx_ctime_country`(`ctime` ASC, `country` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18649 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rec_feed_info
-- ----------------------------

-- ----------------------------
-- Table structure for supply_feed_info
-- ----------------------------
DROP TABLE IF EXISTS `supply_feed_info`;
CREATE TABLE `supply_feed_info`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `fid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `category` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `country` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `language` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ts` bigint UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `contentxml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `fulltext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `fulltextxml` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `domain` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_fid_sid`(`fid` ASC, `sid` ASC) USING BTREE,
  INDEX `idx_ts`(`ts` ASC) USING BTREE,
  INDEX `idx_country_language_sid`(`country` ASC, `language` ASC, `sid` ASC) USING BTREE,
  INDEX `idx_ctime_country`(`ctime` ASC, `country` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 196015221 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supply_feed_info
-- ----------------------------

-- ----------------------------
-- Table structure for test_supply_feed_info
-- ----------------------------
DROP TABLE IF EXISTS `test_supply_feed_info`;
CREATE TABLE `test_supply_feed_info`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `fid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `category` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `country` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `language` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `ts` bigint UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `contentxml` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `fulltext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `fulltextxml` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_sid_fid`(`sid` ASC, `fid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1881484 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test_supply_feed_info
-- ----------------------------
INSERT INTO `test_supply_feed_info` VALUES (1881433, 'dev', 'cbda8186b79667f4656b8a9760e13cef', 'Wiadomości_Polityka', 'pl', 'pl', 1755159899000, 'Pełczyńska-Nałęcz pod ostrzałem. Ponad 40 proc. Polaków chce jej dymisji', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 16:24:59\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-oX4n-Uw2b-3HcC_katarzyna-pelczynska-nalecz-1920x1080-nocrop.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755159899000,\"url\":\"https://polityka.se.pl/wiadomosci/pelczynska-nalecz-pod-ostrzalem-ponad-40-proc-polakow-chce-jej-dymisji-aa-NE7A-Y35q-Mt4s.html\",\"tags\":\"Katarzyna pełczyńska-nałęcz\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Ponad cztery na dziesięć osób uważa, że Katarzyna Pełczyńska-Nałęcz powinna odejść z rządu. Najnowszy sondaż SW Research nie pozostawia złudzeń, afera wokół Kra...', NULL, 'Na stronie internetowej KPO pojawiła się mapa z listą firm, które otrzymały dotacje z funduszu. W teorii miały one wspierać innowacje i rozwój, w praktyce część środków poszła m.in. na zakup luksusowych jachtów, wymianę mebli w biurach czy wirtualnej strzelnicy. Informacje te wywołały burzę w sieci, a opozycja i komentatorzy mówią wprost o kompromitacji rządu.\nPilne! Kaczyński kontra Komosa. Zapadł wyrok w sprawie\n– Winny jest jeden. To zamieszanie wynikało z pośpiechu. Zostało nam mało czasu, więc staliśmy przed wyborem, albo te pieniądze stracimy, albo wydamy je jak najszybciej, by trafiły do polskich firm – tłumaczył Donald Tusk, broniąc swojej minister. Mimo to, Pełczyńska-Nałęcz musiała już składać wyjaśnienia na posiedzeniu rządu.\nSW Research zapytało Polaków, czy minister Pełczyńska-Nałęcz powinna stracić stanowisko.\nCo ciekawe, najmniej niezdecydowanych jest wśród mieszkańców miast od 200 do 499 tys. mieszkańców 36,7 proc. Najwięcej w największych aglomeracjach oraz wśród osób o niskich dochodach, tam opcję „nie wiem” wskazało ponad 50 proc. badanych.\nNajlepsze zdanie o minister mają osoby z wykształceniem zasadniczym zawodowym aż 20,8 proc. z nich uważa, że powinna pozostać na stanowisku. Jednak w żadnej z badanych grup zwolennicy jej pozostania nie przeważają nad przeciwnikami.\nSama Katarzyna Pełczyńska-Nałęcz na razie nie komentuje wyników sondażu. Jednak politycy z otoczenia premiera zapewniają, że ma pełne wsparcie Donalda Tuska. Czy to wystarczy, by przetrwać polityczną burzę?\nPoniżej galeria: Tak Tusk przywitał Pełczyńską-Nałęcz. Uprzejmości? A gdzie tam! Wszystko się nagrało!\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:39', '2025-08-15 18:20:39');
INSERT INTO `test_supply_feed_info` VALUES (1881434, 'dev', '24258ee2808b0dac6064f5b043d8b931', 'Wiadomości_Polityka', 'pl', 'pl', 1755155907000, 'Pilne! Kaczyński kontra Komosa. Zapadł wyrok w sprawie', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 15:18:27\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-FRtZ-P8MF-TjY5_jaroslaw-kaczynski-zabral-glos-w-rocznice-wybuchu-powstania-warszawskiego-1920x1080-nocrop.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755155907000,\"url\":\"https://polityka.se.pl/wiadomosci/kaczynski-kontra-komosa-prezes-pis-nie-stawil-sie-w-sadzie-aa-RLqH-1eNn-z8tR.html\",\"tags\":\"Jarosław kaczyński\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Sąd Rejonowy dla Warszawy Śródmieścia umorzył w czwartek postępowanie w sprawie z oskarżenia Zbigniewa Komosy przeciwko Jarosławowi Kaczyńskiemu o naruszenie ni...', NULL, 'Postępowanie dotyczy incydentu z 10 października 2024 r. na pl. Piłsudskiego w Warszawie. Według relacji Zbigniewa Komosy, Jarosław Kaczyński miał dwukrotnie uderzyć go w twarz podczas obchodów miesięcznicy smoleńskiej. Komosa złożył prywatny akt oskarżenia z art. 217 Kodeksu karnego, mówiący o naruszeniu nietykalności cielesnej.\nGorący sondaż o Nawrockim. Jedni chwalą, drudzy krytykują, a reszta nie ma zdania\nDecyzję ogłosił sędzia Łukasz Grylewicz, stwierdzając, że z materiału dowodowego wynika, iż „miało miejsce dwukrotne uderzenie ręką przez Jarosława Kaczyńskiego w okolice twarzy oskarżyciela prywatnego”. – Zachowania takiego oczywiście nie wolno pochwalać, jednak z uwagi na szczególne okoliczności sąd uważa, że społeczna szkodliwość czynu była znikoma, dlatego nie stanowi on przestępstwa – uzasadnił.\nNa rozprawie 14 sierpnia nie pojawił się ani Kaczyński, ani jego obrońca Bogusław Kosmus. Stawili się natomiast Zbigniew Komosa i jego adwokat Jerzy Jurek. Sprawę prowadzi sędzia Łukasz Grylewicz.\nProces miał ruszyć już 23 kwietnia, po tym jak 4 marca nie doszło do ugody między stronami. Termin przesuwano jednak kilkukrotnie, najpierw z powodu usprawiedliwionej nieobecności sędziego, później na wniosek obrońcy Kaczyńskiego.\nJeszcze w grudniu 2024 r., podczas procedury uchylania immunitetu w Sejmie, Komosa i jego adwokat proponowali Kaczyńskiemu ugodę. Warunkiem było publiczne przeproszenie za, jak to określono, „kłamstwo o zamachu” w Smoleńsku. W zamian Komosa deklarował wycofanie oskarżenia i rezygnację z dalszych działań przy pomniku Ofiar Tragedii Smoleńskiej.\nPropozycja wygasła przed głosowaniem w Sejmie. Ostatecznie 6 grudnia 2024 r. posłowie uchylili immunitet Jarosława Kaczyńskiego, za głosowało 241 posłów KO, Polski 2050-TD, PSL-TD, Lewicy, Razem i jeden niezrzeszony. Przeciw było 206 posłów PiS, Konfederacji i Wolnych Republikanów.\nUchylenie immunitetu otworzyło drogę do procesu sądowego. Na razie nie wiadomo, kiedy wyznaczony zostanie kolejny termin rozprawy.\nPoniżej galeria zdjęć: Miesięcznica smoleńska 2025. Kaczyński nie przebiera w słowa, mówi o zbrodni\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:41', '2025-08-15 18:20:41');
INSERT INTO `test_supply_feed_info` VALUES (1881435, 'dev', '03758e2e1fba073309d0fa9ad30a5c5a', 'Wiadomości_Polityka', 'pl', 'pl', 1755153979000, 'Żukowska strofuje Tuska po spotkaniu z Nawrockim: „Nie dreptaj, nie ciumkaj, usiądź jak sigma”', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 14:46:19\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-13q1-enum-xh9r_spotkanie-prezydenta-karola-nawrockiego-z-premierem-donaldem-tuskiem-1248x1040.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755153979000,\"url\":\"https://polityka.se.pl/wiadomosci/zukowska-strofuje-tuska-po-spotkaniu-z-nawrockim-nie-dreptaj-nie-ciumkaj-usiadz-jak-sigma-aa-6NuQ-rg3H-UTEp.html\",\"tags\":\"Karol nawrocki_Donald tusk_Anna maria żukowska\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Pierwsze spotkanie premiera Donalda Tuska z prezydentem Karolem Nawrockim stało się tematem gorącej dyskusji – nie tylko politycznej, lecz także wizerunkowej. W...', NULL, 'Na platformie X Żukowska opublikowała serię wpisów, w których z perspektywy socjotechniki i PR-u bezlitośnie wypunktowała zachowanie premiera, ale też wytknęła błędy prezydentowi Nawrockiemu. Szef rządu wyglądał na zdenerwowanego i zagubionego, kiedy znalazł się w pustej sali a obserwowały go telewizyjne kamery. - Z dwojga złego zalecam taktyczne spóźnienie (zwłaszcza że to było stałą normą Tuska za pierwszych rządów, a i teraz nie jest nietypowe), niż: - dreptanie w kółko - nerwowe zerkanie na zegarek, mimo że ten stoi za nim i pokazuje minutę po 12.00 - drapanie się po brodzie - ciumkanie - skubanie końcówki krawata - smyranie się za ucho – napisała Anna Maria Żukowska.\nSpotkanie Donalda Tuska i Karola Nawrockiego. Kancelaria prezydenta ujawnia, o czym rozmawiali\nCo zatem należy zrobić, kiedy musicie czekać, a jesteście bacznie obserwowani? Jak czekać jak sigma i ze stylem?\n- Nie spoglądać na zegarek (no, chyba że po pół godzinie). Jeżeli w pomieszczeniu są jakieś dzieła sztuki - obrazy, rzeźby - możecie na chwilę zawiesić na nich wzrok. Po to też one są, żeby móc na moment zająć uwagę i czas gości. Dupnąć sobie wygodnie na dostępnym meblu, w miarę możliwości dopasować go do siebie, np. lekko przesuwając, zmieniając kąt względem kamer czy stołu. Oczekują stojąc to stangreci i służący w liberii. Goście zasiadają – tłumaczy posłanka.\nJakie ma jeszcze rady dla premiera i innych polityków? - Przekrzywić lekko stroik z kwiatami lub dzbanek z mlekiem - ta i poprzednia strategia (może nie wszystkie naraz) pokazują, że czujecie się swobodnie w danej przestrzeni i ją symbolicznie bierzecie w posiadanie – informuje Anna Maria Żukowska. Co jeszcze powinien był zrobić Donald Tusk? - Uśmiechnąć się do kamery. Siedzieć prosto i nie manipulować niczym dłońmi. Starać się panować nad mimiką i nie okazywać zdenerwowania, ale też znudzenia. Po nadejściu gospodarza wstać nienerwowo, ale z uśmiechem i leciutkim ociąganiem. Nie koncentrować się na uładzeniu własnego ubioru po zmianie pozycji (zaraz znów będziecie rozpinać ten guzik marynarki!), tylko na spojrzeniu prosto w twarz gospodarzowi – radzi posłanka.\nZaraz po spotkaniu z prezydentem Donald Tusk zamieścił wymowny wpis. Podsumował rozmowę krótko i dobitnie\nNa zakończenie spotkania, przy oficjalnym zdjęciu, posłanka dorzuciła kilka rad dla polityków dotyczących postawy. - Nie stajemy bokiem, tylko przodem, i nie trzymamy dłoni w małdrzyk. Byle nie w piramidkę! To jeszcze gorsze – podkreśla Anna Maria Żukowska i zauważa, że Nawrocki stosuje technikę trzymania obrączki. - dobre jest też objęcie całej dłoni drugą dłonią, zamiast przeplatania palców – dodaje polityczka. - Żaden z panów nie odważył się natomiast na ofensywę typu położenie ręki na ramieniu czy poklepywanie, ani też na gest pokoju poprzez podanie ręki. Widać duży dystans i chłód. Natomiast u prezydenta widać większą swobodę. Ale jest w końcu „u siebie” – przyznaje ekspertka.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:43', '2025-08-15 18:20:43');
INSERT INTO `test_supply_feed_info` VALUES (1881436, 'dev', '3e3d6d86589e90cb0bee08ee6b03cd8e', 'Wiadomości_Polityka', 'pl', 'pl', 1755152980000, '„Przełomu nie będzie”. Amerykanista bez złudzeń przed spotkaniem Trump–Putin', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 14:29:40\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-uqxz-annU-UEPD_donald-trump-1248x1040.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755152980000,\"url\":\"https://polityka.se.pl/wiadomosci/misiuna-aa-p2vS-pRQP-gWbk.html\",\"tags\":\"Donald trump\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Radio Eska dowiedziało się, jak eksperci oceniają jutrzejsze spotkanie Donalda Trumpa i Władimira Putina na Alasce. Będzie to pierwsza bezpośrednia rozmowa obu ...', NULL, '– Żadnego przełomu się nie spodziewam. Na drodze negocjacji tego konfliktu rozwiązać się nie da inaczej niż pomyśli Rosji. Żeby uzyskać inne możliwości, Amerykanie musieliby gwałtownie zwiększyć pomoc wojskową dla Ukrainy w każdym wymiarze – mówi w rozmowie z Radiem Eska dr Jan Misiuna.\nJego zdaniem na rozmowach skorzystają wyłącznie obaj przywódcy.\n– Putin będzie mógł kontynuować wojnę, jednocześnie negocjując bez końca, a Trump będzie mógł realizować swoje marzenia – dodaje ekspert.\nWedług Misiuny, w otoczeniu Donalda Trumpa krąży przekonanie, że zakończenie wojny w Ukrainie mogłoby mu zapewnić pokojową Nagrodę Nobla.\nSpotkanie Tuska z Nawrockim pod okiem Lecha Kaczyńskiego. Symboliczny patron nad rozmowami w Pałacu\n– Donald Trump bardzo by chciał, zdaje się, dostać pokojową Nagrodę Nobla. W jego środowisku panuje przeświadczenie, że jeśli uda mu się rozwiązać ten konflikt, nagroda jest już w jego zasięgu – podkreśla.\nTrump zapowiedział w środę, że jeśli rozmowy z Putinem zakończą się powodzeniem, zorganizuje kolejne spotkanie, tym razem z udziałem przywódców Rosji i Ukrainy. Ostrzegł jednak, że w przypadku braku zawieszenia broni Rosję spotkają „srogie konsekwencje”. Rozmowy na Alasce będą bacznie obserwowane nie tylko w Kijowie i Moskwie, ale też w stolicach państw Zachodu. Jeśli przewidywania dr. Misiuny się potwierdzą, spotkanie Trump–Putin może okazać się bardziej pokazem politycznym niż realnym krokiem w stronę zakończenia wojny.\nPoniżej galeria zdjęć: Donald Trump & Karol Nawrocki\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:44', '2025-08-15 18:20:44');
INSERT INTO `test_supply_feed_info` VALUES (1881437, 'dev', '785831e2a4fbccb637bca695f767e773', 'Wiadomości_Polityka', 'pl', 'pl', 1755151200000, 'Zaraz po spotkaniu z prezydentem Donald Tusk zamieścił wymowny wpis. Podsumował rozmowę krótko i dobitnie', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 14:00:00\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-i55g-qoiz-wH9Q_spotkanie-prezydenta-karola-nawrockiego-z-premierem-donaldem-tuskiem-1008x442.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755151200000,\"url\":\"https://polityka.se.pl/wiadomosci/zaraz-po-spotkaniu-z-prezydentem-donald-tusk-zamiescil-wymowny-wpis-podsumowal-rozmowe-krotko-i-dobitnie-aa-pxXE-D4Bc-puZJ.html\",\"tags\":\"Karol nawrocki_Donald tusk\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Premier Donald Tusk i prezydent Karol Nawrocki odbyli spotkanie w samo południe w czwartek 14 sierpnia. Politycy zjawili się w Pałacu Prezydenckim, gdzie przez ...', NULL, 'Spotkanie premiera i prezydenta trwało około godziny ze względu na późniejsze zobowiązania Karola Nawrockiego. Rozmowa odbyła się w cztery oczy, bez uczestnictwa dziennikarzy czy doradców polityków. Jak w konferencji podkreślał Paweł Szefernaker z Kancelarii Prezydenta, dyskusja skupiała się przede wszystkim na najważniejszych kwestiach: bezpieczeństwa i dyplomacji. Prezydent miał także wyznaczyć, jak ma wyglądać współpraca z rządem, powołując się na konstytucję. W osobnej konferencji potwierdził to rzecznik rządu Adam Szłapka.\nZ kolei sam Donald Tusk zaraz po opuszczeniu Pałacu Prezydenckiego dodał na Twitterze wymowny wpis podsumowujący rozmowę.\n- W jednym byliśmy z Panem Prezydentem zgodni w stu procentach: że mamy kochane rodziny i fantastyczne dzieci! - napisał premier.\nChoć wpis mógłby sugerować, że politykom nie udało się porozumieć w żadnej innej kwestii, Adam Szłapka na konferencji podkreślił, że szef rządu napisał o \"100 proc. zgodności\", co nie oznacza, że w ważnych dla Polaków sprawach zupełnie się nie zgadzali.\nPod postem Donalda Tuska szybko pojawiło się wiele komentarzy od innych polityków. Posłanka PiS, Monika Pawłowska, skomentowała: \"Nie takiego komunikatu obywatel oczekuje w tak trudnym międzynarodowo czasie po spotkaniu premier-prezydent, ale od pana to już ciężko czegokolwiek oczekiwać\". Marek Tucholski z Konfederacji, w ironiczny sposób, zinterpretował wpis premiera: \"Jakby tu sobie wizerunek ocieplić. Napiszę coś o dzieciach, które moje środowisko polityczno-ideowe ostatnio hejtowało\". Marek Migalski, również skrytykował formę komunikacji po spotkaniu: \"Komentarz premiera kraju po spotkaniu z prezydentem. Podobno spotkaniu w ważnych dla państwa sprawach. W kontekście możliwości szczytu Trump-Putin i zakończenia wojny na Ukrainie\".\nW naszej galerii zobaczysz, jak wyglądał początek spotkania Donalda Tuska i Karola Nawrockiego:\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:46', '2025-08-15 18:20:46');
INSERT INTO `test_supply_feed_info` VALUES (1881438, 'dev', '527868c8a3487e701b61af4633078f7a', 'Wiadomości_Polityka', 'pl', 'pl', 1755151080000, 'Zaskakujące roszady w Sejmie. Ci politycy PiS znów zasiądą w poselskich ławach', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 13:58:00\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-cwqd-jRaA-pWfS_michal-jach-i-tomasz-rzymowski-1920x1080-nocrop.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755151080000,\"url\":\"https://polityka.se.pl/wiadomosci/zaskakujace-roszady-w-sejmie-ci-politycy-pis-znow-zasiada-w-poselskich-lawach-aa-1fyg-vuHQ-RRyD.html\",\"tags\":\"Sejm_Tomasz rzymkowski\",\"or_tags\":\"Wiadomości_Polityka\"}', 'W związku z powołaniem do Kancelarii Prezydenta posłów PiS: Adama Andruszkiewicza, Zbigniewa Boguckiego, Marcina Przydacza oraz Pawła Szefernakera, ich miejsca ...', NULL, 'Jak poinformowała Kancelaria Sejmu, 12 sierpnia marszałek Hołownia wydał postanowienia o stwierdzeniu wygaśnięcia mandatów poselskich czterech posłów, którzy znaleźli się w Kancelarii Prezydenta po zaprzysiężeniu Karola Nawrockiego. Zbigniew Bogucki został szefem Kancelarii, Adam Andruszkiewicz objął funkcję zastępcy szefa Kancelarii Prezydenta, Paweł Szefernaker został szefem gabinetu prezydenta (wcześniej kierował kampanią wyborczą Karola Nawrockiego) a Marcin Przydacz odpowiada za sprawy międzynarodowe.\nMarszałek Sejmu zwróci się teraz do kandydatów z odpowiednich list PiS z zawiadomieniem o możliwości przyjęcia mandatu po poprzednikach. Chodzi o polityków, którzy nie dostali się do Sejmu w wyniku wyborów 15 października 2023 r. Ślubowanie nowych posłów PiS odbędzie się na 40. posiedzeniu Sejmu (9-12 września).\nSprawdziliśmy, że dzięki tym roszadom do Sejmu wróci Michał Jach doświadczony poseł PiS, który był parlamentarzystą przez cztery kadencje, a aktualnie jest radnym sejmiku zachodniopomorskiego.\nGorący sondaż o Nawrockim. Jedni chwalą, drudzy krytykują, a reszta nie ma zdania\nPonownie mandat poselski obejmie też Tomasz Rzymkowski, który zadebiutował w sejmowych ławach w 2015 r., kiedy kandydował z listy Kukiz’15. Polityk ten w 2017 r. wstąpił do Unii Polityki Realnej a w 2019 z listy Kukiz’15 kandydował bezskutecznie do Parlamentu Europejskiego. W 2019 Rzymkowski przeszedł do klubu parlamentarnego Prawa i Sprawiedliwości i został kandydatem do Sejmu w wyborach parlamentarnych w tym samym roku. Uzyskał wówczas reelekcję, a w roku 2021 r. został wiceministrem edukacji i nauki. Kolejne wybory nie były dla niego szczęśliwe, ale okazuje się, że jednak obejmie mandat poselski.\n- Dowiedziałem się, że wrócę do Sejmu w miniony czwartek. Przyjąłem to z zaskoczeniem, ale też z delikatną satysfakcją – mówi Tomasz Rzymkowski „Super Expressowi”. – Będę chciał zajmować się tym, co robiłem będąc i nie będąc posłem, czyli sytuacją w wymiarze sprawiedliwości, która jest jednym z największych problemów w Polsce. Chodzi o długość postępowań i brak zaufania do wymiaru sprawiedliwości, a wiemy, że to układ nerwowy każdego państwa – informuje polityk PiS, dodając, że ostatnio zajmował się działalnością naukową.\nDo Sejmu wejdzie jeszcze dwoje polityków PiS, ale będą to parlamentarni debiutanci: Bogumiła Olbryś jest dyrektorką Zespołu Szkół Weterynaryjnych i Ogólnokształcących w Łomży, a Marek Subocz jest byłym wojewodą zachodniopomorskim. Ten polityk PiS już trzykrotnie próbował dostać się do Sejmu w wyborach w latach 2015, 2019 i 2023.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:48', '2025-08-15 18:20:48');
INSERT INTO `test_supply_feed_info` VALUES (1881439, 'dev', 'af23436544c790263c11ff455e7c262e', 'Wiadomości_Polityka', 'pl', 'pl', 1755149731000, 'Spotkanie Tuska z Nawrockim pod okiem Lecha Kaczyńskiego. Symboliczny patron nad rozmowami w Pałacu', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 13:35:31\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-k5Nx-X4Jh-E7dm_spotkanie-prezydenta-karola-nawrockiego-z-premierem-donaldem-tuskiem-1248x1040.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755149731000,\"url\":\"https://polityka.se.pl/wiadomosci/spotkanie-tuska-z-nawrockim-pod-okiem-lecha-kaczynskiego-symboliczny-patron-nad-rozmowami-w-palacu-aa-hH7j-NGtn-oeQv.html\",\"tags\":\"Karol nawrocki_Donald tusk_Lech kaczyński\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Donald Tusk zasiadł do rozmowy z Karolem Nawrockim w sali, gdzie nad ich głowami wisiał portret Lecha Kaczyńskiego. Symboliczny kadr od razu przywołał wspomnien...', NULL, 'Choć Tusk i Kaczyński zaczynali od idei współpracy, relacje przerodziły się w polityczny potyczki. Prezydent Lech Kaczyński wielokrotnie blokował kluczowe ustawy rządu Tuska za pomocą prawa weta, obstrukcja dotyczyła m.in. reformy emerytalnej, planów zagospodarowania przestrzennego oraz restrukturyzacji telewizji publicznej.\nW odpowiedzi, w 2009 r. premier Tusk zaproponował zmianę konstytucji: „Prezydent nie powinien mieć prawa weta. Ludzie podejmują decyzję w wyborach, a instytucje państwowe nie powinny się konfliktować\". Później, w 2010 r., ponownie podkreślił, że veto powinno być przezwyciężalne większością parlamentarną, zamiast wymogu trzech piątych.\nGorący sondaż o Nawrockim. Jedni chwalą, drudzy krytykują, a reszta nie ma zdania\nKulminacją konfliktu była tzw. „wojna o Brukselę” w październiku 2008 r., podczas nadzwyczajnego szczytu UE Lech Kaczyński chciał osobiście reprezentować Polskę, ale kancelaria premiera odmówiła mu udostępnienia rządowego samolotu. Po tym, jak prezydent przybył innym śmigłowcem, Tusk stwierdził do mediów: „Powiem brutalnie: nie potrzebuję pana prezydenta, na tym polega problem”. To zdarzenie stało się symbolem ich politycznych antagonizmóww i skomplikowanej relacji między dwoma najwyzszymi urzędami państwa.\nTeraz, po latach, Tusk znów zasiadł w Pałacu Prezydenckim, naprzeciw nowej głowy państwa, Karola Nawrockiego, ale pod czujnym spojrzeniem portretu dawnego rywala. Dla wielu obserwatorów ten kadr jest czymś więcej niż tylko dekoracją. To przypomnienie epoki, gdy relacje premiera i prezydenta stały się jednym z najgorętszych frontów polskiej polityki.\nW tle obecnego spotkania, rozmowy o Ukrainie i relacjach rządu z Pałacem, wisi więc polityczna historia sprzed 15 lat. Historia o tym, jak ambitne plany współpracy ustąpiły miejsca sporom, które definiowały polską scenę polityczną końca pierwszej dekady XXI wieku.\nPoniżej galeria zdjęć ze spotkania\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:49', '2025-08-15 18:20:49');
INSERT INTO `test_supply_feed_info` VALUES (1881440, 'dev', '1763d609ada0ed104e5d570252952fad', 'Wiadomości_Polityka', 'pl', 'pl', 1755149567000, 'Spotkanie Donalda Tuska i Karola Nawrockiego. Kancelaria prezydenta ujawnia, o czym rozmawiali', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 13:32:47\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-i55g-qoiz-wH9Q_spotkanie-prezydenta-karola-nawrockiego-z-premierem-donaldem-tuskiem-1008x442.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755149567000,\"url\":\"https://polityka.se.pl/wiadomosci/spotkanie-donalda-tuska-i-karola-nawrockiego-politycy-beda-miec-niewiele-czasu-na-rozmowy-aa-eLw8-BfuJ-AMid.html\",\"tags\":\"Karol nawrocki_Donald tusk\",\"or_tags\":\"Wiadomości_Polityka\"}', 'W czwartek, 14 sierpnia, o 12:00 odbyło się spotkanie premiera Donalda Tuska i prezydenta Karola Nawrockiego w Pałacu Prezydenckim na Krakowskim Przedmieściu w ...', NULL, 'Na prośbę Donalda Tuska, dojdzie do jego spotkania z Karolem Nawrockim. Prezydent już ok 11:40 przyjechał do Pałacu Prezydenckiego, gdzie odbędzie się rozmowa. Jednym z najważniejszych tematów będzie polityka zagraniczna, ze spotkaniem prezydenta Stanów Zjednoczonych z Władimirem Putinem na Alasce. Nie wykluczone, że zostaną także poruszone tematy związane z rodzimą polityką, jak ostatnie ustawy zaproponowane przez prezydenta, na przykład ta dotycząca wiatraków i zamrożenia cen energii. Będzie to spotkanie bez udziału doradców obu stron.\nPolitycy nie będą mieli jednak zbyt dużo czasu. Początek spotkania planowany jest na 12:00, ale już o 14:00 Karol Nawrocki na dziedzińcu Belwederu odbędzie się uroczystość wręczenia nominacji generalskich w Siłach Zbrojnych RP. W wydarzeniu weźmie udział wicepremier i minister obrony narodowej Władysław Kosiniak-Kamysz. To oznacza, że dyskusja z premierem potrwa najwyżej dwie godziny.\nDo tej pory Donald Tusk i Karol Nawrocki komunikowali się przeważnie za pośrednictwem mediów społecznościowych oraz swoich doradców.\nPremier pojawił się na miejscu punktualnie. W specjalnym pokoju z polskimi flagami, stołem przyozdobionym kwiatami i krzesłami czekał na przyjście prezydenta. Choć Karol Nawrocki spóźnił się tylko dwie minuty, lider PO przestępował z nogi nogę, zerknął na zegarek, a w końcu usiadł na jednym z miejsc. Gdy Karol Nawrocki w końcu się pojawił, politycy uścisnęli sobie ręce i przez chwilę pozowali do zdjęć, po czym zasiedli do stołu, a dziennikarze zostali wyproszeni z pomieszczenia. Około 13:20 prezydent opuścił Pałac Prezydencki.\n- Spotkanie przede wszystkim dotyczyło kwestii międzynarodowych, spraw bezpieczeństwa, kwestii najważniejszych dziś dla Polaków. Pan prezydent Karol Nawrocki przedstawił zasady, na jakich powinna być oparta współpraca prezydenta i premiera w najważniejszych dla Polaków sprawach - mówił Paweł Szefernaker z Kancelarii Prezydenta. Podkreślił, że atmosfera była \"normalna\", bowiem nie było to spotkanie towarzyskie. Zdradził także, że 27 sierpnia odbędzie się Rada Gabinetowa.\nGłos ws. spotkania zabrał także rzecznik rządu Adam Szłapka.\n- Spotkanie dotyczyła kwestii fundamentalnych, tych, w których współpraca musi funkcjonować: kwestie bezpieczeństwa, kwestie dyplomacji. To było rzeczowe spotkanie. Dotyczyło też spraw związanych z Ukrainą, ze spotkaniem Donalda Trumpa. Pan prezydent z panem premierem uznali, ze w sprawach fundamentalnych [...] musi być współpraca zgodnie z konstytucją - mówił.\nArtykuł w trakcie aktualizacji.\nW naszej galerii zobaczysz początek spotkanie Tusk-Nawrocki:\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:51', '2025-08-15 18:20:51');
INSERT INTO `test_supply_feed_info` VALUES (1881441, 'dev', '0fa2ee08c614c231a71fd7ea5604038d', 'Wiadomości_Polityka', 'pl', 'pl', 1755148844000, 'Tusk czekał na prezydenta Nawrockiego. Nerwowy spacer po gabinecie w Pałacu', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 13:20:44\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-C2aP-8bd1-Xxr6_spotkanie-prezydenta-karola-nawrockiego-z-premierem-donaldem-tuskiem-1248x1040.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755148844000,\"url\":\"https://polityka.se.pl/wiadomosci/tusk-czekal-na-prezydenta-nawrockiego-nerwowy-spacer-po-gabinecie-w-palacu-aa-drRn-SRta-Z4sK.html\",\"tags\":\"Karol nawrocki_Donald tusk\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Donald Tusk przybył punktualnie na spotkanie z Karolem Nawrockim, ale przez chwilę musiał poczekać na prezydenta. Premier wszedł do Pałacu Prezydenckiego tuż pr...', NULL, 'Czwartkowe spotkanie miało szczególny wymiar, to pierwsza rozmowa nowego prezydenta z premierem w formule w cztery oczy. W agendzie znalazły się kluczowe tematy polityczne, w tym sytuacja w Ukrainie oraz relacje między Pałacem Prezydenckim a rządem.\nKilkanaście minut przed godziną 12. do Pałacu przyjechał Karol Nawrocki, ale to Tusk wszedł pierwszy do sali spotkań. Wbrew pozorom, nawet krótka, około dwuminutowa chwila oczekiwania w takich okolicznościach nabiera symbolicznego znaczenia.\nGorący sondaż o Nawrockim. Jedni chwalą, drudzy krytykują, a reszta nie ma zdania\nZarejestrowane przez kamery TVN24 ujęcia pokazują, jak Donald Tusk powoli spaceruje po pomieszczeniu. Przechodzi wzdłuż zdobionej ściany, mijając złote stoliki i klasyczne meble, zatrzymuje się na moment, a następnie wraca w stronę drzwi. Kilkukrotnie splata dłonie za plecami, co dodaje jego sylwetce nieformalnego, ale jednocześnie skupionego charakteru.\nWidać, jak premier przenosi ciężar ciała z jednej nogi na drugą, jakby chciał rozładować napięcie lub po prostu zająć czas w oczekiwaniu na wejście gospodarza.\nW pewnym momencie Tusk spogląda na zegarek, sprawdzając godzinę. Ten gest prosty, ale wymowny, uchwycony przez kamery, momentalnie obiegł media społecznościowe. W polityce takie detale bywają interpretowane jako sygnały: czy chodziło o punktualność, symboliczne „czekam już wystarczająco długo”, czy zwykłe odruchowe sprawdzenie czasu?\nPo około dwóch minutach do sali wchodzi prezydent Karol Nawrocki. Obaj politycy wymieniają uścisk dłoni i zajmują miejsca przy bogato zdobionym, złotym stole. Na środku stoi wazon z różowo-fioletowymi kwiatami, a tło tworzą biało-czerwone flagi. Chwilę później rozpoczyna się rozmowa, której tematy, według zapowiedzi, dotyczą m.in. Ukrainy i bieżących relacji między rządem a Pałacem Prezydenckim.\nChoć samo oczekiwanie trwało krótko, w świecie polityki i mediów każdy gest ma znaczenie. Tusk, spacerujący po gabinecie i zerkający na zegarek, w oczach części komentatorów może być postrzegany jako polityk podkreślający wagę punktualności i gotowości do rozmów. Inni dopatrzą się w tym delikatnego sygnału dyscyplinującego nowego prezydenta.\nPoniżej galeria zdjęć: Spotkanie prezydenta Karola Nawrockiego z premierem Donaldem Tuskiem\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:53', '2025-08-15 18:20:53');
INSERT INTO `test_supply_feed_info` VALUES (1881442, 'dev', '42d32adfd4595daa7c42096270a72ab4', 'Wiadomości_Polityka', 'pl', 'pl', 1755146565000, 'Nastolatek z Ukrainy działał na rzecz obcego wywiadu. Grozi mu dożywocie', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 12:42:45\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-fyFL-LQR7-nTyF_abw-zatrzymala-osobe-dezinformujaca-o-rzekomym-planie-wysadzenia-walu-1280x960.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755146565000,\"url\":\"https://polityka.se.pl/wiadomosci/nastolatek-z-ukrainy-dzialal-na-rzecz-obcego-wywiadu-grozi-mu-dozywocie-aa-Vobz-mbBS-dcAD.html\",\"tags\":\"Abw\",\"or_tags\":\"Wiadomości_Polityka\"}', 'ABW i policja zatrzymały 17-letniego obywatela Ukrainy podejrzanego o działanie na rzecz obcego wywiadu. Według śledczych młody mężczyzna miał uczestniczyć w ak...', NULL, 'Gorący sondaż o Nawrockim. Jedni chwalą, drudzy krytykują, a reszta nie ma zdania\nPremier Donald Tusk poinformował w środę, że zatrzymany 17-latek został zwerbowany przez obce służby.\n– Rosjanie liczą na to, że uda się skonfliktować Polaków i Ukraińców – podkreślił szef rządu.\nJak ustaliła Prokuratura Krajowa, podejrzany to Ilia K., który działał na terenie Wrocławia, Warszawy oraz w miejscowości Domostaw. Miał umieszczać na budynkach i pomnikach czerwono-czarne flagi UPA oraz napisy „Sława UPA” w języku ukraińskim.\nWedług prok. Katarzyny Calów-Jaszewskiej z Prokuratury Krajowej, akty sabotażu obejmowały m.in. zniszczenie i znieważenie pomnika Rzeź Wołyńska oraz pomnika-mauzoleum Pomordowanej Ludności Polskiej na Kresach Południowo-Wschodnich.\n– Zgromadzony materiał dowodowy pozwolił na przedstawienie podejrzanemu zarzutów udziału w zorganizowanej grupie przestępczej mającej na celu popełnianie przestępstw przeciwko Rzeczypospolitej Polskiej w postaci działalności na rzecz obcego wywiadu – przekazała prokurator.\nProkuratura skierowała do sądu wniosek o trzymiesięczny areszt tymczasowy. Nastolatkowi grozi od 10 lat więzienia do dożywocia. Minister koordynator służb specjalnych Tomasz Siemoniak stwierdził, że działania zatrzymanego miały na celu wzniecanie napięć między Polakami i Ukraińcami.\nŚledczy podkreślają, że sprawa 17-latka pokazuje, jak łatwo obce służby mogą próbować wykorzystać napięcia historyczne do destabilizacji sytuacji w Polsce. Teraz o jego przyszłości zdecyduje sąd, a śledztwo ma ustalić, kto stał za zleceniem działań młodego dywersanta.\nPoniżej galeria zdjęć: Ukraina. Wojenne zniszczenia\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:55', '2025-08-15 18:20:55');
INSERT INTO `test_supply_feed_info` VALUES (1881443, 'dev', '158ccb58b5a8a8c08841e605bbe557f9', 'Wiadomości_Polityka', 'pl', 'pl', 1755140391000, 'Gorący sondaż o Nawrockim. Jedni chwalą, drudzy krytykują, a reszta nie ma zdania', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 10:59:51\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-e9FV-cQw2-1wP4_karol-nawrocki-1248x1040.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755140391000,\"url\":\"https://polityka.se.pl/wiadomosci/goracy-sondaz-o-nawrockim-jedni-chwala-drudzy-krytykuja-aa-ctyc-c8UP-mr6Q.html\",\"tags\":\"Karol nawrocki_Sondaż se\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Pierwsze decyzje Karola Nawrockiego, w tym ustawa o CPK, nie wywołały jednomyślności wśród Polaków. Najnowszy sondaż Instytutu Badań Pollster dla „Super Express...', NULL, 'Z sondażu wynika, że 19 proc. ankietowanych ocenia decyzje prezydenta zdecydowanie dobrze, a 22 proc.. raczej dobrze. Oznacza to, że łącznie 41 proc. badanych patrzy na działania Nawrockiego przychylnie.\nBłaszczak chwali Tuska... ale tak, że zabolało. \"Przygnieciony aferą KPO zmienił postawę\"\nZ drugiej strony 11 proc. respondentów uważa je za raczej złe, a 19 proc., za zdecydowanie złe, co daje 30 proc. ocen negatywnych.\nNajwiększą niespodzianką jest jednak wysoki odsetek odpowiedzi „nie wiem/nie mam zdania”, 29 proc. Polaków wstrzymuje się z oceną.\nEksperci wskazują, że może to wynikać z tego, iż Karol Nawrocki dopiero rozpoczął kadencję, a część obywateli czeka na kolejne decyzje, zanim wyrobi sobie opinię. Pierwsze miesiące urzędowania to czas, gdy poparcie jest szczególnie wrażliwe na medialne wydarzenia i polityczne kontrowersje.\nUstawa o CPK, jedna z kluczowych inicjatyw nowej prezydentury, może stać się punktem zapalnym debaty, jedni postrzegają ją jako szansę rozwoju, inni jako kosztowny i ryzykowny projekt.\nWysoki poziom niezdecydowania to z jednej strony szansa, z drugiej zagrożenie. Prezydent może jeszcze przekonać niezdecydowanych do swoich racji, ale w równie szybkim tempie może ich stracić, jeśli kolejne decyzje spotkają się z krytyką.\nTym bardziej, że obecny układ sił politycznych jest napięty, na horyzoncie widać już kolejne spory, a prezydent będzie musiał lawirować między oczekiwaniami własnego zaplecza politycznego a opinią publiczną.\nBadanie przeprowadzono w dniach 9–11 sierpnia 2025 r. na reprezentatywnej próbie 1006 dorosłych Polaków, metodą CAWI.\nPoniżej galeria zdjęć: Prezydent Karol Nawrocki w Kaliszu\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:20:56', '2025-08-15 18:20:56');
INSERT INTO `test_supply_feed_info` VALUES (1881444, 'dev', '2ba68952cebeadc2da098ad17c5567b5', 'Wiadomości_Polityka - Lekkie', 'pl', 'pl', 1755228390000, 'Stylowo i z klasą! Marta Nawrocka w kostiumie z rozszerzanymi nogawkami skradła show podczas Święta Wojska Polskiego [ZDJĘCIA]', '{\"country\":\"pl\",\"pub_date\":\"2025-08-15 11:26:30\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-f29J-f86a-P6ry_marta-nawrocka-obchody-swieta-wojska-polskiego-1248x1040.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka - Lekkie\",\"publish_timestamp\":1755228390000,\"url\":\"https://www.se.pl/wiadomosci/lekkie/stylowo-i-z-klasa-marta-nawrocka-w-kostiumie-z-rozszerzanymi-nogawkami-skradla-show-podczas-swieta-wojska-polskiego-zdjecia-aa-SoPU-JXDK-Wab4.html\",\"tags\":\"Marta nawrocka\",\"or_tags\":\"Wiadomości_Polityka - Lekkie\"}', 'Marta Nawrocka debiutuje w roli pierwszej damy i chociaż jej staż jako żony prezydenta RP jest krótki, już zdążyła zyskać uznanie jako osoba pełna wdzięku, eleg...', NULL, 'Obchody Święta Wojska Polskiego odbywają się co roku w Warszawie oraz innych miastach Polski. To dzień pełen podniosłych chwil, patriotycznych gestów i wojskowej tradycji. Prezydent Karol Nawrocki rozpoczął uroczystości od złożenia wieńca przed pomnikiem marszałka Józefa Piłsudskiego przy Belwederze. Towarzyszyła mu małżonka Marta Nawrocka, która od samego rana przyciągała spojrzenia fotoreporterów i komentatorów. Podczas oficjalnych uroczystości z udziałem głowy państwa pierwsza dama prezentuje się nienagannie, a jej modowe wybory są szeroko komentowane w mediach i internecie.\nPara prezydencka uczestniczyła następnie we mszy świętej za ojczyznę i polskich żołnierzy, odprawionej w Katedrze Polowej Wojska Polskiego. Później, przy Grobie Nieznanego Żołnierza, odbyła się uroczysta odprawa wart z udziałem najwyższych władz państwowych. Kulminacją dnia będzie defilada wojskowa pod hasłem „Dziękujemy za Waszą służbę”, która przejdzie warszawską Wisłostradą, gromadząc tłumy mieszkańców stolicy.\nCzy Marta Nawrocka przerwie milczenie? Polacy oczekują aktywnej pierwszej damy\nWśród wszystkich oficjalnych momentów to właśnie styl pierwszej damy wzbudza szczególne zainteresowanie. Marta Nawrocka miała na sobie dwuczęściowy kostium w odcieniu jasnego beżu: elegancki żakiet ze stójką oraz spodnie z rozszerzanymi nogawkami i subtelnym rozcięciem u dołu. Całość uzupełniały brązowe szpilki, które dodały sylwetce lekkości i szyku. Jej fryzura — rozpuszczone, gładko zaczesane włosy — podkreślała naturalną klasę i prostotę stylizacji.\nStylizacja Konaszewskiego?\nInternauci nie szczędzili komplementów. W mediach społecznościowych pojawiły się komentarze, że „pierwsza dama wyglądała jak z okładki magazynu modowego” czy „wreszcie ktoś, kto rozumie elegancję bez przesady”. Jeden z użytkowników Twittera napisał: „Marta Nawrocka to powiew świeżości w Pałacu Prezydenckim. Styl, który mówi: jestem tu, ale nie muszę krzyczeć.”\nChoć niepotwierdzone informacje mówią, że za stylizację Nawrockiej odpowiada zakład Jarosława Konaszewskiego, sama zainteresowana nie komentuje tych doniesień. Jedno jest pewne — Marta Nawrocka z każdym publicznym wystąpieniem umacnia swoją pozycję jako ikona stylu nowej prezydenckiej epoki.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:21:41', '2025-08-15 18:21:41');
INSERT INTO `test_supply_feed_info` VALUES (1881445, 'dev', '909464716a2b4fd2b37548ae205fe4cd', 'Wiadomości_Polityka', 'pl', 'pl', 1755225089000, 'Obchody Święta Wojska Polskiego. Nawrocki w jednym rzędzie z Hołownią i Kosiniakiem-Kamyszem', '{\"country\":\"pl\",\"pub_date\":\"2025-08-15 10:31:29\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-kQ68-WYJd-q9qr_obchody-swieta-wojska-polskiego-w-warszawie-uroczystosci-przy-grobie-nieznanego-zolnierza-na-placu-pilduskiego-1248x1040.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755225089000,\"url\":\"https://polityka.se.pl/wiadomosci/obchody-swieta-wojska-polskiego-nawrocki-w-jednym-rzedzie-z-holownia-i-kosiniakiem-kamyszem-aa-2MeW-mMM6-e1cY.html\",\"tags\":\"Karol nawrocki\",\"or_tags\":\"Wiadomości_Polityka\"}', 'W piątek 15 sierpnia w dniu Święta Wojska Polskiego przed Grobem Nieznanego Żołnierza w Warszawie odbyła się uroczysta odprawa wart. W uroczystości na placu Pił...', NULL, 'Podczas uroczystej odprawy wart politycy odśpiewali hymn. Prezydent Karol Nawrocki złożył wieniec na Grobie Nieznanego Żołnierza. W ceremonii wzięła udział kompania reprezentacyjna Wojska Polskiego oraz orkiestra wojskowa. Uczestnicy uroczystości odśpiewali też pieśń I Brygady Legionów Polskich.\nWcześniej prezydent złożył wieniec przed pomnikiem Józefa Piłsudskiego przy Belwederze. Następnie wraz małżonką wziął udział we mszy św. za ojczyznę i polskich żołnierzy w katedrze polowej Wojska Polskiego.\nPrezydent złoży wieńce pod pomnikiem smoleńskim oraz pomnikiem Lecha Kaczyńskiego. Następnie cała delegacja udała się pod pomnik marszałka Józefa Piłsudskiego.\nGdzie oglądać defiladę 15 sierpnia? Jak dojechać na Wisłostradę? Plan obchodów Święta Wojska Polskiego 2025\nKulminacją centralnych obchodów Święta Wojska Polskiego będzie defilada wojskowa o godz. 12, w której udział wezmą m.in. prezydent i wicepremier Kosiniak-Kamysz.\n15 sierpnia przypada rocznica zwycięskiej dla Polski Bitwy Warszawskiej 1920 r. Zwycięstwo polskiego wojska zadecydowało o zachowaniu niepodległości kraju i zatrzymało marsz rewolucji bolszewickiej na Europę Zachodnią. Było także jednym z najważniejszych elementów pamięci historycznej II RP.\n15 sierpnia został ogłoszony w 1923 r. Świętem Wojska Polskiego. Pozostawał nim do roku 1947. Od 1992 r. Święto Wojska Polskiego ponownie obchodzone jest w połowie sierpnia.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:21:42', '2025-08-15 18:21:42');
INSERT INTO `test_supply_feed_info` VALUES (1881446, 'dev', 'd94e8361d8272b5c4e9378819010ad98', 'Wiadomości_Polityka', 'pl', 'pl', 1755223305000, 'Historyczne spotkanie Trump – Putin na Alasce. Dlaczego wybrano bazę lotniczą Elmendorf-Richardson? [ZDJĘCIA]', '{\"country\":\"pl\",\"pub_date\":\"2025-08-15 10:01:45\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-mSso-rzV8-Vefb_przygotowania-do-spotkania-putin-trump-w-bazie-sil-powietrznych-usa-na-alasce-1920x1080-nocrop.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755223305000,\"url\":\"https://polityka.se.pl/wiadomosci/historyczne-spotkanie-trump-putin-na-alasce-dlaczego-wybrano-baze-lotnicza-elmendorf-richardson-zdjecia-aa-nM5v-WJCS-cfAH.html\",\"tags\":\"Donald trump_Władimir putin_Alaska\",\"or_tags\":\"Wiadomości_Polityka\"}', '15 sierpnia 2025 roku w Anchorage na Alasce dojdzie do długo wyczekiwanego spotkania prezydenta USA Donalda Trumpa z prezydentem Rosji Władimirem Putinem. Rozmo...', NULL, 'Joint Base Elmendorf–Richardson to najlepiej zabezpieczony obiekt wojskowy w regionie, idealny do organizacji spotkań na najwyższym szczeblu. Baza spełnia rygorystyczne wymogi bezpieczeństwa, co miało kluczowe znaczenie przy wyborze lokalizacji dla rozmów prezydentów USA oraz Rosji. Obiekt znajduje się w Anchorage — największym mieście Alaski — i jest oddalony o około 4 300 km od Moskwy oraz 3 300 km od Waszyngtonu, co czyni bazę symbolicznym „półmetkiem” między stolicami obu państw.\nJBER powstała w 2010 roku z połączenia dwóch wcześniej istniejących instalacji: Elmendorf Air Force Base i Fort Richardson. Jednak jej historia sięga aż 1940 roku, kiedy to rozpoczęto budowę Elmendorf Field i Fort Richardson — dwóch kluczowych punktów obrony USA w czasie II wojny światowej.\n• W czasie wojny baza była ważnym ogniwem w kampanii aleuckiej oraz w operacjach przeciwko Kurylom.\n• W latach zimnej wojny odegrała kluczową rolę w monitorowaniu sowieckich działań i przechwytywaniu potencjalnych zagrożeń z powietrza.\n• W 1971 roku odbyło się tu historyczne spotkanie prezydenta Nixona z cesarzem Hirohito — pierwsza wizyta japońskiego monarchy na obcej ziemi.\n• Obecnie stacjonuje tu ponad 32 tysiące żołnierzy i personelu, w tym jednostki szybkiego reagowania, siły powietrzne, armia, marynarka wojenna i Korpus Piechoty Morskiej.\nNa terenie bazy znajdują się dwa pasy startowe o długości 3 048 m i 2 284 m, a jej infrastruktura obejmuje ponad 64 tysiące akrów (ok. 260 km²). To właśnie stąd operują m.in. myśliwce F-22 Raptor, samoloty transportowe C-17 Globemaster III oraz tankowce KC-135 Stratotanker.\nTrump o spotkaniu na Alasce: nie ustąpię Putinowi kosztem sił NATO w Europie\nJoint Base Elmendorf–Richardson to nie tylko strategiczny punkt obrony USA, ale także ogromne centrum operacyjne, w którym pracuje ponad 5 500 żołnierzy i pracowników cywilnych. Baza obsługuje trzy skrzydła sił powietrznych, dwie brygady armii oraz ponad 55 jednostek partnerskich. Ich zadania obejmują:\n• obronę przestrzeni powietrznej USA i regionu Arktyki,\n• szkolenia bojowe i przygotowanie sił do szybkiego rozmieszczenia,\n• wsparcie medyczne dla ponad 35 tys. osób — w tym żołnierzy, ich rodzin, weteranów i emerytów,\n• logistykę i zarządzanie infrastrukturą wartą ponad 15 miliardów dolarów.\nJBER to także siedziba Alaskan Command, Eleventh Air Force, Alaskan NORAD Region i 11th Airborne Division — jednostek odpowiedzialnych za reagowanie na kryzysy w regionie Indo-Pacyfiku oraz obronę terytorium USA.\nDonald Trump odwiedził bazę Elmendorf-Richardson już w 2019 roku, podczas swojej prezydentury. Wówczas spotkał się z żołnierzami i podkreślił znaczenie ich służby: „Stacjonujecie na ostatniej granicy naszego kraju — jesteście pierwszą linią obrony Ameryki” — powiedział, nawiązując do geograficznego położenia Alaski i jej strategicznej roli w obronie przed zagrożeniami z Azji i Arktyki.\nSpotkanie zaplanowano na godzinę 21 czasu polskiego. Według Białego Domu będzie to „ćwiczenie słuchania” — Trump ma wysłuchać propozycji Putina dotyczących zakończenia wojny w Ukrainie. Co istotne, prezydent Ukrainy Wołodymyr Zełenski nie został zaproszony na szczyt, co wywołało krytykę ze strony Kijowa i części europejskich przywódców. Media spekulują jednak, że rozmowa Trumpa z Putinem nie ma na celu zakończenia rosyjskiej inwazji na Ukrainę. Taki może być cel dopiero drugiego spotkania przywódców Rosji i USA. Wizytę prezydenta Rosji na Alasce będziemy relacjonować w serwisie se.pl.\nChoć główne rozmowy odbędą się w bazie JBER, media spekulują, że przywódcy mogą nocować lub świętować w luksusowym ośrodku Alyeska Resort w Girdwood — godzinę drogi od Anchorage. Ośrodek oferuje trzy apartamenty prezydenckie i dysponuje własnym lotniskiem dla lekkich samolotów. W dniach 12–16 sierpnia nie można tam dokonać rezerwacji, co tylko podsyca domysły o obecności delegacji.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:21:44', '2025-08-15 18:21:44');
INSERT INTO `test_supply_feed_info` VALUES (1881447, 'dev', '079b76c6ecbef8742f8ea5d9dca874a7', 'Wiadomości_Polityka', 'pl', 'pl', 1755220178000, 'Sikorski reaguje na skandal: Mam nadzieję, że izraelska młodzież jest uczona, że w 1939 to hitlerowskie Niemcy napadły na Polskę', '{\"country\":\"pl\",\"pub_date\":\"2025-08-15 09:09:38\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-qJMM-hpxP-aSFD_radoslaw-sikorski-1920x1080-nocrop.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755220178000,\"url\":\"https://polityka.se.pl/wiadomosci/sikorski-reaguje-na-skandal-mam-nadzieje-ze-izraelska-mlodziez-jest-uczona-ze-w-1939-to-hitlerowskie-niemcy-napadly-na-polske-aa-LrkJ-7uZG-7zhi.html\",\"tags\":\"Izrael_Radosław sikorski\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Wicepremier i szef MSZ Radosław Sikorski podziękował ambasadzie Izraela w Polsce za reakcję na „skandaliczny” transparent kibiców Maccabi Hajfa. Wyraził nadziej...', NULL, 'Na transparencie napisano w języku angielskim: „Mordercy od 1939 roku”. Wywieszony został w czwartek przez kibiców izraelskiego klubu Maccabi Hajfa podczas meczu z Rakowem Częstochowa w eliminacjach Ligi Konferencji.\nW nocy z czwartku na piątek ambasada Izraela w Polsce zareagowała na treść transparentu na platformie X: „Ohydne zachowanie niektórych kibiców Maccabi Hajfa podczas meczu z Rakowem. Na takie słowa i czyny żadnej ze stron nie ma miejsca ani na stadionie, ani nigdzie indziej. Nigdy! Te haniebne incydenty nie odzwierciedlają ducha większości izraelskich kibiców”\nW piątek rano wicepremier, minister spraw zagranicznych Radosław Sikorski podziękował ambasadzie Izraela w Polsce za reakcję na - jak napisał - „skandaliczny” transparent kibiców Maccabi Hajfa wywieszony podczas meczu. „Skądinąd mam nadzieję, że izraelska młodzież jest uczona, że w 1939 to hitlerowskie Niemcy napadły na Polskę i zaczęły mordować jej obywateli wszystkich wyznań i narodowości” – napisał szef MSZ na platformie X.\nWcześniej w piątek Kancelaria Prezydenta zaapelowała o stanowczą reakcję Ministerstwa Spraw Zagranicznych i konkretne działania polskiej dyplomacji w sprawie transparentu kibiców Maccabi Hajfa.\nNa skandaliczny transparent zareagowało wieku polskich polityków, w tym minister cyfryzacji. - Kibicie Powinni zostać przykładnie ukarani – uważa wicepremier Krzyszrof Gawkowski, który liczy na ukaranie izraelskiego klubu przez organizacje piłkarskie.\nMecz odbył się w Debreczynie na Węgrzech, a Maccabi grało w nim w roli gospodarza. Raków, który u siebie przegrał 0:1, wygrał w rewanżu 2:0 i awansował do czwartej rundy eliminacji Ligi Konferencji.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:21:46', '2025-08-15 18:21:46');
INSERT INTO `test_supply_feed_info` VALUES (1881448, 'dev', 'c3a410bdbc047c24cdb9fdcb70136b8d', 'Wiadomości_Polityka', 'pl', 'pl', 1755213635000, 'Skandaliczne zachowanie kibiców Maccabi Hajfa. Gawkowski: Powinni zostać przykładnie ukarani!', '{\"country\":\"pl\",\"pub_date\":\"2025-08-15 07:20:35\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-5je1-JE7t-njSd_krzysztof-gawkowski-1280x960.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755213635000,\"url\":\"https://polityka.se.pl/wiadomosci/skandaliczne-zachowanie-kibicow-maccabi-hajfa-gawkowski-powinni-zostac-przykladnie-ukarani-aa-nQ4w-3W2J-Hc1t.html\",\"tags\":\"Krzysztof gawkowski\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Podczas meczu Maccabi Hajfa z Rakowem Częstochowa w węgierskim Debreczynie kibicie izraelskiej drużyny rozwiesili transparent z napisem: „Mordercy od 1939”. Są ...', NULL, '– „Skandaliczny transparent wywieszony przez kibiców Maccabi Hajfa obraża pamięć o obywatelach polskich – ofiarach II wojny światowej, wśród których było 3 mln Żydów. Głupota, której nie tłumaczą żadne słowa” – napisał na platformie X prezydent Karol Nawrocki.\nGłos w sprawie zabrał też wicepremier, minister obrony narodowej Władysław Kosiniak-Kamysz, który zażądał zgłoszenia sprawy do Europejskiej Unii Piłkarskiej (UEFA).\n„Absolutnie skandaliczne zachowanie izraelskich kibiców podczas meczu Ligi Konferencji względem Polski i Polaków. Konieczna jest jednoznaczna reakcja UEFA. Nie ma i nie będzie zgody na kłamstwa historyczne wobec naszego narodu” – podkreślił we wpisie na X.\nInterwencję w UEFA zapowiedział prezes Polskiego Związku Piłki Nożnej Cezary Kulesza, który treść transparentu nazwał „prowokacją” i „fałszowaniem historii”.\n„Pilnie wystąpimy do UEFA o zajęcie stanowiska i wyciągnięcie konsekwencji za skandaliczny transparent i oburzające zachowania na trybunach w czasie meczu Maccabi – Raków” – zapowiedział szef PZPN.\n„Nie ma akceptacji dla skandalicznego zachowania izraelskich kibiców wobec Polek i Polaków. Oczekujemy błyskawicznej i jednoznacznej reakcji UEFA. W trybie pilnym wystąpimy o wyciągnięcie konsekwencji wobec izraelskiego klubu. Areny sportu nie są miejscem propagowania kłamstw” – napisał na platformie X minister sportu Jakub Rutnicki.\nWicepremier, minister cyfryzacji Krzysztof Gawkowski podkreślił, że „kłamstwo musi być zawsze mocno i wyraźnie piętnowane”.\nSkandaliczny transparent kibiców Maccabi na meczu Rakowa, gigantyczna awantura. Oskarżyli Polaków o Holokaust\n„To, co zrobili izraelscy kibice Maccabi Hajfa, wywieszając skandaliczny transparent, to zakłamywanie historii! Za głupotę trzeba odpowiadać i klub oraz kibice powinni zostać przykładnie ukarani!” – napisał na platformie X.\nRzecznik rządu Adam Szłapka podkreślił: „Skandaliczne zachowanie izraelskich kibiców wobec Polski i Polaków. Oczekujemy jednoznacznej reakcji od UEFA”.\nNa transparent zareagowała też ambasada Izraela w Polsce.\n„Ohydne zachowanie niektórych kibiców Maccabi Hajfa podczas meczu z Rakowem. Na takie słowa i czyny żadnej ze stron nie ma miejsca ani na stadionie, ani nigdzie indziej. Nigdy! Te haniebne incydenty nie odzwierciedlają ducha większości izraelskich kibiców” – oświadczyła ambasada na platformie X.\nMecz odbył się w Debreczynie na Węgrzech, a Maccabi grało w nim w roli gospodarza. Raków, który u siebie przegrał 0:1, wygrał w rewanżu 2:0 i awansował do czwartej rundy eliminacji Ligi Konferencji.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:21:47', '2025-08-15 18:21:47');
INSERT INTO `test_supply_feed_info` VALUES (1881449, 'dev', 'dd376da12f3de2193b1c073879e5dfa7', 'Wiadomości_Polityka', 'pl', 'pl', 1755206132000, 'Czy Marta Nawrocka przerwie milczenie? Polacy oczekują aktywnej pierwszej damy', '{\"country\":\"pl\",\"pub_date\":\"2025-08-15 05:15:32\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-RgMA-WkMU-fw2h_pierwsze-damy-rp-1248x1040.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755206132000,\"url\":\"https://polityka.se.pl/wiadomosci/czy-marta-nawrocka-przerwie-milczenie-polacy-oczekuja-aktywnej-pierwszej-damy-aa-4PAo-8Jt6-Smep.html\",\"tags\":\"Pierwsza dama_Sondaż_Marta nawrocka_Jolanta kwaśniewska\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Czy pierwsza dama powinna zabierać głos w ważnych sprawach? Przez dwie kadencje Agata Kornhauser-Duda (53 l.) angażowała się w działalność charytatywną, ale uni...', NULL, 'Pytanie, które zadano ankietowanym brzmiało: Czy Marta Nawrocka, jako pierwsza dama, powinna publicznie zabierać głos w najważniejszych sprawach? 37 proc. uważa, że nie, a 13 proc. odpowiedziało: nie wiem/trudno powiedzieć. Natomiast aż, że 50 proc. z nas oczekuje, żeby Marta Nawrocka wypowiadała się na ważne tematy. Skoro tak, to podsumowaliśmy aktywność dotychczasowych żon byłych prezydentów.\nDanuta Wałęsa (76 l.) pełniła rolę pierwszej damy w latach przełomowych dla Polski (1990-1995) tuż po upadku komunizmu, gdy kraj budował nową tożsamość demokratyczną. Choć była osobą skromną i stroniącą od blasku fleszy, aktywnie angażowała się w działalność społeczną.\nZasiadała w radzie fundatorów Fundacji „Sprawni Inaczej”, wspierała rozwój kultury jako honorowa prezeska gdańskiej fundacji, a także uczestniczyła w pracach wielu organizacji społecznych. Jej zaangażowanie zostało docenione w 2012 r., kiedy prezydent Bronisław Komorowski (73 l.) odznaczył ją Krzyżem Komandorskim z Gwiazdą Orderu Odrodzenia Polski — za zasługi dla niepodległości i wkład w demokratyczne przemiany.\nZapytali Polaków, kto powinien rządzić krajem: prezydent czy premier. \"To przyczynek do dyskusji o zmianach ustroju\"\nZ kolei Jolanta Kwaśniewska (70 l.) pełniła funkcję pierwszej damy przez dekadę i zdążyła przez ten czas zbudować wizerunek kobiety aktywnej, eleganckiej i zaangażowanej społecznie. W 1996 r. założyła Fundację „Porozumienie bez barier”, która zrealizowała dziesiątki projektów wspierających dzieci, osoby z niepełnosprawnościami, kobiety, seniorów i ofiary powodzi.\nKwaśniewska była obecna na międzynarodowych forach, współtworzyła Kongres Kobiet i patronowała wielu wydarzeniom kulturalnym oraz sportowym. Jej popularność była tak duża, że rozważano jej kandydaturę na prezydenta — w sondażach osiągała nawet ponad 50 proc. poparcia. W 2020 roku została uznana za „najlepszą pierwszą damę” w sondażu IBRiS. Jednak jej działalność nie była wolna od kontrowersji — wokół jej fundacji narosły wątpliwości dotyczące finansowania, zwłaszcza w kontekście wykorzystania wpływów politycznych męża.\nKolejna pierwsza dama (2005-2010) Maria Kaczyńska (+ 68 l.) wyróżniała się empatią, wyczuciem społecznych tematów i aktywnością na arenie międzynarodowej. Angażowała się w kampanie zdrowotne, m.in. walkę z rakiem szyjki macicy. W imieniu prezydenta uczestniczyła w uroczystościach zagranicznych, reprezentując Polskę z godnością i klasą.\nWspólnie z sekretarz stanu USA Madeleine Albright (+85) zainicjowała działania na rzecz poprawy sytuacji zdrowotnej kobiet w Europie Środkowej. Nie unikała tematów trudnych — opowiedziała się za ochroną Doliny Rospudy i podpisała apel kobiet mediów w sprawie nieingerowania w kompromis aborcyjny, za co spotkała się z krytyką o. Tadeusza Rydzyka (80 l.).\nMarta Nawrocka wysłała wyraźny sygnał swoimi kreacjami. Ekspertka nie ma wątpliwości\nW latach 2010-2015 obowiązki pierwszej damy pełniła Anna Komorowska (72 l.), która koncentrowała się na wspieraniu inicjatyw społecznych i edukacyjnych. Angażowała się w działania ekologiczne, wspierała Olimpiady Specjalne i była matką chrzestną okrętu ORP Śniardwy. Za swoją działalność otrzymała szereg wyróżnień, w tym Złotą Odznakę ZHP i statuetkę Perła Mądrości za zaangażowanie w profilaktykę zdrowotną kobiet.\nAgata Kornhauser-Duda, pierwsza dama w latach 2015–2025 zrealizowała aż ponad 3600 aktywności, z czego ponad 1000 inicjowała lub współorganizowała. Jej działalność skupiała się głównie na edukacji, wsparciu osób z niepełnosprawnościami, seniorów i wolontariacie. Ponieważ rzadko zabierała głos publicznie, miała przydomek „milczącej pierwszej damy”, ale objęła patronatem setki inicjatyw społecznych i charytatywnych. Jaką pierwszą damą będzie Marta Nawrocka, która po wygranych przez męża wyborach prezydenckich porzuciła pracę w Krajowej Administracji Skarbowej? Wkrótce się przekonamy.\nBadanie wymienione w artykule zrealizowane zostało przez Instytut Badań Pollster 9-11.08.2025 roku metodą CAWI na próbie 1006 dorosłych Polaków. Struktura próby była reprezentatywna dla obywateli Polski w wieku 18+. Maksymalny błąd oszacowania wyniósł około 3%.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:21:49', '2025-08-15 18:21:49');
INSERT INTO `test_supply_feed_info` VALUES (1881450, 'dev', '633d2b90b50ce30f9b885dde4fbda938', 'Wiadomości_Polityka - Lekkie', 'pl', 'pl', 1755205885000, 'Prezydent Nawrocki zajrzał na stare śmieci. Sąsiedzi zgotowali mu serdeczne powitanie [ZDJĘCIA]', '{\"country\":\"pl\",\"pub_date\":\"2025-08-15 05:11:25\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-VP27-LXr1-6jxk_prezydent-nawrocki-zajrzal-na-stare-smieci-1920x1080-nocrop.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka - Lekkie\",\"publish_timestamp\":1755205885000,\"url\":\"https://www.se.pl/wiadomosci/lekkie/prezydent-nawrocki-zajrzal-na-stare-smieci-sasiedzi-zgotowali-mu-serdeczne-powitanie-zdjecia-aa-jjDo-VLv7-axv4.html\",\"tags\":\"Karol nawrocki_Lechia gdańsk\",\"or_tags\":\"Wiadomości_Polityka - Lekkie\"}', 'Na stadionie Lechii Gdańsk, podczas meczu z Motorem Lublin, niespodziewanie pojawił się prezydent Karol Nawrocki (42 l.)! Po zakończeniu spotkania Nawrocki odwi...', NULL, 'Poniedziałkowe spotkanie Lechii z Motorem Lublin zakończyło się sprawiedliwym remisem (3:3). Prezydent Nawrocki pojawił się na meczu na „młynie”, czyli na trybunie za bramką. Prezydent przybył na trybuny w pierwszej połowie spotkania. Kiedy wszedł do sektora zajmowanego przez najzagorzalszych kibiców gospodarzy, został powitany okrzykami oraz transparentem z jego podobizną i hasłem „Byłeś, jesteś, będziesz – zawsze kibicem Lechii”. Prezydent spędził w tym miejscu ponad sześć minut, a następnie opuścił trybunę.\nZbigniew Boniek jasno o wizycie Karola Nawrockiego na meczu. Krótkie podsumowanie!\nRównie serdecznie głowa państwa została przywitana w dzielnicy Siedlce, kiedy Karol Nawrocki zajechał limuzyną pod blok, w którym się wychował. Gdańszczanie gratulowali mu zaprzysiężenia na prezydenta i wyrazili nadzieję, że będzie często wracał na stare śmieci.\nNawrocki wychował się w robotniczej dzielnicy Gdańska, która przez lata kształtowała jego spojrzenie na świat. To właśnie tam spędził dzieciństwo, chodził do szkoły i studiował historię na Uniwersytecie Gdańskim, dojeżdżając tramwajem linii nr 12. Mieszkał w typowym bloku, w trzypokojowym mieszkaniu, które dziś wspomina z sentymentem. Choć obecnie pełni funkcję prezydenta RP, jego rodzina nadal mieszka w Gdańsku, a on sam regularnie odwiedza matkę, która wciąż mieszka w tym samym miejscu na Siedlcach.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:21:52', '2025-08-15 18:21:52');
INSERT INTO `test_supply_feed_info` VALUES (1881451, 'dev', '9abf895ad7aa14ad6469f0b9225e4b19', 'Wiadomości_Polityka - Lekkie', 'pl', 'pl', 1755205872000, 'Bodnar jeszcze ma ochronę. Kierowca SOP parkuje, gdzie mu wygodnie [ZDJĘCIA]', '{\"country\":\"pl\",\"pub_date\":\"2025-08-15 05:11:12\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-3SEL-hbxe-e2LP_bodnar-jeszcze-pod-ochrona-1920x1080-nocrop.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka - Lekkie\",\"publish_timestamp\":1755205872000,\"url\":\"https://www.se.pl/wiadomosci/lekkie/bodnar-jeszcze-ma-ochrone-kierowca-sop-parkuje-gdzie-mu-wygodnie-zdjecia-aa-Hp5E-dNVU-hCNh.html\",\"tags\":\"Adam bodnar\",\"or_tags\":\"Wiadomości_Polityka - Lekkie\"}', 'Pomimo że Adam Bodnar (58 l.) został odwołany z funkcji ministra sprawiedliwości i prokuratora generalnego pod koniec lipca, nadal korzysta z ochrony Służby Och...', NULL, 'Na jednym ze zdjęć widać, że limuzyna czeka na byłego ministra ministra sprawiedliwości na… przystanku autobusowym. To ewidentne wykroczenie. Adam Bodnar spotkał się w okolicy ze swoim znajomym, a następnie udał się do jednej ze stołecznych kamienic. Kierowca z SOP pojechał autem za swoim podopiecznym, a następnie zawiózł Bodnara w aleje Ujazdowskie i… ponownie zatrzymał się na zakazie. Zwykle ustępującym ze stanowiska ministrom ochrona nie przysługuje. Adam Bodnar nadal z niej korzysta, ponieważ jako minister dostawał pogróżki. Przypominamy, że ponad rok temu śmiercią groził mu 55-letni mężczyzna, który usłyszał za to zarzuty. Jak się dowiedziała Wirtualna Polska, były minister sprawiedliwości ma jednak stracić ochronę SOP 24 sierpnia, czyli równo miesiąc po utracie stanowiska. Chyba, że o jej przedłużeniu zdecyduje szef MSWiA. Kiedy Adam Bodnar obejmował urząd w grudniu 2023 r., początkowo nie występował o ochronę. Dostał ją dopiero, kiedy pojawiły się groźby pod jego adresem.\nZapytali Polaków, kto powinien rządzić krajem: prezydent czy premier. \"To przyczynek do dyskusji o zmianach ustroju\"\nSędzia Waldemar Żurek, który zastąpił Adama Bodnara na stanowisku ministra sprawiedliwości, nie wnioskował o ochronę Służby Ochrony Państwa – podała Wirtualna Polska. Mimo kontrowersji wokół jego nominacji i decyzji kadrowych, Żurek nie zwrócił się do MSWiA o przyznanie ochrony. Decyzja Żurka budzi zainteresowanie, zwłaszcza w kontekście jego działań, takich jak odwołanie 46 prezesów sądów wybranych przez tzw. neo-KRS.\nOchrona Służby Ochrony Państwa w Polsce przysługuje przede wszystkim prezydentowi, premierowi, marszałkom Sejmu i Senatu oraz ich rodzinom w zakresie określonym przepisami. Obejmuje także byłych prezydentów i premierów, a w szczególnych przypadkach inne osoby wskazane przez Ministra Spraw Wewnętrznych i Administracji, np. ze względu na zagrożenie bezpieczeństwa lub pełnione funkcje publiczne. Decyzje o przyznaniu ochrony są podejmowane indywidualnie, na podstawie analizy ryzyka.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:21:53', '2025-08-15 18:21:53');
INSERT INTO `test_supply_feed_info` VALUES (1881452, 'dev', '83bd5dea494f5772f590fae492f85cf7', 'Wiadomości_Polityka', 'pl', 'pl', 1755178376000, 'Trump o spotkaniu na Alasce: nie ustąpię Putinowi kosztem sił NATO w Europie', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 21:32:56\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-uqxz-annU-UEPD_donald-trump-1248x1040.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755178376000,\"url\":\"https://polityka.se.pl/wiadomosci/trump-o-spotkaniu-na-alasce-nie-ustapie-putinowi-kosztem-sil-nato-w-europie-aa-ZFDD-KBZ4-TMnR.html\",\"tags\":\"Donald trump_Nato_Władymir putin\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Prezydent Donald Trump zapewnił, że nie otrzymał propozycji ograniczenia sił NATO w Europie w zamian za zgodę Władimira Putina na zawarcie pokoju. Amerykański p...', NULL, 'Podczas czwartkowej konferencji prasowej w Białym Domu dziennikarka zapytała prezydenta Donalda Trumpa, czy rozważyłby zmniejszenie obecności sił NATO w Europie, w tym w takich krajach jak Polska, aby skłonić prezydenta Rosji, Władimira Putina, do podpisania układu pokojowego. Trump stanowczo odparł, że taka propozycja nigdy nie została mu przedstawiona.\n– \"Nie przedstawiono mi takiej propozycji. Będę o tym myślał później\" – powiedział amerykański przywódca.Trump ocenił także, że jego prezydentura powstrzymała Rosję przed zajęciem całej Ukrainy. Jak podkreślił, gdyby nie był u władzy, Putin mógłby kontrolować cały kraj.\nPrezydent USA odniósł się również do planowanego na piątek spotkania z Władimirem Putinem, które ma odbyć się na Alasce. Trump wyjaśnił, że traktuje je jako wstęp do kolejnego, szerszego szczytu z udziałem prezydenta Ukrainy, Wołodymyra Zełenskiego.\n– \"Powinno do niego dojść bardzo szybko po tym spotkaniu. Właściwie, to chciałbym, żeby może odbyło się ono na Alasce, gdzie moglibyśmy zostać, bo to byłoby dużo łatwiejsze\" – zaznaczył.Trump podkreślił, że przebieg rozmów z Putinem będzie kluczowy dla dalszych działań. Jeśli okażą się one nieudane, zakończą się szybko. Jeśli jednak będą konstruktywne – mogą otworzyć drogę do realnego pokoju.\n- \"Jeśli spotkanie z prezydentem Rosji Władimirem Putinem będzie złe, zakończy się bardzo szybko, jeśli będzie dobre, przyniesie pokój \"- powiedział w czwartek w Gabinecie Owalnym prezydent USA Donald Trump, odpowiadając na pytania dziennikarzy.\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.\nPolecany artykuł:', NULL, '2025-08-15 18:21:55', '2025-08-15 18:21:55');
INSERT INTO `test_supply_feed_info` VALUES (1881453, 'dev', '1e0f6096827889eb515415a5c39e5c06', 'Wiadomości_Polityka', 'pl', 'pl', 1755162735000, 'Pierwszy ruch po spotkaniu w Pałacu. Prezydent zwołuje Radę Gabinetową', '{\"country\":\"pl\",\"pub_date\":\"2025-08-14 17:12:15\",\"publisher_icon\":\"https://polityka.se.pl/favicon_192x192.ico\",\"image_url\":\"https://cdn.galleries.smcloud.net/t/galleries/gf-oAYr-HBWj-3o8s_prezydent-rp-w-mlynie-lechii-gdansk-karol-nawrocki-zaskoczyl-kibicow-1920x1080-nocrop.jpg\",\"domain\":\"se.pl\",\"publisher\":\"PolitykaSuperExpress\",\"language\":\"pl\",\"category\":\"Wiadomości_Polityka\",\"publish_timestamp\":1755162735000,\"url\":\"https://polityka.se.pl/wiadomosci/pierwszy-ruch-po-spotkaniu-w-palacu-prezydent-zwoluje-rade-gabinetowa-aa-gqe2-goMj-V1kP.html\",\"tags\":\"Rada gabinetowa u prezydenta\",\"or_tags\":\"Wiadomości_Polityka\"}', 'Karol Nawrocki i Donald Tusk spotkali się w Pałacu Prezydenckim, by rozmawiać o najważniejszych dla Polski sprawach. Pierwszym efektem jest decyzja o zwołaniu R...', NULL, 'Szef Gabinetu Prezydenta RP Paweł Szefernaker poinformował, że 27 sierpnia odbędzie się Rada Gabinetowa, której tematem będą finanse publiczne oraz przedstawione przez Karola Nawrockiego projekty ustaw dotyczące Centralnego Portu Komunikacyjnego i podatków.\nPełczyńska-Nałęcz pod ostrzałem. Ponad 40 proc. Polaków chce jej dymisji\n– Będzie to dotyczyć kwestii ustrojowych, rozwojowych, finansów publicznych – wyjaśnił Szefernaker.\nTo pierwsza rozmowa Karola Nawrockiego z Donaldem Tuskiem od objęcia urzędu prezydenta elekta. Według relacji, głównym tematem były sprawy międzynarodowe i bezpieczeństwo, w tym sytuacja na Ukrainie oraz kontekst piątkowego szczytu na Alasce, gdzie mają rozmawiać Donald Trump i Władimir Putin.\nPrezydent miał przedstawić premierowi zasady współpracy wynikające, jak podkreślił, z konstytucji i silnego mandatu od Polaków.\n– To było spotkanie dwóch najważniejszych osób w państwie, które rozmawiały o tym, co dziś najważniejsze dla Polaków – zaznaczył Szefernaker.\nPodczas wczorajszego spotkania europejskich liderów z Donaldem Trumpem Karol Nawrocki nawiązał do rocznicy Bitwy Warszawskiej 1920 r., podkreślając rolę Polski w zatrzymaniu bolszewickiej ofensywy.\nRzecznik rządu Adam Szłapka podkreślił, że w kwestiach fundamentalnych, bezpieczeństwa, polityki zagranicznej i dyplomacji, współpraca prezydenta z premierem jest konieczna.\nPoniżej galeria zdjęć: Spotkanie prezydenta Karola Nawrockiego z premierem Donaldem Tuskiem\nRozwijamy nasz serwis dzięki wyświetlaniu reklam.\nBlokując reklamy, nie pozwalasz nam tworzyć wartościowych treści.\nWyłącz AdBlock i odśwież stronę.', NULL, '2025-08-15 18:21:57', '2025-08-15 18:21:57');

-- ----------------------------
-- Table structure for title_id_duplicates
-- ----------------------------
DROP TABLE IF EXISTS `title_id_duplicates`;
CREATE TABLE `title_id_duplicates`  (
  `title` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` bigint UNSIGNED NOT NULL,
  `min_id` bigint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of title_id_duplicates
-- ----------------------------

-- ----------------------------
-- Table structure for title_ids_duplicates
-- ----------------------------
DROP TABLE IF EXISTS `title_ids_duplicates`;
CREATE TABLE `title_ids_duplicates`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `duplicate_ids` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of title_ids_duplicates
-- ----------------------------

-- ----------------------------
-- Procedure structure for batch_copy_data
-- ----------------------------
DROP PROCEDURE IF EXISTS `batch_copy_data`;
delimiter ;;
CREATE PROCEDURE `batch_copy_data`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE batch_size INT DEFAULT 10000;  -- 每批复制的数据量
    DECLARE last_id BIGINT UNSIGNED DEFAULT 0;
    DECLARE row_count INT;

    -- Declare the cursor
    DECLARE copy_cursor CURSOR FOR 
        SELECT id 
        FROM supply_feed_info 
        WHERE id > last_id 
        ORDER BY id 
        LIMIT batch_size;

    -- Declare a handler for when no more rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Create the target table if it does not exist
    CREATE TABLE IF NOT EXISTS supply_feed_info_copy LIKE supply_feed_info;

    -- Open the cursor
    OPEN copy_cursor;

    -- Repeat until all data is copied
    REPEAT
        -- Initialize counter for row count
        SET row_count = 0;

        -- Fetch the next batch of data
        FETCH copy_cursor INTO last_id;

        IF NOT done THEN
            -- Insert the fetched data into the target table, ignoring duplicates
            INSERT IGNORE INTO supply_feed_info_copy
                SELECT * FROM supply_feed_info 
                WHERE id <= last_id
                ORDER BY id
                LIMIT batch_size;
            
            SET row_count = row_count + 1;
        END IF;

    UNTIL done END REPEAT;

    -- Close the cursor
    CLOSE copy_cursor;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for remove_duplicate_titles_batch
-- ----------------------------
DROP PROCEDURE IF EXISTS `remove_duplicate_titles_batch`;
delimiter ;;
CREATE PROCEDURE `remove_duplicate_titles_batch`()
BEGIN

    DECLARE current_id BIGINT;          -- 当前要删除的 id
    DECLARE current_title VARCHAR(1024); -- 当前要处理的 title
    DECLARE done INT DEFAULT 0;         -- 标志变量，用于退出游标循环
    DECLARE rows_affected INT DEFAULT 1; -- 单次删除影响的行数
    DECLARE total_deleted INT DEFAULT 0; -- 总删除行数
    DECLARE batch_size INT DEFAULT 100;  -- 每次批量删除的行数

    -- 定义游标，用于逐行处理 title_id_duplicates 表中的记录
    DECLARE id_cursor CURSOR FOR 
    SELECT id, title 
    FROM title_id_duplicates
    WHERE id != min_id;

    -- 异常处理，防止游标越界
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
		
		
    -- 创建常规的 title_ids_duplicates 表，用来存储重复的 title 和对应的 id 列表
    CREATE TABLE IF NOT EXISTS title_ids_duplicates (
		    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(1024),
        duplicate_ids VARCHAR(1024)
    );
		-- 创建常规的title_id_duplicates表，用于存储拆解后的 id
    CREATE TABLE IF NOT EXISTS title_id_duplicates (
        title VARCHAR(1024),
        id BIGINT UNSIGNED PRIMARY KEY,
        min_id BIGINT UNSIGNED  -- 存储每个 title 对应的最小 id
    );
   -- 插入数据：获取重复的 title 及其对应的 id 列表
    INSERT IGNORE INTO title_ids_duplicates (title, duplicate_ids)
    SELECT title, GROUP_CONCAT(id ORDER BY id) AS duplicate_ids
    FROM supply_feed_info
    WHERE ctime >= '2024-12-01 00:00:00' AND ctime <= '2025-01-14 00:00:00'
    GROUP BY  title
    HAVING COUNT(*) > 1;
		
		
		-- 拆解每个 title 对应的 id，插入 title_id_duplicates 表，并计算最小 id
    INSERT IGNORE INTO title_id_duplicates (title, id, min_id)
    SELECT title, CAST(SUBSTRING_INDEX(duplicate_ids, ',', 1) AS UNSIGNED), 
           CAST(SUBSTRING_INDEX(duplicate_ids, ',', 1) AS UNSIGNED) AS min_id
    FROM title_ids_duplicates
    UNION
    SELECT title, CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(duplicate_ids, ',', n.n), ',', -1) AS UNSIGNED) AS id, 
          CAST(SUBSTRING_INDEX(duplicate_ids, ',', 1) AS UNSIGNED) AS min_id
    FROM title_ids_duplicates
    JOIN (SELECT 1 AS n UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) n
    ON LENGTH(duplicate_ids) - LENGTH(REPLACE(duplicate_ids, ',', '')) >= n.n - 1
    WHERE duplicate_ids != '';

    

    -- 打开游标
    OPEN id_cursor;

    -- 循环处理每条记录
    delete_loop: LOOP
        FETCH id_cursor INTO current_id, current_title;

        -- 如果游标到达末尾，退出循环
        IF done = 1 THEN 
            LEAVE delete_loop; 
        END IF;

        -- 删除当前 id 对应的记录
        DELETE FROM supply_feed_info WHERE id = current_id;

        -- 统计删除行数
        SET rows_affected = ROW_COUNT();
        SET total_deleted = total_deleted + rows_affected;

    END LOOP;

    -- 关闭游标
    CLOSE id_cursor;

    -- 打印总删除行数
    SELECT CONCAT('Total deleted rows: ', total_deleted) AS message;
    TRUNCATE TABLE title_ids_duplicates;
	  TRUNCATE TABLE title_id_duplicates;	

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
