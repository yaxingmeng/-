/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : company

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2017-09-11 18:10:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '商品信息主键',
  `name` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `state` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '苹果', '1');
INSERT INTO `goods` VALUES ('2', '梨子', '1');
INSERT INTO `goods` VALUES ('3', '橘子', '1');
INSERT INTO `goods` VALUES ('7', '大橙子', '1');
INSERT INTO `goods` VALUES ('10', '花生', '1');
INSERT INTO `goods` VALUES ('11', '汽水', '1');
INSERT INTO `goods` VALUES ('12', '啤酒', '1');
INSERT INTO `goods` VALUES ('13', '电脑', '1');
INSERT INTO `goods` VALUES ('14', 'shui', '0');
INSERT INTO `goods` VALUES ('15', '风扇', '0');
INSERT INTO `goods` VALUES ('16', '水杯', '0');
INSERT INTO `goods` VALUES ('17', '水杯', '0');
INSERT INTO `goods` VALUES ('18', '电脑', '0');
INSERT INTO `goods` VALUES ('19', '金橘', '0');
INSERT INTO `goods` VALUES ('20', '哈哈', '0');
INSERT INTO `goods` VALUES ('21', '', '0');
INSERT INTO `goods` VALUES ('22', '', '0');
INSERT INTO `goods` VALUES ('23', '', '0');
INSERT INTO `goods` VALUES ('24', '', '0');
INSERT INTO `goods` VALUES ('25', '', '0');
INSERT INTO `goods` VALUES ('26', '', '0');
INSERT INTO `goods` VALUES ('27', '', '0');
INSERT INTO `goods` VALUES ('28', '', '0');
INSERT INTO `goods` VALUES ('29', '', '0');
INSERT INTO `goods` VALUES ('30', '', '0');
INSERT INTO `goods` VALUES ('31', '', '0');
INSERT INTO `goods` VALUES ('32', '', '0');
INSERT INTO `goods` VALUES ('33', '', '0');
INSERT INTO `goods` VALUES ('34', 'xxx', '0');

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('4');

