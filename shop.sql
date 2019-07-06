/*
Navicat MySQL Data Transfer

Source Server         : touch
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-13 16:38:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(20) NOT NULL DEFAULT '-1',
  `sid` int(20) NOT NULL,
  `img` varchar(500) DEFAULT NULL,
  `price` double(30,0) DEFAULT NULL,
  `num` int(50) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('17', '2', '1000017', 'img/image/111d275a-43db-474a-806e-e1b2de9f9290.jpg', '55', '8', '2018-03-11 00:00:00', '2018-03-12 00:00:00', '狗粮');
INSERT INTO `cart` VALUES ('22', '2', '1000012', 'img/image/e734f375-e001-450a-af37-d95ce0101bf0.jpg', '200', '1', '2018-03-12 01:38:03', '2018-03-12 01:34:13', '侏儒兔');
INSERT INTO `cart` VALUES ('23', '2', '100001', 'img/image/000ce46e-8464-41d0-ac16-9f6503574cee.jpg', '10000', '3', '2018-03-12 01:40:37', '2018-03-12 00:00:00', '布偶猫');
INSERT INTO `cart` VALUES ('41', '12', '1000014', 'img/image/32edf86e-2bd0-415d-9729-a6f28494264d.jpg', '5555', '1', '2018-05-02 05:54:50', '2018-05-02 05:54:50', '斗牛犬');
INSERT INTO `cart` VALUES ('42', '12', '1000029', 'img/image/8ed7b833-524c-42b7-92fb-c76b434ac126.jpg', '100', '1', '2018-05-02 06:04:37', '2018-05-02 06:04:37', '猫粮');
INSERT INTO `cart` VALUES ('43', '13', '100008', 'img/image/41e6be30-4d8a-4d4f-a172-62eca1e52661.jpg', '5555', '2', '2018-05-02 08:09:06', '2018-05-02 08:09:06', '秋田犬');
INSERT INTO `cart` VALUES ('48', '-1', '1000026', 'img/image/a1c6cb9e-8917-44ba-898f-ff5ef8bdd1e8.jpg', '77', '1', '2018-05-03 17:20:49', '2018-05-03 17:20:49', '刷子');
INSERT INTO `cart` VALUES ('51', '-1', '1000040', 'img/image/088b5ea9-93a0-40fc-93e7-d5ef49a9427b.jpg', '99', '1', '2018-05-03 17:28:18', '2018-05-03 17:28:18', '兔粮');
INSERT INTO `cart` VALUES ('52', '17', '100004', 'img/image/11ec3f27-4df9-4a62-9af9-7978a286373f.jpg', '5555', '1', '2018-05-08 15:19:53', '2018-05-08 15:19:53', '金毛');
INSERT INTO `cart` VALUES ('53', '17', '1000020', 'img/image/c71ff74f-fb16-4dd5-975e-6bc5a98557a2.jpg', '66', '1', '2018-05-08 15:22:12', '2018-05-08 15:22:12', '绳索');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('100001', '0', '狗狗');
INSERT INTO `category` VALUES ('100002', '0', '猫猫');
INSERT INTO `category` VALUES ('100003', '0', '兔子');
INSERT INTO `category` VALUES ('100004', '0', '玩具');
INSERT INTO `category` VALUES ('100005', '0', '食物');
INSERT INTO `category` VALUES ('100006', '0', '衣物');
INSERT INTO `category` VALUES ('100007', '0', '医疗');
INSERT INTO `category` VALUES ('100008', '0', '清洁');
INSERT INTO `category` VALUES ('100009', '1', '其他');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL,
  `payment` double(255,0) DEFAULT NULL,
  `postFee` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('0362b', '17', '55', '15', '1', '2018-05-03 17:36:59', '2018-05-03 17:36:59');
INSERT INTO `orders` VALUES ('17baf', '17', '77', '15', '1', '2018-05-03 17:21:02', '2018-05-03 17:21:02');
INSERT INTO `orders` VALUES ('2a535', '12', '366', '15', '1', '2018-05-02 03:57:33', '2018-05-02 03:57:33');
INSERT INTO `orders` VALUES ('4806c', '17', '5555', '15', '1', '2018-05-03 18:04:30', '2018-05-03 18:04:30');
INSERT INTO `orders` VALUES ('4a2ef', '17', '5621', '15', '1', '2018-05-03 21:41:08', '2018-05-03 21:41:08');
INSERT INTO `orders` VALUES ('63007', '17', '33', '15', '1', '2018-05-03 17:14:09', '2018-05-03 17:14:09');
INSERT INTO `orders` VALUES ('aa389', '17', '100', '15', '1', '2018-05-03 17:24:43', '2018-05-03 17:24:43');
INSERT INTO `orders` VALUES ('b311c', '17', '88', '15', '1', '2018-05-03 18:01:21', '2018-05-03 18:01:21');
INSERT INTO `orders` VALUES ('b47ab', '17', '77', '15', '1', '2018-05-03 18:09:29', '2018-05-03 18:09:29');
INSERT INTO `orders` VALUES ('e4e88', '18', '66', '15', '1', '2018-05-03 17:16:13', '2018-05-03 17:16:13');
INSERT INTO `orders` VALUES ('ef8a9', '17', '10000', '15', '1', '2018-05-04 11:38:00', '2018-05-04 11:38:00');
INSERT INTO `orders` VALUES ('f9e06', '18', '132', '15', '1', '2018-05-04 11:38:47', '2018-05-04 11:38:47');
INSERT INTO `orders` VALUES ('fbbf6', '18', '110', '15', '1', '2018-05-03 09:02:23', '2018-05-03 09:02:23');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `oid` varchar(50) NOT NULL DEFAULT '',
  `sid` int(11) NOT NULL,
  `num` int(11) DEFAULT NULL,
  `sname` varchar(60) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img` varchar(300) NOT NULL DEFAULT '',
  `totalFee` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('2a535', '1000024', '1', '保健', '166', 'img/image/d98294e2-0ad0-4836-9394-569740133d80.jpg', '166');
INSERT INTO `order_detail` VALUES ('2a535', '1000012', '1', '侏儒兔', '200', 'img/image/e734f375-e001-450a-af37-d95ce0101bf0.jpg', '200');
INSERT INTO `order_detail` VALUES ('096ad', '1000013', '1', '阿拉斯加', '5555', 'img/image/a7d277cb-1e96-420f-8511-499f7264ff51.jpg', '5555');
INSERT INTO `order_detail` VALUES ('096ad', '1000039', '1', '兔粮', '100', 'img/image/207b92cf-34f9-43a9-a2d0-568263300bbf.jpg', '100');
INSERT INTO `order_detail` VALUES ('fbbf6', '1000017', '2', '狗粮', '55', 'img/image/111d275a-43db-474a-806e-e1b2de9f9290.jpg', '110');
INSERT INTO `order_detail` VALUES ('63007', '1000016', '1', '玩具', '33', 'img/image/f75610d9-c68b-4806-87b4-1fba6a6a0f50.jpg', '33');
INSERT INTO `order_detail` VALUES ('e4e88', '1000021', '1', '香波', '66', 'img/image/56be3094-56b8-4aae-8660-f59c410ff248.jpg', '66');
INSERT INTO `order_detail` VALUES ('17baf', '1000026', '1', '刷子', '77', 'img/image/a1c6cb9e-8917-44ba-898f-ff5ef8bdd1e8.jpg', '77');
INSERT INTO `order_detail` VALUES ('aa389', '1000029', '1', '猫粮', '100', 'img/image/8ed7b833-524c-42b7-92fb-c76b434ac126.jpg', '100');
INSERT INTO `order_detail` VALUES ('0362b', '1000019', '1', '维生素', '55', 'img/image/351a6241-4f3d-4b56-96cf-67d4e1ffca57.jpg', '55');
INSERT INTO `order_detail` VALUES ('b311c', '1000025', '1', '狗窝', '88', 'img/image/56d9bced-029f-420f-8e13-e4aad7bdab59.jpg', '88');
INSERT INTO `order_detail` VALUES ('4806c', '100004', '1', '金毛', '5555', 'img/image/11ec3f27-4df9-4a62-9af9-7978a286373f.jpg', '5555');
INSERT INTO `order_detail` VALUES ('b47ab', '1000018', '1', '卫衣', '77', 'img/image/9d289f84-3734-403f-9e8f-584ab4295645.jpg', '77');
INSERT INTO `order_detail` VALUES ('4a2ef', '100009', '1', '萨摩耶', '5555', 'img/image/49ef93f1-1539-4cc3-880d-e9257b7c0d7a.jpg', '5555');
INSERT INTO `order_detail` VALUES ('4a2ef', '1000021', '1', '香波', '66', 'img/image/56be3094-56b8-4aae-8660-f59c410ff248.jpg', '66');
INSERT INTO `order_detail` VALUES ('ef8a9', '100006', '1', '布偶猫', '10000', 'img/image/ab841812-851c-4ce9-a10e-23b0b8d85e15.jpg', '10000');
INSERT INTO `order_detail` VALUES ('f9e06', '1000028', '2', '玩具', '66', 'img/image/108111de-19e2-4601-87c2-f28e20ee16d8.jpg', '132');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL COMMENT '分类编号',
  `name` varchar(50) NOT NULL,
  `price` double(20,0) DEFAULT NULL,
  `stock` bigint(20) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1000041 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('100001', '100001', '布偶猫', '9999', '500', 'img/image/000ce46e-8464-41d0-ac16-9f6503574cee.jpg');
INSERT INTO `product` VALUES ('100002', '100001', '柴犬', '5555', '200', 'img/image/db1189af-f239-46b1-8b8e-072f5d856504.jpg');
INSERT INTO `product` VALUES ('100003', '100001', '哈士奇', '5555', '4444', 'img/image/4639f82a-78a9-4aa3-8c21-f3a701350913.jpg');
INSERT INTO `product` VALUES ('100004', '100001', '金毛', '5555', '11', 'img/image/11ec3f27-4df9-4a62-9af9-7978a286373f.jpg');
INSERT INTO `product` VALUES ('100005', '100002', '橘猫', '3333', '200', 'img/image/456a1b5e-b98f-4ba4-bf52-8914ea2913d4.jpg');
INSERT INTO `product` VALUES ('100006', '100002', '布偶猫', '10000', '333', 'img/image/ab841812-851c-4ce9-a10e-23b0b8d85e15.jpg');
INSERT INTO `product` VALUES ('100007', '100002', '美短', '5555', '456', 'img/image/58cd09c6-8f81-47c6-b410-d9c49d512173.jpg');
INSERT INTO `product` VALUES ('100008', '100001', '秋田犬', '5555', '100', 'img/image/41e6be30-4d8a-4d4f-a172-62eca1e52661.jpg');
INSERT INTO `product` VALUES ('100009', '100001', '萨摩耶', '5555', '1111', 'img/image/49ef93f1-1539-4cc3-880d-e9257b7c0d7a.jpg');
INSERT INTO `product` VALUES ('1000010', '100002', '暹罗猫', '9999', '400', 'img/image/2adabee8-8a07-4215-999c-9b66eb5b6906.jpg');
INSERT INTO `product` VALUES ('1000012', '100003', '侏儒兔', '200', '300', 'img/image/e734f375-e001-450a-af37-d95ce0101bf0.jpg');
INSERT INTO `product` VALUES ('1000013', '100001', '阿拉斯加', '5555', '100', 'img/image/a7d277cb-1e96-420f-8511-499f7264ff51.jpg');
INSERT INTO `product` VALUES ('1000014', '100001', '斗牛犬', '5555', '666', 'img/image/32edf86e-2bd0-415d-9729-a6f28494264d.jpg');
INSERT INTO `product` VALUES ('1000015', '100001', '拉布拉多', '5555', '30', 'img/image/7f018b65-7052-4cde-8f75-d1e5b30f189e.jpg');
INSERT INTO `product` VALUES ('1000016', '100004', '玩具', '33', '99', 'img/image/f75610d9-c68b-4806-87b4-1fba6a6a0f50.jpg');
INSERT INTO `product` VALUES ('1000017', '100005', '狗粮', '55', '99', 'img/image/111d275a-43db-474a-806e-e1b2de9f9290.jpg');
INSERT INTO `product` VALUES ('1000018', '100006', '卫衣', '77', '88', 'img/image/9d289f84-3734-403f-9e8f-584ab4295645.jpg');
INSERT INTO `product` VALUES ('1000019', '100007', '维生素', '55', '88', 'img/image/351a6241-4f3d-4b56-96cf-67d4e1ffca57.jpg');
INSERT INTO `product` VALUES ('1000020', '100009', '绳索', '66', '888', 'img/image/c71ff74f-fb16-4dd5-975e-6bc5a98557a2.jpg');
INSERT INTO `product` VALUES ('1000021', '100008', '香波', '66', '888', 'img/image/56be3094-56b8-4aae-8660-f59c410ff248.jpg');
INSERT INTO `product` VALUES ('1000024', '100007', '保健', '166', '999', 'img/image/d98294e2-0ad0-4836-9394-569740133d80.jpg');
INSERT INTO `product` VALUES ('1000025', '100009', '狗窝', '88', '666', 'img/image/56d9bced-029f-420f-8e13-e4aad7bdab59.jpg');
INSERT INTO `product` VALUES ('1000026', '100008', '刷子', '77', '888', 'img/image/a1c6cb9e-8917-44ba-898f-ff5ef8bdd1e8.jpg');
INSERT INTO `product` VALUES ('1000028', '100004', '玩具', '66', '999', 'img/image/108111de-19e2-4601-87c2-f28e20ee16d8.jpg');
INSERT INTO `product` VALUES ('1000029', '100005', '猫粮', '100', '5', 'img/image/8ed7b833-524c-42b7-92fb-c76b434ac126.jpg');
INSERT INTO `product` VALUES ('1000040', '100006', '兔粮', '99', '50', 'img/image/088b5ea9-93a0-40fc-93e7-d5ef49a9427b.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `ques` varchar(20) DEFAULT NULL,
  `answer` varchar(20) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'root', 'root', 'root', 'root', '1');
INSERT INTO `user` VALUES ('17', 'aaaa', 'aaaa', 'aaaa', 'aaaa', '0');
INSERT INTO `user` VALUES ('18', 'admin', 'admin', 'admin', 'admin', '1');
INSERT INTO `user` VALUES ('19', 'test', 'test', 'test', 'test', '1');
