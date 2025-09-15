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

 Date: 15/09/2025 18:32:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feed_spider_filter_configs
-- ----------------------------
DROP TABLE IF EXISTS `feed_spider_filter_configs`;
CREATE TABLE `feed_spider_filter_configs`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `datastatus` json NULL COMMENT '数据状态列表',
  `country` json NULL COMMENT '国家列表',
  `language` json NULL COMMENT '语言列表',
  `server` json NULL COMMENT '服务器列表',
  `publisher` json NULL COMMENT '网站名称列表',
  `taskstatus` json NULL COMMENT '任务状态列表',
  `domain` json NULL COMMENT '域名列表',
  `createdtime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedtime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `platform` json NULL COMMENT '平台\r\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '筛选配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feed_spider_filter_configs
-- ----------------------------
INSERT INTO `feed_spider_filter_configs` VALUES (1, '[]', '[\"br\", \"pl\", \"de\", \"ru\", \"fr\", \"mx\", \"tr\", \"it\", \"es\"]', '[\"pt\", \"pl\", \"de\", \"ru\", \"fr\", \"mx\", \"tr\", \"it\", \"es\"]', '[]', '[\"UOLNoticias\", \"ClicrbsRS\", \"Metrópoles\", \"Globo\", \"FolhaDeSPaulo\", \"Estadão\", \"JovemPan\", \"CorreioBraziliense\", \"NDMais\", \"RádioItatiaia\", \"MixVale\", \"ODia\", \"Terra\", \"WirtualnaPolska\", \"PrzeglądSportowyOnet\", \"Fakt\", \"IntWydarzenia\", \"TVRepublika\", \"O2\", \"TygodnikLisicki\", \"Goniec\", \"PolitykaSuperExpress\", \"Eska\", \"LifestyleLelum\", \"Ntv\", \"Tagesspiegel\", \"Tonline\", \"Focus\", \"Abendblatt\", \"Abendzeitung\", \"Hna\", \"Filmstarts\", \"Kicker\", \"Promiflash\", \"WEB\", \"gala\", \"Promipool\", \"rtl\", \"kino\", \"tz\", \"vip\", \"moviepilot\", \"TVSpielfilmOnline\", \"watson\", \"OKMagazin\", \"BUNTE\", \"intouch\", \"РИАНовости\", \"Lenta\", \"Vesti\", \"AiF\", \"Kp\", \"Газета\", \"Sports\", \"NEWS\", \"mk\", \"ura\", \"Чемпионат\", \"Папарацци\", \"Spletnik\", \"sport24_ru\", \"Super\", \"TVMag\", \"КиноMail\", \"ЭкспрессГазета\", \"HelloRussia\", \"Intermedia\", \"PEOPLETALK\", \"Ohmymag\", \"Voici\", \"LHumanité\", \"HuffPost\", \"LeFigaro\", \"LaCroix\", \"Ledauphine\", \"Tf1Info\", \"FranceBleu\", \"Laprovence\", \"LeNouvelObs\", \"Planet\", \"Premiere\", \"GQFrance\", \"Cinemateaser\", \"Mercato\", \"FemmeActuelle\", \"ÇaMintéresse\", \"Diverto\", \"MarieFrance\", \"Public\", \"TDN\", \"Excelsior\", \"LaJornada\", \"Informador\", \"Milenio\", \"ElFinanciero\", \"ElUniversal\", \"ElSiglodeTorreón\", \"Expansion\", \"ElHeraldoDeMéxico\", \"Latinus\", \"UnoTV\", \"TVyNovelas\", \"PublimetroMéxico\", \"TVNotas\", \"Elimparcial\", \"Aztecauno\", \"NuevaMujer\", \"AztecaUNO\", \"Lecturas\", \"labotana\", \"elespectador\", \"Meridiano\", \"cronista\", \"CNNTürk\", \"Sozcu\", \"NTV\", \"Haberler\", \"HalkTV\", \"Milliyet\", \"Haber7\", \"Mynet\", \"SonDakika\", \"Habertürk\", \"Ensonhaber\", \"GazeteDuvar\", \"Memurlar\", \"Ekonomim\", \"Hola\", \"LaRazón\", \"UsWeekly\", \"Elespanol\", \"Antena3Noticias\", \"DiarioABC\", \"Infobae\", \"LaRepublica\", \"LaVanguardia\", \"ElPeriódico\", \"DiarioLaProvinciaSJ\", \"ElDestape\", \"LiberoQuotidiano\", \"Tgcom24\", \"Ansa\", \"AgenziaItalia\", \"IlFattoQuotidiano\", \"NotizieVirgilio\", \"RaiNews\", \"IlSole24ORE\", \"Ilmessaggeroit\", \"Adnkronos\", \"QuotidianoNazionale\", \"Today\", \"Gazzetta\", \"EveryeyeCinema\", \"DonnaPOP\", \"Tuttomercatoweb\", \"Notizie\", \"TuttoJuve\", \"TuttoNapoli\", \"Bloomberglinea\", \"elEconomista\", \"ElMundo\", \"ElPais\", \"Que\", \"Sdpnoticias\", \"Xataka\", \"R7\", \"Klatsch\", \"E！\", \"OrangeActualités\", \"plejada\"]', '[\"3\", \"4\", \"0\", \"1\", \"2\"]', '[\"noticias.uol.com.br\", \"clicrbs.com.br\", \"metropoles.com\", \"globo.com\", \"folha.uol.com.br\", \"estadao.com.br\", \"jovempan.com.br\", \"correiobraziliense.com.br\", \"ndmais.com.br\", \"itatiaia.com.br\", \"mixvale.com.br\", \"odia.ig.com.br\", \"terra.com.br\", \"wp.pl\", \"onet.pl\", \"fakt.pl\", \"interia.pl\", \"tvrepublika.pl\", \"o2.pl\", \"dorzeczy.pl\", \"goniec.pl\", \"se.pl\", \"eska.pl\", \"lelum.pl\", \"n-tv.de\", \"tagesspiegel.de\", \"t-online.de\", \"focus.de\", \"abendblatt.de\", \"abendzeitung-muenchen.de\", \"hna.de\", \"filmstarts.de\", \"kicker.de\", \"promiflash.de\", \"web.de\", \"gala.de\", \"promipool.de\", \"rtl.de\", \"kino.de\", \"tz.de\", \"vip.de\", \"moviepilot.de\", \"tvspielfilm.de\", \"watson.de\", \"ok-magazin.de\", \"bunte.de\", \"intouch.de\", \"ria.ru\", \"lenta.ru\", \"vesti.ru\", \"aif.ru\", \"kp.ru\", \"gazeta.ru\", \"sports.ru\", \"news.ru\", \"mk.ru\", \"ura.news\", \"championat.com\", \"paparazzi.ru\", \"spletnik.ru\", \"sport24.ru\", \"super.ru\", \"tvmag.ru\", \"kino.mail.ru\", \"eg.ru\", \"hellomagrussia.ru\", \"intermedia.ru\", \"peopletalk.ru\", \"ohmymag.com\", \"voici.fr\", \"humanite.fr\", \"huffingtonpost.fr\", \"lefigaro.fr\", \"la-croix.com\", \"ledauphine.com\", \"tf1info.fr\", \"francebleu.fr\", \"laprovence.com\", \"nouvelobs.com\", \"planet.fr\", \"premiere.fr\", \"gqmagazine.fr\", \"cinemateaser.com\", \"maxifoot.fr\", \"femmeactuelle.fr\", \"caminteresse.fr\", \"diverto.tv\", \"mariefrance.fr\", \"public.fr\", \"letribunaldunet.fr\", \"excelsior.com.mx\", \"jornada.com.mx\", \"informador.mx\", \"milenio.com\", \"elfinanciero.com.mx\", \"eluniversal.com.mx\", \"elsiglodetorreon.com.mx\", \"expansion.mx\", \"heraldodemexico.com.mx\", \"latinus.us\", \"unotv.com\", \"tvynovelas.com\", \"publimetro.com.mx\", \"tvnotas.com.mx\", \"elimparcial.com\", \"tvazteca.com\", \"nuevamujer.com\", \"lecturas.com\", \"labotana.com\", \"elespectador.com\", \"meridiano.net\", \"cronista.com\", \"cnnturk.com\", \"sozcu.com.tr\", \"ntv.com.tr\", \"haberler.com\", \"halktv.com.tr\", \"milliyet.com.tr\", \"haber7.com\", \"mynet.com\", \"sondakika.com\", \"haberturk.com\", \"ensonhaber.com\", \"gazeteduvar.com.tr\", \"memurlar.net\", \"ekonomim.com\", \"libero.it\", \"tgcom24.mediaset.it\", \"ansa.it\", \"agi.it\", \"ilfattoquotidiano.it\", \"notizie.virgilio.it\", \"rainews.it\", \"ilsole24ore.com\", \"ilmessaggero.it\", \"adnkronos.com\", \"quotidiano.net\", \"today.it\", \"gazzetta.it\", \"everyeye.it\", \"donnapop.it\", \"tuttomercatoweb.com\", \"notizie.it\", \"tuttojuve.com\", \"tuttonapoli.net\", \"abc.es\", \"antena3.com\", \"bloomberglinea.com\", \"diariolaprovinciasj.com\", \"eldestapeweb.com\", \"eleconomista.es\", \"elmundo.es\", \"elpais.com\", \"hola.com\", \"infobae.com\", \"larazon.es\", \"larepublica.es\", \"lavanguardia.com\", \"que.es\", \"sdpnoticias.com\", \"xataka.com\", \"usmagazine.com\", \"elespanol.com\", \"elperiodico.com\", \"entretenimento.r7.com\", \"klatsch-tratsch.de\", \"eonline.com\", \"orange.fr\", \"plejada.pl\"]', '2025-09-05 12:31:42', '2025-09-15 16:38:31', '[\"Website\"]');

SET FOREIGN_KEY_CHECKS = 1;
