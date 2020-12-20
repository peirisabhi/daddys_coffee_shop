/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306_v8
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : daddys_coffee_shop_db

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 20/12/2020 19:40:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (20);

-- ----------------------------
-- Table structure for hibernate_sequences
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequences`;
CREATE TABLE `hibernate_sequences`  (
  `sequence_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `next_val` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`sequence_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequences
-- ----------------------------
INSERT INTO `hibernate_sequences` VALUES ('default', 1);

-- ----------------------------
-- Table structure for tbl_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order`  (
  `order_id` int(0) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `product_master_id` int(0) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES (14, 'negombo', 'abhi@gmail.com', 'abhishek', 'peiris', 'empty', '07188054', 1, 'Pending');
INSERT INTO `tbl_order` VALUES (15, 'negombo', 'abhi@gmail.com', 'abhishek', 'peiris', 'empty', '07188054', 1, 'Pending');
INSERT INTO `tbl_order` VALUES (16, 'h,h', 'h,hx', '7t88', 'uxujjjj', 'cffff', '00', 6, NULL);
INSERT INTO `tbl_order` VALUES (17, 'hh', 'bhh', 'rff', 'hhhh', 'ggg', '666', 5, 'Pending');
INSERT INTO `tbl_order` VALUES (18, 'hxy', 'hxhxh', 'd6dsy', 'jxuuy', 'ufyd', '6868', 5, 'Pending');
INSERT INTO `tbl_order` VALUES (19, 'bbj', 'nnj', 'hjnn', 'bnnn', 'hh', '9999', 1, 'Pending');

-- ----------------------------
-- Table structure for tbl_product
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product`  (
  `product_id` int(0) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `price` double(11, 2) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(0) NULL DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES (1, 'aaaa', 'asa asa asa', 1222.00, NULL, 1, '1.png');
INSERT INTO `tbl_product` VALUES (2, 'asasas', 'asa asa asa', 900.00, NULL, 0, '2.png');
INSERT INTO `tbl_product` VALUES (3, 'asasas', 'asa asa asa', 1222.00, NULL, 0, '3.png');
INSERT INTO `tbl_product` VALUES (4, 'asasas', 'asa asa asa', 1222.00, NULL, 0, '4.png');
INSERT INTO `tbl_product` VALUES (5, 'asasas', 'asa asa asa', 1222.00, NULL, 1, '5.png');
INSERT INTO `tbl_product` VALUES (6, 'asasas', 'asa asa asa', 1222.00, NULL, 1, '6.png');
INSERT INTO `tbl_product` VALUES (7, 'asasas', 'asa asa asa', 1222.00, NULL, 1, '7.png');
INSERT INTO `tbl_product` VALUES (8, 'asasas', 'asa asa asa', 1222.00, '2020-12-19 16:27:19', 1, '8.png');
INSERT INTO `tbl_product` VALUES (9, 'asasas', 'asa asa asa', 1222.00, '2020-12-19 17:12:13', 1, '9.png');

-- ----------------------------
-- Table structure for tbl_product_image
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_image`;
CREATE TABLE `tbl_product_image`  (
  `product_image_id` int(0) NOT NULL AUTO_INCREMENT,
  `product_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `product_master_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`product_image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