-- ----------------------------
-- Table structure for hibernate_sequences
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequences`;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequences
-- ----------------------------
INSERT INTO `hibernate_sequences` VALUES ('default', '2');

-- ----------------------------
-- Table structure for inoutstock
-- ----------------------------
DROP TABLE IF EXISTS `inoutstock`;
CREATE TABLE `inoutstock` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `goods_id` int(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `amount` int(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `state` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inoutstock
-- ----------------------------
INSERT INTO `inoutstock` VALUES ('1', '1', '销售商1', '1', '2017-09-10 13:30:37', '1');
INSERT INTO `inoutstock` VALUES ('2', '2', '供应商2', '5', '2017-09-05 13:32:05', '0');
INSERT INTO `inoutstock` VALUES ('3', '3', '销售商4', '4', '2017-09-13 13:32:34', '1');
INSERT INTO `inoutstock` VALUES ('4', '3', '供应商3', '1', '2017-09-05 13:33:05', '0');

-- ----------------------------
-- Table structure for instock
-- ----------------------------
DROP TABLE IF EXISTS `instock`;
CREATE TABLE `instock` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '入库信息的主键',
  `provide_id` int(20) DEFAULT NULL COMMENT '供应商',
  `goods_id` int(20) DEFAULT NULL COMMENT '入库的商品',
  `amount` int(20) DEFAULT NULL COMMENT '入库的数量',
  `intime` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `FKjx0ykto5f4rbla2r89xxmfg47` (`goods_id`),
  KEY `FKlk6i82pvvpqvy5mnh30v3arku` (`provide_id`),
  CONSTRAINT `FKjx0ykto5f4rbla2r89xxmfg47` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `FKlk6i82pvvpqvy5mnh30v3arku` FOREIGN KEY (`provide_id`) REFERENCES `provide` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instock
-- ----------------------------
INSERT INTO `instock` VALUES ('1', '1', '1', '10', '2017-09-05 11:39:07');
INSERT INTO `instock` VALUES ('2', '2', '2', '10', '2017-09-04 11:39:20');
INSERT INTO `instock` VALUES ('3', '3', '3', '10', '2017-09-05 11:39:32');
INSERT INTO `instock` VALUES ('4', '1', '3', '5', '2017-09-06 16:12:21');
INSERT INTO `instock` VALUES ('5', '2', '3', '5', '2017-09-06 16:32:41');
INSERT INTO `instock` VALUES ('6', '1', '10', '10', '2017-09-06 17:24:43');
INSERT INTO `instock` VALUES ('7', '1', '11', '10', '2017-09-06 17:25:56');
INSERT INTO `instock` VALUES ('8', '1', '11', '2', '2017-09-07 10:37:57');
INSERT INTO `instock` VALUES ('9', '1', '2', '15', '2017-09-07 10:40:16');
INSERT INTO `instock` VALUES ('10', '1', '2', '4', '2017-09-07 10:54:01');
INSERT INTO `instock` VALUES ('11', '1', '13', '12', '2017-09-08 10:13:23');
INSERT INTO `instock` VALUES ('12', '1', '1', '12', '2017-09-11 15:46:19');
INSERT INTO `instock` VALUES ('13', '1', '2', '13', '2017-09-11 17:09:59');
INSERT INTO `instock` VALUES ('14', '1', '2', '14', '2017-09-11 17:22:50');

-- ----------------------------
-- Table structure for outstock
-- ----------------------------
DROP TABLE IF EXISTS `outstock`;
CREATE TABLE `outstock` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '出库信息主键',
  `sale_id` int(20) DEFAULT NULL COMMENT '销售商',
  `goods_id` int(20) DEFAULT NULL COMMENT '出库商品',
  `amount` int(20) DEFAULT NULL COMMENT '销售数量',
  `outtime` datetime DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`),
  KEY `FKrvwyk90iqqknxpjnaeb1mi28h` (`goods_id`),
  KEY `FKmon2waficffrgwv9o6tglh6uj` (`sale_id`),
  CONSTRAINT `FKmon2waficffrgwv9o6tglh6uj` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`),
  CONSTRAINT `FKrvwyk90iqqknxpjnaeb1mi28h` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outstock
-- ----------------------------
INSERT INTO `outstock` VALUES ('1', '1', '1', '5', '2017-09-04 11:39:45');
INSERT INTO `outstock` VALUES ('2', '2', '2', '5', '2017-09-04 11:39:57');
INSERT INTO `outstock` VALUES ('3', '3', '3', '5', '2017-09-05 11:40:08');
INSERT INTO `outstock` VALUES ('4', '1', '2', '2', '2017-09-06 17:04:54');
INSERT INTO `outstock` VALUES ('5', '1', '1', '4', '2017-09-07 08:58:09');
INSERT INTO `outstock` VALUES ('6', '1', '2', '1', '2017-09-07 10:27:29');
INSERT INTO `outstock` VALUES ('7', '1', '3', '5', '2017-09-07 10:28:34');
INSERT INTO `outstock` VALUES ('8', '1', '3', '3', '2017-09-07 10:31:43');
INSERT INTO `outstock` VALUES ('9', '1', '11', '1', '2017-09-07 10:36:59');
INSERT INTO `outstock` VALUES ('10', '1', '11', '1', '2017-09-07 10:37:36');
INSERT INTO `outstock` VALUES ('11', '1', '11', '9', '2017-09-07 10:37:45');
INSERT INTO `outstock` VALUES ('12', '1', '2', '12', '2017-09-07 10:40:04');
INSERT INTO `outstock` VALUES ('13', '1', '3', '1', '2017-09-07 10:45:17');
INSERT INTO `outstock` VALUES ('14', '1', '2', '4', '2017-09-07 10:53:51');
INSERT INTO `outstock` VALUES ('15', '1', '2', '3', '2017-09-07 10:55:09');
INSERT INTO `outstock` VALUES ('16', '1', '13', '2', '2017-09-08 10:13:38');
INSERT INTO `outstock` VALUES ('17', '1', '13', '2', '2017-09-08 10:17:17');
INSERT INTO `outstock` VALUES ('18', '1', '13', '3', '2017-09-08 10:17:33');
INSERT INTO `outstock` VALUES ('19', '1', '13', '3', '2017-09-08 10:22:17');
INSERT INTO `outstock` VALUES ('20', '1', '1', '10', '2017-09-11 17:00:52');
INSERT INTO `outstock` VALUES ('21', '1', '1', '1', '2017-09-11 17:01:59');
INSERT INTO `outstock` VALUES ('22', '1', '1', '1', '2017-09-11 17:03:44');
INSERT INTO `outstock` VALUES ('23', '1', '2', '10', '2017-09-11 17:10:08');
INSERT INTO `outstock` VALUES ('24', '1', '2', '2', '2017-09-11 17:10:30');
INSERT INTO `outstock` VALUES ('25', '1', '2', '1', '2017-09-11 17:12:49');
INSERT INTO `outstock` VALUES ('26', '1', '2', '1', '2017-09-11 17:14:14');
INSERT INTO `outstock` VALUES ('27', '1', '2', '2', '2017-09-11 17:22:59');
INSERT INTO `outstock` VALUES ('28', '1', '2', '2', '2017-09-11 17:25:31');
INSERT INTO `outstock` VALUES ('29', '1', '2', '1', '2017-09-11 17:31:28');
INSERT INTO `outstock` VALUES ('30', '1', '2', '1', '2017-09-11 17:32:14');
INSERT INTO `outstock` VALUES ('31', '1', '2', '1', '2017-09-11 17:32:28');
INSERT INTO `outstock` VALUES ('32', '1', '2', '2', '2017-09-11 17:32:59');

-- ----------------------------
-- Table structure for provide
-- ----------------------------
DROP TABLE IF EXISTS `provide`;
CREATE TABLE `provide` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '供应商id主键',
  `name` varchar(20) DEFAULT NULL COMMENT '供应商名称',
  `state` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provide
-- ----------------------------
INSERT INTO `provide` VALUES ('1', '供应商·1', '1');
INSERT INTO `provide` VALUES ('2', '供应商2', '0');
INSERT INTO `provide` VALUES ('3', '供应商3', '0');
INSERT INTO `provide` VALUES ('4', '供应商4', '1');
INSERT INTO `provide` VALUES ('5', '供应商5', '1');
INSERT INTO `provide` VALUES ('6', '供应商6', '1');
INSERT INTO `provide` VALUES ('7', '供应商6', '0');
INSERT INTO `provide` VALUES ('8', '供应商8', '1');
INSERT INTO `provide` VALUES ('9', '供应商8', '1');
INSERT INTO `provide` VALUES ('10', '供应商9', '1');
INSERT INTO `provide` VALUES ('11', '供应商11', '1');
INSERT INTO `provide` VALUES ('13', '供应商11', '1');
INSERT INTO `provide` VALUES ('14', '供应商12', '1');

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '销售商主键',
  `name` varchar(20) DEFAULT NULL COMMENT '销售商名称',
  `state` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES ('1', '销售商1', '1');
INSERT INTO `sale` VALUES ('2', '销售商2', '1');
INSERT INTO `sale` VALUES ('3', '销售商3', '1');
INSERT INTO `sale` VALUES ('4', '销售商4', '1');
INSERT INTO `sale` VALUES ('5', '销售商5', '0');
INSERT INTO `sale` VALUES ('6', '销售商7', '0');
INSERT INTO `sale` VALUES ('7', '销售商8', '0');
INSERT INTO `sale` VALUES ('8', '销售商8', '0');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '库存信息主键',
  `goods_id` int(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi1r0d6e8jt44pdcv9ixlcmbjm` (`goods_id`),
  CONSTRAINT `FKi1r0d6e8jt44pdcv9ixlcmbjm` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES ('1', '1', '1');
