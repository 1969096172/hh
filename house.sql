/*
Navicat MySQL Data Transfer

Source Server         : a1
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2020-12-19 23:11:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(11) DEFAULT NULL,
  `adminname` varchar(20) DEFAULT NULL,
  `adminpassword` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for appoint
-- ----------------------------
DROP TABLE IF EXISTS `appoint`;
CREATE TABLE `appoint` (
  `appointid` int(11) NOT NULL,
  `appointdata` varchar(20) DEFAULT NULL,
  `appointtime` varchar(20) DEFAULT NULL,
  `appointstate` varchar(20) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `houseid` int(11) DEFAULT NULL,
  PRIMARY KEY (`appointid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appoint
-- ----------------------------

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `areaid` int(2) NOT NULL,
  `areaname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '锦江');
INSERT INTO `area` VALUES ('2', '青羊');
INSERT INTO `area` VALUES ('3', '武侯');
INSERT INTO `area` VALUES ('4', '高新');
INSERT INTO `area` VALUES ('5', '成华');
INSERT INTO `area` VALUES ('6', '金牛');
INSERT INTO `area` VALUES ('7', '天府新区');
INSERT INTO `area` VALUES ('8', '高新西');
INSERT INTO `area` VALUES ('9', '双流');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `houseid` int(11) NOT NULL,
  `rent` int(11) DEFAULT NULL,
  `direction` varchar(20) DEFAULT NULL,
  `period` varchar(20) DEFAULT NULL,
  `detailaddress` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `floor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `elevator` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `admind` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `areaid` int(11) DEFAULT NULL,
  `imgone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imgtwo` varchar(255) DEFAULT NULL,
  `imgthree` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`houseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '1800', '西', '1个月以上', '天益街83号', '0', '17/37层', '有', '1', '1', '1', null, null, null);

-- ----------------------------
-- Table structure for housetype
-- ----------------------------
DROP TABLE IF EXISTS `housetype`;
CREATE TABLE `housetype` (
  `typeid` int(11) NOT NULL,
  `typename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of housetype
-- ----------------------------
INSERT INTO `housetype` VALUES ('1', '一居');
INSERT INTO `housetype` VALUES ('2', '二居');
INSERT INTO `housetype` VALUES ('3', '三居');
INSERT INTO `housetype` VALUES ('4', '四居');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderid` int(11) NOT NULL,
  `ordertime` varchar(20) DEFAULT NULL,
  `starttime` varchar(20) DEFAULT NULL,
  `endtime` varchar(20) DEFAULT NULL,
  `money` int(20) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `houseid` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `useraccount` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userpassword` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usertel` int(11) NOT NULL,
  `useraddress` varchar(50) DEFAULT NULL,
  `usermoney` int(11) DEFAULT NULL,
  `usersex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usercard` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'user', '123456', '王北北', '1369825045', '成都职业技术学院', '1000000', '女', '51032220001025176x');
