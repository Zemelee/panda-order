/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : order

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 19/06/2023 11:32:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_pwd` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin1', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `admin` VALUES (2, 'admin2', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for adminrecord
-- ----------------------------
DROP TABLE IF EXISTS `adminrecord`;
CREATE TABLE `adminrecord`  (
  `loginId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loginIp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`loginId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminrecord
-- ----------------------------
INSERT INTO `adminrecord` VALUES (1, 'admin1', '0:0:0:0:0:0:0:1', '2023-06-13 11:32:30');
INSERT INTO `adminrecord` VALUES (2, 'admin2', '192.168.137.120', '2023-06-13 11:35:00');
INSERT INTO `adminrecord` VALUES (3, 'admin2', '192.168.137.120', '2023-06-13 11:44:15');
INSERT INTO `adminrecord` VALUES (4, 'admin1', '192.168.137.120', '2023-06-13 11:45:32');
INSERT INTO `adminrecord` VALUES (5, 'admin1', '192.168.137.51', '2023-06-13 14:52:33');
INSERT INTO `adminrecord` VALUES (6, 'admin1', '192.168.137.51', '2023-06-13 14:53:48');
INSERT INTO `adminrecord` VALUES (7, 'admin1', '192.168.137.127', '2023-06-14 09:15:11');
INSERT INTO `adminrecord` VALUES (8, 'admin1', '192.168.137.105', '2023-06-14 11:22:07');
INSERT INTO `adminrecord` VALUES (9, 'admin1', '192.168.137.105', '2023-06-14 11:24:02');
INSERT INTO `adminrecord` VALUES (10, 'admin1', '192.168.137.105', '2023-06-14 11:24:32');
INSERT INTO `adminrecord` VALUES (11, 'admin1', '192.168.137.127', '2023-06-14 11:24:45');
INSERT INTO `adminrecord` VALUES (12, 'admin1', '192.168.137.105', '2023-06-14 11:29:30');
INSERT INTO `adminrecord` VALUES (13, 'admin1', '192.168.137.105', '2023-06-14 11:45:22');
INSERT INTO `adminrecord` VALUES (14, 'admin1', '192.168.137.105', '2023-06-14 11:49:10');
INSERT INTO `adminrecord` VALUES (15, 'admin1', '192.168.137.105', '2023-06-14 14:05:21');
INSERT INTO `adminrecord` VALUES (16, 'admin1', '192.168.137.105', '2023-06-14 14:05:22');
INSERT INTO `adminrecord` VALUES (17, 'admin1', '192.168.137.105', '2023-06-14 14:08:24');
INSERT INTO `adminrecord` VALUES (18, 'admin1', '192.168.137.105', '2023-06-14 14:16:46');
INSERT INTO `adminrecord` VALUES (19, 'admin1', '192.168.137.105', '2023-06-14 14:46:40');
INSERT INTO `adminrecord` VALUES (20, 'admin1', '192.168.137.105', '2023-06-14 14:55:25');
INSERT INTO `adminrecord` VALUES (21, 'admin1', '192.168.137.105', '2023-06-14 14:57:43');
INSERT INTO `adminrecord` VALUES (22, 'admin1', '192.168.137.105', '2023-06-14 15:37:23');
INSERT INTO `adminrecord` VALUES (23, 'admin1', '192.168.137.105', '2023-06-14 15:37:41');
INSERT INTO `adminrecord` VALUES (24, 'admin1', '192.168.137.127', '2023-06-14 16:38:54');
INSERT INTO `adminrecord` VALUES (25, 'admin1', '192.168.137.127', '2023-06-14 17:34:04');
INSERT INTO `adminrecord` VALUES (26, 'admin1', '192.168.137.127', '2023-06-15 09:57:05');
INSERT INTO `adminrecord` VALUES (27, 'admin2', '192.168.137.127', '2023-06-15 10:50:41');
INSERT INTO `adminrecord` VALUES (28, 'admin1', '192.168.137.105', '2023-06-15 11:18:11');
INSERT INTO `adminrecord` VALUES (29, 'admin1', '192.168.137.105', '2023-06-15 16:33:33');
INSERT INTO `adminrecord` VALUES (30, 'admin1', '192.168.137.221', '2023-06-15 16:55:25');
INSERT INTO `adminrecord` VALUES (31, 'admin1', '192.168.137.105', '2023-06-16 09:16:51');
INSERT INTO `adminrecord` VALUES (32, 'admin2', '192.168.137.221', '2023-06-16 09:39:07');
INSERT INTO `adminrecord` VALUES (33, 'admin1', '192.168.137.221', '2023-06-16 10:19:42');
INSERT INTO `adminrecord` VALUES (34, 'admin1', '192.168.137.221', '2023-06-16 10:48:19');
INSERT INTO `adminrecord` VALUES (35, 'admin2', '192.168.137.221', '2023-06-16 11:21:35');
INSERT INTO `adminrecord` VALUES (36, 'admin1', '192.168.137.221', '2023-06-16 11:28:30');
INSERT INTO `adminrecord` VALUES (37, 'admin1', '192.168.137.127', '2023-06-16 11:42:17');
INSERT INTO `adminrecord` VALUES (38, 'admin1', '192.168.137.127', '2023-06-16 12:01:15');
INSERT INTO `adminrecord` VALUES (39, 'admin1', '192.168.137.127', '2023-06-16 14:07:34');
INSERT INTO `adminrecord` VALUES (40, 'admin1', '192.168.137.127', '2023-06-16 14:17:02');
INSERT INTO `adminrecord` VALUES (41, 'admin1', '192.168.137.127', '2023-06-16 14:48:11');
INSERT INTO `adminrecord` VALUES (42, 'admin1', '192.168.137.127', '2023-06-16 16:28:19');
INSERT INTO `adminrecord` VALUES (43, 'admin1', '192.168.137.127', '2023-06-18 09:21:18');
INSERT INTO `adminrecord` VALUES (44, 'admin1', '192.168.137.127', '2023-06-18 09:49:58');
INSERT INTO `adminrecord` VALUES (45, 'admin1', '192.168.137.127', '2023-06-18 09:55:19');
INSERT INTO `adminrecord` VALUES (46, 'admin2', '192.168.137.127', '2023-06-18 10:20:15');
INSERT INTO `adminrecord` VALUES (47, 'admin1', '192.168.137.127', '2023-06-18 10:22:04');
INSERT INTO `adminrecord` VALUES (48, 'admin1', '192.168.137.105', '2023-06-18 11:08:11');
INSERT INTO `adminrecord` VALUES (49, 'admin1', '192.168.137.127', '2023-06-19 09:46:20');

-- ----------------------------
-- Table structure for dealrecord
-- ----------------------------
DROP TABLE IF EXISTS `dealrecord`;
CREATE TABLE `dealrecord`  (
  `user_id` int(11) NOT NULL,
  `dish_id` int(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_time` datetime(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dealrecord
-- ----------------------------
INSERT INTO `dealrecord` VALUES (2, 3, 1, '2023-06-03 14:57:21');
INSERT INTO `dealrecord` VALUES (3, 1, 3, '2023-06-05 17:51:16');
INSERT INTO `dealrecord` VALUES (5, 1, 3, '2023-06-05 17:51:44');
INSERT INTO `dealrecord` VALUES (7, 1, 3, '2023-06-05 17:52:03');
INSERT INTO `dealrecord` VALUES (7, 6, 3, '2023-06-05 17:52:14');
INSERT INTO `dealrecord` VALUES (7, 3, 3, '2023-06-05 18:23:10');
INSERT INTO `dealrecord` VALUES (28, 2, 2, '2023-06-12 21:57:23');
INSERT INTO `dealrecord` VALUES (28, 1, 1, '2023-06-12 21:57:23');
INSERT INTO `dealrecord` VALUES (28, 8, 1, '2023-06-12 22:01:32');
INSERT INTO `dealrecord` VALUES (28, 7, 1, '2023-06-12 22:01:32');
INSERT INTO `dealrecord` VALUES (28, 9, 1, '2023-06-12 22:01:32');
INSERT INTO `dealrecord` VALUES (28, 1, 4, '2023-06-12 22:02:08');
INSERT INTO `dealrecord` VALUES (28, 1, 4, '2023-06-12 22:03:33');
INSERT INTO `dealrecord` VALUES (28, 1, 1, '2023-06-13 09:04:45');
INSERT INTO `dealrecord` VALUES (28, 2, 1, '2023-06-13 09:04:45');
INSERT INTO `dealrecord` VALUES (28, 15, 1, '2023-06-13 09:04:45');
INSERT INTO `dealrecord` VALUES (29, 1, 1, '2023-06-13 09:30:34');
INSERT INTO `dealrecord` VALUES (29, 2, 1, '2023-06-13 09:30:34');
INSERT INTO `dealrecord` VALUES (29, 14, 1, '2023-06-13 09:30:34');
INSERT INTO `dealrecord` VALUES (29, 3, 1, '2023-06-13 09:30:34');
INSERT INTO `dealrecord` VALUES (29, 15, 1, '2023-06-13 09:30:34');
INSERT INTO `dealrecord` VALUES (29, 1, 1, '2023-06-13 10:54:13');
INSERT INTO `dealrecord` VALUES (29, 15, 1, '2023-06-13 10:54:13');
INSERT INTO `dealrecord` VALUES (29, 17, 1, '2023-06-13 10:54:13');
INSERT INTO `dealrecord` VALUES (29, 17, 2, '2023-06-13 10:55:00');
INSERT INTO `dealrecord` VALUES (29, 1, 1, '2023-06-13 10:55:00');
INSERT INTO `dealrecord` VALUES (29, 2, 1, '2023-06-13 10:55:00');
INSERT INTO `dealrecord` VALUES (29, 1, 2, '2023-06-13 15:58:39');
INSERT INTO `dealrecord` VALUES (29, 18, 1, '2023-06-13 15:58:39');
INSERT INTO `dealrecord` VALUES (29, 2, 1, '2023-06-13 15:58:39');
INSERT INTO `dealrecord` VALUES (28, 1, 1, '2023-06-13 18:03:26');
INSERT INTO `dealrecord` VALUES (28, 3, 1, '2023-06-13 18:03:26');
INSERT INTO `dealrecord` VALUES (28, 2, 1, '2023-06-13 18:03:26');
INSERT INTO `dealrecord` VALUES (28, 2, 9, '2023-06-13 18:03:41');
INSERT INTO `dealrecord` VALUES (31, 2, 1, '2023-06-13 18:25:16');
INSERT INTO `dealrecord` VALUES (31, 3, 1, '2023-06-13 18:25:16');
INSERT INTO `dealrecord` VALUES (32, 1, 1, '2023-06-14 09:55:30');
INSERT INTO `dealrecord` VALUES (32, 3, 2, '2023-06-14 09:55:35');
INSERT INTO `dealrecord` VALUES (32, 6, 1, '2023-06-14 09:55:41');
INSERT INTO `dealrecord` VALUES (29, 1, 1, '2023-06-14 10:35:00');
INSERT INTO `dealrecord` VALUES (29, 2, 1, '2023-06-14 10:35:00');
INSERT INTO `dealrecord` VALUES (7, 3, 3, '2023-06-14 11:34:41');
INSERT INTO `dealrecord` VALUES (29, 1, 1, '2023-06-14 11:35:14');
INSERT INTO `dealrecord` VALUES (29, 4, 1, '2023-06-14 15:06:05');
INSERT INTO `dealrecord` VALUES (29, 2, 1, '2023-06-14 15:06:05');
INSERT INTO `dealrecord` VALUES (29, 5, 1, '2023-06-14 15:06:05');
INSERT INTO `dealrecord` VALUES (29, 19, 1, '2023-06-14 15:06:05');
INSERT INTO `dealrecord` VALUES (29, 17, 2, '2023-06-14 15:06:05');
INSERT INTO `dealrecord` VALUES (29, 15, 1, '2023-06-14 15:06:05');
INSERT INTO `dealrecord` VALUES (29, 17, 1, '2023-06-14 15:06:20');
INSERT INTO `dealrecord` VALUES (29, 2, 1, '2023-06-14 15:06:20');
INSERT INTO `dealrecord` VALUES (29, 1, 1, '2023-06-14 16:03:25');
INSERT INTO `dealrecord` VALUES (33, 1, 1, '2023-06-15 09:23:21');
INSERT INTO `dealrecord` VALUES (33, 3, 1, '2023-06-15 09:23:21');
INSERT INTO `dealrecord` VALUES (33, 2, 1, '2023-06-15 09:23:21');
INSERT INTO `dealrecord` VALUES (33, 19, 20, '2023-06-15 10:02:23');
INSERT INTO `dealrecord` VALUES (32, 1, 1, '2023-06-15 10:39:01');
INSERT INTO `dealrecord` VALUES (32, 2, 1, '2023-06-15 10:39:01');
INSERT INTO `dealrecord` VALUES (32, 3, 1, '2023-06-15 10:39:01');
INSERT INTO `dealrecord` VALUES (32, 18, 1, '2023-06-15 10:39:01');
INSERT INTO `dealrecord` VALUES (32, 17, 1, '2023-06-15 10:39:01');
INSERT INTO `dealrecord` VALUES (34, 1, 1, '2023-06-15 10:51:36');
INSERT INTO `dealrecord` VALUES (34, 2, 1, '2023-06-15 10:51:36');
INSERT INTO `dealrecord` VALUES (34, 1, 3, '2023-06-15 10:51:41');
INSERT INTO `dealrecord` VALUES (34, 6, 4, '2023-06-15 10:51:47');
INSERT INTO `dealrecord` VALUES (34, 6, 1, '2023-06-15 10:52:02');
INSERT INTO `dealrecord` VALUES (28, 13, 3, '2023-06-15 11:11:36');
INSERT INTO `dealrecord` VALUES (28, 15, 3, '2023-06-15 11:11:36');
INSERT INTO `dealrecord` VALUES (28, 1, 4, '2023-06-15 11:12:19');
INSERT INTO `dealrecord` VALUES (28, 2, 4, '2023-06-15 11:12:19');
INSERT INTO `dealrecord` VALUES (28, 3, 4, '2023-06-15 11:12:20');
INSERT INTO `dealrecord` VALUES (29, 19, 1, '2023-06-15 15:55:35');
INSERT INTO `dealrecord` VALUES (29, 16, 1, '2023-06-15 15:55:35');
INSERT INTO `dealrecord` VALUES (1, 2, 1, '2023-06-15 16:26:16');
INSERT INTO `dealrecord` VALUES (1, 1, 1, '2023-06-15 16:26:16');
INSERT INTO `dealrecord` VALUES (1, 18, 1, '2023-06-15 16:26:16');
INSERT INTO `dealrecord` VALUES (1, 15, 1, '2023-06-15 16:26:16');
INSERT INTO `dealrecord` VALUES (1, 14, 2, '2023-06-15 16:26:16');
INSERT INTO `dealrecord` VALUES (36, 2, 2, '2023-06-16 10:10:25');
INSERT INTO `dealrecord` VALUES (36, 2, 1, '2023-06-16 10:10:34');
INSERT INTO `dealrecord` VALUES (29, 3, 1, '2023-06-16 11:38:25');
INSERT INTO `dealrecord` VALUES (29, 1, 1, '2023-06-16 11:38:25');
INSERT INTO `dealrecord` VALUES (36, 19, 2, '2023-06-16 12:06:55');

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish`  (
  `dish_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(255) NULL DEFAULT NULL,
  `category` int(255) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `picture_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(255) NULL DEFAULT NULL,
  `sales` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销售总量',
  `details` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `likes` int(255) NULL DEFAULT 0 COMMENT '点赞量',
  PRIMARY KEY (`dish_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES (1, '回锅肉', 26, 1, '回国？', 'http://47.109.93.110/order/%E5%9B%9E%E9%94%85%E8%82%89.jpg', 2, 50, '回锅肉是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n\\n·1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\\n · \n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 36);
INSERT INTO `dish` VALUES (2, '烧白', 30, 1, '耗费', 'http://47.109.93.110/order/%E7%83%A7%E7%99%BD.jpg', 2, 54, '烧白是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 30);
INSERT INTO `dish` VALUES (3, '酸菜鱼', 35, 1, '酸菜和鱼做的', 'http://47.109.93.110/order/%E9%85%B8%E8%8F%9C%E9%B1%BC.jpg', 2, 43, '酸菜鱼是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 39);
INSERT INTO `dish` VALUES (4, '老妈蹄花', 40, 1, '老妈做的', 'http://47.109.93.110/order/%E8%80%81%E5%A6%88%E8%B9%84%E8%8A%B1.jpg', 2, 44, '老妈荻花是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 43);
INSERT INTO `dish` VALUES (5, '酱爆鸭', 32, 1, '鼠鼠我呀叫鸭子', 'http://47.109.93.110/order/%E9%85%B1%E7%88%86%E9%B8%AD.jpg', 2, 55, '将龅牙是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 54);
INSERT INTO `dish` VALUES (6, '红烧肉', 28, 1, '红烧肉，蛤肉', 'http://47.109.93.110/order/%E7%BA%A2%E7%83%A7%E8%82%89.jpg', 2, 28, '红苕揉是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 65);
INSERT INTO `dish` VALUES (7, '西红柿炒蛋', 18, 2, '番茄炒西红柿', 'http://47.109.93.110/order/%E8%A5%BF%E7%BA%A2%E6%9F%BF%E7%82%92%E8%9B%8B.jpg', 2, 45, '西红柿炒番茄是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 76);
INSERT INTO `dish` VALUES (8, '麻婆豆腐', 16, 2, '没有麻婆', 'http://47.109.93.110/order/%E9%BA%BB%E5%A9%86%E8%B1%86%E8%85%90.jpg', 2, 23, '马坡都付是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 87);
INSERT INTO `dish` VALUES (9, '酸辣土豆丝', 16, 2, '很辣的土抄的', 'http://47.109.93.110/order/%E9%85%B8%E8%BE%A3%E5%9C%9F%E8%B1%86%E4%B8%9D.jpg', 2, 54, '撒UN拉土豆丝是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 21);
INSERT INTO `dish` VALUES (10, '炝炒空心菜', 15, 2, '空心儿的', 'http://47.109.93.110/order/%E7%82%92%E7%A9%BA%E5%BF%83%E8%8F%9C.jpg', 2, 34, '蕹菜是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 34);
INSERT INTO `dish` VALUES (11, '小炒上海青', 18, 2, '我也不一定是上海的', 'http://47.109.93.110/order/%E7%82%9D%E7%82%92%E4%B8%8A%E6%B5%B7%E9%9D%92.jpg', 2, 65, '我就说这是小白菜嘛！是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 43);
INSERT INTO `dish` VALUES (12, '红烧茄子', 29, 2, '红烧未必，但是茄子', 'http://47.109.93.110/order/%E7%BA%A2%E7%83%A7%E8%8C%84%E5%AD%90.jpg', 2, 44, '鱼香茄子是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 50);
INSERT INTO `dish` VALUES (13, '泡菜', 2, 2, '泡到了', 'http://47.109.93.110/order/%E6%B3%A1%E8%8F%9C.jpg', 2, 57, '韩国是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 43);
INSERT INTO `dish` VALUES (14, '冬瓜排骨汤', 30, 3, 'donggua', 'http://47.109.93.110/order/%E5%86%AC%E7%93%9C%E6%8E%92%E9%AA%A8%E6%B1%A4.jpg', 2, 67, '冬瓜ok排骨nook是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 35);
INSERT INTO `dish` VALUES (15, '鲫鱼汤', 36, 3, '巨齿鲨做的', 'http://47.109.93.110/order/%E9%B2%AB%E9%B1%BC%E6%B1%A4.jpg', 2, 58, '韭菜是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 43);
INSERT INTO `dish` VALUES (16, '白菜豆腐汤', 20, 3, '豆芽白菜', 'http://47.109.93.110/order/%E7%99%BD%E8%8F%9C%E8%B1%86%E8%85%90%E6%B1%A4.jpg', 2, 66, '原价38是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 34);
INSERT INTO `dish` VALUES (17, '柴火米饭', 2, 4, '米饭就米饭', 'http://47.109.93.110/order/%E6%9F%B4%E7%81%AB%E9%A5%AD.jpg', 2, 57, '就是米饭的意思是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 43);
INSERT INTO `dish` VALUES (18, '扬州炒饭', 5, 4, '还扬州了不起啊？', 'http://47.109.93.110/order/%E6%89%AC%E5%B7%9E%E7%82%92%E9%A5%AD.jpg', 2, 56, '不想改了是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 43);
INSERT INTO `dish` VALUES (19, '土豆腊味干饭', 10, 4, '将个烂就', 'http://47.109.93.110/order/%E5%9C%9F%E8%B1%86%E8%BE%A3%E5%91%B3%E5%B9%B2%E9%A5%AD.jpg', 2, 114, '啊啊啊啊怎么这么多菜啊！！！是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 32);
INSERT INTO `dish` VALUES (20, '蒜苗腊肉', 20, 1, '蒜苗还行吧', 'https://img1.baidu.com/it/u=892918307,3319109941&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=666', 2, 5, 'gpt都不想用了是一道十分美味的川菜，吃回锅肉不仅味道好，而且它还有很多好处：\n1. 促进食欲：回锅肉的香气扑鼻，色香俱佳，可以刺激人们的食欲，增加进食量，特别是对于食欲不振、嗓子疼等症状的人群，能够有帮助。\n2. 补充营养：猪肉中含有丰富的蛋白质、脂肪、维生素和矿物质，例如铁、锌、钙等，这些都是人体需要的营养成分。因此吃回锅肉可以很好地补充人体的营养需求。\n3. 提高免疫力：回锅肉含有辣椒面、豆瓣酱等辛辣调料，这些调料中含有丰富的维生素C等营养物质，可以提高人体免疫力，预防感冒等疾病。\n4. 促进血液循环：回锅肉的熬制过程非常复杂，需要多次的火候和翻炒，这样可以使回锅肉中的脂肪大量溶解出来。猪肉中的脂肪酸具有降低血脂、防止心血管疾病等作用，有助于促进血液循环。', 12);
INSERT INTO `dish` VALUES (25, '海椒炒肉', 21, 2, '海椒炒肉', 'https://ts1.cn.mm.bing.net/th/id/R-C.afc7f8e78398336217db123673eec860?rik=twPuj%2fwiyPayMg&riu=http%3a%2f%2fcp2.douguo.net%2fupload%2fcaiku%2f2%2fc%2f7%2fyuan_2cd6c2e2b2bd2078f6a382e50ff7d0f7.jpg&ehk=RDacbG33cdE9nu61y1jDtgg0aKDqCZBIpISX6xc26Ro%3d&risl=&pid=ImgRaw&r=0', 1, 10, '超级好吃！！！！！！！！！！！！！！！！！！！！！！！！', 23);

-- ----------------------------
-- Table structure for moneyrecord
-- ----------------------------
DROP TABLE IF EXISTS `moneyrecord`;
CREATE TABLE `moneyrecord`  (
  `deal_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `deal_type` int(255) NULL DEFAULT NULL,
  `deal_amount` int(255) NULL DEFAULT NULL,
  `deal_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`deal_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moneyrecord
-- ----------------------------
INSERT INTO `moneyrecord` VALUES (1, 1, 1, 100, '2022-06-10 00:00:00');
INSERT INTO `moneyrecord` VALUES (2, 1, 1, 1234, '2023-06-06 00:00:00');
INSERT INTO `moneyrecord` VALUES (3, 1, 1, 100, '2022-06-25 00:00:21');
INSERT INTO `moneyrecord` VALUES (4, 1, 1, 100, '2022-06-05 00:00:00');
INSERT INTO `moneyrecord` VALUES (5, 1, 1, 100, '2023-06-05 00:00:00');
INSERT INTO `moneyrecord` VALUES (6, 1, 1, 100, '2023-06-05 00:00:00');
INSERT INTO `moneyrecord` VALUES (7, 2, 1, 100, '2023-05-25 00:00:00');
INSERT INTO `moneyrecord` VALUES (8, 1, 2, 100, '2023-06-05 00:00:01');
INSERT INTO `moneyrecord` VALUES (9, 1, 2, 100, '2023-06-05 04:00:11');
INSERT INTO `moneyrecord` VALUES (10, 1, 1, 11, '2023-06-05 00:15:00');
INSERT INTO `moneyrecord` VALUES (11, 2, 1, 11, '2023-05-06 00:00:00');
INSERT INTO `moneyrecord` VALUES (12, 2, 1, 2, '2023-06-06 00:00:00');
INSERT INTO `moneyrecord` VALUES (13, 2, 1, 111, '2023-06-06 00:00:00');
INSERT INTO `moneyrecord` VALUES (14, 2, 1, 0, '2023-06-06 00:00:00');
INSERT INTO `moneyrecord` VALUES (25, 1, 2, 100, '2023-06-07 15:57:30');
INSERT INTO `moneyrecord` VALUES (26, 2, 2, 11, '2023-06-07 15:58:22');
INSERT INTO `moneyrecord` VALUES (27, 2, 1, 11, '2023-06-08 10:18:31');
INSERT INTO `moneyrecord` VALUES (28, 2, 2, 11, '2023-06-08 10:21:31');
INSERT INTO `moneyrecord` VALUES (29, 2, 1, 11, '2023-06-09 10:27:07');
INSERT INTO `moneyrecord` VALUES (30, 2, 2, 11, '2023-06-09 10:27:18');
INSERT INTO `moneyrecord` VALUES (31, 2, 2, 11, '2023-06-09 10:28:06');
INSERT INTO `moneyrecord` VALUES (32, 2, 1, 11, '2023-06-09 10:30:01');
INSERT INTO `moneyrecord` VALUES (33, 2, 2, 11, '2023-06-09 10:30:05');
INSERT INTO `moneyrecord` VALUES (34, 1, 1, 12, '2023-06-09 16:14:38');
INSERT INTO `moneyrecord` VALUES (35, 1, 1, 65, '2023-06-10 16:11:39');
INSERT INTO `moneyrecord` VALUES (36, 1, 1, 64, '2023-06-10 16:16:20');
INSERT INTO `moneyrecord` VALUES (37, 1, 1, 64, '2023-06-10 16:17:56');
INSERT INTO `moneyrecord` VALUES (38, 1, 1, 64, '2023-06-10 16:18:55');
INSERT INTO `moneyrecord` VALUES (39, 1, 1, 64, '2023-06-10 16:23:58');
INSERT INTO `moneyrecord` VALUES (40, 1, 1, 64, '2023-06-10 16:24:34');
INSERT INTO `moneyrecord` VALUES (41, 1, 1, 56, '2023-06-10 16:25:08');
INSERT INTO `moneyrecord` VALUES (42, 1, 1, 26, '2023-06-10 16:25:45');
INSERT INTO `moneyrecord` VALUES (43, 1, 1, 60, '2023-06-10 16:26:34');
INSERT INTO `moneyrecord` VALUES (44, 1, 1, 60, '2023-06-10 16:26:38');
INSERT INTO `moneyrecord` VALUES (45, 1, 1, 60, '2023-06-10 16:26:38');
INSERT INTO `moneyrecord` VALUES (46, 1, 1, 60, '2023-06-10 16:26:38');
INSERT INTO `moneyrecord` VALUES (47, 1, 1, 60, '2023-06-10 16:26:38');
INSERT INTO `moneyrecord` VALUES (48, 1, 1, 60, '2023-06-10 16:26:38');
INSERT INTO `moneyrecord` VALUES (49, 1, 1, 60, '2023-06-10 16:26:38');
INSERT INTO `moneyrecord` VALUES (50, 1, 1, 60, '2023-06-10 16:26:39');
INSERT INTO `moneyrecord` VALUES (51, 1, 1, 56, '2023-06-10 16:47:40');
INSERT INTO `moneyrecord` VALUES (52, 1, 1, 56, '2023-06-10 17:12:41');
INSERT INTO `moneyrecord` VALUES (53, 1, 1, 262, '2023-06-10 17:18:12');
INSERT INTO `moneyrecord` VALUES (54, 1, 2, 100, '2023-06-12 15:24:51');
INSERT INTO `moneyrecord` VALUES (55, 1, 2, 100, '2023-06-12 15:25:57');
INSERT INTO `moneyrecord` VALUES (56, 1, 2, 20, '2023-06-12 15:31:43');
INSERT INTO `moneyrecord` VALUES (57, 1, 2, 20, '2023-06-12 15:32:42');
INSERT INTO `moneyrecord` VALUES (58, 1, 2, 1, '2023-06-12 15:34:57');
INSERT INTO `moneyrecord` VALUES (59, 1, 2, 1, '2023-06-12 15:37:42');
INSERT INTO `moneyrecord` VALUES (60, 1, 2, 1, '2023-06-12 15:38:18');
INSERT INTO `moneyrecord` VALUES (61, 1, 2, 20, '2023-06-12 15:38:30');
INSERT INTO `moneyrecord` VALUES (62, 1, 1, 122, '2023-06-12 18:10:39');
INSERT INTO `moneyrecord` VALUES (63, 1, 1, 56, '2023-06-12 21:18:41');
INSERT INTO `moneyrecord` VALUES (64, 1, 1, 56, '2023-06-12 21:20:17');
INSERT INTO `moneyrecord` VALUES (65, 1, 2, 200, '2023-06-12 21:23:12');
INSERT INTO `moneyrecord` VALUES (66, 28, 2, 200, '2023-06-12 21:24:41');
INSERT INTO `moneyrecord` VALUES (67, 28, 1, 26, '2023-06-12 21:27:07');
INSERT INTO `moneyrecord` VALUES (68, 28, 1, 26, '2023-06-12 21:27:54');
INSERT INTO `moneyrecord` VALUES (69, 28, 1, 56, '2023-06-12 21:28:08');
INSERT INTO `moneyrecord` VALUES (70, 28, 2, 50, '2023-06-12 21:28:38');
INSERT INTO `moneyrecord` VALUES (71, 28, 1, 90, '2023-06-12 21:29:57');
INSERT INTO `moneyrecord` VALUES (72, 28, 2, 100, '2023-06-12 21:34:47');
INSERT INTO `moneyrecord` VALUES (73, 28, 1, 56, '2023-06-12 21:36:50');
INSERT INTO `moneyrecord` VALUES (74, 28, 2, 200, '2023-06-12 21:52:23');
INSERT INTO `moneyrecord` VALUES (75, 28, 1, 86, '2023-06-12 21:52:40');
INSERT INTO `moneyrecord` VALUES (76, 28, 1, 86, '2023-06-12 21:52:59');
INSERT INTO `moneyrecord` VALUES (77, 28, 1, 86, '2023-06-12 21:53:21');
INSERT INTO `moneyrecord` VALUES (78, 28, 2, 200, '2023-06-12 21:54:03');
INSERT INTO `moneyrecord` VALUES (79, 28, 1, 82, '2023-06-12 21:54:23');
INSERT INTO `moneyrecord` VALUES (80, 28, 1, 86, '2023-06-12 21:57:23');
INSERT INTO `moneyrecord` VALUES (81, 28, 2, 200, '2023-06-12 21:58:09');
INSERT INTO `moneyrecord` VALUES (82, 28, 1, 50, '2023-06-12 22:01:32');
INSERT INTO `moneyrecord` VALUES (83, 28, 1, 104, '2023-06-12 22:02:08');
INSERT INTO `moneyrecord` VALUES (84, 28, 2, 1100, '2023-06-12 22:03:21');
INSERT INTO `moneyrecord` VALUES (85, 28, 1, 104, '2023-06-12 22:03:33');
INSERT INTO `moneyrecord` VALUES (86, 28, 1, 92, '2023-06-13 09:04:45');
INSERT INTO `moneyrecord` VALUES (87, 1, 1, 26, '2023-06-13 09:23:06');
INSERT INTO `moneyrecord` VALUES (88, 28, 2, 200, '2023-06-13 09:26:49');
INSERT INTO `moneyrecord` VALUES (95, 30, 2, 200, '2023-06-13 17:43:04');
INSERT INTO `moneyrecord` VALUES (96, 30, 2, 200, '2023-06-13 17:43:10');
INSERT INTO `moneyrecord` VALUES (97, 28, 1, 91, '2023-06-13 18:03:26');
INSERT INTO `moneyrecord` VALUES (98, 28, 1, 270, '2023-06-13 18:03:41');
INSERT INTO `moneyrecord` VALUES (99, 31, 2, 200, '2023-06-13 18:25:07');
INSERT INTO `moneyrecord` VALUES (100, 31, 1, 65, '2023-06-13 18:25:16');
INSERT INTO `moneyrecord` VALUES (101, 32, 2, 200, '2023-06-14 09:55:08');
INSERT INTO `moneyrecord` VALUES (102, 32, 1, 26, '2023-06-14 09:55:30');
INSERT INTO `moneyrecord` VALUES (103, 32, 1, 70, '2023-06-14 09:55:35');
INSERT INTO `moneyrecord` VALUES (104, 32, 1, 28, '2023-06-14 09:55:40');
INSERT INTO `moneyrecord` VALUES (105, 1, 1, 12, '2023-06-14 10:32:26');
INSERT INTO `moneyrecord` VALUES (115, 33, 2, 200, '2023-06-15 09:23:05');
INSERT INTO `moneyrecord` VALUES (116, 33, 1, 91, '2023-06-15 09:23:21');
INSERT INTO `moneyrecord` VALUES (117, 33, 2, 999, '2023-06-15 10:02:07');
INSERT INTO `moneyrecord` VALUES (118, 33, 1, 200, '2023-06-15 10:02:23');
INSERT INTO `moneyrecord` VALUES (119, 32, 2, 1000, '2023-06-15 10:38:45');
INSERT INTO `moneyrecord` VALUES (120, 32, 1, 98, '2023-06-15 10:39:00');
INSERT INTO `moneyrecord` VALUES (121, 34, 2, 1000, '2023-06-15 10:51:27');
INSERT INTO `moneyrecord` VALUES (122, 34, 1, 56, '2023-06-15 10:51:36');
INSERT INTO `moneyrecord` VALUES (123, 34, 1, 78, '2023-06-15 10:51:41');
INSERT INTO `moneyrecord` VALUES (124, 34, 1, 112, '2023-06-15 10:51:47');
INSERT INTO `moneyrecord` VALUES (125, 34, 1, 28, '2023-06-15 10:52:02');
INSERT INTO `moneyrecord` VALUES (126, 28, 1, 114, '2023-06-15 11:11:36');
INSERT INTO `moneyrecord` VALUES (127, 28, 1, 364, '2023-06-15 11:12:19');
INSERT INTO `moneyrecord` VALUES (130, 1, 1, 157, '2023-06-15 16:26:16');
INSERT INTO `moneyrecord` VALUES (131, 1, 2, 200, '2023-06-15 16:27:51');
INSERT INTO `moneyrecord` VALUES (132, 36, 2, 200, '2023-06-16 10:10:21');
INSERT INTO `moneyrecord` VALUES (133, 36, 1, 60, '2023-06-16 10:10:25');
INSERT INTO `moneyrecord` VALUES (134, 36, 1, 30, '2023-06-16 10:10:34');
INSERT INTO `moneyrecord` VALUES (135, 29, 1, 61, '2023-06-16 11:38:25');
INSERT INTO `moneyrecord` VALUES (136, 36, 1, 20, '2023-06-16 12:06:54');
INSERT INTO `moneyrecord` VALUES (140, 2, 1, 11, '2023-06-17 20:31:46');
INSERT INTO `moneyrecord` VALUES (141, 2, 1, 11, '2023-06-17 20:46:50');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatarUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'http://47.109.93.110/order/wpy.png',
  `user_pwd` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'e10adc3949ba59abbe56e057f20f883e',
  `money` int(25) NULL DEFAULT 0,
  `flavor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `point` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '121', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', 'c20ad4d76fe97759aa27a0c99bff6710', 256, '21', 2050);
INSERT INTO `user` VALUES (2, '17748772', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', 'e10adc3949ba59abbe56e057f20f883e', 0, '我虚幻吃显得', 322);
INSERT INTO `user` VALUES (3, '袁芫', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', 'e10adc3949ba59abbe56e057f20f883e', 95, '我啥都喜欢', 259);
INSERT INTO `user` VALUES (4, '小学', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', 'e10adc3949ba59abbe56e057f20f883e', 1000, NULL, 200);
INSERT INTO `user` VALUES (5, '12121', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', '3c59dc048e8850243be8079a5c74d079', 102, '12', 0);
INSERT INTO `user` VALUES (6, '12', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', '02b1be0d48924c327124732726097157', 0, '2121', 0);
INSERT INTO `user` VALUES (7, '467890', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', 'e10adc3949ba59abbe56e057f20f883e', 0, '我爱你', 0);
INSERT INTO `user` VALUES (25, '2121', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 0);
INSERT INTO `user` VALUES (26, '21211', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', '8d2fb62e105fd7c0326fb3a1fe1ad434', 100, '21', 0);
INSERT INTO `user` VALUES (27, '222', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', '02b1be0d48924c327124732726097157', 0, '1212121212122121212121212121', 0);
INSERT INTO `user` VALUES (28, '22222', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', 'cf79ae6addba60ad018347359bd144d2', 381, '12345', 1869);
INSERT INTO `user` VALUES (29, '17748771079', 'http://47.109.93.110/wxzf.jpg', 'e10adc3949ba59abbe56e057f20f883e', 230, '121', 949);
INSERT INTO `user` VALUES (30, '21', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', 'e10adc3949ba59abbe56e057f20f883e', 400, '有个性，随签名', 0);
INSERT INTO `user` VALUES (31, '18782843292', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', 'd8578edf8458ce06fbc5bb76a58c5ca4', 135, 'asdf', 65);
INSERT INTO `user` VALUES (32, '1', 'https://thirdwx.qlogo.cn/mmopen/vi_32/n0UDxbgc6nMp6rMmv53Bld08mEZaalIC2uNa6q6ibDntatUYwXNMb8c3eB5saiao6ic7Om9H9N2BQd2zicspNJcD1w/132', 'd41d8cd98f00b204e9800998ecf8427e', 978, '555555555', 222);
INSERT INTO `user` VALUES (33, '17628036065', 'http://47.109.93.110/wxzf.jpg', 'd41d8cd98f00b204e9800998ecf8427e', 908, '好吃', 291);
INSERT INTO `user` VALUES (34, '哈哈哈哈', NULL, 'e10adc3949ba59abbe56e057f20f883e', 726, '', 274);
INSERT INTO `user` VALUES (35, '18780612002', NULL, 'd41d8cd98f00b204e9800998ecf8427e', 0, '', 0);
INSERT INTO `user` VALUES (36, '777', NULL, 'e10adc3949ba59abbe56e057f20f883e', 90, NULL, 110);
INSERT INTO `user` VALUES (37, '15917428280', NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, '阿巴巴巴', 0);
INSERT INTO `user` VALUES (38, '21', 'http://47.109.93.110/order/wpy.png', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 0);
INSERT INTO `user` VALUES (39, '313', 'http://47.109.93.110/order/wpy.png', '3c59dc048e8850243be8079a5c74d079', 0, '12', 0);

SET FOREIGN_KEY_CHECKS = 1;