INSERT INTO `stock` VALUES ('2', '2', '6');
INSERT INTO `stock` VALUES ('3', '3', '1');
INSERT INTO `stock` VALUES ('6', '10', '20');
INSERT INTO `stock` VALUES ('7', '11', '1');
INSERT INTO `stock` VALUES ('8', '12', '0');
INSERT INTO `stock` VALUES ('10', '13', '2');
INSERT INTO `stock` VALUES ('11', '14', '0');
INSERT INTO `stock` VALUES ('12', '15', '0');
INSERT INTO `stock` VALUES ('13', '16', '0');
INSERT INTO `stock` VALUES ('14', '17', '0');
INSERT INTO `stock` VALUES ('15', '18', '0');
INSERT INTO `stock` VALUES ('16', '19', '0');
INSERT INTO `stock` VALUES ('17', '20', '0');
INSERT INTO `stock` VALUES ('18', '21', '0');
INSERT INTO `stock` VALUES ('19', '22', '0');
INSERT INTO `stock` VALUES ('20', '23', '0');
INSERT INTO `stock` VALUES ('21', '24', '0');
INSERT INTO `stock` VALUES ('22', '25', '0');
INSERT INTO `stock` VALUES ('23', '26', '0');
INSERT INTO `stock` VALUES ('24', '27', '0');
INSERT INTO `stock` VALUES ('25', '28', '0');
INSERT INTO `stock` VALUES ('26', '29', '0');
INSERT INTO `stock` VALUES ('27', '30', '0');
INSERT INTO `stock` VALUES ('28', '31', '0');
INSERT INTO `stock` VALUES ('29', '32', '0');
INSERT INTO `stock` VALUES ('30', '33', '0');
INSERT INTO `stock` VALUES ('31', '34', '0');

-- ----------------------------
-- Table structure for stocks
-- ----------------------------
DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `goods` varchar(255) DEFAULT NULL,
  `inamount` int(11) DEFAULT NULL,
  `intime` datetime DEFAULT NULL,
  `outamount` int(11) DEFAULT NULL,
  `outtime` datetime DEFAULT NULL,
  `provide` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stocks
-- ----------------------------
