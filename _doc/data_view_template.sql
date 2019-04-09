/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : data_view_template

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-04-09 14:44:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bpv_line_stacking_area_1
-- ----------------------------
DROP TABLE IF EXISTS `bpv_line_stacking_area_1`;
CREATE TABLE `bpv_line_stacking_area_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` varchar(255) DEFAULT NULL,
  `y` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bpv_line_stacking_area_1
-- ----------------------------
INSERT INTO `bpv_line_stacking_area_1` VALUES ('1', '201701', '30', 'compute-1');
INSERT INTO `bpv_line_stacking_area_1` VALUES ('2', '201702', '50', 'compute-1');
INSERT INTO `bpv_line_stacking_area_1` VALUES ('3', '201703', '393', 'compute-1');
INSERT INTO `bpv_line_stacking_area_1` VALUES ('4', '201704', '350', 'compute-1');
INSERT INTO `bpv_line_stacking_area_1` VALUES ('5', '201705', '590', 'compute-1');
INSERT INTO `bpv_line_stacking_area_1` VALUES ('6', '201701', '30', 'compute-2');
INSERT INTO `bpv_line_stacking_area_1` VALUES ('7', '201702', '197', 'compute-2');
INSERT INTO `bpv_line_stacking_area_1` VALUES ('8', '201703', '197', 'compute-2');
INSERT INTO `bpv_line_stacking_area_1` VALUES ('9', '201704', '550', 'compute-2');
INSERT INTO `bpv_line_stacking_area_1` VALUES ('10', '201705', '590', 'compute-2');

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `group` varchar(200) DEFAULT 'aa',
  `base` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('1', 'leadingSoft', 'leading');
INSERT INTO `group` VALUES ('2', 'dalianjiaotong', 'dalian');
INSERT INTO `group` VALUES ('3', 'aubrey', 'au');

-- ----------------------------
-- Table structure for heat_basic
-- ----------------------------
DROP TABLE IF EXISTS `heat_basic`;
CREATE TABLE `heat_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `elevation` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heat_basic
-- ----------------------------
INSERT INTO `heat_basic` VALUES ('16', '120.11958323106', '30.205867709995', '125.1');
INSERT INTO `heat_basic` VALUES ('17', '120.11879547655', '30.206417434286', '125.1');
INSERT INTO `heat_basic` VALUES ('18', '120.1193811371', '30.207076873905', '125.1');
INSERT INTO `heat_basic` VALUES ('19', '120.11974964665', '30.20846479774', '125.1');
INSERT INTO `heat_basic` VALUES ('20', '120.11970478854', '30.208894695763', '125.1');
INSERT INTO `heat_basic` VALUES ('21', '120.11913665557', '30.209561370934', '125.1');
INSERT INTO `heat_basic` VALUES ('22', '120.11925530623', '30.211142479579', '125.1');
INSERT INTO `heat_basic` VALUES ('23', '120.12001106712', '30.212732630315', '125.1');
INSERT INTO `heat_basic` VALUES ('24', '120.12103721842', '30.214025612606', '125.1');
INSERT INTO `heat_basic` VALUES ('25', '120.12141127929', '30.214832875546', '125.1');
INSERT INTO `heat_basic` VALUES ('26', '120.12203202459', '30.215016377211', '125.1');
INSERT INTO `heat_basic` VALUES ('27', '120.12275366427', '30.215577472702', '125.1');
INSERT INTO `heat_basic` VALUES ('28', '120.12347085722', '30.215548321835', '125.1');
INSERT INTO `heat_basic` VALUES ('29', '120.12376008164', '30.216254133064', '125.1');
INSERT INTO `heat_basic` VALUES ('30', '120.12508674543', '30.216248030894', '125.1');
INSERT INTO `heat_basic` VALUES ('31', '120.12595379918', '30.216456026676', '125.1');
INSERT INTO `heat_basic` VALUES ('32', '120.12676108455', '30.216305772945', '125.1');
INSERT INTO `heat_basic` VALUES ('33', '120.12749336892', '30.216424057221', '125.1');
INSERT INTO `heat_basic` VALUES ('34', '120.12867199667', '30.217252719871', '125.1');
INSERT INTO `heat_basic` VALUES ('35', '120.12884953456', '30.217691494425', '125.1');
INSERT INTO `heat_basic` VALUES ('36', '120.12910198402', '30.217820249824', '125.1');
INSERT INTO `heat_basic` VALUES ('37', '120.12939736915', '30.218251558852', '125.1');
INSERT INTO `heat_basic` VALUES ('38', '120.13038184818', '30.218381106312', '125.1');
INSERT INTO `heat_basic` VALUES ('39', '120.13107575867', '30.219046588412', '125.1');
INSERT INTO `heat_basic` VALUES ('40', '120.13228205163', '30.219264728789', '125.1');
INSERT INTO `heat_basic` VALUES ('41', '120.13281376227', '30.219529853027', '125.1');
INSERT INTO `heat_basic` VALUES ('42', '120.13311821861', '30.218688043901', '125.1');
INSERT INTO `heat_basic` VALUES ('43', '120.13283914784', '30.218406879277', '125.1');
INSERT INTO `heat_basic` VALUES ('44', '120.1324570771', '30.217289921072', '125.1');
INSERT INTO `heat_basic` VALUES ('45', '120.13318247876', '30.216812859987', '125.1');
INSERT INTO `heat_basic` VALUES ('46', '120.13435997629', '30.216529987976', '125.1');
INSERT INTO `heat_basic` VALUES ('47', '120.13655929126', '30.216919077599', '125.1');
INSERT INTO `heat_basic` VALUES ('48', '120.13906949018', '30.215953944739', '125.1');
INSERT INTO `heat_basic` VALUES ('49', '120.14105726802', '30.215604745732', '125.1');
INSERT INTO `heat_basic` VALUES ('50', '120.14130928971', '30.215734898005', '125.1');
INSERT INTO `heat_basic` VALUES ('51', '120.1414508145', '30.216046603175', '125.1');
INSERT INTO `heat_basic` VALUES ('52', '120.14171598971', '30.217885512946', '125.1');
INSERT INTO `heat_basic` VALUES ('53', '120.14229572171', '30.219497907476', '125.1');
INSERT INTO `heat_basic` VALUES ('54', '120.14342252575', '30.21941375488', '125.1');
INSERT INTO `heat_basic` VALUES ('55', '120.14402620765', '30.219614795734', '125.1');
INSERT INTO `heat_basic` VALUES ('56', '120.14449411717', '30.220101186339', '125.1');
INSERT INTO `heat_basic` VALUES ('57', '120.14466266032', '30.220000676005', '125.1');
INSERT INTO `heat_basic` VALUES ('58', '120.14507853461', '30.220153490476', '125.1');
INSERT INTO `heat_basic` VALUES ('59', '120.14562126753', '30.219902162246', '125.1');
INSERT INTO `heat_basic` VALUES ('60', '120.14591534452', '30.219513070024', '125.1');
INSERT INTO `heat_basic` VALUES ('61', '120.1462564595', '30.218366582718', '125.1');
INSERT INTO `heat_basic` VALUES ('62', '120.14827530421', '30.218540751876', '125.1');
INSERT INTO `heat_basic` VALUES ('63', '120.14860008483', '30.218750029382', '125.1');
INSERT INTO `heat_basic` VALUES ('64', '120.14905889282', '30.218712516436', '125.1');
INSERT INTO `heat_basic` VALUES ('65', '120.14952177859', '30.218449694668', '125.1');
INSERT INTO `heat_basic` VALUES ('66', '120.14977572244', '30.218429760286', '125.1');
INSERT INTO `heat_basic` VALUES ('67', '120.14967982443', '30.218539690817', '125.1');
INSERT INTO `heat_basic` VALUES ('68', '120.14988010707', '30.21862893191', '125.1');
INSERT INTO `heat_basic` VALUES ('69', '120.1515357824', '30.218494521668', '125.1');
INSERT INTO `heat_basic` VALUES ('70', '120.1538788177', '30.219153451537', '125.1');
INSERT INTO `heat_basic` VALUES ('71', '120.15479623181', '30.220592570709', '125.1');
INSERT INTO `heat_basic` VALUES ('72', '120.15480203296', '30.220904983098', '125.1');
INSERT INTO `heat_basic` VALUES ('73', '120.15512229538', '30.220958126684', '125.1');
INSERT INTO `heat_basic` VALUES ('74', '120.1550932167', '30.221273906921', '125.1');
INSERT INTO `heat_basic` VALUES ('75', '120.15547698995', '30.221337247146', '125.1');
INSERT INTO `heat_basic` VALUES ('76', '120.15532960052', '30.221556499285', '125.1');
INSERT INTO `heat_basic` VALUES ('77', '120.15555751664', '30.221761388277', '125.1');
INSERT INTO `heat_basic` VALUES ('78', '120.15584748264', '30.221651228534', '125.1');
INSERT INTO `heat_basic` VALUES ('79', '120.15660552723', '30.221869215474', '125.1');
INSERT INTO `heat_basic` VALUES ('80', '120.15699590059', '30.222101161884', '125.1');
INSERT INTO `heat_basic` VALUES ('81', '120.15718978914', '30.222410320624', '125.1');

-- ----------------------------
-- Table structure for heat_map
-- ----------------------------
DROP TABLE IF EXISTS `heat_map`;
CREATE TABLE `heat_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heat_map
-- ----------------------------
INSERT INTO `heat_map` VALUES ('1', '海门', '270');
INSERT INTO `heat_map` VALUES ('2', '鄂尔多斯', '320');
INSERT INTO `heat_map` VALUES ('3', '招远', '400');
INSERT INTO `heat_map` VALUES ('4', '舟山', '529');
INSERT INTO `heat_map` VALUES ('5', '齐齐哈尔', '627');
INSERT INTO `heat_map` VALUES ('6', '盐城', '468');
INSERT INTO `heat_map` VALUES ('7', '赤峰', '789');
INSERT INTO `heat_map` VALUES ('9', '青岛', '971');
INSERT INTO `heat_map` VALUES ('10', '乳山', '120');
INSERT INTO `heat_map` VALUES ('11', '金昌', '610');
INSERT INTO `heat_map` VALUES ('12', '泉州', '810');
INSERT INTO `heat_map` VALUES ('13', '莱西', '1000');
INSERT INTO `heat_map` VALUES ('14', '日照', '110');
INSERT INTO `heat_map` VALUES ('15', '胶南', '1129');
INSERT INTO `heat_map` VALUES ('16', '南通', '1267');
INSERT INTO `heat_map` VALUES ('17', '拉萨', '454');
INSERT INTO `heat_map` VALUES ('18', '云浮', '68');
INSERT INTO `heat_map` VALUES ('19', '梅州', '128');
INSERT INTO `heat_map` VALUES ('20', '文登', '467');
INSERT INTO `heat_map` VALUES ('21', '上海', '890');
INSERT INTO `heat_map` VALUES ('22', '攀枝花', '267');
INSERT INTO `heat_map` VALUES ('23', '威海', '1300');
INSERT INTO `heat_map` VALUES ('24', '承德', '679');
INSERT INTO `heat_map` VALUES ('25', '厦门', '632');
INSERT INTO `heat_map` VALUES ('26', '汕尾', '1046');
INSERT INTO `heat_map` VALUES ('27', '潮州', '712');
INSERT INTO `heat_map` VALUES ('28', '丹东', '930');
INSERT INTO `heat_map` VALUES ('29', '太仓', '71');

