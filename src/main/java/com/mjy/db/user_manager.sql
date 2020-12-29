/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 23/12/2020 21:34:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_manager
-- ----------------------------
DROP TABLE IF EXISTS `user_manager`;
CREATE TABLE `user_manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` int(11) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `duty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile_telephone_num` int(11) NULL DEFAULT NULL,
  `family_telephone_num` int(11) NULL DEFAULT NULL,
  `work_telephone_num` int(11) NULL DEFAULT NULL,
  `fax_num` int(11) NULL DEFAULT NULL,
  `MSN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personal_page` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_manager
-- ----------------------------
INSERT INTO `user_manager` VALUES (1, '2018-09-01', '马家园', '男', 184804078, '107354', '软件学院', '学习', '982474916@qq.com', 1551808, 1593860, 12345678, 1210, 'sadaf', '2000-01-10', '我的主页', '河南省安阳市安阳师范学院', '无');
INSERT INTO `user_manager` VALUES (5, '2020-01-30', '张三', '女', 181889, 'jiayuan1', '市场部', '一般员工', '982474916', 1963874, 1593788, 990, 123, '15564', '2000-01-10', '我的一天', '河南省周口市西华县清河驿乡', '无');
INSERT INTO `user_manager` VALUES (7, '1998', '李四', '女', 123456, '553521Df', '财务部', '主任', '4546@qq.com', 2, 1, 3, 2, '4', '1999', 'www.baidu.com', '安阳', 'wu');
INSERT INTO `user_manager` VALUES (8, '2020-01-30', '小明', '男', 181889, 'liu123456', '财务部', '主任', '2528577269@qq.com', 182, 159387, 880, 789, '36', '1968-01-20', 'www.douyu.com', '河南省安阳市安阳师范学院', '是一个学生');
INSERT INTO `user_manager` VALUES (9, '2020-01-30', '小明', '男', 181889, '553521Df', '市场部', '主任', '2528577269@qq.com', 182, 159387, 880, 789, '36', '2000-01-10', 'www.douyu.com', '河南省安阳市安阳师范学院', '是一个学生');
INSERT INTO `user_manager` VALUES (10, '2020-01-30', '小明', '男', 181889, '553521Df', '市场部', '一般员工', '2528577269@qq.com', 182, 159387, 880, 789, '36', '2000-01-10', 'www.douyu.com', '河南省安阳市安阳师范学院', '是一个学生');
INSERT INTO `user_manager` VALUES (16, '2020-01-30', '小明', '男', 181889, '553521Df', '市场部', '一般员工', '2528577269@qq.com', 182, 159387, 880, 789, '36', '2000-01-10', 'www.douyu.com', '河南省安阳市安阳师范学院', '是一个学生');

SET FOREIGN_KEY_CHECKS = 1;
