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

 Date: 06/08/2025 00:14:23
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
) ENGINE = InnoDB AUTO_INCREMENT = 142381 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 143003868 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_a_template
-- ----------------------------
INSERT INTO `feed_spider_a_template` VALUES (1, 'div[class=bstn-hl-wrapper]', 'a', 'href', '2025-08-04 16:58:28', '2025-08-04 16:59:00');
INSERT INTO `feed_spider_a_template` VALUES (2, 'div[class=bastian-feed-item]', 'a', 'href', '2025-08-04 16:58:54', '2025-08-04 16:59:02');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_c_template
-- ----------------------------

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_task
-- ----------------------------
INSERT INTO `feed_spider_task` VALUES (7, 'br', 'pt', NULL, 2, '[1,2]', 'CBN', '2025-08-05 11:46:09', '2025-08-06 00:01:14', 2);
INSERT INTO `feed_spider_task` VALUES (8, 'br', 'pt', NULL, 0, '[3,4]', 'CBN', '2025-08-05 11:46:09', '2025-08-05 15:20:19', 1);
INSERT INTO `feed_spider_task` VALUES (9, 'br', 'pt', NULL, 0, '[5,6]', 'CBN', '2025-08-05 11:46:09', '2025-08-05 15:20:20', 1);
INSERT INTO `feed_spider_task` VALUES (10, 'br', 'pt', NULL, 0, '[7,8]', 'CBN', '2025-08-05 11:46:09', '2025-08-05 15:20:22', 1);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_time_template
-- ----------------------------

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idxCountry`(`country` ASC) USING BTREE,
  INDEX `idxLanguage`(`language` ASC) USING BTREE,
  INDEX `idxATemplate`(`atemplate` ASC) USING BTREE,
  INDEX `idxCTemplate`(`ctemplate` ASC) USING BTREE,
  INDEX `idxOrCategory`(`orcategory` ASC) USING BTREE,
  INDEX `idxBsCategory`(`bscategory` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_url
-- ----------------------------
INSERT INTO `feed_spider_url` VALUES (1, 'https://cbn.globo.com/politica/', 'br', 'pt', '[1,2]', NULL, 'Política', NULL, '2025-08-04 16:49:57', '2025-08-04 17:01:16', 'CBN');
INSERT INTO `feed_spider_url` VALUES (2, 'https://cbn.globo.com/economia/', 'br', 'pt', '[1,2]', NULL, 'Economia', NULL, '2025-08-04 16:52:44', '2025-08-04 17:01:20', 'CBN');
INSERT INTO `feed_spider_url` VALUES (3, 'https://cbn.globo.com/mundo/', 'br', 'pt', '[1,2]', NULL, 'Mundo', NULL, '2025-08-04 16:52:44', '2025-08-04 17:01:20', 'CBN');
INSERT INTO `feed_spider_url` VALUES (4, 'https://cbn.globo.com/brasil/', 'br', 'pt', '[1,2]', NULL, 'Brasil', NULL, '2025-08-04 16:54:42', '2025-08-04 17:01:20', 'CBN');
INSERT INTO `feed_spider_url` VALUES (5, 'https://cbn.globo.com/sao-paulo/', 'br', 'pt', '[1,2]', NULL, 'São Paulo', NULL, '2025-08-04 16:57:10', '2025-08-04 17:01:21', 'CBN');
INSERT INTO `feed_spider_url` VALUES (6, 'https://cbn.globo.com/rio-de-janeiro/', 'br', 'pt', '[1,2]', NULL, 'Rio de Janeiro', NULL, '2025-08-04 16:57:10', '2025-08-04 17:01:21', 'CBN');
INSERT INTO `feed_spider_url` VALUES (7, 'https://cbn.globo.com/belo-horizonte/', 'br', 'pt', '[1,2]', NULL, 'Belo Horizonte', '', '2025-08-04 16:57:10', '2025-08-04 17:01:26', 'CBN');
INSERT INTO `feed_spider_url` VALUES (8, 'https://cbn.globo.com/brasilia/', 'br', 'pt', '[1,2]', NULL, 'Brasília', NULL, '2025-08-04 16:57:10', '2025-08-04 17:01:28', 'CBN');

-- ----------------------------
-- Table structure for feed_spider_url_group
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_url_group`;
CREATE TABLE `feed_spider_url_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `language` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `publishername` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `group` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_url_group
-- ----------------------------
INSERT INTO `feed_spider_url_group` VALUES (1, 'br', 'pt', 'CBN', '[[1,2],[3,4],[5,6],[7,8]]', 'https://s2-cbn.glbimg.com/8omCOX83cUkXOwx1pHqZXi2TAew=/192x192/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_d975fad146a14bbfad9e763717b09688/internal_photos/bs/2021/z/M/JpDF4cRs6ZHPip8YMKNw/cbn.png', 'cbn.globo.com', NULL, 2, '2025-08-04 16:50:52', '2025-08-05 11:40:27', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 679207 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 51181836 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 196015216 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supply_feed_info
-- ----------------------------
INSERT INTO `supply_feed_info` VALUES (196015213, 'prod', '53954da558cd7fccdf9e73c3ab1befd7', 'News', 'it', 'it', 1754384337, 'Dieta dell\'anguria: cosa succede se mangio solo anguria tutti i giorni?', '{\"country\": \"it\", \"language\": \"it\", \"category\": \"News\", \"publish_timestamp\": 1753794420, \"pub_date\": \"2025-07-29 13:07:00\", \"publisher\": \"MyPersonalTrainer\", \"publisher_icon\": \"https://read.squidapp.co/favicon.ico\", \"domain\": \"squidapp.co\", \"url\": \"https://read.squidapp.co/minews/iuLvMIZ?i=IJhB7jH7&r=19\", \"tags\": \"\", \"image_url\": \"https://d1v5b45xd905zm.cloudfront.net/images2/1/0/e/b/3/10eb3219-d227-3083-8da3-84fec21c0963-900x760.jpg\", \"platform\": \"\", \"hotnews\": \"\", \"realtime\": \"\", \"tags_mi\": \"{\\\"news_id\\\": \\\"iuLvMIZ\\\", \\\"cp_name\\\": \\\"squid\\\"}\", \"hot\": 1}', '', NULL, ' In breve: cosa succede se mangio anguria \"continuamente\"? \nPuò aiutare a sentirsi meglio (ma non per i motivi che pensi)\nIniziare a mangiare anguria ogni giorno potrebbe farti sentire più leggero e sgonfio all\"inizio, ma questo dipende spesso dalla riduzione di cibi processati, non dal frutto in sé.Una dieta a base di anguria può provocare un calo di peso temporaneo legato alla perdita di liquidi, ma non è un metodo efficace o duraturo per dimagrire.\nI rischi aumentano con l\"eccesso\nSeguita ogni giorno per molto tempo, la \"dieta dell\"anguria\" può portare a carenze nutrizionali.\nAttenzione se hai problemi di salute\nAlcune categorie di persone, ad es. con insulino-resistenza, donne in gravidanza a rischio di diabete gestazionale o chi ha disturbi alimentari, dovrebbero evitarne il consumo abbondante. \nIl nostro organismo ha bisogno di nutrienti da tutti i gruppi alimentari: anche per \"detossificarsi\", servono amminoacidi essenziali, fibre e grassi insaturi; non solo zuccheri della frutta.\n \nMangiare anguria quotidianamente può portare, almeno inizialmente, a una sensazione di benessere. Il frutto è composto per oltre il 90% da acqua e ha pochissime calorie (circa 30 per 100 grammi), il che lo rende dissetante e leggero. Inoltre, ha un buon contenuto di antiossidanti come il licopene, vitamine A e C, e modeste quantità di potassio.\nSeguendo una dieta esclusivamente a base di anguria si potrebbero avere alcuni miglioramenti, ma solo iniziali (perdita di peso, miglioramento della stipsi, riduzione del colesterolo e della pressione, ecc.), che potrebbero dipendere non tanto dall\"anguria in sé, quanto dall\"eliminazione di alimenti processati o molto salati, tipici delle diete standard.\nIn pratica, più che aggiungere anguria, è bene togliere ciò che crea problemi: sodio in eccesso, grassi saturi in eccesso e i trans, zuccheri aggiunti ecc., e tutti gli eccessi in genere, soprattutto da cibo spazzatura. \n\nQuesta dinamica spiega perché molte persone parlano di sensazioni positive all\"inizio di una dieta \"a base di anguria\".\n L’illusione del dimagrimento: funziona davvero? \nUna delle ragioni per cui alcune persone decidono di inserire l\"anguria nella dieta tutti i giorni è la convinzione che aiuti a dimagrire. Su TikTok è diventato virale il trend della \"watermelon diet\", un regime che prevede di mangiare quasi esclusivamente anguria per diversi giorni, con l\"obiettivo di perdere peso.\nI dietisti avvertono però che si tratta di un approccio fuorviante. Il dimagrimento che si osserva inizialmente è legato alla perdita di liquidi e non di massa grassa. Essendo diuretica e povera di fibre e proteine, l\"anguria può far perdere peso sulla bilancia, ma non cambia la composizione corporea.\nInoltre, questo tipo di dimagrimento (che, in realtà, è una mera \"perdita di peso\") è facilmente reversibile: non appena si torna a un\"alimentazione più completa, i chili persi vengono recuperati. \n\nLe diete monotematiche, come quella dell\"anguria, si rivelano spesso insostenibili nel lungo periodo. L\"organismo ha bisogno di nutrienti diversi – proteine, grassi, carboidrati anche complessi – che la sola anguria non può fornire.\n I rischi di mangiare anguria ogni giorno (e a lungo) \nConsumare anguria quotidianamente, se in quantità normali e in un contesto di alimentazione varia, non è dannoso; ma quando diventa un\"abitudine esclusiva o preponderante, possono emergere delle conseguenze negative.\nEcco i principali effetti collaterali legati all\"eccesso di anguria nella dieta:\n Squilibri elettrolitici: l\"uso eccessivo può interferire con il bilancio di sodio, potassio e magnesio. Disidratazione paradossale: anche se ricca d\"acqua, l\"anguria, se consumata in modo esclusivo, può non garantire un apporto sufficiente di sodio, causando una riduzione dell\"idratazione intracellulare. \n Quando evitare l’anguria quotidiana: categorie a rischio \nNon tutte le persone reagiscono allo stesso modo a una dieta ricca di anguria. Alcune condizioni rendono il consumo quotidiano potenzialmente dannoso: \n\nOgni cellula del nostro corpo ha bisogno di nutrienti da più fonti alimentari per funzionare in modo efficiente.\n Conclusioni \nL\"anguria è un frutto salutare, idratante e ricco di micronutrienti. Inserirla nella dieta quotidiana può essere benefico, ma solo se fa parte di un\"alimentazione varia ed equilibrata.\nIl problema nasce quando diventa il perno di regimi estremi, come la \"dieta dell\"anguria\". In questi casi, più che benefici, emergono carenze e rischi anche gravi, soprattutto per chi ha condizioni preesistenti.\nLa chiave, come sempre, è la moderazione. L\"anguria va bene tutti i giorni se consumata come snack o dessert naturale, ma non può sostituire pasti completi o essere vista come strategia per dimagrire in fretta.', NULL, '2025-08-05 16:58:57', '2025-08-05 16:58:57', 'squidapp.co');
INSERT INTO `supply_feed_info` VALUES (196015214, 'prod', '4e6485b600a3efe3eac2406932cfbfad', 'News', 'it', 'it', 1754384392, 'I 1.600 morti in Cile e l\'incubo Fukushima: quali sono i 10 terremoti più forti di sempre', '{\"country\": \"it\", \"language\": \"it\", \"category\": \"News\", \"publish_timestamp\": 1753837574, \"pub_date\": \"2025-07-30 09:06:14\", \"publisher\": \"Quotidiano.net\", \"publisher_icon\": \"https://www.quotidiano.net/favicon/qn/favicon.ico\", \"domain\": \"www.quotidiano.net\", \"url\": \"https://www.quotidiano.net/esteri/sch-terremoti-piu-forti-della-storia-thvdx470\", \"tags\": \"\", \"image_url\": \"https://www.quotidiano.net/image-service/view/acePublic/alias/contentid/OGJiYzc1M2UtZDYyMS00/0/un-immagine-dello-tsnunami-scatenato-dal-terremoto-a-fukushima-l-11-marzo-2011-ansa.webp\", \"platform\": \"\", \"hotnews\": \"\", \"realtime\": \"\", \"tags_mi\": \"{\\\"news_id\\\": \\\"ixEVvTC\\\", \\\"cp_name\\\": \\\"squid\\\"}\", \"hot\": 1}', 'Il sisma al largo della Russia riaccende l\"incubo dei disastri naturali: dalla devastante scossa del 1906 a oggi una scia di morte e devastazione', NULL, 'Roma, 30 luglio 2025 – Imprevedibili, improvvisi e devastanti. I terremoti rappresentano, da sempre, una delle catastrofi naturali più potenti e distruttive. Il sisma di magnitudo 8.8 a circa 136 chilometri a sud-est della penisola di Kamchatka, al largo della Russia, nel mare di Bering che si è verificato in queste ore ha riacceso le paure di tutti. Secondo l\"Usgs, questo evento è stato il più forte a livello mondiale dal disastro di Fukushima nel marzo 2011 ed è stato superato solo da pochi terremoti dall\"inizio delle misurazioni, nella prima metà del 1800. Già, perché con l’avvento della sismologia moderna, oggi siamo in grado di misurare, con precisione, l’intensità di questi eventi. La maggior parte dei terremoti più devastanti si verifica lungo le cosiddette ‘zone di subduzione’, dove una placca tettonica scivola sotto un’altra. Ecco un elenco dei 10 terremoti più potenti e distruttivi mai registrati.', NULL, '2025-08-05 16:59:52', '2025-08-05 16:59:52', 'www.quotidiano.net');
INSERT INTO `supply_feed_info` VALUES (196015215, 'prod', 'a82c16f8f0ee1848cc488f8a7a717084', 'News', 'pl', 'pl', 1754384398, 'Oczy całego świata skierowane na Rosję. Oto skutki potężnego trzęsienia ziemi', '{\"country\": \"pl\", \"language\": \"pl\", \"category\": \"News\", \"publish_timestamp\": 1753867860, \"pub_date\": \"2025-07-30 09:31:00\", \"publisher\": \"Wprost\", \"publisher_icon\": \"https://read.squidapp.co/favicon.ico\", \"domain\": \"squidapp.co\", \"url\": \"https://read.squidapp.co/minews/pcATs0o?i=XPCCyTEz\", \"tags\": \"\", \"image_url\": \"https://d1v5b45xd905zm.cloudfront.net/images2/8/c/9/7/a/8c97aa34-1276-3005-b872-ad78af44034b-1280x960.jpg\", \"platform\": \"\", \"hotnews\": \"\", \"realtime\": \"\", \"tags_mi\": \"{\\\"news_id\\\": \\\"pcATs0o\\\", \\\"cp_name\\\": \\\"squid\\\"}\", \"hot\": 1}', '', NULL, 'Daleko na wschodzie – u wybrzeży Kamczatki (półwysep w Rosji, który oddziela Morze Ochockie i Beringa) – doszło do potężnego trzęsienia ziemi. Nie obyło się bez uszkodzeń infrastruktury, ewakuacji, podtopień czy pilnie wydanych komunikatów zawierających ostrzeżenia. \n\nTrzęsienie ziemi doprowadziło do powstania fal na Pacyfiku o wysokości czterech metrów. Epicentrum zjawisko było oddalone o około 125 kilometrów od stolicy Kraju Kamczackiego (Pietropawłowska), a hipocentrum znajdowało się na głębokości ok. 19,5 km. W skali Richtera mowa o magnitudzie 8,8!\nKilka państw ogłosiło ostrzeżenia (najpierw Rosja, potem m.in. Japonia czy Stany Zjednoczone). Prezydent USA Donald Trump opublikował wpis na TRUTH Social, prosząc obywateli na Hawajach o ostrożność.\nWedług najnowszych doniesień nawet wtórne wstrząsy miały dużą siłę i sięgały aż 7 w skali Richtera – podała agencja Reutera. Trzęsienie z 30 lipca jest znacznie silniejsze niż to, które miało miejsce w 1952 roku. Władze Kamczatki same przyznały, że lipcowe zjawisko jest „najsilniejszym od dekad”. Według magazynu „Time” jest to szóste największe trzęsienie ziemi, jakie zarejestrowano w historii.\n30 wstrząsów wtórnych. Na wyspie Sachalin awaria sieci energetycznej, podtopienia w Severo-Kurilsku\nNEXTA informowała, że wskutek trzęsienia ziemi na japońskie wybrzeże woda wyrzuciła wieloryby. Fale tsunami, które zostały wzbudzone, uderzyły w miasteczko Siewiero-Kurilsk. Miały wysokość od trzech do pięciu metrów.\nOsoby, które znajdują się na wybrzeżu Kamczatki, są proszone przez rosyjskiego ministerstwo ds. sytuacji nadzwyczajnych o opuszczenie niebezpiecznego miejsca, a te, które planowały się tam wybrać, muszą zmienić swoje plany.\nWedług najnowszych doniesień, które pojawiły się w mediach w środę przed południem – w związku ze zjawiskiem na wyspie Sachalin (największa wyspa w Rosji) doszło do uszkodzenia sieci energetycznej – informuje RIA Nowosti. Odwołano też loty na Maui (druga największa wyspa – w tym przypadku na Hawajach) – co ogłosił gubernator Josh Green. Władze stanu podjęły też decyzję o zawieszeniu pracy na morskich portach cywilnych – do odwołania.\nZ ostatniej chwili: Ewakuowano pracowników Fukushimy \nReuters informuje – powołując się na najnowsze ustalenia Rosyjskiej Akademii Nauk, że trzęsienie ziemi wygenerowało bagatela 30 wstrząsów wtórnych!\nW Waszyngtonie fale uderzyły w La Push i Westport – jak przekazało National Weather Service Seattle (miejscowy odpowiednik Instytutu Meteorologii i Gospodarki Wodnej). W Fukushimie ewakuowano zaś wszystkich pracowników elektrowni jądrowej.\nCzytaj też:\nPotężne trzęsienie ziemi w Rosji. Trump wydał oświadczenieCzytaj też:\nKolumbijczyk od Kremla. Rosja testuje odporność Polski', NULL, '2025-08-05 16:59:58', '2025-08-05 16:59:58', 'squidapp.co');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1881287 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test_supply_feed_info
-- ----------------------------

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `batch_copy_data`()
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_duplicate_titles_batch`()
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