-- ----------------------------
-- Table structure for histogram_complex_bar
-- ----------------------------
DROP TABLE IF EXISTS `histogram_complex_bar`;
CREATE TABLE `histogram_complex_bar` (
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `xaxis` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of histogram_complex_bar
-- ----------------------------
INSERT INTO `histogram_complex_bar` VALUES ('gw', '1', 'a');
INSERT INTO `histogram_complex_bar` VALUES ('gw', '2', 'b');

-- ----------------------------
-- Table structure for histogram_complex_line
-- ----------------------------
DROP TABLE IF EXISTS `histogram_complex_line`;
CREATE TABLE `histogram_complex_line` (
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `xaxis` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of histogram_complex_line
-- ----------------------------
INSERT INTO `histogram_complex_line` VALUES ('wg', '111', '22');
INSERT INTO `histogram_complex_line` VALUES ('wg', '222', '33');

-- ----------------------------
-- Table structure for histogram_gradient
-- ----------------------------
DROP TABLE IF EXISTS `histogram_gradient`;
CREATE TABLE `histogram_gradient` (
  `id` int(255) NOT NULL,
  `x` varchar(1000) DEFAULT NULL,
  `value` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of histogram_gradient
-- ----------------------------
INSERT INTO `histogram_gradient` VALUES ('1', '一', '220');
INSERT INTO `histogram_gradient` VALUES ('2', '二', '182');
INSERT INTO `histogram_gradient` VALUES ('3', '三', '191');
INSERT INTO `histogram_gradient` VALUES ('4', '四', '234');
INSERT INTO `histogram_gradient` VALUES ('5', '五', '150');
INSERT INTO `histogram_gradient` VALUES ('6', '六', '230');
INSERT INTO `histogram_gradient` VALUES ('7', '七', '210');
INSERT INTO `histogram_gradient` VALUES ('8', '八', '123');
INSERT INTO `histogram_gradient` VALUES ('9', '九', '90');
INSERT INTO `histogram_gradient` VALUES ('10', '十', '122');

-- ----------------------------
-- Table structure for histogram_stacking
-- ----------------------------
DROP TABLE IF EXISTS `histogram_stacking`;
CREATE TABLE `histogram_stacking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `x` varchar(255) DEFAULT NULL,
  `stack` varchar(255) DEFAULT NULL,
  `data` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of histogram_stacking
-- ----------------------------
INSERT INTO `histogram_stacking` VALUES ('1', '联盟广告', '周一', '广告', '220');
INSERT INTO `histogram_stacking` VALUES ('2', '联盟广告', '周二', '广告', '182');
INSERT INTO `histogram_stacking` VALUES ('3', '联盟广告', '周三', '广告', '191');
INSERT INTO `histogram_stacking` VALUES ('4', '联盟广告', '周四', '广告', '234');
INSERT INTO `histogram_stacking` VALUES ('5', '联盟广告', '周五', '广告', '290');
INSERT INTO `histogram_stacking` VALUES ('6', '联盟广告', '周六', '广告', '330');
INSERT INTO `histogram_stacking` VALUES ('7', '联盟广告', '周日', '广告', '310');
INSERT INTO `histogram_stacking` VALUES ('8', '视频广告', '周一', '广告', '150');
INSERT INTO `histogram_stacking` VALUES ('9', '视频广告', '周二', '广告', '232');
INSERT INTO `histogram_stacking` VALUES ('10', '视频广告', '周三', '广告', '201');
INSERT INTO `histogram_stacking` VALUES ('11', '视频广告', '周四', '广告', '154');
INSERT INTO `histogram_stacking` VALUES ('12', '视频广告', '周五', '广告', '190');
INSERT INTO `histogram_stacking` VALUES ('13', '视频广告', '周六', '广告', '330');
INSERT INTO `histogram_stacking` VALUES ('14', '视频广告', '周日', '广告', '410');
INSERT INTO `histogram_stacking` VALUES ('15', '百度', '周一', '搜索引擎', '620');

-- ----------------------------
-- Table structure for line_normal
-- ----------------------------
DROP TABLE IF EXISTS `line_normal`;
CREATE TABLE `line_normal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` varchar(255) DEFAULT NULL,
  `y` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of line_normal
-- ----------------------------
INSERT INTO `line_normal` VALUES ('1', '周一', '120', '邮件营销');
INSERT INTO `line_normal` VALUES ('2', '周二', '132', '邮件营销');
INSERT INTO `line_normal` VALUES ('3', '周三', '101', '邮件营销');
INSERT INTO `line_normal` VALUES ('4', '周四', '134', '邮件营销');
INSERT INTO `line_normal` VALUES ('5', '周五', '90', '邮件营销');
INSERT INTO `line_normal` VALUES ('6', '周六', '230', '邮件营销');
INSERT INTO `line_normal` VALUES ('7', '周日', '210', '邮件营销');
INSERT INTO `line_normal` VALUES ('8', '周一', '220', '联盟广告');
INSERT INTO `line_normal` VALUES ('9', '周二', '182', '联盟广告');
INSERT INTO `line_normal` VALUES ('10', '周三', '191', '联盟广告');
INSERT INTO `line_normal` VALUES ('11', '周四', '234', '联盟广告');
INSERT INTO `line_normal` VALUES ('12', '周五', '290', '联盟广告');
INSERT INTO `line_normal` VALUES ('13', '周六', '330', '联盟广告');
INSERT INTO `line_normal` VALUES ('14', '周日', '310', '联盟广告');

-- ----------------------------
-- Table structure for line_stacking
-- ----------------------------
DROP TABLE IF EXISTS `line_stacking`;
CREATE TABLE `line_stacking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` varchar(255) DEFAULT NULL,
  `y` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of line_stacking
-- ----------------------------
INSERT INTO `line_stacking` VALUES ('1', '周一', '120', '邮件营销');
INSERT INTO `line_stacking` VALUES ('2', '周二', '132', '邮件营销');
INSERT INTO `line_stacking` VALUES ('3', '周三', '101', '邮件营销');
INSERT INTO `line_stacking` VALUES ('4', '周四', '134', '邮件营销');
INSERT INTO `line_stacking` VALUES ('5', '周五', '90', '邮件营销');
INSERT INTO `line_stacking` VALUES ('6', '周六', '230', '邮件营销');
INSERT INTO `line_stacking` VALUES ('7', '周日', '210', '邮件营销');
INSERT INTO `line_stacking` VALUES ('8', '周一', '220', '联盟广告');
INSERT INTO `line_stacking` VALUES ('9', '周二', '182', '联盟广告');
INSERT INTO `line_stacking` VALUES ('10', '周三', '191', '联盟广告');
INSERT INTO `line_stacking` VALUES ('11', '周四', '234', '联盟广告');
INSERT INTO `line_stacking` VALUES ('12', '周五', '290', '联盟广告');
INSERT INTO `line_stacking` VALUES ('13', '周六', '330', '联盟广告');
INSERT INTO `line_stacking` VALUES ('14', '周日', '310', '联盟广告');

-- ----------------------------
-- Table structure for map_china
-- ----------------------------
DROP TABLE IF EXISTS `map_china`;
CREATE TABLE `map_china` (
  `id` int(11) NOT NULL,
  `legend` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of map_china
-- ----------------------------
INSERT INTO `map_china` VALUES ('1', 'iphoen1', '北京', '108');
INSERT INTO `map_china` VALUES ('2', 'iphone3', '天津', '146');
INSERT INTO `map_china` VALUES ('3', 'iphone5', '上海', '944');
INSERT INTO `map_china` VALUES ('4', 'iphone3', '重庆', '66');
INSERT INTO `map_china` VALUES ('5', 'iphone3', '河北', '173');
INSERT INTO `map_china` VALUES ('6', 'iphone5', '河南', '21');
INSERT INTO `map_china` VALUES ('7', 'iphoen1', '云南', '884');
INSERT INTO `map_china` VALUES ('8', 'iphone3', '辽宁', '935');
INSERT INTO `map_china` VALUES ('9', 'iphoen1', '黑龙江', '947');
INSERT INTO `map_china` VALUES ('10', 'iphoen1', '湖南', '857');
INSERT INTO `map_china` VALUES ('11', 'iphone5', '安徽', '851');
INSERT INTO `map_china` VALUES ('12', 'iphone3', '山东', '858');

-- ----------------------------
-- Table structure for map_china_tmp
-- ----------------------------
DROP TABLE IF EXISTS `map_china_tmp`;
CREATE TABLE `map_china_tmp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `legend` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of map_china_tmp
-- ----------------------------
INSERT INTO `map_china_tmp` VALUES ('1', '海门', '9', null);
INSERT INTO `map_china_tmp` VALUES ('2', '鄂尔多斯', '12', null);
INSERT INTO `map_china_tmp` VALUES ('3', '招远', '12', null);
INSERT INTO `map_china_tmp` VALUES ('4', '舟山', '12', null);
INSERT INTO `map_china_tmp` VALUES ('5', '齐齐哈尔', '14', null);
INSERT INTO `map_china_tmp` VALUES ('6', '盐城', '15', null);
INSERT INTO `map_china_tmp` VALUES ('7', '赤峰', '16', null);
INSERT INTO `map_china_tmp` VALUES ('8', '青岛', '18', null);
INSERT INTO `map_china_tmp` VALUES ('9', '乳山', '18', null);
INSERT INTO `map_china_tmp` VALUES ('10', '金昌', '19', null);
INSERT INTO `map_china_tmp` VALUES ('11', '泉州', '21', null);
INSERT INTO `map_china_tmp` VALUES ('12', '莱西', '21', null);
INSERT INTO `map_china_tmp` VALUES ('13', '日照', '21', null);
INSERT INTO `map_china_tmp` VALUES ('14', '胶南', '22', null);
INSERT INTO `map_china_tmp` VALUES ('15', '南通', '23', null);
INSERT INTO `map_china_tmp` VALUES ('16', '拉萨', '24', null);
INSERT INTO `map_china_tmp` VALUES ('17', '云浮', '24', null);
INSERT INTO `map_china_tmp` VALUES ('18', '梅州', '25', null);
INSERT INTO `map_china_tmp` VALUES ('19', '文登', '25', null);
INSERT INTO `map_china_tmp` VALUES ('20', '上海', '25', null);
INSERT INTO `map_china_tmp` VALUES ('21', '攀枝花', '25', null);
INSERT INTO `map_china_tmp` VALUES ('22', '威海', '25', null);
INSERT INTO `map_china_tmp` VALUES ('23', '承德', '25', null);
INSERT INTO `map_china_tmp` VALUES ('24', '厦门', '26', null);
INSERT INTO `map_china_tmp` VALUES ('25', '汕尾', '26', null);
INSERT INTO `map_china_tmp` VALUES ('26', '潮州', '26', null);
INSERT INTO `map_china_tmp` VALUES ('27', '丹东', '27', null);
INSERT INTO `map_china_tmp` VALUES ('28', '太仓', '27', null);
INSERT INTO `map_china_tmp` VALUES ('29', '曲靖', '27', null);
INSERT INTO `map_china_tmp` VALUES ('30', '烟台', '28', null);
INSERT INTO `map_china_tmp` VALUES ('31', '福州', '29', null);
INSERT INTO `map_china_tmp` VALUES ('32', '瓦房店', '30', null);
INSERT INTO `map_china_tmp` VALUES ('33', '即墨', '30', null);
INSERT INTO `map_china_tmp` VALUES ('34', '抚顺', '31', null);
INSERT INTO `map_china_tmp` VALUES ('35', '玉溪', '31', null);
INSERT INTO `map_china_tmp` VALUES ('36', '张家口', '31', null);
INSERT INTO `map_china_tmp` VALUES ('37', '阳泉', '31', null);
INSERT INTO `map_china_tmp` VALUES ('38', '莱州', '32', null);
INSERT INTO `map_china_tmp` VALUES ('39', '湖州', '32', null);
INSERT INTO `map_china_tmp` VALUES ('40', '汕头', '32', null);
INSERT INTO `map_china_tmp` VALUES ('41', '昆山', '33', null);
INSERT INTO `map_china_tmp` VALUES ('42', '宁波', '33', null);
INSERT INTO `map_china_tmp` VALUES ('43', '湛江', '33', null);
INSERT INTO `map_china_tmp` VALUES ('44', '揭阳', '34', null);
INSERT INTO `map_china_tmp` VALUES ('45', '荣成', '34', null);
INSERT INTO `map_china_tmp` VALUES ('46', '连云港', '35', null);
INSERT INTO `map_china_tmp` VALUES ('47', '葫芦岛', '35', null);
INSERT INTO `map_china_tmp` VALUES ('48', '常熟', '36', null);
INSERT INTO `map_china_tmp` VALUES ('49', '东莞', '36', null);
INSERT INTO `map_china_tmp` VALUES ('50', '河源', '36', null);
INSERT INTO `map_china_tmp` VALUES ('51', '淮安', '36', null);
INSERT INTO `map_china_tmp` VALUES ('52', '泰州', '36', null);
INSERT INTO `map_china_tmp` VALUES ('53', '南宁', '37', null);
INSERT INTO `map_china_tmp` VALUES ('54', '营口', '37', null);
INSERT INTO `map_china_tmp` VALUES ('55', '惠州', '37', null);
INSERT INTO `map_china_tmp` VALUES ('56', '江阴', '37', null);
INSERT INTO `map_china_tmp` VALUES ('57', '蓬莱', '37', null);
INSERT INTO `map_china_tmp` VALUES ('58', '韶关', '38', null);
INSERT INTO `map_china_tmp` VALUES ('59', '嘉峪关', '38', null);
INSERT INTO `map_china_tmp` VALUES ('60', '广州', '38', null);
INSERT INTO `map_china_tmp` VALUES ('61', '延安', '38', null);
INSERT INTO `map_china_tmp` VALUES ('62', '太原', '39', null);
INSERT INTO `map_china_tmp` VALUES ('63', '清远', '39', null);
INSERT INTO `map_china_tmp` VALUES ('64', '中山', '39', null);
INSERT INTO `map_china_tmp` VALUES ('65', '昆明', '39', null);
INSERT INTO `map_china_tmp` VALUES ('66', '寿光', '40', null);
INSERT INTO `map_china_tmp` VALUES ('67', '盘锦', '40', null);
INSERT INTO `map_china_tmp` VALUES ('68', '长治', '41', null);
INSERT INTO `map_china_tmp` VALUES ('69', '深圳', '41', null);
INSERT INTO `map_china_tmp` VALUES ('70', '珠海', '42', null);
INSERT INTO `map_china_tmp` VALUES ('71', '宿迁', '43', null);
INSERT INTO `map_china_tmp` VALUES ('72', '咸阳', '43', null);
INSERT INTO `map_china_tmp` VALUES ('73', '铜川', '44', null);
INSERT INTO `map_china_tmp` VALUES ('74', '平度', '44', null);
INSERT INTO `map_china_tmp` VALUES ('75', '佛山', '44', null);
INSERT INTO `map_china_tmp` VALUES ('76', '海口', '44', null);
INSERT INTO `map_china_tmp` VALUES ('77', '江门', '45', null);
INSERT INTO `map_china_tmp` VALUES ('78', '章丘', '45', null);
INSERT INTO `map_china_tmp` VALUES ('79', '肇庆', '46', null);
INSERT INTO `map_china_tmp` VALUES ('80', '大连', '47', null);
INSERT INTO `map_china_tmp` VALUES ('81', '临汾', '47', null);
INSERT INTO `map_china_tmp` VALUES ('82', '吴江', '47', null);
INSERT INTO `map_china_tmp` VALUES ('83', '石嘴山', '49', null);
INSERT INTO `map_china_tmp` VALUES ('84', '沈阳', '50', null);
INSERT INTO `map_china_tmp` VALUES ('85', '苏州', '50', null);
INSERT INTO `map_china_tmp` VALUES ('86', '茂名', '50', null);
INSERT INTO `map_china_tmp` VALUES ('87', '嘉兴', '51', null);
INSERT INTO `map_china_tmp` VALUES ('88', '长春', '51', null);
INSERT INTO `map_china_tmp` VALUES ('89', '胶州', '52', null);
INSERT INTO `map_china_tmp` VALUES ('90', '银川', '52', null);
INSERT INTO `map_china_tmp` VALUES ('91', '张家港', '52', null);
INSERT INTO `map_china_tmp` VALUES ('92', '三门峡', '53', null);
INSERT INTO `map_china_tmp` VALUES ('93', '锦州', '54', null);
INSERT INTO `map_china_tmp` VALUES ('94', '南昌', '54', null);
INSERT INTO `map_china_tmp` VALUES ('95', '柳州', '54', null);
INSERT INTO `map_china_tmp` VALUES ('96', '三亚', '54', null);
INSERT INTO `map_china_tmp` VALUES ('97', '自贡', '56', null);
INSERT INTO `map_china_tmp` VALUES ('98', '吉林', '56', null);
INSERT INTO `map_china_tmp` VALUES ('99', '阳江', '57', null);
INSERT INTO `map_china_tmp` VALUES ('100', '泸州', '57', null);
INSERT INTO `map_china_tmp` VALUES ('101', '西宁', '57', null);
INSERT INTO `map_china_tmp` VALUES ('102', '宜宾', '58', null);
INSERT INTO `map_china_tmp` VALUES ('103', '呼和浩特', '58', null);
INSERT INTO `map_china_tmp` VALUES ('104', '成都', '58', null);
INSERT INTO `map_china_tmp` VALUES ('105', '大同', '58', null);
INSERT INTO `map_china_tmp` VALUES ('106', '镇江', '59', null);
INSERT INTO `map_china_tmp` VALUES ('107', '桂林', '59', null);
INSERT INTO `map_china_tmp` VALUES ('108', '张家界', '59', null);
INSERT INTO `map_china_tmp` VALUES ('109', '宜兴', '59', null);
INSERT INTO `map_china_tmp` VALUES ('110', '北海', '60', null);
INSERT INTO `map_china_tmp` VALUES ('111', '西安', '61', null);
INSERT INTO `map_china_tmp` VALUES ('112', '金坛', '62', null);
INSERT INTO `map_china_tmp` VALUES ('113', '东营', '62', null);
INSERT INTO `map_china_tmp` VALUES ('114', '牡丹江', '63', null);
INSERT INTO `map_china_tmp` VALUES ('115', '遵义', '63', null);
INSERT INTO `map_china_tmp` VALUES ('116', '绍兴', '63', null);
INSERT INTO `map_china_tmp` VALUES ('117', '扬州', '64', null);
INSERT INTO `map_china_tmp` VALUES ('118', '常州', '64', null);
INSERT INTO `map_china_tmp` VALUES ('119', '潍坊', '65', null);
INSERT INTO `map_china_tmp` VALUES ('120', '重庆', '66', null);
INSERT INTO `map_china_tmp` VALUES ('121', '台州', '67', null);
INSERT INTO `map_china_tmp` VALUES ('122', '南京', '67', null);
INSERT INTO `map_china_tmp` VALUES ('123', '滨州', '70', null);
INSERT INTO `map_china_tmp` VALUES ('124', '贵阳', '71', null);
INSERT INTO `map_china_tmp` VALUES ('125', '无锡', '71', null);
INSERT INTO `map_china_tmp` VALUES ('126', '本溪', '71', null);
INSERT INTO `map_china_tmp` VALUES ('127', '克拉玛依', '72', null);
INSERT INTO `map_china_tmp` VALUES ('128', '渭南', '72', null);
INSERT INTO `map_china_tmp` VALUES ('129', '马鞍山', '72', null);
INSERT INTO `map_china_tmp` VALUES ('130', '宝鸡', '72', null);
INSERT INTO `map_china_tmp` VALUES ('131', '焦作', '75', null);
INSERT INTO `map_china_tmp` VALUES ('132', '句容', '75', null);
INSERT INTO `map_china_tmp` VALUES ('133', '北京', '79', null);
INSERT INTO `map_china_tmp` VALUES ('134', '徐州', '79', null);
INSERT INTO `map_china_tmp` VALUES ('135', '衡水', '80', null);
INSERT INTO `map_china_tmp` VALUES ('136', '包头', '80', null);
INSERT INTO `map_china_tmp` VALUES ('137', '绵阳', '80', null);
INSERT INTO `map_china_tmp` VALUES ('138', '乌鲁木齐', '84', null);
INSERT INTO `map_china_tmp` VALUES ('139', '枣庄', '84', null);
INSERT INTO `map_china_tmp` VALUES ('140', '杭州', '84', null);
INSERT INTO `map_china_tmp` VALUES ('141', '淄博', '85', null);
INSERT INTO `map_china_tmp` VALUES ('142', '鞍山', '86', null);
INSERT INTO `map_china_tmp` VALUES ('143', '溧阳', '86', null);
INSERT INTO `map_china_tmp` VALUES ('144', '库尔勒', '86', null);
INSERT INTO `map_china_tmp` VALUES ('145', '安阳', '90', null);
INSERT INTO `map_china_tmp` VALUES ('146', '开封', '90', null);
INSERT INTO `map_china_tmp` VALUES ('147', '济南', '92', null);
INSERT INTO `map_china_tmp` VALUES ('148', '德阳', '93', null);
INSERT INTO `map_china_tmp` VALUES ('149', '温州', '95', null);
INSERT INTO `map_china_tmp` VALUES ('150', '九江', '96', null);
INSERT INTO `map_china_tmp` VALUES ('151', '邯郸', '98', null);
INSERT INTO `map_china_tmp` VALUES ('152', '临安', '99', null);
INSERT INTO `map_china_tmp` VALUES ('153', '兰州', '99', null);
INSERT INTO `map_china_tmp` VALUES ('154', '沧州', '100', null);
INSERT INTO `map_china_tmp` VALUES ('155', '临沂', '103', null);
INSERT INTO `map_china_tmp` VALUES ('156', '南充', '104', null);
INSERT INTO `map_china_tmp` VALUES ('157', '天津', '105', null);
INSERT INTO `map_china_tmp` VALUES ('158', '富阳', '106', null);
INSERT INTO `map_china_tmp` VALUES ('159', '泰安', '112', null);
INSERT INTO `map_china_tmp` VALUES ('160', '诸暨', '112', null);
INSERT INTO `map_china_tmp` VALUES ('161', '郑州', '113', null);
INSERT INTO `map_china_tmp` VALUES ('162', '哈尔滨', '114', null);
INSERT INTO `map_china_tmp` VALUES ('163', '聊城', '116', null);
INSERT INTO `map_china_tmp` VALUES ('164', '芜湖', '117', null);
INSERT INTO `map_china_tmp` VALUES ('165', '唐山', '119', null);
INSERT INTO `map_china_tmp` VALUES ('166', '平顶山', '119', null);
INSERT INTO `map_china_tmp` VALUES ('167', '邢台', '119', null);
INSERT INTO `map_china_tmp` VALUES ('168', '德州', '120', null);
INSERT INTO `map_china_tmp` VALUES ('169', '济宁', '120', null);
INSERT INTO `map_china_tmp` VALUES ('170', '荆州', '127', null);
INSERT INTO `map_china_tmp` VALUES ('171', '宜昌', '130', null);
INSERT INTO `map_china_tmp` VALUES ('172', '义乌', '132', null);
INSERT INTO `map_china_tmp` VALUES ('173', '丽水', '133', null);
INSERT INTO `map_china_tmp` VALUES ('174', '洛阳', '134', null);
INSERT INTO `map_china_tmp` VALUES ('175', '秦皇岛', '136', null);
INSERT INTO `map_china_tmp` VALUES ('176', '株洲', '143', null);
INSERT INTO `map_china_tmp` VALUES ('177', '石家庄', '147', null);
INSERT INTO `map_china_tmp` VALUES ('178', '莱芜', '148', null);
INSERT INTO `map_china_tmp` VALUES ('179', '常德', '152', null);
INSERT INTO `map_china_tmp` VALUES ('180', '保定', '153', null);
INSERT INTO `map_china_tmp` VALUES ('181', '湘潭', '154', null);
INSERT INTO `map_china_tmp` VALUES ('182', '金华', '157', null);
INSERT INTO `map_china_tmp` VALUES ('183', '岳阳', '169', null);
INSERT INTO `map_china_tmp` VALUES ('184', '长沙', '175', null);
INSERT INTO `map_china_tmp` VALUES ('185', '衢州', '177', null);
INSERT INTO `map_china_tmp` VALUES ('186', '廊坊', '193', null);
INSERT INTO `map_china_tmp` VALUES ('187', '菏泽', '194', null);
INSERT INTO `map_china_tmp` VALUES ('188', '合肥', '229', null);
INSERT INTO `map_china_tmp` VALUES ('189', '武汉', '273', null);
INSERT INTO `map_china_tmp` VALUES ('190', '大庆', '279', null);

-- ----------------------------
-- Table structure for pie
-- ----------------------------
DROP TABLE IF EXISTS `pie`;
CREATE TABLE `pie` (
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pie
-- ----------------------------
INSERT INTO `pie` VALUES ('直接访问', '335', '335');
INSERT INTO `pie` VALUES ('邮件营销', '310', '310');
INSERT INTO `pie` VALUES ('联盟广告', '234', '234');
INSERT INTO `pie` VALUES ('视频广告', '135', '135');
INSERT INTO `pie` VALUES ('搜索引擎', '1548', '1548');

-- ----------------------------
-- Table structure for pierings
-- ----------------------------
DROP TABLE IF EXISTS `pierings`;
CREATE TABLE `pierings` (
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pierings
-- ----------------------------
INSERT INTO `pierings` VALUES ('大气', '92');
INSERT INTO `pierings` VALUES ('水质', '82');
INSERT INTO `pierings` VALUES ('土壤', '70');
INSERT INTO `pierings` VALUES ('生态', '88');
INSERT INTO `pierings` VALUES ('污染源', '72');
INSERT INTO `pierings` VALUES ('行政管理', '83');

-- ----------------------------
-- Table structure for pie_percent
-- ----------------------------
DROP TABLE IF EXISTS `pie_percent`;
CREATE TABLE `pie_percent` (
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pie_percent
-- ----------------------------
INSERT INTO `pie_percent` VALUES ('20');

-- ----------------------------
-- Table structure for pie_rings
-- ----------------------------
DROP TABLE IF EXISTS `pie_rings`;
CREATE TABLE `pie_rings` (
  `﻿name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pie_rings
-- ----------------------------
INSERT INTO `pie_rings` VALUES ('大气', '92');
INSERT INTO `pie_rings` VALUES ('水质', '82');
INSERT INTO `pie_rings` VALUES ('土壤', '70');
INSERT INTO `pie_rings` VALUES ('生态', '88');
INSERT INTO `pie_rings` VALUES ('污染源', '72');
INSERT INTO `pie_rings` VALUES ('行政管理', '83');

-- ----------------------------
-- Table structure for plot_bubble
-- ----------------------------
DROP TABLE IF EXISTS `plot_bubble`;
CREATE TABLE `plot_bubble` (
  `x` double DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `y` double DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plot_bubble
-- ----------------------------
INSERT INTO `plot_bubble` VALUES ('28604', '5', '77', '1990', null, '17096869');
INSERT INTO `plot_bubble` VALUES ('31163', '6', '77.4', '1990', null, '27662440');
INSERT INTO `plot_bubble` VALUES ('1516', '7', '68', '1990', null, '1154605773');
INSERT INTO `plot_bubble` VALUES ('13670', '8', '74.7', '1990', null, '10582082');
INSERT INTO `plot_bubble` VALUES ('28599', '9', '75', '1990', null, '4986705');
INSERT INTO `plot_bubble` VALUES ('29476', '10', '77.1', '1990', null, '56943299');
INSERT INTO `plot_bubble` VALUES ('31476', '11', '75.4', '1990', null, '78958237');
INSERT INTO `plot_bubble` VALUES ('28666', '12', '78.1', '1990', null, '254830');
INSERT INTO `plot_bubble` VALUES ('1777', '13', '57.7', '1990', null, '870601776');
INSERT INTO `plot_bubble` VALUES ('29550', '14', '79.1', '1990', null, '122249285');
INSERT INTO `plot_bubble` VALUES ('2076', '15', '67.9', '1990', null, '20194354');
INSERT INTO `plot_bubble` VALUES ('12087', '16', '72', '1990', null, '42972254');
INSERT INTO `plot_bubble` VALUES ('24021', '17', '75.4', '1990', null, '3397534');
INSERT INTO `plot_bubble` VALUES ('43296', '18', '76.8', '1990', null, '4240375');
INSERT INTO `plot_bubble` VALUES ('10088', '19', '70.8', '1990', null, '38195258');
INSERT INTO `plot_bubble` VALUES ('19349', '20', '69.6', '1990', null, '147568552');
INSERT INTO `plot_bubble` VALUES ('10670', '21', '67.3', '1990', null, '53994605');
INSERT INTO `plot_bubble` VALUES ('26424', '22', '75.7', '1990', null, '57110117');
INSERT INTO `plot_bubble` VALUES ('37062', '23', '75.4', '1990', null, '252847810');
INSERT INTO `plot_bubble` VALUES ('44056', '24', '81.8', '2015', null, '23968973');
INSERT INTO `plot_bubble` VALUES ('43294', '25', '81.7', '2015', null, '35939927');
INSERT INTO `plot_bubble` VALUES ('13334', '26', '76.9', '2015', null, '1376048943');
INSERT INTO `plot_bubble` VALUES ('21291', '27', '78.5', '2015', null, '11389562');
INSERT INTO `plot_bubble` VALUES ('38923', '28', '80.8', '2015', null, '5503457');
INSERT INTO `plot_bubble` VALUES ('37599', '29', '81.9', '2015', null, '64395345');
INSERT INTO `plot_bubble` VALUES ('44053', '30', '81.1', '2015', null, '80688545');
INSERT INTO `plot_bubble` VALUES ('42182', '31', '82.8', '2015', null, '329425');
INSERT INTO `plot_bubble` VALUES ('5903', '32', '66.8', '2015', null, '1311050527');
INSERT INTO `plot_bubble` VALUES ('36162', '33', '83.5', '2015', null, '126573481');
INSERT INTO `plot_bubble` VALUES ('1390', '34', '71.4', '2015', null, '25155317');
INSERT INTO `plot_bubble` VALUES ('34644', '35', '80.7', '2015', null, '50293439');
INSERT INTO `plot_bubble` VALUES ('34186', '36', '80.6', '2015', null, '4528526');
INSERT INTO `plot_bubble` VALUES ('64304', '37', '81.6', '2015', null, '5210967');
INSERT INTO `plot_bubble` VALUES ('24787', '38', '77.3', '2015', null, '38611794');
INSERT INTO `plot_bubble` VALUES ('23038', '39', '73.13', '2015', null, '143456918');
INSERT INTO `plot_bubble` VALUES ('19360', '40', '76.5', '2015', null, '78665830');
INSERT INTO `plot_bubble` VALUES ('38225', '41', '81.4', '2015', null, '64715810');
INSERT INTO `plot_bubble` VALUES ('53354', '42', '79.1', '2015', null, '321773631');

-- ----------------------------
-- Table structure for radar
-- ----------------------------
DROP TABLE IF EXISTS `radar`;
CREATE TABLE `radar` (
  `legend` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `value` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `max` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of radar
-- ----------------------------
INSERT INTO `radar` VALUES ('预算分配', '销售', '4300', '6500');
INSERT INTO `radar` VALUES ('实际开销', '销售', '5000', '6500');
INSERT INTO `radar` VALUES ('实际开销', '管理', '1400', '1600');
INSERT INTO `radar` VALUES ('实际开销', '信息技术', '2800', '3000');
INSERT INTO `radar` VALUES ('预算分配', '管理', '1000', '1600');
INSERT INTO `radar` VALUES ('预算分配', '信息技术', '2800', '3000');
INSERT INTO `radar` VALUES ('实际开销', '客服', '3100', '3800');
INSERT INTO `radar` VALUES ('预算分配', '客服', '3500', '3800');
INSERT INTO `radar` VALUES ('预算分配', '研发', '5000', '5200');
INSERT INTO `radar` VALUES ('预算分配', '市场', '1900', '2500');
INSERT INTO `radar` VALUES ('实际开销', '研发', '4200', '5200');
INSERT INTO `radar` VALUES ('实际开销', '市场', '2100', '2500');

-- ----------------------------
-- Table structure for relation
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `sourceID` int(255) NOT NULL,
  `targetID` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation
-- ----------------------------
INSERT INTO `relation` VALUES ('1', '1', '2');
INSERT INTO `relation` VALUES ('2', '2', '4');
INSERT INTO `relation` VALUES ('3', '1', '3');
INSERT INTO `relation` VALUES ('4', '2', '5');
INSERT INTO `relation` VALUES ('5', '3', '2');
INSERT INTO `relation` VALUES ('6', '4', '1');
INSERT INTO `relation` VALUES ('7', '6', '2');

-- ----------------------------
-- Table structure for relation_five
-- ----------------------------
DROP TABLE IF EXISTS `relation_five`;
CREATE TABLE `relation_five` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sourceID` int(255) DEFAULT NULL,
  `targetID` int(255) DEFAULT NULL,
  `x` double(100,0) DEFAULT NULL,
  `y` double(100,0) DEFAULT NULL,
  `group` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation_five
-- ----------------------------
INSERT INTO `relation_five` VALUES ('1', 'a1', '1', '2', '45', '13', 'leadingSoft');
INSERT INTO `relation_five` VALUES ('2', 'a2', '2', '4', '1', '1', 'dalianjiaotong');
INSERT INTO `relation_five` VALUES ('2', 'a2', '2', '5', '1', '1', 'dalianjiaotong');
INSERT INTO `relation_five` VALUES ('4', 'bb', '4', '1', '55', '22', 'dalianjiaotong');
INSERT INTO `relation_five` VALUES ('5', 'cc', null, null, '1', '35', 'dalianjiaotong');

-- ----------------------------
-- Table structure for relation_four
-- ----------------------------
DROP TABLE IF EXISTS `relation_four`;
CREATE TABLE `relation_four` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `flow` int(255) DEFAULT NULL,
  `sourceID` int(255) DEFAULT NULL,
  `targetID` int(255) DEFAULT NULL,
  `base` varchar(255) DEFAULT NULL,
  `group` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation_four
-- ----------------------------
INSERT INTO `relation_four` VALUES ('1', 'a1', '8', '1', '2', 'leading', 'leadingSoft');
INSERT INTO `relation_four` VALUES ('2', 'a2', '67', '2', '4', 'dalian', 'dalianjiaotong');
INSERT INTO `relation_four` VALUES ('2', 'a2', '67', '2', '5', 'dalian', 'dalianjiaotong');
INSERT INTO `relation_four` VALUES ('4', 'bb', '60', '4', '1', 'dalian', 'dalianjiaotong');
INSERT INTO `relation_four` VALUES ('5', 'cc', '45', null, null, 'dalian', 'dalianjiaotong');

-- ----------------------------
-- Table structure for relation_one
-- ----------------------------
DROP TABLE IF EXISTS `relation_one`;
CREATE TABLE `relation_one` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `flow` int(255) DEFAULT NULL,
  `sourceID` int(255) DEFAULT NULL,
  `targetID` int(255) DEFAULT NULL,
  `x` double(100,0) DEFAULT NULL,
  `y` double(100,0) DEFAULT NULL,
  `group` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation_one
-- ----------------------------
INSERT INTO `relation_one` VALUES ('1', 'a1', '8', '1', '2', '45', '13', 'leadingSoft');
INSERT INTO `relation_one` VALUES ('2', 'a2', '67', '2', '4', '1', '1', 'dalianjiaotong');
INSERT INTO `relation_one` VALUES ('2', 'a2', '67', '2', '5', '1', '1', 'dalianjiaotong');
INSERT INTO `relation_one` VALUES ('4', 'bb', '60', '4', '1', '55', '22', 'dalianjiaotong');
INSERT INTO `relation_one` VALUES ('5', 'cc', '45', null, null, '1', '35', 'dalianjiaotong');

-- ----------------------------
-- Table structure for relation_three
-- ----------------------------
DROP TABLE IF EXISTS `relation_three`;
CREATE TABLE `relation_three` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sourceID` int(255) DEFAULT NULL,
  `targetID` int(255) DEFAULT NULL,
  `x` double(100,0) DEFAULT NULL,
  `y` double(100,0) DEFAULT NULL,
  `group` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation_three
-- ----------------------------
INSERT INTO `relation_three` VALUES ('1', 'a1', '1', '2', '45', '13', 'leadingSoft');
INSERT INTO `relation_three` VALUES ('1', 'a1', '1', '3', '45', '13', 'leadingSoft');
INSERT INTO `relation_three` VALUES ('2', 'a2', '2', '4', '1', '1', 'dalianjiaotong');
INSERT INTO `relation_three` VALUES ('2', 'a2', '2', '5', '1', '1', 'dalianjiaotong');
INSERT INTO `relation_three` VALUES ('3', 'a3', '3', '2', '44', '143', 'aubrey');
INSERT INTO `relation_three` VALUES ('4', 'bb', '4', '1', '55', '22', 'dalianjiaotong');
INSERT INTO `relation_three` VALUES ('5', 'cc', null, null, '1', '35', 'dalianjiaotong');
INSERT INTO `relation_three` VALUES ('6', 'dd', '6', '2', '79', '222', 'aubrey');

-- ----------------------------
-- Table structure for relation_two
-- ----------------------------
DROP TABLE IF EXISTS `relation_two`;
CREATE TABLE `relation_two` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sourceID` int(255) DEFAULT NULL,
  `targetID` int(255) DEFAULT NULL,
  `x` double(100,0) DEFAULT NULL,
  `y` double(100,0) DEFAULT NULL,
  `group` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation_two
-- ----------------------------
INSERT INTO `relation_two` VALUES ('1', 'a1', '1', '2', '45', '13', 'leadingSoft');
INSERT INTO `relation_two` VALUES ('2', 'a2', '2', '4', '1', '1', 'dalianjiaotong');
INSERT INTO `relation_two` VALUES ('2', 'a2', '2', '5', '1', '1', 'dalianjiaotong');
INSERT INTO `relation_two` VALUES ('4', 'bb', '4', '1', '55', '22', 'dalianjiaotong');
INSERT INTO `relation_two` VALUES ('5', 'cc', null, null, '1', '35', 'dalianjiaotong');

-- ----------------------------
-- Table structure for scatter_map
-- ----------------------------
DROP TABLE IF EXISTS `scatter_map`;
CREATE TABLE `scatter_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `legend` varchar(255) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scatter_map
-- ----------------------------
INSERT INTO `scatter_map` VALUES ('1', '强', '118.92', '26.9', '1');
INSERT INTO `scatter_map` VALUES ('2', '强', '118.92', '26.86', '1');
INSERT INTO `scatter_map` VALUES ('3', '强', '118.92', '26.79', '1');
INSERT INTO `scatter_map` VALUES ('4', '强', '118.92', '26.75', '1');
INSERT INTO `scatter_map` VALUES ('5', '强', '118.92', '26.67', '1');
INSERT INTO `scatter_map` VALUES ('6', '强', '118.92', '26.55', '1');
INSERT INTO `scatter_map` VALUES ('7', '强', '118.92', '26.31', '1');
INSERT INTO `scatter_map` VALUES ('8', '强', '118.92', '26.27', '1');
INSERT INTO `scatter_map` VALUES ('9', '强', '118.92', '26.04', '1');
INSERT INTO `scatter_map` VALUES ('10', '强', '118.92', '25.96', '1');
INSERT INTO `scatter_map` VALUES ('11', '强', '118.92', '25.64', '1');
INSERT INTO `scatter_map` VALUES ('12', '强', '118.92', '25.56', '1');
INSERT INTO `scatter_map` VALUES ('13', '强', '118.92', '25.52', '1');
INSERT INTO `scatter_map` VALUES ('14', '强', '118.92', '25.48', '1');
INSERT INTO `scatter_map` VALUES ('15', '强', '118.92', '25.4', '1');
INSERT INTO `scatter_map` VALUES ('16', '强', '118.92', '25.32', '1');
INSERT INTO `scatter_map` VALUES ('17', '强', '118.92', '25.09', '1');
INSERT INTO `scatter_map` VALUES ('18', '强', '118.92', '25.05', '1');
INSERT INTO `scatter_map` VALUES ('19', '强', '118.96', '48.37', '1');
INSERT INTO `scatter_map` VALUES ('20', '强', '118.96', '43.1', '1');
INSERT INTO `scatter_map` VALUES ('21', '强', '118.96', '43.07', '1');
INSERT INTO `scatter_map` VALUES ('22', '强', '118.96', '43.01', '1');
INSERT INTO `scatter_map` VALUES ('23', '强', '118.96', '42.94', '1');
INSERT INTO `scatter_map` VALUES ('24', '强', '118.96', '42.91', '1');
INSERT INTO `scatter_map` VALUES ('25', '强', '118.96', '42.88', '1');
INSERT INTO `scatter_map` VALUES ('26', '强', '118.96', '42.84', '1');
INSERT INTO `scatter_map` VALUES ('27', '强', '118.96', '42.81', '1');
INSERT INTO `scatter_map` VALUES ('28', '强', '118.96', '42.72', '1');
INSERT INTO `scatter_map` VALUES ('29', '强', '118.96', '42.23', '1');
INSERT INTO `scatter_map` VALUES ('30', '强', '118.96', '42.2', '1');
INSERT INTO `scatter_map` VALUES ('31', '强', '118.96', '42.16', '1');
INSERT INTO `scatter_map` VALUES ('32', '强', '118.96', '42.13', '1');
INSERT INTO `scatter_map` VALUES ('33', '强', '118.96', '42.1', '1');
INSERT INTO `scatter_map` VALUES ('34', '强', '118.96', '42.03', '1');
INSERT INTO `scatter_map` VALUES ('35', '强', '118.96', '41.87', '1');
INSERT INTO `scatter_map` VALUES ('36', '强', '118.96', '41.74', '1');
INSERT INTO `scatter_map` VALUES ('37', '强', '118.96', '41.71', '1');
INSERT INTO `scatter_map` VALUES ('38', '强', '118.96', '41.61', '1');
INSERT INTO `scatter_map` VALUES ('39', '强', '118.96', '41.48', '1');
INSERT INTO `scatter_map` VALUES ('40', '强', '118.96', '41.44', '1');
INSERT INTO `scatter_map` VALUES ('41', '强', '118.96', '41.11', '1');
INSERT INTO `scatter_map` VALUES ('42', '强', '118.96', '40.98', '1');
INSERT INTO `scatter_map` VALUES ('43', '强', '118.96', '40.88', '1');
INSERT INTO `scatter_map` VALUES ('44', '强', '118.96', '40.65', '1');
INSERT INTO `scatter_map` VALUES ('45', '强', '118.96', '40.55', '1');
INSERT INTO `scatter_map` VALUES ('46', '强', '118.96', '40.38', '1');
INSERT INTO `scatter_map` VALUES ('47', '强', '118.96', '40.21', '1');
INSERT INTO `scatter_map` VALUES ('48', '强', '118.96', '40.11', '1');
INSERT INTO `scatter_map` VALUES ('49', '强', '118.96', '40.08', '1');
INSERT INTO `scatter_map` VALUES ('50', '强', '118.96', '40.01', '1');
INSERT INTO `scatter_map` VALUES ('51', '强', '118.96', '39.94', '1');
INSERT INTO `scatter_map` VALUES ('52', '强', '118.96', '39.91', '1');
INSERT INTO `scatter_map` VALUES ('53', '强', '118.96', '39.88', '1');
INSERT INTO `scatter_map` VALUES ('54', '强', '118.96', '39.84', '1');
INSERT INTO `scatter_map` VALUES ('55', '强', '118.96', '39.78', '1');
INSERT INTO `scatter_map` VALUES ('56', '强', '118.96', '39.74', '1');
INSERT INTO `scatter_map` VALUES ('57', '强', '118.96', '39.71', '1');
INSERT INTO `scatter_map` VALUES ('58', '强', '118.96', '39.67', '1');
INSERT INTO `scatter_map` VALUES ('59', '强', '118.96', '39.64', '1');
INSERT INTO `scatter_map` VALUES ('60', '强', '118.96', '39.57', '1');
INSERT INTO `scatter_map` VALUES ('61', '强', '118.96', '39.5', '1');
INSERT INTO `scatter_map` VALUES ('62', '强', '118.96', '39.47', '1');
INSERT INTO `scatter_map` VALUES ('63', '强', '118.96', '39.44', '1');
INSERT INTO `scatter_map` VALUES ('64', '强', '118.96', '39.37', '1');
INSERT INTO `scatter_map` VALUES ('65', '强', '118.96', '39.33', '1');
INSERT INTO `scatter_map` VALUES ('66', '强', '118.96', '39.3', '1');
INSERT INTO `scatter_map` VALUES ('67', '强', '118.96', '39.27', '1');
INSERT INTO `scatter_map` VALUES ('68', '强', '118.96', '38.1', '1');
INSERT INTO `scatter_map` VALUES ('69', '强', '118.96', '38.07', '1');
INSERT INTO `scatter_map` VALUES ('70', '强', '118.96', '37.93', '1');
INSERT INTO `scatter_map` VALUES ('71', '强', '118.96', '37.72', '1');
INSERT INTO `scatter_map` VALUES ('72', '强', '118.96', '37.27', '1');
INSERT INTO `scatter_map` VALUES ('73', '强', '118.96', '37.09', '1');
INSERT INTO `scatter_map` VALUES ('74', '强', '118.96', '37.06', '1');
INSERT INTO `scatter_map` VALUES ('75', '强', '118.96', '37.02', '1');
INSERT INTO `scatter_map` VALUES ('76', '强', '118.96', '36.92', '1');
INSERT INTO `scatter_map` VALUES ('77', '强', '118.96', '36.88', '1');
INSERT INTO `scatter_map` VALUES ('78', '强', '118.96', '36.84', '1');
INSERT INTO `scatter_map` VALUES ('79', '强', '118.96', '36.81', '1');
INSERT INTO `scatter_map` VALUES ('80', '强', '118.96', '36.77', '1');
INSERT INTO `scatter_map` VALUES ('81', '强', '118.96', '36.7', '1');
INSERT INTO `scatter_map` VALUES ('82', '强', '118.96', '36.67', '1');
INSERT INTO `scatter_map` VALUES ('83', '强', '118.96', '36.63', '1');
INSERT INTO `scatter_map` VALUES ('84', '强', '118.96', '36.53', '1');
INSERT INTO `scatter_map` VALUES ('85', '强', '118.96', '36.42', '1');
INSERT INTO `scatter_map` VALUES ('86', '强', '118.96', '36.32', '1');
INSERT INTO `scatter_map` VALUES ('87', '强', '118.96', '36.21', '1');
INSERT INTO `scatter_map` VALUES ('88', '强', '118.96', '36.17', '1');
INSERT INTO `scatter_map` VALUES ('89', '强', '118.96', '36.14', '1');
INSERT INTO `scatter_map` VALUES ('90', '强', '118.96', '36.1', '1');
INSERT INTO `scatter_map` VALUES ('91', '强', '118.96', '36.07', '1');
INSERT INTO `scatter_map` VALUES ('92', '强', '118.96', '36.03', '1');
INSERT INTO `scatter_map` VALUES ('93', '强', '118.96', '36', '1');
INSERT INTO `scatter_map` VALUES ('94', '强', '118.96', '35.96', '1');
INSERT INTO `scatter_map` VALUES ('95', '强', '118.96', '35.85', '1');
INSERT INTO `scatter_map` VALUES ('96', '强', '118.96', '35.82', '1');
INSERT INTO `scatter_map` VALUES ('97', '强', '118.96', '35.78', '1');
INSERT INTO `scatter_map` VALUES ('98', '强', '118.96', '35.75', '1');
INSERT INTO `scatter_map` VALUES ('99', '强', '118.96', '35.71', '1');
INSERT INTO `scatter_map` VALUES ('100', '强', '118.96', '35.57', '1');
INSERT INTO `scatter_map` VALUES ('101', '强', '118.96', '35.53', '1');
INSERT INTO `scatter_map` VALUES ('102', '强', '118.96', '35.5', '1');
INSERT INTO `scatter_map` VALUES ('103', '强', '118.96', '35.46', '1');
INSERT INTO `scatter_map` VALUES ('104', '强', '118.96', '35.35', '1');
INSERT INTO `scatter_map` VALUES ('105', '强', '118.96', '35.28', '1');
INSERT INTO `scatter_map` VALUES ('106', '强', '118.96', '35.25', '1');
INSERT INTO `scatter_map` VALUES ('107', '强', '118.96', '35.17', '1');
INSERT INTO `scatter_map` VALUES ('108', '强', '118.96', '35.14', '1');
INSERT INTO `scatter_map` VALUES ('109', '强', '118.96', '35.1', '1');
INSERT INTO `scatter_map` VALUES ('110', '强', '118.96', '35.07', '1');
INSERT INTO `scatter_map` VALUES ('111', '强', '118.96', '34.99', '1');
INSERT INTO `scatter_map` VALUES ('112', '强', '118.96', '34.96', '1');
INSERT INTO `scatter_map` VALUES ('113', '强', '118.96', '34.92', '1');
INSERT INTO `scatter_map` VALUES ('114', '强', '118.96', '34.85', '1');
INSERT INTO `scatter_map` VALUES ('115', '强', '118.96', '34.81', '1');
INSERT INTO `scatter_map` VALUES ('116', '强', '118.96', '34.78', '1');
INSERT INTO `scatter_map` VALUES ('117', '强', '118.96', '34.74', '1');
INSERT INTO `scatter_map` VALUES ('118', '强', '118.96', '34.67', '1');
INSERT INTO `scatter_map` VALUES ('119', '强', '118.96', '34.63', '1');
INSERT INTO `scatter_map` VALUES ('120', '强', '118.96', '34.6', '1');
INSERT INTO `scatter_map` VALUES ('121', '强', '118.96', '34.56', '1');
INSERT INTO `scatter_map` VALUES ('122', '强', '118.96', '34.53', '1');
INSERT INTO `scatter_map` VALUES ('123', '强', '118.96', '34.45', '1');
INSERT INTO `scatter_map` VALUES ('124', '强', '118.96', '34.42', '1');
INSERT INTO `scatter_map` VALUES ('125', '强', '118.96', '34.38', '1');
INSERT INTO `scatter_map` VALUES ('126', '强', '118.96', '34.34', '1');
INSERT INTO `scatter_map` VALUES ('127', '强', '118.96', '34.31', '1');
INSERT INTO `scatter_map` VALUES ('128', '强', '118.96', '34.27', '1');
INSERT INTO `scatter_map` VALUES ('129', '强', '118.96', '34.2', '1');
INSERT INTO `scatter_map` VALUES ('130', '强', '118.96', '34.09', '1');
INSERT INTO `scatter_map` VALUES ('131', '强', '118.96', '34.05', '1');
INSERT INTO `scatter_map` VALUES ('132', '强', '118.96', '33.98', '1');
INSERT INTO `scatter_map` VALUES ('133', '强', '118.96', '33.94', '1');
INSERT INTO `scatter_map` VALUES ('134', '强', '118.96', '33.91', '1');
INSERT INTO `scatter_map` VALUES ('135', '强', '118.96', '33.87', '1');
INSERT INTO `scatter_map` VALUES ('136', '强', '118.96', '33.83', '1');
INSERT INTO `scatter_map` VALUES ('137', '强', '118.96', '33.76', '1');
INSERT INTO `scatter_map` VALUES ('138', '强', '118.96', '33.72', '1');
INSERT INTO `scatter_map` VALUES ('139', '强', '118.96', '33.69', '1');
INSERT INTO `scatter_map` VALUES ('140', '强', '118.96', '33.65', '1');
INSERT INTO `scatter_map` VALUES ('141', '强', '118.96', '33.62', '1');
INSERT INTO `scatter_map` VALUES ('142', '强', '118.96', '33.51', '1');
INSERT INTO `scatter_map` VALUES ('143', '强', '118.96', '33.47', '1');
INSERT INTO `scatter_map` VALUES ('144', '强', '118.96', '33.43', '1');
INSERT INTO `scatter_map` VALUES ('145', '强', '118.96', '33.4', '1');
INSERT INTO `scatter_map` VALUES ('146', '强', '118.96', '33.36', '1');
INSERT INTO `scatter_map` VALUES ('147', '强', '118.96', '33.32', '1');
INSERT INTO `scatter_map` VALUES ('148', '强', '118.96', '33.29', '1');
INSERT INTO `scatter_map` VALUES ('149', '强', '118.96', '33.25', '1');
INSERT INTO `scatter_map` VALUES ('150', '强', '118.96', '33.21', '1');
INSERT INTO `scatter_map` VALUES ('151', '强', '118.96', '33.17', '1');
INSERT INTO `scatter_map` VALUES ('152', '强', '118.96', '33.1', '1');
INSERT INTO `scatter_map` VALUES ('153', '强', '118.96', '33.06', '1');
INSERT INTO `scatter_map` VALUES ('154', '强', '118.96', '32.95', '1');
INSERT INTO `scatter_map` VALUES ('155', '强', '118.96', '32.92', '1');
INSERT INTO `scatter_map` VALUES ('156', '强', '118.96', '32.77', '1');
INSERT INTO `scatter_map` VALUES ('157', '强', '118.96', '32.73', '1');
INSERT INTO `scatter_map` VALUES ('158', '强', '118.96', '32.66', '1');
INSERT INTO `scatter_map` VALUES ('159', '强', '118.96', '32.58', '1');
INSERT INTO `scatter_map` VALUES ('160', '强', '118.96', '32.44', '1');
INSERT INTO `scatter_map` VALUES ('161', '强', '118.96', '32.4', '1');
INSERT INTO `scatter_map` VALUES ('162', '强', '118.96', '32.29', '1');
INSERT INTO `scatter_map` VALUES ('163', '强', '118.96', '32.25', '1');
INSERT INTO `scatter_map` VALUES ('164', '强', '118.96', '32.03', '1');
INSERT INTO `scatter_map` VALUES ('165', '强', '118.96', '31.84', '1');
INSERT INTO `scatter_map` VALUES ('166', '强', '118.96', '31.77', '1');
INSERT INTO `scatter_map` VALUES ('167', '强', '118.96', '31.73', '1');
INSERT INTO `scatter_map` VALUES ('168', '强', '118.96', '31.69', '1');
INSERT INTO `scatter_map` VALUES ('169', '强', '118.96', '31.62', '1');
INSERT INTO `scatter_map` VALUES ('170', '强', '118.96', '31.58', '1');
INSERT INTO `scatter_map` VALUES ('171', '强', '118.96', '31.54', '1');
INSERT INTO `scatter_map` VALUES ('172', '强', '118.96', '31.5', '1');
INSERT INTO `scatter_map` VALUES ('173', '强', '118.96', '31.43', '1');
INSERT INTO `scatter_map` VALUES ('174', '强', '118.96', '31.24', '1');
INSERT INTO `scatter_map` VALUES ('175', '强', '118.96', '31.2', '1');
INSERT INTO `scatter_map` VALUES ('176', '强', '118.96', '30.94', '1');
INSERT INTO `scatter_map` VALUES ('177', '强', '118.96', '30.75', '1');
INSERT INTO `scatter_map` VALUES ('178', '强', '118.96', '30.71', '1');
INSERT INTO `scatter_map` VALUES ('179', '强', '118.96', '30.68', '1');
INSERT INTO `scatter_map` VALUES ('180', '强', '118.96', '30.56', '1');
INSERT INTO `scatter_map` VALUES ('181', '强', '118.96', '30.49', '1');
INSERT INTO `scatter_map` VALUES ('182', '强', '118.96', '30.41', '1');
INSERT INTO `scatter_map` VALUES ('183', '强', '118.96', '30.3', '1');
INSERT INTO `scatter_map` VALUES ('184', '强', '118.96', '30.26', '1');
INSERT INTO `scatter_map` VALUES ('185', '强', '118.96', '30.22', '1');
INSERT INTO `scatter_map` VALUES ('186', '强', '118.96', '30.15', '1');
INSERT INTO `scatter_map` VALUES ('187', '强', '118.96', '30.11', '1');
INSERT INTO `scatter_map` VALUES ('188', '强', '118.96', '30.07', '1');
INSERT INTO `scatter_map` VALUES ('189', '强', '118.96', '29.92', '1');
INSERT INTO `scatter_map` VALUES ('190', '强', '118.96', '29.88', '1');
INSERT INTO `scatter_map` VALUES ('191', '强', '118.96', '29.69', '1');
INSERT INTO `scatter_map` VALUES ('192', '强', '118.96', '29.65', '1');
INSERT INTO `scatter_map` VALUES ('193', '强', '118.96', '29.57', '1');
INSERT INTO `scatter_map` VALUES ('194', '强', '118.96', '29.31', '1');
INSERT INTO `scatter_map` VALUES ('195', '强', '118.96', '29.19', '1');
INSERT INTO `scatter_map` VALUES ('196', '强', '118.96', '29.11', '1');
INSERT INTO `scatter_map` VALUES ('197', '强', '118.96', '29.08', '1');
INSERT INTO `scatter_map` VALUES ('198', '强', '118.96', '29.04', '1');
INSERT INTO `scatter_map` VALUES ('199', '强', '118.96', '28.88', '1');
INSERT INTO `scatter_map` VALUES ('200', '强', '118.96', '28.85', '1');
INSERT INTO `scatter_map` VALUES ('201', '强', '118.96', '28.81', '1');
INSERT INTO `scatter_map` VALUES ('202', '强', '118.96', '28.42', '1');
INSERT INTO `scatter_map` VALUES ('203', '强', '118.96', '28.34', '1');
INSERT INTO `scatter_map` VALUES ('204', '强', '118.96', '28.3', '1');
INSERT INTO `scatter_map` VALUES ('205', '强', '118.96', '28.07', '1');
INSERT INTO `scatter_map` VALUES ('206', '强', '118.96', '27.99', '1');
INSERT INTO `scatter_map` VALUES ('207', '强', '118.96', '27.96', '1');
INSERT INTO `scatter_map` VALUES ('208', '强', '118.96', '27.84', '1');
INSERT INTO `scatter_map` VALUES ('209', '强', '118.96', '27.8', '1');
INSERT INTO `scatter_map` VALUES ('210', '强', '118.96', '27.76', '1');
INSERT INTO `scatter_map` VALUES ('211', '强', '118.96', '27.61', '1');
INSERT INTO `scatter_map` VALUES ('212', '强', '118.96', '27.53', '1');
INSERT INTO `scatter_map` VALUES ('213', '强', '118.96', '27.49', '1');
INSERT INTO `scatter_map` VALUES ('214', '强', '118.96', '27.45', '1');
INSERT INTO `scatter_map` VALUES ('215', '强', '118.96', '27.41', '1');
INSERT INTO `scatter_map` VALUES ('216', '强', '118.96', '27.37', '1');
INSERT INTO `scatter_map` VALUES ('217', '强', '118.96', '27.33', '1');
INSERT INTO `scatter_map` VALUES ('218', '强', '118.96', '27.18', '1');
INSERT INTO `scatter_map` VALUES ('219', '强', '118.96', '27.06', '1');
INSERT INTO `scatter_map` VALUES ('220', '强', '118.96', '26.94', '1');
INSERT INTO `scatter_map` VALUES ('221', '强', '118.96', '26.9', '1');
INSERT INTO `scatter_map` VALUES ('222', '强', '118.96', '26.86', '1');
INSERT INTO `scatter_map` VALUES ('223', '强', '118.96', '26.82', '1');
INSERT INTO `scatter_map` VALUES ('224', '强', '118.96', '26.79', '1');
INSERT INTO `scatter_map` VALUES ('225', '强', '118.96', '26.75', '1');
INSERT INTO `scatter_map` VALUES ('226', '强', '118.96', '26.67', '1');
INSERT INTO `scatter_map` VALUES ('227', '强', '118.96', '26.55', '1');
INSERT INTO `scatter_map` VALUES ('228', '强', '118.96', '26.47', '1');
INSERT INTO `scatter_map` VALUES ('229', '强', '118.96', '26.43', '1');
INSERT INTO `scatter_map` VALUES ('230', '强', '118.96', '26.39', '1');
INSERT INTO `scatter_map` VALUES ('231', '强', '118.96', '26.35', '1');
INSERT INTO `scatter_map` VALUES ('232', '强', '118.96', '26.31', '1');
INSERT INTO `scatter_map` VALUES ('233', '强', '118.96', '26.27', '1');
INSERT INTO `scatter_map` VALUES ('234', '强', '118.96', '26.23', '1');
INSERT INTO `scatter_map` VALUES ('235', '强', '118.96', '26.2', '1');
INSERT INTO `scatter_map` VALUES ('236', '强', '118.96', '26.16', '1');
INSERT INTO `scatter_map` VALUES ('237', '强', '118.96', '26.12', '1');
INSERT INTO `scatter_map` VALUES ('238', '强', '118.96', '25.72', '1');
INSERT INTO `scatter_map` VALUES ('239', '强', '118.96', '25.68', '1');
INSERT INTO `scatter_map` VALUES ('240', '强', '118.96', '25.52', '1');
INSERT INTO `scatter_map` VALUES ('241', '强', '118.96', '25.48', '1');
INSERT INTO `scatter_map` VALUES ('242', '强', '118.96', '25.44', '1');
INSERT INTO `scatter_map` VALUES ('243', '强', '118.96', '25.36', '1');
INSERT INTO `scatter_map` VALUES ('244', '强', '118.96', '25.21', '1');
INSERT INTO `scatter_map` VALUES ('245', '强', '123.4', '43.84', '1');
INSERT INTO `scatter_map` VALUES ('246', '强', '123.4', '43.71', '1');
INSERT INTO `scatter_map` VALUES ('247', '强', '123.4', '43.39', '1');
INSERT INTO `scatter_map` VALUES ('248', '强', '123.4', '43.26', '1');
INSERT INTO `scatter_map` VALUES ('249', '强', '123.4', '43.01', '1');
INSERT INTO `scatter_map` VALUES ('250', '强', '123.4', '42.94', '1');
INSERT INTO `scatter_map` VALUES ('251', '强', '123.4', '42.78', '1');
INSERT INTO `scatter_map` VALUES ('252', '强', '123.4', '42.75', '1');
INSERT INTO `scatter_map` VALUES ('253', '强', '123.4', '42.72', '1');
INSERT INTO `scatter_map` VALUES ('254', '强', '123.4', '42.68', '1');
INSERT INTO `scatter_map` VALUES ('255', '强', '123.4', '42.65', '1');
INSERT INTO `scatter_map` VALUES ('256', '强', '123.4', '42.59', '1');
INSERT INTO `scatter_map` VALUES ('257', '强', '123.4', '42.55', '1');
INSERT INTO `scatter_map` VALUES ('258', '强', '123.4', '42.46', '1');
INSERT INTO `scatter_map` VALUES ('259', '强', '123.4', '42.42', '1');
INSERT INTO `scatter_map` VALUES ('260', '强', '123.4', '42.39', '1');
INSERT INTO `scatter_map` VALUES ('261', '强', '123.4', '42.36', '1');
INSERT INTO `scatter_map` VALUES ('262', '强', '123.4', '42.33', '1');
INSERT INTO `scatter_map` VALUES ('263', '强', '123.4', '42.29', '1');
INSERT INTO `scatter_map` VALUES ('264', '强', '123.4', '42.26', '1');
INSERT INTO `scatter_map` VALUES ('265', '强', '123.4', '42.23', '1');
INSERT INTO `scatter_map` VALUES ('266', '强', '123.4', '42.2', '1');
INSERT INTO `scatter_map` VALUES ('267', '强', '123.4', '42.13', '1');
INSERT INTO `scatter_map` VALUES ('268', '强', '123.4', '42.07', '1');
INSERT INTO `scatter_map` VALUES ('269', '强', '123.4', '41.61', '1');
INSERT INTO `scatter_map` VALUES ('270', '强', '123.4', '41.54', '1');
INSERT INTO `scatter_map` VALUES ('271', '强', '123.4', '41.51', '1');
INSERT INTO `scatter_map` VALUES ('272', '强', '123.4', '41.48', '1');
INSERT INTO `scatter_map` VALUES ('273', '强', '123.4', '41.44', '1');
INSERT INTO `scatter_map` VALUES ('274', '强', '123.4', '41.41', '1');
INSERT INTO `scatter_map` VALUES ('275', '强', '123.4', '41.38', '1');
INSERT INTO `scatter_map` VALUES ('276', '强', '123.4', '41.34', '1');
INSERT INTO `scatter_map` VALUES ('277', '强', '123.4', '41.28', '1');
INSERT INTO `scatter_map` VALUES ('278', '强', '123.4', '41.25', '1');
INSERT INTO `scatter_map` VALUES ('279', '强', '123.4', '41.21', '1');
INSERT INTO `scatter_map` VALUES ('280', '强', '123.4', '41.18', '1');
INSERT INTO `scatter_map` VALUES ('281', '强', '123.4', '41.05', '1');
INSERT INTO `scatter_map` VALUES ('282', '强', '123.4', '41.01', '1');
INSERT INTO `scatter_map` VALUES ('283', '强', '123.4', '40.98', '1');
INSERT INTO `scatter_map` VALUES ('284', '强', '123.4', '40.95', '1');
INSERT INTO `scatter_map` VALUES ('285', '强', '123.4', '40.71', '1');
INSERT INTO `scatter_map` VALUES ('286', '强', '123.4', '40.65', '1');
INSERT INTO `scatter_map` VALUES ('287', '强', '123.4', '40.61', '1');
INSERT INTO `scatter_map` VALUES ('288', '强', '123.4', '40.58', '1');
INSERT INTO `scatter_map` VALUES ('289', '强', '123.4', '40.41', '1');
INSERT INTO `scatter_map` VALUES ('290', '强', '123.4', '40.25', '1');
INSERT INTO `scatter_map` VALUES ('291', '强', '123.4', '40.08', '1');
INSERT INTO `scatter_map` VALUES ('292', '强', '123.4', '40.04', '1');
INSERT INTO `scatter_map` VALUES ('293', '强', '123.4', '39.94', '1');
INSERT INTO `scatter_map` VALUES ('294', '强', '123.4', '39.88', '1');
INSERT INTO `scatter_map` VALUES ('295', '强', '123.4', '39.84', '1');
INSERT INTO `scatter_map` VALUES ('296', '强', '123.4', '39.81', '1');
INSERT INTO `scatter_map` VALUES ('297', '强', '123.44', '53.51', '1');
INSERT INTO `scatter_map` VALUES ('298', '强', '123.44', '50.57', '1');
INSERT INTO `scatter_map` VALUES ('299', '强', '123.44', '48.2', '1');
INSERT INTO `scatter_map` VALUES ('300', '强', '123.44', '48.17', '1');
INSERT INTO `scatter_map` VALUES ('301', '强', '123.44', '48.11', '1');
INSERT INTO `scatter_map` VALUES ('302', '强', '123.44', '48.08', '1');
INSERT INTO `scatter_map` VALUES ('303', '强', '123.44', '47.93', '1');
INSERT INTO `scatter_map` VALUES ('304', '强', '123.44', '47.84', '1');
INSERT INTO `scatter_map` VALUES ('305', '强', '123.44', '47.43', '1');
INSERT INTO `scatter_map` VALUES ('306', '强', '123.44', '47.13', '1');
INSERT INTO `scatter_map` VALUES ('307', '强', '123.44', '47.04', '1');
INSERT INTO `scatter_map` VALUES ('308', '强', '123.44', '46.77', '1');
INSERT INTO `scatter_map` VALUES ('309', '强', '123.44', '46.5', '1');
INSERT INTO `scatter_map` VALUES ('310', '强', '123.44', '46.47', '1');
INSERT INTO `scatter_map` VALUES ('311', '强', '123.44', '46.44', '1');
INSERT INTO `scatter_map` VALUES ('312', '强', '123.44', '45.95', '1');
INSERT INTO `scatter_map` VALUES ('313', '强', '123.44', '45.18', '1');
INSERT INTO `scatter_map` VALUES ('314', '强', '123.44', '44.5', '1');
INSERT INTO `scatter_map` VALUES ('315', '强', '123.44', '44.31', '1');
INSERT INTO `scatter_map` VALUES ('316', '强', '123.44', '44.18', '1');
INSERT INTO `scatter_map` VALUES ('317', '强', '123.44', '43.04', '1');
INSERT INTO `scatter_map` VALUES ('318', '强', '123.44', '43.01', '1');
INSERT INTO `scatter_map` VALUES ('319', '强', '123.44', '42.97', '1');
INSERT INTO `scatter_map` VALUES ('320', '强', '123.44', '42.91', '1');
INSERT INTO `scatter_map` VALUES ('321', '强', '123.44', '42.84', '1');
INSERT INTO `scatter_map` VALUES ('322', '强', '123.44', '42.81', '1');
INSERT INTO `scatter_map` VALUES ('323', '强', '123.44', '42.78', '1');
INSERT INTO `scatter_map` VALUES ('324', '强', '123.44', '42.65', '1');
INSERT INTO `scatter_map` VALUES ('325', '强', '123.44', '42.62', '1');
INSERT INTO `scatter_map` VALUES ('326', '强', '123.44', '42.59', '1');
INSERT INTO `scatter_map` VALUES ('327', '强', '123.44', '42.55', '1');
INSERT INTO `scatter_map` VALUES ('328', '强', '123.44', '42.49', '1');
INSERT INTO `scatter_map` VALUES ('329', '强', '123.44', '42.46', '1');
INSERT INTO `scatter_map` VALUES ('330', '强', '123.44', '42.42', '1');
INSERT INTO `scatter_map` VALUES ('331', '强', '123.44', '42.33', '1');
INSERT INTO `scatter_map` VALUES ('332', '强', '123.44', '42.29', '1');
INSERT INTO `scatter_map` VALUES ('333', '强', '123.44', '42.23', '1');
INSERT INTO `scatter_map` VALUES ('334', '强', '123.44', '42.2', '1');
INSERT INTO `scatter_map` VALUES ('335', '强', '123.44', '42.16', '1');
INSERT INTO `scatter_map` VALUES ('336', '强', '123.44', '42.1', '1');
INSERT INTO `scatter_map` VALUES ('337', '强', '123.44', '42.07', '1');
INSERT INTO `scatter_map` VALUES ('338', '强', '123.44', '42.03', '1');
INSERT INTO `scatter_map` VALUES ('339', '强', '123.44', '42', '1');
INSERT INTO `scatter_map` VALUES ('340', '强', '123.44', '41.64', '1');
INSERT INTO `scatter_map` VALUES ('341', '强', '123.44', '41.61', '1');
INSERT INTO `scatter_map` VALUES ('342', '强', '123.44', '41.57', '1');
INSERT INTO `scatter_map` VALUES ('343', '强', '123.44', '41.54', '1');
INSERT INTO `scatter_map` VALUES ('344', '强', '123.44', '41.51', '1');
INSERT INTO `scatter_map` VALUES ('345', '强', '123.44', '41.48', '1');
INSERT INTO `scatter_map` VALUES ('346', '强', '123.44', '41.41', '1');
INSERT INTO `scatter_map` VALUES ('347', '强', '123.44', '41.34', '1');
INSERT INTO `scatter_map` VALUES ('348', '强', '123.44', '41.28', '1');
INSERT INTO `scatter_map` VALUES ('349', '强', '123.44', '41.21', '1');
INSERT INTO `scatter_map` VALUES ('350', '强', '123.44', '41.11', '1');
INSERT INTO `scatter_map` VALUES ('351', '强', '123.44', '40.98', '1');
INSERT INTO `scatter_map` VALUES ('352', '强', '123.44', '40.91', '1');
INSERT INTO `scatter_map` VALUES ('353', '强', '123.44', '40.78', '1');
INSERT INTO `scatter_map` VALUES ('354', '强', '123.44', '40.61', '1');
INSERT INTO `scatter_map` VALUES ('355', '强', '123.44', '40.58', '1');
INSERT INTO `scatter_map` VALUES ('356', '强', '123.44', '40.55', '1');
INSERT INTO `scatter_map` VALUES ('357', '强', '123.44', '40.51', '1');
INSERT INTO `scatter_map` VALUES ('358', '强', '123.44', '40.38', '1');
INSERT INTO `scatter_map` VALUES ('359', '强', '123.44', '40.35', '1');
INSERT INTO `scatter_map` VALUES ('360', '强', '123.44', '40.31', '1');
INSERT INTO `scatter_map` VALUES ('361', '强', '123.44', '40.25', '1');
INSERT INTO `scatter_map` VALUES ('362', '强', '123.44', '40.18', '1');
INSERT INTO `scatter_map` VALUES ('363', '强', '123.44', '40.15', '1');
INSERT INTO `scatter_map` VALUES ('364', '强', '123.44', '40.08', '1');
INSERT INTO `scatter_map` VALUES ('365', '强', '123.44', '40.04', '1');
INSERT INTO `scatter_map` VALUES ('366', '强', '123.44', '39.98', '1');
INSERT INTO `scatter_map` VALUES ('367', '强', '123.44', '39.94', '1');
INSERT INTO `scatter_map` VALUES ('368', '强', '123.44', '39.91', '1');
INSERT INTO `scatter_map` VALUES ('369', '强', '123.44', '39.81', '1');
INSERT INTO `scatter_map` VALUES ('370', '强', '123.44', '39.78', '1');
INSERT INTO `scatter_map` VALUES ('371', '强', '123.49', '48.11', '1');
INSERT INTO `scatter_map` VALUES ('372', '强', '123.49', '47.99', '1');
INSERT INTO `scatter_map` VALUES ('373', '强', '123.49', '47.16', '1');
INSERT INTO `scatter_map` VALUES ('374', '强', '123.49', '47.13', '1');
INSERT INTO `scatter_map` VALUES ('375', '强', '123.49', '47.07', '1');
INSERT INTO `scatter_map` VALUES ('376', '强', '123.49', '46.5', '1');
INSERT INTO `scatter_map` VALUES ('377', '强', '123.49', '44.18', '1');
INSERT INTO `scatter_map` VALUES ('378', '强', '123.49', '43.9', '1');
INSERT INTO `scatter_map` VALUES ('379', '强', '123.49', '43.39', '1');
INSERT INTO `scatter_map` VALUES ('380', '强', '123.49', '43.13', '1');
INSERT INTO `scatter_map` VALUES ('381', '强', '123.49', '43.1', '1');
INSERT INTO `scatter_map` VALUES ('382', '强', '123.49', '43.07', '1');
INSERT INTO `scatter_map` VALUES ('383', '强', '123.49', '43.04', '1');
INSERT INTO `scatter_map` VALUES ('384', '强', '123.49', '43.01', '1');
INSERT INTO `scatter_map` VALUES ('385', '强', '123.49', '42.97', '1');
INSERT INTO `scatter_map` VALUES ('386', '强', '123.49', '42.94', '1');
INSERT INTO `scatter_map` VALUES ('387', '强', '123.49', '42.88', '1');
INSERT INTO `scatter_map` VALUES ('388', '强', '123.49', '42.84', '1');
INSERT INTO `scatter_map` VALUES ('389', '强', '123.49', '42.81', '1');
INSERT INTO `scatter_map` VALUES ('390', '强', '123.49', '42.78', '1');
INSERT INTO `scatter_map` VALUES ('391', '强', '123.49', '42.75', '1');
INSERT INTO `scatter_map` VALUES ('392', '强', '123.49', '42.72', '1');
INSERT INTO `scatter_map` VALUES ('393', '强', '123.49', '42.68', '1');
INSERT INTO `scatter_map` VALUES ('394', '强', '123.49', '42.62', '1');
INSERT INTO `scatter_map` VALUES ('395', '强', '123.49', '42.59', '1');
INSERT INTO `scatter_map` VALUES ('396', '强', '123.49', '42.55', '1');
INSERT INTO `scatter_map` VALUES ('397', '强', '123.49', '42.49', '1');
INSERT INTO `scatter_map` VALUES ('398', '强', '123.49', '42.42', '1');
INSERT INTO `scatter_map` VALUES ('399', '强', '123.49', '42.36', '1');
INSERT INTO `scatter_map` VALUES ('400', '强', '123.49', '42.33', '1');
INSERT INTO `scatter_map` VALUES ('401', '强', '123.49', '42.29', '1');
INSERT INTO `scatter_map` VALUES ('402', '强', '123.49', '42.26', '1');
INSERT INTO `scatter_map` VALUES ('403', '强', '123.49', '42.23', '1');
INSERT INTO `scatter_map` VALUES ('404', '强', '123.49', '42.2', '1');
INSERT INTO `scatter_map` VALUES ('405', '强', '123.49', '42.13', '1');
INSERT INTO `scatter_map` VALUES ('406', '强', '123.49', '42.1', '1');
INSERT INTO `scatter_map` VALUES ('407', '强', '123.49', '42.07', '1');
INSERT INTO `scatter_map` VALUES ('408', '强', '123.49', '42.03', '1');
INSERT INTO `scatter_map` VALUES ('409', '强', '123.49', '42', '1');
INSERT INTO `scatter_map` VALUES ('410', '强', '123.49', '41.61', '1');
INSERT INTO `scatter_map` VALUES ('411', '强', '123.49', '41.57', '1');
INSERT INTO `scatter_map` VALUES ('412', '强', '123.49', '41.54', '1');
INSERT INTO `scatter_map` VALUES ('413', '强', '123.49', '41.51', '1');
INSERT INTO `scatter_map` VALUES ('414', '强', '123.49', '41.48', '1');
INSERT INTO `scatter_map` VALUES ('415', '强', '123.49', '41.41', '1');
INSERT INTO `scatter_map` VALUES ('416', '强', '123.49', '41.38', '1');
INSERT INTO `scatter_map` VALUES ('417', '强', '123.49', '41.34', '1');
INSERT INTO `scatter_map` VALUES ('418', '强', '123.49', '41.31', '1');
INSERT INTO `scatter_map` VALUES ('419', '强', '123.49', '41.28', '1');
INSERT INTO `scatter_map` VALUES ('420', '强', '123.49', '41.25', '1');
INSERT INTO `scatter_map` VALUES ('421', '强', '123.49', '41.21', '1');
INSERT INTO `scatter_map` VALUES ('422', '强', '123.49', '41.15', '1');
INSERT INTO `scatter_map` VALUES ('423', '强', '123.49', '41.11', '1');
INSERT INTO `scatter_map` VALUES ('424', '强', '123.49', '40.68', '1');
INSERT INTO `scatter_map` VALUES ('425', '强', '123.49', '40.55', '1');
INSERT INTO `scatter_map` VALUES ('426', '强', '123.49', '40.48', '1');
INSERT INTO `scatter_map` VALUES ('427', '强', '123.49', '40.45', '1');
INSERT INTO `scatter_map` VALUES ('428', '强', '123.49', '40.41', '1');
INSERT INTO `scatter_map` VALUES ('429', '强', '123.49', '40.11', '1');
INSERT INTO `scatter_map` VALUES ('430', '强', '123.49', '40.04', '1');
INSERT INTO `scatter_map` VALUES ('431', '强', '123.49', '40.01', '1');
INSERT INTO `scatter_map` VALUES ('432', '强', '123.49', '39.98', '1');
INSERT INTO `scatter_map` VALUES ('433', '强', '123.49', '39.94', '1');
INSERT INTO `scatter_map` VALUES ('434', '强', '123.49', '39.91', '1');
INSERT INTO `scatter_map` VALUES ('435', '强', '123.49', '39.88', '1');
INSERT INTO `scatter_map` VALUES ('436', '强', '123.49', '39.81', '1');
INSERT INTO `scatter_map` VALUES ('437', '强', '123.53', '47.96', '1');
INSERT INTO `scatter_map` VALUES ('438', '强', '123.53', '47.87', '1');
INSERT INTO `scatter_map` VALUES ('439', '强', '123.53', '47.78', '1');
INSERT INTO `scatter_map` VALUES ('440', '强', '123.53', '47.43', '1');
INSERT INTO `scatter_map` VALUES ('441', '强', '123.53', '47.22', '1');
INSERT INTO `scatter_map` VALUES ('442', '强', '123.53', '47.07', '1');
INSERT INTO `scatter_map` VALUES ('443', '强', '123.53', '46.77', '1');
INSERT INTO `scatter_map` VALUES ('444', '强', '123.53', '46.56', '1');
INSERT INTO `scatter_map` VALUES ('445', '强', '123.53', '45.86', '1');
INSERT INTO `scatter_map` VALUES ('446', '强', '123.53', '45.65', '1');
INSERT INTO `scatter_map` VALUES ('447', '强', '123.53', '44.84', '1');
INSERT INTO `scatter_map` VALUES ('448', '强', '123.53', '44.81', '1');
INSERT INTO `scatter_map` VALUES ('449', '强', '123.53', '44.59', '1');
INSERT INTO `scatter_map` VALUES ('450', '强', '123.53', '44.56', '1');
INSERT INTO `scatter_map` VALUES ('451', '强', '123.53', '44.34', '1');
INSERT INTO `scatter_map` VALUES ('452', '强', '123.53', '44.28', '1');
INSERT INTO `scatter_map` VALUES ('453', '强', '123.53', '44.15', '1');
INSERT INTO `scatter_map` VALUES ('454', '强', '123.53', '43.87', '1');
INSERT INTO `scatter_map` VALUES ('455', '强', '123.53', '43.64', '1');
INSERT INTO `scatter_map` VALUES ('456', '强', '123.53', '43.55', '1');
INSERT INTO `scatter_map` VALUES ('457', '强', '123.53', '43.45', '1');
INSERT INTO `scatter_map` VALUES ('458', '强', '123.53', '43.39', '1');
INSERT INTO `scatter_map` VALUES ('459', '强', '123.53', '43.07', '1');
INSERT INTO `scatter_map` VALUES ('460', '强', '123.53', '42.97', '1');
INSERT INTO `scatter_map` VALUES ('461', '强', '123.53', '42.94', '1');
INSERT INTO `scatter_map` VALUES ('462', '强', '123.53', '42.91', '1');
INSERT INTO `scatter_map` VALUES ('463', '强', '123.53', '42.88', '1');
INSERT INTO `scatter_map` VALUES ('464', '强', '123.53', '42.81', '1');
INSERT INTO `scatter_map` VALUES ('465', '强', '123.53', '42.78', '1');
INSERT INTO `scatter_map` VALUES ('466', '强', '123.53', '42.75', '1');
INSERT INTO `scatter_map` VALUES ('467', '强', '123.53', '42.68', '1');
INSERT INTO `scatter_map` VALUES ('468', '强', '123.53', '42.65', '1');
INSERT INTO `scatter_map` VALUES ('469', '强', '123.53', '42.62', '1');
INSERT INTO `scatter_map` VALUES ('470', '强', '123.53', '42.59', '1');
INSERT INTO `scatter_map` VALUES ('471', '强', '123.53', '42.52', '1');
INSERT INTO `scatter_map` VALUES ('472', '强', '123.53', '42.39', '1');
INSERT INTO `scatter_map` VALUES ('473', '强', '123.53', '42.36', '1');
INSERT INTO `scatter_map` VALUES ('474', '强', '123.53', '42.29', '1');
INSERT INTO `scatter_map` VALUES ('475', '强', '123.53', '42.26', '1');
INSERT INTO `scatter_map` VALUES ('476', '中', '121.2', '30.94', '1');
INSERT INTO `scatter_map` VALUES ('477', '中', '121.2', '30.9', '1');
INSERT INTO `scatter_map` VALUES ('478', '中', '121.2', '30.87', '1');
INSERT INTO `scatter_map` VALUES ('479', '中', '121.2', '30.75', '1');
INSERT INTO `scatter_map` VALUES ('480', '中', '121.2', '30.71', '1');
INSERT INTO `scatter_map` VALUES ('481', '中', '121.2', '30.3', '1');
INSERT INTO `scatter_map` VALUES ('482', '中', '121.2', '30.26', '1');
INSERT INTO `scatter_map` VALUES ('483', '中', '121.2', '30.11', '1');
INSERT INTO `scatter_map` VALUES ('484', '中', '121.2', '30.03', '1');
INSERT INTO `scatter_map` VALUES ('485', '中', '121.2', '29.84', '1');
INSERT INTO `scatter_map` VALUES ('486', '中', '121.2', '29.8', '1');
INSERT INTO `scatter_map` VALUES ('487', '中', '121.2', '29.73', '1');
INSERT INTO `scatter_map` VALUES ('488', '中', '121.2', '29.5', '1');
INSERT INTO `scatter_map` VALUES ('489', '中', '121.2', '29.04', '1');
INSERT INTO `scatter_map` VALUES ('490', '中', '121.2', '28.81', '1');
INSERT INTO `scatter_map` VALUES ('491', '中', '121.2', '28.69', '1');
INSERT INTO `scatter_map` VALUES ('492', '中', '121.2', '28.65', '1');
INSERT INTO `scatter_map` VALUES ('493', '中', '121.2', '28.61', '1');
INSERT INTO `scatter_map` VALUES ('494', '中', '121.2', '28.58', '1');
INSERT INTO `scatter_map` VALUES ('495', '中', '121.2', '28.38', '1');
INSERT INTO `scatter_map` VALUES ('496', '中', '121.2', '28.3', '1');
INSERT INTO `scatter_map` VALUES ('497', '中', '121.2', '28.11', '1');
INSERT INTO `scatter_map` VALUES ('498', '中', '121.2', '25.09', '1');
INSERT INTO `scatter_map` VALUES ('499', '中', '121.2', '25.05', '1');
INSERT INTO `scatter_map` VALUES ('500', '中', '121.2', '25.01', '1');
INSERT INTO `scatter_map` VALUES ('501', '中', '121.2', '24.97', '1');
INSERT INTO `scatter_map` VALUES ('502', '中', '121.2', '24.93', '1');
INSERT INTO `scatter_map` VALUES ('503', '中', '121.2', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('504', '中', '121.2', '24.85', '1');
INSERT INTO `scatter_map` VALUES ('505', '中', '121.2', '24.81', '1');
INSERT INTO `scatter_map` VALUES ('506', '中', '121.2', '24.69', '1');
INSERT INTO `scatter_map` VALUES ('507', '中', '121.2', '24.01', '1');
INSERT INTO `scatter_map` VALUES ('508', '中', '121.2', '23.93', '1');
INSERT INTO `scatter_map` VALUES ('509', '中', '121.2', '23.6', '1');
INSERT INTO `scatter_map` VALUES ('510', '中', '121.2', '23.12', '1');
INSERT INTO `scatter_map` VALUES ('511', '中', '121.2', '23.08', '1');
INSERT INTO `scatter_map` VALUES ('512', '中', '121.2', '22.88', '1');
INSERT INTO `scatter_map` VALUES ('513', '中', '121.2', '22.8', '1');
INSERT INTO `scatter_map` VALUES ('514', '中', '121.24', '41.28', '1');
INSERT INTO `scatter_map` VALUES ('515', '中', '121.24', '39.4', '1');
INSERT INTO `scatter_map` VALUES ('516', '中', '121.24', '37.48', '1');
INSERT INTO `scatter_map` VALUES ('517', '中', '121.24', '37.44', '1');
INSERT INTO `scatter_map` VALUES ('518', '中', '121.24', '36.84', '1');
INSERT INTO `scatter_map` VALUES ('519', '中', '121.24', '32.03', '1');
INSERT INTO `scatter_map` VALUES ('520', '中', '121.24', '31.95', '1');
INSERT INTO `scatter_map` VALUES ('521', '中', '121.24', '31.92', '1');
INSERT INTO `scatter_map` VALUES ('522', '中', '121.24', '31.88', '1');
INSERT INTO `scatter_map` VALUES ('523', '中', '121.24', '31.77', '1');
INSERT INTO `scatter_map` VALUES ('524', '中', '121.24', '31.62', '1');
INSERT INTO `scatter_map` VALUES ('525', '中', '121.24', '31.58', '1');
INSERT INTO `scatter_map` VALUES ('526', '中', '121.24', '31.54', '1');
INSERT INTO `scatter_map` VALUES ('527', '中', '121.24', '31.43', '1');
INSERT INTO `scatter_map` VALUES ('528', '中', '121.24', '30.94', '1');
INSERT INTO `scatter_map` VALUES ('529', '中', '121.24', '30.9', '1');
INSERT INTO `scatter_map` VALUES ('530', '中', '121.24', '30.87', '1');
INSERT INTO `scatter_map` VALUES ('531', '中', '121.24', '30.79', '1');
INSERT INTO `scatter_map` VALUES ('532', '中', '121.24', '30.75', '1');
INSERT INTO `scatter_map` VALUES ('533', '中', '121.24', '30.71', '1');
INSERT INTO `scatter_map` VALUES ('534', '中', '121.24', '30.68', '1');
INSERT INTO `scatter_map` VALUES ('535', '中', '121.24', '30.26', '1');
INSERT INTO `scatter_map` VALUES ('536', '中', '121.24', '30.11', '1');
INSERT INTO `scatter_map` VALUES ('537', '中', '121.24', '30.03', '1');
INSERT INTO `scatter_map` VALUES ('538', '中', '121.24', '29.99', '1');
INSERT INTO `scatter_map` VALUES ('539', '中', '121.24', '29.69', '1');
INSERT INTO `scatter_map` VALUES ('540', '中', '121.24', '29.65', '1');
INSERT INTO `scatter_map` VALUES ('541', '中', '121.24', '29.04', '1');
INSERT INTO `scatter_map` VALUES ('542', '中', '121.24', '29', '1');
INSERT INTO `scatter_map` VALUES ('543', '中', '121.24', '28.92', '1');
INSERT INTO `scatter_map` VALUES ('544', '中', '121.24', '28.77', '1');
INSERT INTO `scatter_map` VALUES ('545', '中', '121.24', '28.73', '1');
INSERT INTO `scatter_map` VALUES ('546', '中', '121.24', '28.69', '1');
INSERT INTO `scatter_map` VALUES ('547', '中', '121.24', '28.58', '1');
INSERT INTO `scatter_map` VALUES ('548', '中', '121.24', '28.54', '1');
INSERT INTO `scatter_map` VALUES ('549', '中', '121.24', '28.5', '1');
INSERT INTO `scatter_map` VALUES ('550', '中', '121.24', '28.42', '1');
INSERT INTO `scatter_map` VALUES ('551', '中', '121.24', '28.34', '1');
INSERT INTO `scatter_map` VALUES ('552', '中', '121.24', '28.3', '1');
INSERT INTO `scatter_map` VALUES ('553', '中', '121.24', '28.19', '1');
INSERT INTO `scatter_map` VALUES ('554', '中', '121.24', '25.13', '1');
INSERT INTO `scatter_map` VALUES ('555', '中', '121.24', '25.05', '1');
INSERT INTO `scatter_map` VALUES ('556', '中', '121.24', '25.01', '1');
INSERT INTO `scatter_map` VALUES ('557', '中', '121.24', '24.93', '1');
INSERT INTO `scatter_map` VALUES ('558', '中', '121.24', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('559', '中', '121.24', '24.81', '1');
INSERT INTO `scatter_map` VALUES ('560', '中', '121.29', '43.61', '1');
INSERT INTO `scatter_map` VALUES ('561', '中', '121.29', '41.15', '1');
INSERT INTO `scatter_map` VALUES ('562', '中', '121.29', '41.08', '1');
INSERT INTO `scatter_map` VALUES ('563', '中', '121.29', '39.57', '1');
INSERT INTO `scatter_map` VALUES ('564', '中', '121.29', '39.5', '1');
INSERT INTO `scatter_map` VALUES ('565', '中', '121.29', '38.93', '1');
INSERT INTO `scatter_map` VALUES ('566', '中', '121.29', '38.89', '1');
INSERT INTO `scatter_map` VALUES ('567', '中', '121.29', '38.79', '1');
INSERT INTO `scatter_map` VALUES ('568', '中', '121.29', '37.48', '1');
INSERT INTO `scatter_map` VALUES ('569', '中', '121.29', '37.44', '1');
INSERT INTO `scatter_map` VALUES ('570', '中', '121.29', '37.34', '1');
INSERT INTO `scatter_map` VALUES ('571', '中', '121.29', '37.23', '1');
INSERT INTO `scatter_map` VALUES ('572', '中', '121.29', '32.4', '1');
INSERT INTO `scatter_map` VALUES ('573', '中', '121.29', '32.29', '1');
INSERT INTO `scatter_map` VALUES ('574', '中', '121.29', '32.14', '1');
INSERT INTO `scatter_map` VALUES ('575', '中', '121.29', '32.06', '1');
INSERT INTO `scatter_map` VALUES ('576', '中', '121.29', '32.03', '1');
INSERT INTO `scatter_map` VALUES ('577', '中', '121.29', '31.92', '1');
INSERT INTO `scatter_map` VALUES ('578', '中', '121.29', '31.8', '1');
INSERT INTO `scatter_map` VALUES ('579', '中', '121.29', '31.77', '1');
INSERT INTO `scatter_map` VALUES ('580', '中', '121.29', '31.73', '1');
INSERT INTO `scatter_map` VALUES ('581', '中', '121.29', '31.58', '1');
INSERT INTO `scatter_map` VALUES ('582', '中', '121.29', '30.98', '1');
INSERT INTO `scatter_map` VALUES ('583', '中', '121.29', '30.94', '1');
INSERT INTO `scatter_map` VALUES ('584', '中', '121.29', '30.9', '1');
INSERT INTO `scatter_map` VALUES ('585', '中', '121.29', '30.75', '1');
INSERT INTO `scatter_map` VALUES ('586', '中', '121.29', '30.3', '1');
INSERT INTO `scatter_map` VALUES ('587', '中', '121.29', '30.26', '1');
INSERT INTO `scatter_map` VALUES ('588', '中', '121.29', '30.22', '1');
INSERT INTO `scatter_map` VALUES ('589', '中', '121.29', '30.15', '1');
INSERT INTO `scatter_map` VALUES ('590', '中', '121.29', '30.11', '1');
INSERT INTO `scatter_map` VALUES ('591', '中', '121.29', '30.07', '1');
INSERT INTO `scatter_map` VALUES ('592', '中', '121.29', '30.03', '1');
INSERT INTO `scatter_map` VALUES ('593', '中', '121.29', '29.99', '1');
INSERT INTO `scatter_map` VALUES ('594', '中', '121.29', '29.92', '1');
INSERT INTO `scatter_map` VALUES ('595', '中', '121.29', '29.84', '1');
INSERT INTO `scatter_map` VALUES ('596', '中', '121.29', '29.54', '1');
INSERT INTO `scatter_map` VALUES ('597', '中', '121.29', '29.27', '1');
INSERT INTO `scatter_map` VALUES ('598', '中', '121.29', '29.08', '1');
INSERT INTO `scatter_map` VALUES ('599', '中', '121.29', '28.92', '1');
INSERT INTO `scatter_map` VALUES ('600', '中', '121.29', '28.85', '1');
INSERT INTO `scatter_map` VALUES ('601', '中', '121.29', '28.61', '1');
INSERT INTO `scatter_map` VALUES ('602', '中', '121.29', '28.58', '1');
INSERT INTO `scatter_map` VALUES ('603', '中', '121.29', '28.5', '1');
INSERT INTO `scatter_map` VALUES ('604', '中', '121.29', '28.46', '1');
INSERT INTO `scatter_map` VALUES ('605', '中', '121.29', '28.42', '1');
INSERT INTO `scatter_map` VALUES ('606', '中', '121.29', '28.38', '1');
INSERT INTO `scatter_map` VALUES ('607', '中', '121.29', '28.34', '1');
INSERT INTO `scatter_map` VALUES ('608', '中', '121.29', '28.3', '1');
INSERT INTO `scatter_map` VALUES ('609', '中', '121.29', '28.27', '1');
INSERT INTO `scatter_map` VALUES ('610', '中', '121.29', '28.19', '1');
INSERT INTO `scatter_map` VALUES ('611', '中', '121.29', '28.11', '1');
INSERT INTO `scatter_map` VALUES ('612', '中', '121.29', '25.05', '1');
INSERT INTO `scatter_map` VALUES ('613', '中', '121.29', '24.97', '1');
INSERT INTO `scatter_map` VALUES ('614', '中', '121.29', '24.93', '1');
INSERT INTO `scatter_map` VALUES ('615', '中', '121.29', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('616', '中', '121.29', '24.85', '1');
INSERT INTO `scatter_map` VALUES ('617', '中', '121.29', '24.13', '1');
INSERT INTO `scatter_map` VALUES ('618', '中', '121.29', '22.96', '1');
INSERT INTO `scatter_map` VALUES ('619', '中', '121.33', '47.55', '1');
INSERT INTO `scatter_map` VALUES ('620', '中', '121.33', '43.61', '1');
INSERT INTO `scatter_map` VALUES ('621', '中', '121.33', '41.18', '1');
INSERT INTO `scatter_map` VALUES ('622', '中', '121.33', '41.15', '1');
INSERT INTO `scatter_map` VALUES ('623', '中', '121.33', '38.93', '1');
INSERT INTO `scatter_map` VALUES ('624', '中', '121.33', '37.48', '1');
INSERT INTO `scatter_map` VALUES ('625', '中', '121.33', '36.74', '1');
INSERT INTO `scatter_map` VALUES ('626', '中', '121.33', '31.99', '1');
INSERT INTO `scatter_map` VALUES ('627', '中', '121.33', '31.92', '1');
INSERT INTO `scatter_map` VALUES ('628', '中', '121.33', '31.84', '1');
INSERT INTO `scatter_map` VALUES ('629', '中', '121.33', '31.8', '1');
INSERT INTO `scatter_map` VALUES ('630', '中', '121.33', '31.73', '1');
INSERT INTO `scatter_map` VALUES ('631', '中', '121.33', '31.69', '1');
INSERT INTO `scatter_map` VALUES ('632', '中', '121.33', '31.5', '1');
INSERT INTO `scatter_map` VALUES ('633', '中', '121.33', '31.02', '1');
INSERT INTO `scatter_map` VALUES ('634', '中', '121.33', '30.83', '1');
INSERT INTO `scatter_map` VALUES ('635', '中', '121.33', '30.34', '1');
INSERT INTO `scatter_map` VALUES ('636', '中', '121.33', '30.26', '1');
INSERT INTO `scatter_map` VALUES ('637', '中', '121.33', '30.15', '1');
INSERT INTO `scatter_map` VALUES ('638', '中', '121.33', '30.11', '1');
INSERT INTO `scatter_map` VALUES ('639', '中', '121.33', '30.03', '1');
INSERT INTO `scatter_map` VALUES ('640', '中', '121.33', '29.99', '1');
INSERT INTO `scatter_map` VALUES ('641', '中', '121.33', '29.96', '1');
INSERT INTO `scatter_map` VALUES ('642', '中', '121.33', '29.84', '1');
INSERT INTO `scatter_map` VALUES ('643', '中', '121.33', '29.76', '1');
INSERT INTO `scatter_map` VALUES ('644', '中', '121.33', '29.69', '1');
INSERT INTO `scatter_map` VALUES ('645', '中', '121.33', '29.42', '1');
INSERT INTO `scatter_map` VALUES ('646', '中', '121.33', '29.27', '1');
INSERT INTO `scatter_map` VALUES ('647', '中', '121.33', '29.19', '1');
INSERT INTO `scatter_map` VALUES ('648', '中', '121.33', '29.08', '1');
INSERT INTO `scatter_map` VALUES ('649', '中', '121.33', '29.04', '1');
INSERT INTO `scatter_map` VALUES ('650', '中', '121.33', '28.77', '1');
INSERT INTO `scatter_map` VALUES ('651', '中', '121.33', '28.73', '1');
INSERT INTO `scatter_map` VALUES ('652', '中', '121.33', '28.69', '1');
INSERT INTO `scatter_map` VALUES ('653', '中', '121.33', '28.65', '1');
INSERT INTO `scatter_map` VALUES ('654', '中', '121.33', '28.61', '1');
INSERT INTO `scatter_map` VALUES ('655', '中', '121.33', '28.54', '1');
INSERT INTO `scatter_map` VALUES ('656', '中', '121.33', '28.46', '1');
INSERT INTO `scatter_map` VALUES ('657', '中', '121.33', '28.42', '1');
INSERT INTO `scatter_map` VALUES ('658', '中', '121.33', '28.38', '1');
INSERT INTO `scatter_map` VALUES ('659', '中', '121.33', '28.23', '1');
INSERT INTO `scatter_map` VALUES ('660', '中', '121.33', '28.19', '1');
INSERT INTO `scatter_map` VALUES ('661', '中', '102.92', '26.9', '1');
INSERT INTO `scatter_map` VALUES ('662', '中', '102.92', '25.76', '1');
INSERT INTO `scatter_map` VALUES ('663', '中', '102.92', '25.21', '1');
INSERT INTO `scatter_map` VALUES ('664', '中', '102.92', '25.05', '1');
INSERT INTO `scatter_map` VALUES ('665', '中', '102.92', '24.97', '1');
INSERT INTO `scatter_map` VALUES ('666', '中', '102.92', '24.69', '1');
INSERT INTO `scatter_map` VALUES ('667', '中', '102.92', '24.65', '1');
INSERT INTO `scatter_map` VALUES ('668', '中', '102.92', '24.61', '1');
INSERT INTO `scatter_map` VALUES ('669', '中', '102.92', '24.21', '1');
INSERT INTO `scatter_map` VALUES ('670', '中', '102.92', '24.17', '1');
INSERT INTO `scatter_map` VALUES ('671', '中', '102.96', '36.32', '1');
INSERT INTO `scatter_map` VALUES ('672', '中', '102.96', '31.32', '1');
INSERT INTO `scatter_map` VALUES ('673', '中', '102.96', '30.22', '1');
INSERT INTO `scatter_map` VALUES ('674', '中', '102.96', '25.17', '1');
INSERT INTO `scatter_map` VALUES ('675', '中', '102.96', '25.13', '1');
INSERT INTO `scatter_map` VALUES ('676', '中', '102.96', '24.93', '1');
INSERT INTO `scatter_map` VALUES ('677', '中', '102.96', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('678', '中', '102.96', '24.85', '1');
INSERT INTO `scatter_map` VALUES ('679', '中', '102.96', '24.13', '1');
INSERT INTO `scatter_map` VALUES ('680', '中', '103.01', '35.82', '1');
INSERT INTO `scatter_map` VALUES ('681', '中', '103.01', '35.5', '1');
INSERT INTO `scatter_map` VALUES ('682', '中', '103.01', '32.06', '1');
INSERT INTO `scatter_map` VALUES ('683', '中', '103.01', '30.34', '1');
INSERT INTO `scatter_map` VALUES ('684', '中', '103.01', '30.26', '1');
INSERT INTO `scatter_map` VALUES ('685', '中', '103.01', '30.03', '1');
INSERT INTO `scatter_map` VALUES ('686', '中', '103.01', '29.96', '1');
INSERT INTO `scatter_map` VALUES ('687', '中', '103.01', '29.76', '1');
INSERT INTO `scatter_map` VALUES ('688', '中', '103.01', '25.17', '1');
INSERT INTO `scatter_map` VALUES ('689', '中', '103.01', '24.93', '1');
INSERT INTO `scatter_map` VALUES ('690', '中', '103.01', '24.85', '1');
INSERT INTO `scatter_map` VALUES ('691', '中', '103.05', '31.39', '1');
INSERT INTO `scatter_map` VALUES ('692', '中', '103.05', '29.92', '1');
INSERT INTO `scatter_map` VALUES ('693', '中', '103.05', '29.88', '1');
INSERT INTO `scatter_map` VALUES ('694', '中', '103.05', '29.65', '1');
INSERT INTO `scatter_map` VALUES ('695', '中', '103.05', '25.92', '1');
INSERT INTO `scatter_map` VALUES ('696', '中', '103.05', '25.32', '1');
INSERT INTO `scatter_map` VALUES ('697', '中', '103.05', '25.21', '1');
INSERT INTO `scatter_map` VALUES ('698', '中', '103.05', '24.97', '1');
INSERT INTO `scatter_map` VALUES ('699', '中', '103.05', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('700', '中', '103.05', '23.65', '1');
INSERT INTO `scatter_map` VALUES ('701', '中', '103.1', '38.62', '1');
INSERT INTO `scatter_map` VALUES ('702', '中', '103.1', '36.21', '1');
INSERT INTO `scatter_map` VALUES ('703', '中', '103.1', '33.58', '1');
INSERT INTO `scatter_map` VALUES ('704', '中', '103.1', '30.49', '1');
INSERT INTO `scatter_map` VALUES ('705', '中', '103.1', '30.26', '1');
INSERT INTO `scatter_map` VALUES ('706', '中', '103.1', '30.11', '1');
INSERT INTO `scatter_map` VALUES ('707', '中', '103.1', '29.96', '1');
INSERT INTO `scatter_map` VALUES ('708', '中', '103.1', '29.27', '1');
INSERT INTO `scatter_map` VALUES ('709', '中', '103.1', '29.23', '1');
INSERT INTO `scatter_map` VALUES ('710', '中', '103.1', '29', '1');
INSERT INTO `scatter_map` VALUES ('711', '中', '103.1', '25.92', '1');
INSERT INTO `scatter_map` VALUES ('712', '中', '103.1', '25.32', '1');
INSERT INTO `scatter_map` VALUES ('713', '中', '103.1', '24.21', '1');
INSERT INTO `scatter_map` VALUES ('714', '中', '103.14', '36.99', '1');
INSERT INTO `scatter_map` VALUES ('715', '中', '103.14', '36.95', '1');
INSERT INTO `scatter_map` VALUES ('716', '中', '103.14', '31.65', '1');
INSERT INTO `scatter_map` VALUES ('717', '中', '103.14', '31.43', '1');
INSERT INTO `scatter_map` VALUES ('718', '中', '103.14', '29.04', '1');
INSERT INTO `scatter_map` VALUES ('719', '中', '103.14', '28.34', '1');
INSERT INTO `scatter_map` VALUES ('720', '中', '103.14', '26.23', '1');
INSERT INTO `scatter_map` VALUES ('721', '中', '103.14', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('722', '中', '103.14', '24.85', '1');
INSERT INTO `scatter_map` VALUES ('723', '中', '103.14', '23.4', '1');
INSERT INTO `scatter_map` VALUES ('724', '中', '103.14', '23.24', '1');
INSERT INTO `scatter_map` VALUES ('725', '中', '103.18', '35.6', '1');
INSERT INTO `scatter_map` VALUES ('726', '中', '103.18', '34.24', '1');
INSERT INTO `scatter_map` VALUES ('727', '中', '103.18', '31.47', '1');
INSERT INTO `scatter_map` VALUES ('728', '中', '103.18', '31.43', '1');
INSERT INTO `scatter_map` VALUES ('729', '中', '103.18', '31.02', '1');
INSERT INTO `scatter_map` VALUES ('730', '中', '103.18', '30.68', '1');
INSERT INTO `scatter_map` VALUES ('731', '中', '103.18', '30.3', '1');
INSERT INTO `scatter_map` VALUES ('732', '中', '103.18', '30.18', '1');
INSERT INTO `scatter_map` VALUES ('733', '中', '103.18', '30.15', '1');
INSERT INTO `scatter_map` VALUES ('734', '中', '103.18', '29.92', '1');
INSERT INTO `scatter_map` VALUES ('735', '中', '103.18', '29.11', '1');
INSERT INTO `scatter_map` VALUES ('736', '中', '103.18', '26.12', '1');
INSERT INTO `scatter_map` VALUES ('737', '中', '103.18', '25.76', '1');
INSERT INTO `scatter_map` VALUES ('738', '中', '103.18', '24.93', '1');
INSERT INTO `scatter_map` VALUES ('739', '中', '103.18', '23.56', '1');
INSERT INTO `scatter_map` VALUES ('740', '中', '103.18', '23.48', '1');
INSERT INTO `scatter_map` VALUES ('741', '中', '103.18', '23.36', '1');
INSERT INTO `scatter_map` VALUES ('742', '中', '103.23', '35.96', '1');
INSERT INTO `scatter_map` VALUES ('743', '中', '103.23', '35.57', '1');
INSERT INTO `scatter_map` VALUES ('744', '中', '103.23', '34.05', '1');
INSERT INTO `scatter_map` VALUES ('745', '中', '103.23', '30.37', '1');
INSERT INTO `scatter_map` VALUES ('746', '中', '103.23', '30.26', '1');
INSERT INTO `scatter_map` VALUES ('747', '中', '103.23', '30.18', '1');
INSERT INTO `scatter_map` VALUES ('748', '中', '103.23', '29.76', '1');
INSERT INTO `scatter_map` VALUES ('749', '中', '103.23', '29.61', '1');
INSERT INTO `scatter_map` VALUES ('750', '中', '103.23', '27.68', '1');
INSERT INTO `scatter_map` VALUES ('751', '中', '103.23', '25.6', '1');
INSERT INTO `scatter_map` VALUES ('752', '中', '103.23', '23.69', '1');
INSERT INTO `scatter_map` VALUES ('753', '中', '103.23', '23.52', '1');
INSERT INTO `scatter_map` VALUES ('754', '中', '103.23', '23.48', '1');
INSERT INTO `scatter_map` VALUES ('755', '中', '103.23', '22.8', '1');
INSERT INTO `scatter_map` VALUES ('756', '中', '103.27', '36.7', '1');
INSERT INTO `scatter_map` VALUES ('757', '中', '103.27', '36.17', '1');
INSERT INTO `scatter_map` VALUES ('758', '中', '103.27', '30.68', '1');
INSERT INTO `scatter_map` VALUES ('759', '中', '103.27', '30.6', '1');
INSERT INTO `scatter_map` VALUES ('760', '中', '103.27', '30.41', '1');
INSERT INTO `scatter_map` VALUES ('761', '中', '103.27', '30.18', '1');
INSERT INTO `scatter_map` VALUES ('762', '中', '103.27', '29.27', '1');
INSERT INTO `scatter_map` VALUES ('763', '中', '103.27', '29.23', '1');
INSERT INTO `scatter_map` VALUES ('764', '中', '103.27', '27.41', '1');
INSERT INTO `scatter_map` VALUES ('765', '中', '103.27', '26.43', '1');
INSERT INTO `scatter_map` VALUES ('766', '中', '103.27', '26.39', '1');
INSERT INTO `scatter_map` VALUES ('767', '中', '103.27', '25.72', '1');
INSERT INTO `scatter_map` VALUES ('768', '中', '103.27', '25.44', '1');
INSERT INTO `scatter_map` VALUES ('769', '中', '103.27', '24.85', '1');
INSERT INTO `scatter_map` VALUES ('770', '中', '103.27', '23.69', '1');
INSERT INTO `scatter_map` VALUES ('771', '中', '103.27', '23.44', '1');
INSERT INTO `scatter_map` VALUES ('772', '中', '103.27', '23.4', '1');
INSERT INTO `scatter_map` VALUES ('773', '中', '103.31', '35.96', '1');
INSERT INTO `scatter_map` VALUES ('774', '中', '103.31', '31.54', '1');
INSERT INTO `scatter_map` VALUES ('775', '中', '103.31', '31.09', '1');
INSERT INTO `scatter_map` VALUES ('776', '中', '103.31', '30.94', '1');
INSERT INTO `scatter_map` VALUES ('777', '中', '103.31', '30.56', '1');
INSERT INTO `scatter_map` VALUES ('778', '中', '103.31', '30.22', '1');
INSERT INTO `scatter_map` VALUES ('779', '中', '103.31', '29.61', '1');
INSERT INTO `scatter_map` VALUES ('780', '中', '103.31', '29.5', '1');
INSERT INTO `scatter_map` VALUES ('781', '中', '103.31', '29.42', '1');
INSERT INTO `scatter_map` VALUES ('782', '中', '103.31', '27.41', '1');
INSERT INTO `scatter_map` VALUES ('783', '中', '103.31', '26.43', '1');
INSERT INTO `scatter_map` VALUES ('784', '中', '103.31', '26.39', '1');
INSERT INTO `scatter_map` VALUES ('785', '中', '103.31', '24.85', '1');
INSERT INTO `scatter_map` VALUES ('786', '中', '103.31', '23.4', '1');
INSERT INTO `scatter_map` VALUES ('787', '中', '103.36', '35.46', '1');
INSERT INTO `scatter_map` VALUES ('788', '中', '103.36', '35.43', '1');
INSERT INTO `scatter_map` VALUES ('789', '中', '103.36', '34.71', '1');
INSERT INTO `scatter_map` VALUES ('790', '中', '103.36', '32.95', '1');
INSERT INTO `scatter_map` VALUES ('791', '中', '103.36', '30.3', '1');
INSERT INTO `scatter_map` VALUES ('792', '中', '103.36', '30.26', '1');
INSERT INTO `scatter_map` VALUES ('793', '中', '103.36', '30.18', '1');
INSERT INTO `scatter_map` VALUES ('794', '中', '103.36', '29.57', '1');
INSERT INTO `scatter_map` VALUES ('795', '中', '103.36', '25.28', '1');
INSERT INTO `scatter_map` VALUES ('796', '中', '103.36', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('797', '中', '103.36', '23.97', '1');
INSERT INTO `scatter_map` VALUES ('798', '中', '103.4', '36.46', '1');
INSERT INTO `scatter_map` VALUES ('799', '中', '103.4', '31.95', '1');
INSERT INTO `scatter_map` VALUES ('800', '中', '103.4', '30.71', '1');
INSERT INTO `scatter_map` VALUES ('801', '中', '103.4', '30.64', '1');
INSERT INTO `scatter_map` VALUES ('802', '中', '103.4', '30.45', '1');
INSERT INTO `scatter_map` VALUES ('803', '中', '103.4', '30.41', '1');
INSERT INTO `scatter_map` VALUES ('804', '中', '103.4', '30.26', '1');
INSERT INTO `scatter_map` VALUES ('805', '中', '103.4', '30.15', '1');
INSERT INTO `scatter_map` VALUES ('806', '中', '103.4', '29.92', '1');
INSERT INTO `scatter_map` VALUES ('807', '弱', '118.56', '37.58', '1');
INSERT INTO `scatter_map` VALUES ('808', '弱', '118.56', '37.48', '1');
INSERT INTO `scatter_map` VALUES ('809', '弱', '118.56', '37.44', '1');
INSERT INTO `scatter_map` VALUES ('810', '弱', '118.56', '36.53', '1');
INSERT INTO `scatter_map` VALUES ('811', '弱', '118.56', '36.49', '1');
INSERT INTO `scatter_map` VALUES ('812', '弱', '118.56', '31.65', '1');
INSERT INTO `scatter_map` VALUES ('813', '弱', '118.56', '31.17', '1');
INSERT INTO `scatter_map` VALUES ('814', '弱', '118.56', '31.13', '1');
INSERT INTO `scatter_map` VALUES ('815', '弱', '118.56', '24.97', '1');
INSERT INTO `scatter_map` VALUES ('816', '弱', '118.56', '24.93', '1');
INSERT INTO `scatter_map` VALUES ('817', '弱', '118.56', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('818', '弱', '118.56', '24.85', '1');
INSERT INTO `scatter_map` VALUES ('819', '弱', '118.56', '24.81', '1');
INSERT INTO `scatter_map` VALUES ('820', '弱', '118.56', '24.77', '1');
INSERT INTO `scatter_map` VALUES ('821', '弱', '118.56', '24.73', '1');
INSERT INTO `scatter_map` VALUES ('822', '弱', '118.56', '24.69', '1');
INSERT INTO `scatter_map` VALUES ('823', '弱', '118.56', '24.65', '1');
INSERT INTO `scatter_map` VALUES ('824', '弱', '118.56', '24.61', '1');
INSERT INTO `scatter_map` VALUES ('825', '弱', '118.61', '37.48', '1');
INSERT INTO `scatter_map` VALUES ('826', '弱', '118.61', '37.44', '1');
INSERT INTO `scatter_map` VALUES ('827', '弱', '118.61', '35.78', '1');
INSERT INTO `scatter_map` VALUES ('828', '弱', '118.61', '35.75', '1');
INSERT INTO `scatter_map` VALUES ('829', '弱', '118.61', '32.1', '1');
INSERT INTO `scatter_map` VALUES ('830', '弱', '118.61', '32.06', '1');
INSERT INTO `scatter_map` VALUES ('831', '弱', '118.61', '31.92', '1');
INSERT INTO `scatter_map` VALUES ('832', '弱', '118.61', '31.84', '1');
INSERT INTO `scatter_map` VALUES ('833', '弱', '118.61', '31.17', '1');
INSERT INTO `scatter_map` VALUES ('834', '弱', '118.61', '30.07', '1');
INSERT INTO `scatter_map` VALUES ('835', '弱', '118.61', '29.88', '1');
INSERT INTO `scatter_map` VALUES ('836', '弱', '118.61', '28.73', '1');
INSERT INTO `scatter_map` VALUES ('837', '弱', '118.61', '25.13', '1');
INSERT INTO `scatter_map` VALUES ('838', '弱', '118.61', '25.01', '1');
INSERT INTO `scatter_map` VALUES ('839', '弱', '118.61', '24.97', '1');
INSERT INTO `scatter_map` VALUES ('840', '弱', '118.61', '24.93', '1');
INSERT INTO `scatter_map` VALUES ('841', '弱', '118.61', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('842', '弱', '118.61', '24.85', '1');
INSERT INTO `scatter_map` VALUES ('843', '弱', '118.61', '24.81', '1');
INSERT INTO `scatter_map` VALUES ('844', '弱', '118.61', '24.77', '1');
INSERT INTO `scatter_map` VALUES ('845', '弱', '118.61', '24.73', '1');
INSERT INTO `scatter_map` VALUES ('846', '弱', '118.61', '24.65', '1');
INSERT INTO `scatter_map` VALUES ('847', '弱', '118.61', '24.57', '1');
INSERT INTO `scatter_map` VALUES ('848', '弱', '118.65', '39.5', '1');
INSERT INTO `scatter_map` VALUES ('849', '弱', '118.65', '37.48', '1');
INSERT INTO `scatter_map` VALUES ('850', '弱', '118.65', '37.44', '1');
INSERT INTO `scatter_map` VALUES ('851', '弱', '118.65', '37.41', '1');
INSERT INTO `scatter_map` VALUES ('852', '弱', '118.65', '35.78', '1');
INSERT INTO `scatter_map` VALUES ('853', '弱', '118.65', '34.92', '1');
INSERT INTO `scatter_map` VALUES ('854', '弱', '118.65', '32.18', '1');
INSERT INTO `scatter_map` VALUES ('855', '弱', '118.65', '32.1', '1');
INSERT INTO `scatter_map` VALUES ('856', '弱', '118.65', '32.06', '1');
INSERT INTO `scatter_map` VALUES ('857', '弱', '118.65', '31.95', '1');
INSERT INTO `scatter_map` VALUES ('858', '弱', '118.65', '31.92', '1');
INSERT INTO `scatter_map` VALUES ('859', '弱', '118.65', '28.77', '1');
INSERT INTO `scatter_map` VALUES ('860', '弱', '118.65', '28.73', '1');
INSERT INTO `scatter_map` VALUES ('861', '弱', '118.65', '25.13', '1');
INSERT INTO `scatter_map` VALUES ('862', '弱', '118.65', '24.97', '1');
INSERT INTO `scatter_map` VALUES ('863', '弱', '118.65', '24.93', '1');
INSERT INTO `scatter_map` VALUES ('864', '弱', '118.65', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('865', '弱', '118.65', '24.85', '1');
INSERT INTO `scatter_map` VALUES ('866', '弱', '118.65', '24.77', '1');
INSERT INTO `scatter_map` VALUES ('867', '弱', '118.65', '24.73', '1');
INSERT INTO `scatter_map` VALUES ('868', '弱', '118.65', '24.65', '1');
INSERT INTO `scatter_map` VALUES ('869', '弱', '118.7', '41.94', '1');
INSERT INTO `scatter_map` VALUES ('870', '弱', '118.7', '41.01', '1');
INSERT INTO `scatter_map` VALUES ('871', '弱', '118.7', '40.01', '1');
INSERT INTO `scatter_map` VALUES ('872', '弱', '118.7', '39.74', '1');
INSERT INTO `scatter_map` VALUES ('873', '弱', '118.7', '39.5', '1');
INSERT INTO `scatter_map` VALUES ('874', '弱', '118.7', '37.44', '1');
INSERT INTO `scatter_map` VALUES ('875', '弱', '118.7', '37.41', '1');
INSERT INTO `scatter_map` VALUES ('876', '弱', '118.7', '34.6', '1');
INSERT INTO `scatter_map` VALUES ('877', '弱', '118.7', '33.72', '1');
INSERT INTO `scatter_map` VALUES ('878', '弱', '118.7', '32.21', '1');
INSERT INTO `scatter_map` VALUES ('879', '弱', '118.7', '32.18', '1');
INSERT INTO `scatter_map` VALUES ('880', '弱', '118.7', '32.14', '1');
INSERT INTO `scatter_map` VALUES ('881', '弱', '118.7', '32.1', '1');
INSERT INTO `scatter_map` VALUES ('882', '弱', '118.7', '32.03', '1');
INSERT INTO `scatter_map` VALUES ('883', '弱', '118.7', '31.99', '1');
INSERT INTO `scatter_map` VALUES ('884', '弱', '118.7', '31.95', '1');
INSERT INTO `scatter_map` VALUES ('885', '弱', '118.7', '31.88', '1');
INSERT INTO `scatter_map` VALUES ('886', '弱', '118.7', '31.73', '1');
INSERT INTO `scatter_map` VALUES ('887', '弱', '118.7', '30.9', '1');
INSERT INTO `scatter_map` VALUES ('888', '弱', '118.7', '25.36', '1');
INSERT INTO `scatter_map` VALUES ('889', '弱', '118.7', '25.05', '1');
INSERT INTO `scatter_map` VALUES ('890', '弱', '118.7', '24.97', '1');
INSERT INTO `scatter_map` VALUES ('891', '弱', '118.7', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('892', '弱', '118.7', '24.73', '1');
INSERT INTO `scatter_map` VALUES ('893', '弱', '118.7', '24.69', '1');
INSERT INTO `scatter_map` VALUES ('894', '弱', '118.7', '24.61', '1');
INSERT INTO `scatter_map` VALUES ('895', '弱', '118.74', '40.01', '1');
INSERT INTO `scatter_map` VALUES ('896', '弱', '118.74', '39.74', '1');
INSERT INTO `scatter_map` VALUES ('897', '弱', '118.74', '36.88', '1');
INSERT INTO `scatter_map` VALUES ('898', '弱', '118.74', '34.53', '1');
INSERT INTO `scatter_map` VALUES ('899', '弱', '118.74', '32.25', '1');
INSERT INTO `scatter_map` VALUES ('900', '弱', '118.74', '32.21', '1');
INSERT INTO `scatter_map` VALUES ('901', '弱', '118.74', '32.18', '1');
INSERT INTO `scatter_map` VALUES ('902', '弱', '118.74', '32.14', '1');
INSERT INTO `scatter_map` VALUES ('903', '弱', '118.74', '32.1', '1');
INSERT INTO `scatter_map` VALUES ('904', '弱', '118.74', '32.06', '1');
INSERT INTO `scatter_map` VALUES ('905', '弱', '118.74', '32.03', '1');
INSERT INTO `scatter_map` VALUES ('906', '弱', '118.74', '31.99', '1');
INSERT INTO `scatter_map` VALUES ('907', '弱', '118.74', '31.95', '1');
INSERT INTO `scatter_map` VALUES ('908', '弱', '118.74', '31.92', '1');
INSERT INTO `scatter_map` VALUES ('909', '弱', '118.74', '30.98', '1');
INSERT INTO `scatter_map` VALUES ('910', '弱', '118.74', '30.94', '1');
INSERT INTO `scatter_map` VALUES ('911', '弱', '118.74', '30.9', '1');
INSERT INTO `scatter_map` VALUES ('912', '弱', '118.74', '26.59', '1');
INSERT INTO `scatter_map` VALUES ('913', '弱', '118.74', '25.4', '1');
INSERT INTO `scatter_map` VALUES ('914', '弱', '118.74', '25.32', '1');
INSERT INTO `scatter_map` VALUES ('915', '弱', '118.74', '24.93', '1');
INSERT INTO `scatter_map` VALUES ('916', '弱', '118.74', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('917', '弱', '118.74', '24.81', '1');
INSERT INTO `scatter_map` VALUES ('918', '弱', '118.74', '24.77', '1');
INSERT INTO `scatter_map` VALUES ('919', '弱', '118.78', '36.88', '1');
INSERT INTO `scatter_map` VALUES ('920', '弱', '118.78', '36.84', '1');
INSERT INTO `scatter_map` VALUES ('921', '弱', '118.78', '34.53', '1');
INSERT INTO `scatter_map` VALUES ('922', '弱', '118.78', '34.13', '1');
INSERT INTO `scatter_map` VALUES ('923', '弱', '118.78', '32.29', '1');
INSERT INTO `scatter_map` VALUES ('924', '弱', '118.78', '32.25', '1');
INSERT INTO `scatter_map` VALUES ('925', '弱', '118.78', '32.21', '1');
INSERT INTO `scatter_map` VALUES ('926', '弱', '118.78', '32.14', '1');
INSERT INTO `scatter_map` VALUES ('927', '弱', '118.78', '32.1', '1');
INSERT INTO `scatter_map` VALUES ('928', '弱', '118.78', '32.06', '1');
INSERT INTO `scatter_map` VALUES ('929', '弱', '118.78', '32.03', '1');
INSERT INTO `scatter_map` VALUES ('930', '弱', '118.78', '31.99', '1');
INSERT INTO `scatter_map` VALUES ('931', '弱', '118.78', '31.95', '1');
INSERT INTO `scatter_map` VALUES ('932', '弱', '118.78', '31.92', '1');
INSERT INTO `scatter_map` VALUES ('933', '弱', '118.78', '31.88', '1');
INSERT INTO `scatter_map` VALUES ('934', '弱', '118.78', '31.77', '1');
INSERT INTO `scatter_map` VALUES ('935', '弱', '118.78', '30.94', '1');
INSERT INTO `scatter_map` VALUES ('936', '弱', '118.78', '30.15', '1');
INSERT INTO `scatter_map` VALUES ('937', '弱', '118.78', '27.53', '1');
INSERT INTO `scatter_map` VALUES ('938', '弱', '118.78', '25.05', '1');
INSERT INTO `scatter_map` VALUES ('939', '弱', '118.78', '25.01', '1');
INSERT INTO `scatter_map` VALUES ('940', '弱', '118.78', '24.77', '1');
INSERT INTO `scatter_map` VALUES ('941', '弱', '118.83', '42.16', '1');
INSERT INTO `scatter_map` VALUES ('942', '弱', '118.83', '36.7', '1');
INSERT INTO `scatter_map` VALUES ('943', '弱', '118.83', '35.6', '1');
INSERT INTO `scatter_map` VALUES ('944', '弱', '118.83', '35.57', '1');
INSERT INTO `scatter_map` VALUES ('945', '弱', '118.83', '35.17', '1');
INSERT INTO `scatter_map` VALUES ('946', '弱', '118.83', '33.29', '1');
INSERT INTO `scatter_map` VALUES ('947', '弱', '118.83', '32.36', '1');
INSERT INTO `scatter_map` VALUES ('948', '弱', '118.83', '32.32', '1');
INSERT INTO `scatter_map` VALUES ('949', '弱', '118.83', '32.18', '1');
INSERT INTO `scatter_map` VALUES ('950', '弱', '118.83', '32.14', '1');
INSERT INTO `scatter_map` VALUES ('951', '弱', '118.83', '32.1', '1');
INSERT INTO `scatter_map` VALUES ('952', '弱', '118.83', '32.06', '1');
INSERT INTO `scatter_map` VALUES ('953', '弱', '118.83', '32.03', '1');
INSERT INTO `scatter_map` VALUES ('954', '弱', '118.83', '31.99', '1');
INSERT INTO `scatter_map` VALUES ('955', '弱', '118.83', '31.95', '1');
INSERT INTO `scatter_map` VALUES ('956', '弱', '118.83', '31.92', '1');
INSERT INTO `scatter_map` VALUES ('957', '弱', '118.83', '31.88', '1');
INSERT INTO `scatter_map` VALUES ('958', '弱', '118.83', '31.84', '1');
INSERT INTO `scatter_map` VALUES ('959', '弱', '118.83', '25.44', '1');
INSERT INTO `scatter_map` VALUES ('960', '弱', '118.83', '25.05', '1');
INSERT INTO `scatter_map` VALUES ('961', '弱', '118.83', '24.97', '1');
INSERT INTO `scatter_map` VALUES ('962', '弱', '118.87', '42.26', '1');
INSERT INTO `scatter_map` VALUES ('963', '弱', '118.87', '39.44', '1');
INSERT INTO `scatter_map` VALUES ('964', '弱', '118.87', '36.7', '1');
INSERT INTO `scatter_map` VALUES ('965', '弱', '118.87', '34.56', '1');
INSERT INTO `scatter_map` VALUES ('966', '弱', '118.87', '33.29', '1');
INSERT INTO `scatter_map` VALUES ('967', '弱', '118.87', '32.36', '1');
INSERT INTO `scatter_map` VALUES ('968', '弱', '118.87', '32.14', '1');
INSERT INTO `scatter_map` VALUES ('969', '弱', '118.87', '32.1', '1');
INSERT INTO `scatter_map` VALUES ('970', '弱', '118.87', '32.06', '1');
INSERT INTO `scatter_map` VALUES ('971', '弱', '118.87', '32.03', '1');
INSERT INTO `scatter_map` VALUES ('972', '弱', '118.87', '31.99', '1');
INSERT INTO `scatter_map` VALUES ('973', '弱', '118.87', '31.95', '1');
INSERT INTO `scatter_map` VALUES ('974', '弱', '118.87', '31.92', '1');
INSERT INTO `scatter_map` VALUES ('975', '弱', '118.87', '31.88', '1');
INSERT INTO `scatter_map` VALUES ('976', '弱', '118.87', '31.77', '1');
INSERT INTO `scatter_map` VALUES ('977', '弱', '118.87', '31.73', '1');
INSERT INTO `scatter_map` VALUES ('978', '弱', '118.87', '31.69', '1');
INSERT INTO `scatter_map` VALUES ('979', '弱', '118.87', '31.32', '1');
INSERT INTO `scatter_map` VALUES ('980', '弱', '118.87', '29', '1');
INSERT INTO `scatter_map` VALUES ('981', '弱', '118.87', '28.96', '1');
INSERT INTO `scatter_map` VALUES ('982', '弱', '118.87', '28.92', '1');
INSERT INTO `scatter_map` VALUES ('983', '弱', '118.87', '27.37', '1');
INSERT INTO `scatter_map` VALUES ('984', '弱', '118.87', '26.23', '1');
INSERT INTO `scatter_map` VALUES ('985', '弱', '118.87', '25.28', '1');
INSERT INTO `scatter_map` VALUES ('986', '弱', '118.87', '25.25', '1');
INSERT INTO `scatter_map` VALUES ('987', '弱', '118.87', '24.89', '1');
INSERT INTO `scatter_map` VALUES ('988', '弱', '118.92', '42.29', '1');
INSERT INTO `scatter_map` VALUES ('989', '弱', '118.92', '42.26', '1');
INSERT INTO `scatter_map` VALUES ('990', '弱', '118.92', '42.23', '1');
INSERT INTO `scatter_map` VALUES ('991', '弱', '118.92', '39.44', '1');
INSERT INTO `scatter_map` VALUES ('992', '弱', '118.92', '32.14', '1');
INSERT INTO `scatter_map` VALUES ('993', '弱', '118.92', '32.1', '1');
INSERT INTO `scatter_map` VALUES ('994', '弱', '118.92', '32.06', '1');
INSERT INTO `scatter_map` VALUES ('995', '弱', '118.92', '32.03', '1');
INSERT INTO `scatter_map` VALUES ('996', '弱', '118.92', '31.92', '1');
INSERT INTO `scatter_map` VALUES ('997', '弱', '118.92', '31.88', '1');
INSERT INTO `scatter_map` VALUES ('998', '弱', '118.92', '31.77', '1');
INSERT INTO `scatter_map` VALUES ('999', '弱', '118.92', '29.57', '1');
INSERT INTO `scatter_map` VALUES ('1000', '弱', '118.92', '28.96', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT 'mmmm',
  `region` varchar(100) DEFAULT 'china',
  `flow` int(255) DEFAULT '0',
  `behavior` varchar(1000) DEFAULT 'fight',
  `label` varchar(255) DEFAULT 'jquery',
  `attributes` varchar(255) DEFAULT '',
  `y` double(100,0) DEFAULT '1',
  `x` double(100,0) DEFAULT '1',
  `groupID` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'a1', 'china', '8', 'fight', 'jquery', '', '13', '45', '1');
INSERT INTO `user` VALUES ('2', 'a2', 'china', '67', 'fight', 'jquery', '', '1', '1', '2');
INSERT INTO `user` VALUES ('3', 'a3', 'china', '22', 'fight', 'jquery', '', '143', '44', '3');
INSERT INTO `user` VALUES ('4', 'bb', 'china', '60', 'fight', 'jquery', '', '22', '55', '2');
INSERT INTO `user` VALUES ('5', 'cc', 'china', '45', 'fight', 'jquery', '', '35', '1', '2');
INSERT INTO `user` VALUES ('6', 'dd', 'india', '12', 'fight', 'jquery', '', '222', '79', '3');
