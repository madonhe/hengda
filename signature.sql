/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : signature

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-03-28 11:26:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `exit_room`
-- ----------------------------
DROP TABLE IF EXISTS `exit_room`;
CREATE TABLE `exit_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `start_time` datetime NOT NULL,
  `stop_time` datetime DEFAULT NULL,
  `bj` char(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exit_room
-- ----------------------------
INSERT INTO `exit_room` VALUES ('1', 'DB', '2018-03-17 11:43:36', '2018-03-17 11:49:58', '卫生间');
INSERT INTO `exit_room` VALUES ('2', 'DB', '2018-03-17 12:08:30', '2018-03-17 12:15:02', '出去下');
INSERT INTO `exit_room` VALUES ('3', '熊猫', '2018-03-17 12:08:42', '2018-03-17 12:15:05', '出去下');
INSERT INTO `exit_room` VALUES ('4', 'DB', '2018-03-17 14:27:28', '2018-03-17 14:29:58', '卫生间');
INSERT INTO `exit_room` VALUES ('5', 'DB', '2018-03-17 15:37:21', '2018-03-17 15:40:29', '卫生间');
INSERT INTO `exit_room` VALUES ('6', 'DB', '2018-03-19 11:18:09', '2018-03-19 11:27:10', '卫生间');
INSERT INTO `exit_room` VALUES ('7', 'DB', '2018-03-19 14:41:08', '2018-03-19 14:43:52', '卫生间');
INSERT INTO `exit_room` VALUES ('8', 'DB', '2018-03-19 15:49:26', '2018-03-24 15:50:42', '卫生间');
INSERT INTO `exit_room` VALUES ('9', 'GOLDENFISH', '2018-03-24 16:40:15', '2018-03-24 17:32:16', '卫生间');
INSERT INTO `exit_room` VALUES ('10', 'chunjuan', '2018-03-24 16:48:55', '2018-03-24 16:54:40', '卫生间');
INSERT INTO `exit_room` VALUES ('11', 'DB', '2018-03-24 17:25:26', '2018-03-24 17:56:10', '出去下');
INSERT INTO `exit_room` VALUES ('12', 'DB', '2018-03-26 14:55:59', '2018-03-26 15:01:48', '卫生间');
INSERT INTO `exit_room` VALUES ('13', 'fengye', '2018-03-26 17:43:53', '2018-03-26 17:48:36', '出去下');
INSERT INTO `exit_room` VALUES ('14', 'DB', '2018-03-27 14:34:23', '2018-03-27 14:49:18', '卫生间');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '?”¨??·???',
  `name_cn` varchar(50) NOT NULL COMMENT '??-?–????',
  `password` varchar(50) NOT NULL COMMENT '?”¨??·?ˉ????',
  `email` varchar(50) DEFAULT NULL COMMENT '?”μ?-?é?????',
  `mobile` varchar(11) NOT NULL COMMENT '?‰???o??·???',
  `role` varchar(10) NOT NULL COMMENT '1:sa;2:php;3:ios;4:test',
  `status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '?????o?—?é—′',
  `last_time` datetime DEFAULT NULL COMMENT '??€??????????—?é—′',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1 COMMENT='?”¨??·è?¨';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('70', 'pc', 'pc', '0d56a13fff7a4616dc274f34dce72e16', null, '11232131232', 'admin', '0', null, null);
INSERT INTO `users` VALUES ('71', 'test', 'test\r\n', '0d56a13fff7a4616dc274f34dce72e16', null, '343443', 'CU', '0', null, null);
INSERT INTO `users` VALUES ('72', 'GoldenFish', '??', '9e502ad53f54db12292f137e6df65d3e', '', '86889524', 'CU', '0', null, null);
INSERT INTO `users` VALUES ('73', 'chunjuan', 'chunjuan', '1add6ea86fa04c95d2d4e3e832b57f89', 'chunjuan8999@icloud.com', '', 'CU', '0', null, null);
