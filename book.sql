/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : book

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 07/03/2019 17:20:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `b_admin_user`;
CREATE TABLE `b_admin_user`  (
  `userId` int(10) NOT NULL COMMENT '用户ID',
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '昵称',
  `passWord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '密码',
  `createTime` timestamp(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `state` int(1) DEFAULT 1 COMMENT '状态 1正常 0冻结',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_admin_user
-- ----------------------------
INSERT INTO `b_admin_user` VALUES (1, 'admin', '123456', '2019-03-01 15:01:36', 1);

-- ----------------------------
-- Table structure for b_book
-- ----------------------------
DROP TABLE IF EXISTS `b_book`;
CREATE TABLE `b_book`  (
  `bookId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书本id',
  `bookName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '书本名称',
  `bookCateId` int(11) DEFAULT NULL COMMENT '书本分类iD',
  `bookCateName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '书本分类名称',
  `bookPic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '书本封面',
  `bookInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '书本简介',
  `bookAuthor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '作者',
  `clickNum` int(255) DEFAULT NULL COMMENT '点击量',
  `recommendNum` int(11) DEFAULT NULL COMMENT '推荐量',
  `articleState` int(1) DEFAULT 1 COMMENT '文章状态',
  PRIMARY KEY (`bookId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for b_category
-- ----------------------------
DROP TABLE IF EXISTS `b_category`;
CREATE TABLE `b_category`  (
  `cateId` int(11) NOT NULL COMMENT '分类ID',
  `cateName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '分类名称',
  `createTime` timestamp(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`cateId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_category
-- ----------------------------
INSERT INTO `b_category` VALUES (1, '玄幻魔法', '2019-03-01 15:04:42');
INSERT INTO `b_category` VALUES (2, NULL, '2019-03-04 10:31:19');
INSERT INTO `b_category` VALUES (3, NULL, '2019-03-04 10:31:21');
INSERT INTO `b_category` VALUES (4, NULL, '2019-03-04 10:31:23');
INSERT INTO `b_category` VALUES (5, NULL, '2019-03-04 10:31:25');
INSERT INTO `b_category` VALUES (6, NULL, '2019-03-04 10:31:27');
INSERT INTO `b_category` VALUES (7, NULL, '2019-03-04 10:31:30');
INSERT INTO `b_category` VALUES (8, NULL, '2019-03-04 10:31:32');
INSERT INTO `b_category` VALUES (9, NULL, '2019-03-04 10:31:34');
INSERT INTO `b_category` VALUES (10, NULL, '2019-03-04 10:31:39');

SET FOREIGN_KEY_CHECKS = 1;
