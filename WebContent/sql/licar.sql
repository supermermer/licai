/*
 Navicat Premium Data Transfer

 Source Server         : HelL1
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost:3306
 Source Schema         : licar

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 08/09/2022 22:15:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actor
-- ----------------------------
DROP TABLE IF EXISTS `actor`;
CREATE TABLE `actor`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actor_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `actor_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `actor_desc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `actor_seq` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_enable` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `actor_no`(`actor_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of actor
-- ----------------------------
INSERT INTO `actor` VALUES (1, 'admin', '超级管理员', '拥有所有权限', '01', '1', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `actor` VALUES (10, 'hhh', 'hhh', 'hhh', NULL, '0', 'hhh', '2022-07-21 10:05:23');
INSERT INTO `actor` VALUES (14, 'normal', '普通角色', '普通用户权限', NULL, '1', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `actor` VALUES (15, 'he', '测试角色', '撒', NULL, '1', 'wanghao', '2015-06-09 20:25:47');
INSERT INTO `actor` VALUES (16, 'ceshi', '测试1234', '用来测试4', NULL, '0', 'wanghao', '2021-12-09 11:05:41');
INSERT INTO `actor` VALUES (17, '101', '测试101111', '测试202222', NULL, '0', 'wanghao', '2022-07-08 09:53:24');
INSERT INTO `actor` VALUES (18, '编号1', '名称2', '描述2', NULL, '0', 'wanghao', '2022-07-21 10:05:23');
INSERT INTO `actor` VALUES (19, 'sdasd ', 'hhh', 'hhh', NULL, '0', 'hhh', '2022-07-21 10:05:23');
INSERT INTO `actor` VALUES (21, 'jjjj', '杨太成', '哈哈哈', NULL, '1', 'wanghao', '2022-09-03 10:19:11');
INSERT INTO `actor` VALUES (22, '马思凡', '马思凡', '马思凡', NULL, '1', 'wanghao', '2022-09-03 14:57:26');
INSERT INTO `actor` VALUES (23, '测试角色1', '孙文科', '软件191', NULL, '1', 'wanghao', '2022-09-03 18:14:33');
INSERT INTO `actor` VALUES (24, '测试角色2', '仲佳慧', '软件192', NULL, '1', 'wanghao', '2022-09-03 21:43:50');
INSERT INTO `actor` VALUES (25, '计本195', '宋景琦', '计本195', NULL, '1', 'wanghao', '2022-09-03 22:15:58');
INSERT INTO `actor` VALUES (26, '软件192', '焦易凡', '齐齐哈尔大学', NULL, '1', 'wanghao', '2022-09-04 09:04:21');

-- ----------------------------
-- Table structure for actor_button
-- ----------------------------
DROP TABLE IF EXISTS `actor_button`;
CREATE TABLE `actor_button`  (
  `actor_no` bigint(20) NOT NULL,
  `button_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `button_desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_enable` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`actor_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of actor_button
-- ----------------------------

-- ----------------------------
-- Table structure for actor_operation
-- ----------------------------
DROP TABLE IF EXISTS `actor_operation`;
CREATE TABLE `actor_operation`  (
  `actor_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operation_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of actor_operation
-- ----------------------------
INSERT INTO `actor_operation` VALUES ('normal', '0301');
INSERT INTO `actor_operation` VALUES ('normal', '0302');
INSERT INTO `actor_operation` VALUES ('normal', '0101');
INSERT INTO `actor_operation` VALUES ('normal', '0102');
INSERT INTO `actor_operation` VALUES ('normal', '0103');
INSERT INTO `actor_operation` VALUES ('normal', '0104');
INSERT INTO `actor_operation` VALUES ('normal', '0105');
INSERT INTO `actor_operation` VALUES ('normal', '0106');
INSERT INTO `actor_operation` VALUES ('admin', '0101');
INSERT INTO `actor_operation` VALUES ('admin', '0102');
INSERT INTO `actor_operation` VALUES ('admin', '0103');
INSERT INTO `actor_operation` VALUES ('admin', '0104');
INSERT INTO `actor_operation` VALUES ('admin', '0105');
INSERT INTO `actor_operation` VALUES ('admin', '0106');
INSERT INTO `actor_operation` VALUES ('admin', '0301');
INSERT INTO `actor_operation` VALUES ('admin', '0302');
INSERT INTO `actor_operation` VALUES ('admin', '0201');
INSERT INTO `actor_operation` VALUES ('admin', '0202');
INSERT INTO `actor_operation` VALUES ('admin', '0203');
INSERT INTO `actor_operation` VALUES ('admin', '0204');
INSERT INTO `actor_operation` VALUES ('admin', '0205');
INSERT INTO `actor_operation` VALUES ('ceshi', '0302');
INSERT INTO `actor_operation` VALUES ('101', '0301');
INSERT INTO `actor_operation` VALUES ('101', '0302');
INSERT INTO `actor_operation` VALUES ('101', '0101');
INSERT INTO `actor_operation` VALUES ('101', '0102');
INSERT INTO `actor_operation` VALUES ('101', '0103');
INSERT INTO `actor_operation` VALUES ('101', '0104');
INSERT INTO `actor_operation` VALUES ('101', '0105');
INSERT INTO `actor_operation` VALUES ('101', '0106');
INSERT INTO `actor_operation` VALUES ('101', '0107');
INSERT INTO `actor_operation` VALUES ('编号1', '0101');
INSERT INTO `actor_operation` VALUES ('编号1', '0106');
INSERT INTO `actor_operation` VALUES ('编号1', '0107');
INSERT INTO `actor_operation` VALUES ('编号1', '0301');
INSERT INTO `actor_operation` VALUES ('编号1', '0201');
INSERT INTO `actor_operation` VALUES ('101', '0204');
INSERT INTO `actor_operation` VALUES ('sdasd', '0201');
INSERT INTO `actor_operation` VALUES ('sdasd', '0202');
INSERT INTO `actor_operation` VALUES ('sdasd', '0203');
INSERT INTO `actor_operation` VALUES ('sdasd', '0204');
INSERT INTO `actor_operation` VALUES ('sdasd', '0205');
INSERT INTO `actor_operation` VALUES ('jjjj', '0101');
INSERT INTO `actor_operation` VALUES ('jjjj', '0102');
INSERT INTO `actor_operation` VALUES ('jjjj', '0103');
INSERT INTO `actor_operation` VALUES ('jjjj', '0104');
INSERT INTO `actor_operation` VALUES ('jjjj', '0105');
INSERT INTO `actor_operation` VALUES ('jjjj', '0106');
INSERT INTO `actor_operation` VALUES ('jjjj', '0107');
INSERT INTO `actor_operation` VALUES ('jjjj', '0201');
INSERT INTO `actor_operation` VALUES ('jjjj', '0202');
INSERT INTO `actor_operation` VALUES ('jjjj', '0203');
INSERT INTO `actor_operation` VALUES ('jjjj', '0204');
INSERT INTO `actor_operation` VALUES ('jjjj', '0205');

-- ----------------------------
-- Table structure for dim_node
-- ----------------------------
DROP TABLE IF EXISTS `dim_node`;
CREATE TABLE `dim_node`  (
  `NODE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TREE_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NODE_NO` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NODE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NODE_LEVEL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENT_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CHILD_NUM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEQSTR` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NODE_PROP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NODE_ICON` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NODE_FACE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`NODE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2380 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_node
-- ----------------------------
INSERT INTO `dim_node` VALUES (200, 'area', '110', '北京市', '1', '0', NULL, '110', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (201, 'area', '1000', '北京市', '2', '200', NULL, '1000', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (202, 'area', '120', '天津市', '1', '0', NULL, '120', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (203, 'area', '1100', '天津市', '2', '202', NULL, '1100', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (204, 'area', '130', '河北省', '1', '0', NULL, '130', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (205, 'area', '1210', '石家庄', '2', '204', NULL, '1210', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (206, 'area', '1240', '唐山', '2', '204', NULL, '1240', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (207, 'area', '1243', '滦县', '2', '204', NULL, '1243', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (208, 'area', '1244', '滦南县', '2', '204', NULL, '1244', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (209, 'area', '1245', '乐亭县', '2', '204', NULL, '1245', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (210, 'area', '1246', '迁安市', '2', '204', NULL, '1246', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (211, 'area', '1247', '迁西县', '2', '204', NULL, '1247', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (212, 'area', '1248', '遵化市', '2', '204', NULL, '1248', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (213, 'area', '1249', '玉田县', '2', '204', NULL, '1249', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (214, 'area', '1251', '唐海县', '1', '204', NULL, '1251', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (215, 'area', '1260', '秦皇岛市', '1', '204', NULL, '1260', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (216, 'area', '1261', '青龙县', '1', '204', NULL, '1261', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (217, 'area', '1262', '昌黎县', '1', '204', NULL, '1262', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (218, 'area', '1263', '抚宁县', '1', '204', NULL, '1263', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (219, 'area', '1264', '卢龙县', '1', '204', NULL, '1264', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (220, 'area', '1270', '邯郸市', '1', '204', NULL, '1270', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (221, 'area', '1271', '邯郸县', '1', '204', NULL, '1271', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (222, 'area', '1281', '大名县', '1', '204', NULL, '1281', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (223, 'area', '1282', '魏县', '1', '204', NULL, '1282', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (224, 'area', '1283', '曲周县', '1', '204', NULL, '1283', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (225, 'area', '1284', '邱县', '1', '204', NULL, '1284', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (226, 'area', '1285', '鸡泽县', '1', '204', NULL, '1285', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (227, 'area', '1286', '肥乡县', '1', '204', NULL, '1286', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (228, 'area', '1287', '广平县', '1', '204', NULL, '1287', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (229, 'area', '1288', '成安县', '1', '204', NULL, '1288', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (230, 'area', '1289', '临漳县', '1', '204', NULL, '1289', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (231, 'area', '1291', '磁县', '1', '204', NULL, '1291', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (232, 'area', '1292', '涉县', '1', '204', NULL, '1292', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (233, 'area', '1293', '永年县', '2', '204', NULL, '1293', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (234, 'area', '1294', '馆陶县', '2', '204', NULL, '1294', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (235, 'area', '1295', '武安市', '2', '204', NULL, '1295', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (236, 'area', '1310', '邢台市', '2', '204', NULL, '1310', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (237, 'area', '1311', '邢台县', '2', '204', NULL, '1311', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (238, 'area', '1321', '南宫市', '2', '204', NULL, '1321', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (239, 'area', '1322', '沙河市', '2', '204', NULL, '1322', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (240, 'area', '1323', '临城县', '2', '204', NULL, '1323', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (241, 'area', '1324', '内邱县', '2', '204', NULL, '1324', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (242, 'area', '1325', '柏乡县', '2', '204', NULL, '1325', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (243, 'area', '1326', '隆尧县', '2', '204', NULL, '1326', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (244, 'area', '1327', '任县', '2', '204', NULL, '1327', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (245, 'area', '1328', '南和县', '2', '204', NULL, '1328', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (246, 'area', '1329', '宁晋县', '2', '204', NULL, '1329', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (247, 'area', '1331', '巨鹿县', '2', '204', NULL, '1331', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (248, 'area', '1332', '新河县', '2', '204', NULL, '1332', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (249, 'area', '1333', '广宗县', '2', '204', NULL, '1333', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (250, 'area', '1334', '平乡县', '2', '204', NULL, '1334', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (251, 'area', '1335', '威县', '2', '204', NULL, '1335', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (252, 'area', '1336', '清河县', '2', '204', NULL, '1336', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (253, 'area', '1337', '临西县', '2', '204', NULL, '1337', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (254, 'area', '1340', '保定市', '2', '204', NULL, '1340', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (255, 'area', '1341', '满城县', '2', '204', NULL, '1341', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (256, 'area', '1342', '清苑县', '2', '204', NULL, '1342', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (257, 'area', '1351', '定州市', '2', '204', NULL, '1351', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (258, 'area', '1352', '涿州市', '2', '204', NULL, '1352', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (259, 'area', '1353', '易县', '2', '204', NULL, '1353', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (260, 'area', '1354', '徐水县', '2', '204', NULL, '1354', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (261, 'area', '1355', '涞源县', '2', '204', NULL, '1355', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (262, 'area', '1356', '定兴县', '2', '204', NULL, '1356', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (263, 'area', '1357', '顺平县', '2', '204', NULL, '1357', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (264, 'area', '1358', '唐县', '2', '204', NULL, '1358', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (265, 'area', '1359', '望都县', '2', '204', NULL, '1359', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (266, 'area', '1361', '涞水县', '2', '204', NULL, '1361', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (267, 'area', '1362', '高阳县', '2', '204', NULL, '1362', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (268, 'area', '1363', '安新县', '2', '204', NULL, '1363', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (269, 'area', '1364', '雄县', '2', '204', NULL, '1364', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (270, 'area', '1365', '容城县', '2', '204', NULL, '1365', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (271, 'area', '1366', '高碑店市', '2', '204', NULL, '1366', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (272, 'area', '1367', '曲阳县', '2', '204', NULL, '1367', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (273, 'area', '1368', '阜平县', '2', '204', NULL, '1368', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (274, 'area', '1369', '安国市', '2', '204', NULL, '1369', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (275, 'area', '1371', '博野县', '2', '204', NULL, '1371', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (276, 'area', '1372', '蠡县', '2', '204', NULL, '1372', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (277, 'area', '1380', '张家口市', '2', '204', NULL, '1380', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (278, 'area', '1381', '宣化县', '2', '204', NULL, '1381', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (279, 'area', '1391', '张北县', '2', '204', NULL, '1391', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (280, 'area', '1392', '康保县', '2', '204', NULL, '1392', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (281, 'area', '1393', '沽源县', '2', '204', NULL, '1393', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (282, 'area', '1394', '尚义县', '2', '204', NULL, '1394', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (283, 'area', '1395', '蔚县', '2', '204', NULL, '1395', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (284, 'area', '1396', '阳原县', '2', '204', NULL, '1396', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (285, 'area', '1397', '怀安县', '2', '204', NULL, '1397', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (286, 'area', '1398', '万全县', '2', '204', NULL, '1398', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (287, 'area', '1399', '怀来县', '2', '204', NULL, '1399', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (288, 'area', '1401', '涿鹿县', '2', '204', NULL, '1401', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (289, 'area', '1402', '赤城县', '2', '204', NULL, '1402', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (290, 'area', '1403', '崇礼县', '2', '204', NULL, '1403', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (291, 'area', '1410', '承德市', '2', '204', NULL, '1410', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (292, 'area', '1411', '承德县', '2', '204', NULL, '1411', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (293, 'area', '1421', '宽城县', '2', '204', NULL, '1421', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (294, 'area', '1422', '兴隆县', '2', '204', NULL, '1422', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (295, 'area', '1423', '平泉县', '2', '204', NULL, '1423', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (296, 'area', '1424', '滦平县', '2', '204', NULL, '1424', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (297, 'area', '1425', '丰宁县', '2', '204', NULL, '1425', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (298, 'area', '1426', '隆化县', '2', '204', NULL, '1426', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (299, 'area', '1427', '围场县', '2', '204', NULL, '1427', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (300, 'area', '1430', '沧州市', '2', '204', NULL, '1430', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (301, 'area', '1431', '沧县', '2', '204', NULL, '1431', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (302, 'area', '1432', '青县', '2', '204', NULL, '1432', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (303, 'area', '1441', '泊头市', '2', '204', NULL, '1441', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (304, 'area', '1442', '任丘市', '2', '204', NULL, '1442', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (305, 'area', '1443', '河间市', '2', '204', NULL, '1443', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (306, 'area', '1444', '肃宁县', '2', '204', NULL, '1444', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (307, 'area', '1445', '献县', '2', '204', NULL, '1445', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (308, 'area', '1446', '吴桥县', '2', '204', NULL, '1446', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (309, 'area', '1447', '东光县', '2', '204', NULL, '1447', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (310, 'area', '1448', '南皮县', '2', '204', NULL, '1448', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (311, 'area', '1449', '盐山县', '2', '204', NULL, '1449', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (312, 'area', '1451', '黄骅市', '2', '204', NULL, '1451', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (313, 'area', '1452', '孟村县', '2', '204', NULL, '1452', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (314, 'area', '1453', '海兴县', '2', '204', NULL, '1453', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (315, 'area', '1460', '廊坊市', '2', '204', NULL, '1460', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (316, 'area', '1461', '三河市', '2', '204', NULL, '1461', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (317, 'area', '1462', '固安县', '2', '204', NULL, '1462', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (318, 'area', '1463', '永清县', '2', '204', NULL, '1463', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (319, 'area', '1464', '香河县', '2', '204', NULL, '1464', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (320, 'area', '1465', '大城县', '2', '204', NULL, '1465', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (321, 'area', '1466', '文安县', '2', '204', NULL, '1466', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (322, 'area', '1467', '霸州', '2', '204', NULL, '1467', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (323, 'area', '1468', '大厂', '2', '204', NULL, '1468', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (324, 'area', '1480', '衡水', '2', '204', NULL, '1480', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (325, 'area', '1482', '冀州', '2', '204', NULL, '1482', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (326, 'area', '1483', '枣强县', '2', '204', NULL, '1483', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (327, 'area', '1484', '武邑县', '2', '204', NULL, '1484', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (328, 'area', '1485', '深州市', '2', '204', NULL, '1485', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (329, 'area', '1486', '武强县', '2', '204', NULL, '1486', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (330, 'area', '1487', '饶阳县', '2', '204', NULL, '1487', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (331, 'area', '1488', '安平县', '2', '204', NULL, '1488', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (332, 'area', '1489', '故城县', '2', '204', NULL, '1489', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (333, 'area', '1491', '景县', '2', '204', NULL, '1491', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (334, 'area', '1492', '阜城县', '2', '204', NULL, '1492', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (335, 'area', '140', '山西省', '1', '0', NULL, '140', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (336, 'area', '1735', '兴县', '1', '335', NULL, '1735', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (337, 'area', '1640', '长治市', '2', '335', NULL, '1640', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (338, 'area', '1736', '临县', '2', '335', NULL, '1736', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (339, 'area', '1630', '阳泉市', '2', '335', NULL, '1630', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (340, 'area', '1638', '右玉县', '2', '335', NULL, '1638', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (341, 'area', '1641', '怀仁县', '2', '335', NULL, '1641', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (342, 'area', '1739', '岚县', '2', '335', NULL, '1739', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (343, 'area', '1610', '太原', '2', '335', NULL, '1610', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (344, 'area', '1620', '大同市', '2', '335', NULL, '1620', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (345, 'area', '1631', '阳高县', '2', '335', NULL, '1631', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (346, 'area', '1632', '天镇县', '2', '335', NULL, '1632', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (347, 'area', '1633', '广灵县', '2', '335', NULL, '1633', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (348, 'area', '1634', '灵邱县', '2', '335', NULL, '1634', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (349, 'area', '1635', '浑源县', '2', '335', NULL, '1635', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (350, 'area', '1637', '左云县', '2', '335', NULL, '1637', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (351, 'area', '1639', '大同县', '2', '335', NULL, '1639', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (352, 'area', '1651', '平定县', '2', '335', NULL, '1651', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (353, 'area', '1652', '盂县', '2', '335', NULL, '1652', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (354, 'area', '1661', '长冶县', '2', '335', NULL, '1661', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (355, 'area', '1662', '潞城市', '2', '335', NULL, '1662', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (356, 'area', '1663', '襄垣县', '2', '335', NULL, '1663', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (357, 'area', '1664', '屯留县', '2', '335', NULL, '1664', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (358, 'area', '1665', '平顺县', '2', '335', NULL, '1665', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (359, 'area', '1666', '黎城县', '2', '335', NULL, '1666', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (360, 'area', '1667', '壶关县', '2', '335', NULL, '1667', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (361, 'area', '1668', '长子县', '2', '335', NULL, '1668', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (362, 'area', '1669', '武乡县', '2', '335', NULL, '1669', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (363, 'area', '1671', '沁县', '2', '335', NULL, '1671', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (364, 'area', '1672', '沁源县', '2', '335', NULL, '1672', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (365, 'area', '1680', '晋城市', '2', '335', NULL, '1680', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (366, 'area', '1681', '沁水县', '2', '335', NULL, '1681', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (367, 'area', '1682', '阳城县', '2', '335', NULL, '1682', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (368, 'area', '1683', '高平市', '2', '335', NULL, '1683', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (369, 'area', '1684', '陵川县', '2', '335', NULL, '1684', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (370, 'area', '1690', '朔州市', '2', '335', NULL, '1690', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (371, 'area', '1691', '山阴县', '2', '335', NULL, '1691', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (372, 'area', '1710', '忻州市', '2', '335', NULL, '1710', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (373, 'area', '1712', '定襄县', '2', '335', NULL, '1712', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (374, 'area', '1713', '五台县', '2', '335', NULL, '1713', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (375, 'area', '1714', '原平市', '2', '335', NULL, '1714', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (376, 'area', '1715', '代县', '2', '335', NULL, '1715', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (377, 'area', '1716', '繁峙县', '2', '335', NULL, '1716', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (378, 'area', '1717', '宁武县', '2', '335', NULL, '1717', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (379, 'area', '1718', '静乐县', '2', '335', NULL, '1718', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (380, 'area', '1719', '神池县', '2', '335', NULL, '1719', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (381, 'area', '1721', '五寨县', '2', '335', NULL, '1721', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (382, 'area', '1722', '岢岚县', '2', '335', NULL, '1722', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (383, 'area', '1723', '河曲县', '2', '335', NULL, '1723', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (384, 'area', '1724', '保德县', '2', '335', NULL, '1724', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (385, 'area', '1725', '偏关县', '2', '335', NULL, '1725', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (386, 'area', '1730', '离石市', '2', '335', NULL, '1730', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (387, 'area', '1731', '汾阳市', '2', '335', NULL, '1731', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (388, 'area', '1732', '文水县', '2', '335', NULL, '1732', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (389, 'area', '1733', '交城县', '2', '335', NULL, '1733', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (390, 'area', '1734', '孝义市', '2', '335', NULL, '1734', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (391, 'area', '1737', '柳林县', '2', '335', NULL, '1737', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (392, 'area', '1738', '石楼县', '2', '335', NULL, '1738', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (393, 'area', '1741', '方山县', '2', '335', NULL, '1741', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (394, 'area', '1743', '中阳县', '2', '335', NULL, '1743', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (395, 'area', '1744', '交口县', '2', '335', NULL, '1744', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (396, 'area', '1750', '晋中市', '2', '335', NULL, '1750', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (397, 'area', '1752', '榆社县', '2', '335', NULL, '1752', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (398, 'area', '1753', '左权县', '2', '335', NULL, '1753', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (399, 'area', '1754', '和顺县', '2', '335', NULL, '1754', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (400, 'area', '1755', '昔阳县', '2', '335', NULL, '1755', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (401, 'area', '1756', '寿阳县', '2', '335', NULL, '1756', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (402, 'area', '1757', '太谷县', '2', '335', NULL, '1757', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (403, 'area', '1758', '祁县', '2', '335', NULL, '1758', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (404, 'area', '1759', '平遥县', '2', '335', NULL, '1759', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (405, 'area', '1761', '介休市', '2', '335', NULL, '1761', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (406, 'area', '1762', '灵石县', '2', '335', NULL, '1762', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (407, 'area', '1770', '临汾市', '2', '335', NULL, '1770', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (408, 'area', '1772', '侯马市', '2', '335', NULL, '1772', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (409, 'area', '1773', '曲沃县', '2', '335', NULL, '1773', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (410, 'area', '1774', '翼城县', '2', '335', NULL, '1774', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (411, 'area', '1775', '襄汾县', '2', '335', NULL, '1775', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (412, 'area', '1776', '洪洞县', '2', '335', NULL, '1776', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (413, 'area', '1777', '霍州市', '2', '335', NULL, '1777', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (414, 'area', '1778', '古县', '2', '335', NULL, '1778', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (415, 'area', '1779', '安泽县', '2', '335', NULL, '1779', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (416, 'area', '1781', '浮山县', '2', '335', NULL, '1781', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (417, 'area', '1782', '吉县', '2', '335', NULL, '1782', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (418, 'area', '1783', '乡宁县', '2', '335', NULL, '1783', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (419, 'area', '1784', '蒲县', '2', '335', NULL, '1784', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (420, 'area', '1785', '大宁县', '2', '335', NULL, '1785', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (421, 'area', '1786', '永和县', '2', '335', NULL, '1786', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (422, 'area', '1787', '隰县', '2', '335', NULL, '1787', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (423, 'area', '1788', '汾西县', '2', '335', NULL, '1788', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (424, 'area', '1810', '运城市', '2', '335', NULL, '1810', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (425, 'area', '1812', '永济市', '2', '335', NULL, '1812', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (426, 'area', '1813', '芮城县', '2', '335', NULL, '1813', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (427, 'area', '1814', '临猗县', '2', '335', NULL, '1814', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (428, 'area', '1815', '万荣县', '2', '335', NULL, '1815', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (429, 'area', '1816', '新绛县', '2', '335', NULL, '1816', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (430, 'area', '1817', '稷山县', '2', '335', NULL, '1817', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (431, 'area', '1818', '河津市', '2', '335', NULL, '1818', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (432, 'area', '1819', '闻喜县', '2', '335', NULL, '1819', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (433, 'area', '1821', '夏县', '2', '335', NULL, '1821', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (434, 'area', '1822', '绛县', '2', '335', NULL, '1822', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (435, 'area', '1823', '平陆县', '2', '335', NULL, '1823', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (436, 'area', '1824', '垣曲县', '2', '335', NULL, '1824', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (437, 'area', '150', '内蒙古自治区', '1', '0', NULL, '150', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (438, 'area', '1920', '包头市', '1', '437', NULL, '1920', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (439, 'area', '1921', '土默特右旗', '2', '437', NULL, '1921', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (440, 'area', '1922', '固阳县', '2', '437', NULL, '1922', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (441, 'area', '1930', '乌海市', '2', '437', NULL, '1930', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (442, 'area', '1940', '赤峰市', '2', '437', NULL, '1940', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (443, 'area', '1941', '阿鲁科尔沁旗', '2', '437', NULL, '1941', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (444, 'area', '1942', '巴林左旗', '2', '437', NULL, '1942', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (445, 'area', '1943', '巴林右旗', '2', '437', NULL, '1943', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (446, 'area', '1944', '林西县', '2', '437', NULL, '1944', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (447, 'area', '1945', '克什克腾', '2', '437', NULL, '1945', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (448, 'area', '1946', '翁牛特旗', '2', '437', NULL, '1946', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (449, 'area', '1947', '喀喇沁旗', '2', '437', NULL, '1947', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (450, 'area', '1948', '宁城县', '2', '437', NULL, '1948', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (451, 'area', '1949', '敖汉旗', '2', '437', NULL, '1949', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (452, 'area', '1960', '呼伦贝尔市', '2', '437', NULL, '1960', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (453, 'area', '1962', '满州里市', '2', '437', NULL, '1962', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (454, 'area', '1963', '扎兰屯市', '2', '437', NULL, '1963', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (455, 'area', '1964', '牙克石市', '2', '437', NULL, '1964', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (456, 'area', '1965', '阿荣旗', '2', '437', NULL, '1965', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (457, 'area', '1966', '莫力达瓦达斡尔族旗', '2', '437', NULL, '1966', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (458, 'area', '1967', '额尔古纳市', '2', '437', NULL, '1967', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (459, 'area', '1968', '根河市', '2', '437', NULL, '1968', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (460, 'area', '1969', '鄂伦春族自治旗', '2', '437', NULL, '1969', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (461, 'area', '1971', '鄂温克族自治旗', '2', '437', NULL, '1971', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (462, 'area', '1972', '新巴尔虎右旗', '2', '437', NULL, '1972', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (463, 'area', '1973', '新巴尔虎左旗', '2', '437', NULL, '1973', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (464, 'area', '1974', '陈巴尔虎旗', '2', '437', NULL, '1974', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (465, 'area', '1980', '兴安盟', '2', '437', NULL, '1980', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (466, 'area', '1983', '科尔沁右翼中旗', '2', '437', NULL, '1983', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (467, 'area', '1984', '扎赉特旗', '2', '437', NULL, '1984', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (468, 'area', '1985', '突泉县', '2', '437', NULL, '1985', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (469, 'area', '1986', '阿尔山市', '2', '437', NULL, '1986', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (470, 'area', '1990', '通辽市', '2', '437', NULL, '1990', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (471, 'area', '1992', '霍林郭勒市', '2', '437', NULL, '1992', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (472, 'area', '1993', '科尔沁左翼中旗', '2', '437', NULL, '1993', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (473, 'area', '1994', '科尔沁左翼后旗', '2', '437', NULL, '1994', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (474, 'area', '1995', '开鲁县', '2', '437', NULL, '1995', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (475, 'area', '1996', '库仑县', '2', '437', NULL, '1996', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (476, 'area', '1997', '奈曼旗', '2', '437', NULL, '1997', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (477, 'area', '1998', '扎鲁特旗', '2', '437', NULL, '1998', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (478, 'area', '2010', '锡林郭勒盟', '2', '437', NULL, '2010', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (479, 'area', '2011', '二连浩特市', '2', '437', NULL, '2011', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (480, 'area', '2013', '阿巴嘎旗', '2', '437', NULL, '2013', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (481, 'area', '2014', '苏尼特左旗', '2', '437', NULL, '2014', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (482, 'area', '2015', '苏尼特右旗', '2', '437', NULL, '2015', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (483, 'area', '2016', '东乌珠穆沁旗', '2', '437', NULL, '2016', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (484, 'area', '2017', '西乌珠穆沁旗', '2', '437', NULL, '2017', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (485, 'area', '2018', '太仆寺旗', '2', '437', NULL, '2018', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (486, 'area', '2019', '镶黄旗', '2', '437', NULL, '2019', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (487, 'area', '2021', '正镶白旗', '2', '437', NULL, '2021', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (488, 'area', '2022', '正蓝旗', '2', '437', NULL, '2022', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (489, 'area', '2023', '多伦县', '2', '437', NULL, '2023', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (490, 'area', '2030', '乌兰察布盟', '2', '437', NULL, '2030', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (491, 'area', '2035', '卓资县', '2', '437', NULL, '2035', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (492, 'area', '2036', '化德县', '2', '437', NULL, '2036', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (493, 'area', '2037', '商都县', '2', '437', NULL, '2037', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (494, 'area', '2038', '兴和县', '2', '437', NULL, '2038', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (495, 'area', '2039', '丰镇市', '2', '437', NULL, '2039', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (496, 'area', '2041', '凉城县', '2', '437', NULL, '2041', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (497, 'area', '2042', '察哈尔右翼前旗', '2', '437', NULL, '2042', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (498, 'area', '2043', '察哈尔右翼中旗', '2', '437', NULL, '2043', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (499, 'area', '2044', '察哈尔右翼后旗', '2', '437', NULL, '2044', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (500, 'area', '2046', '四子王旗', '2', '437', NULL, '2046', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (501, 'area', '2050', '鄂尔多斯市', '2', '437', NULL, '2050', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (502, 'area', '2052', '达拉特旗', '2', '437', NULL, '2052', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (503, 'area', '2053', '准格尔旗', '2', '437', NULL, '2053', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (504, 'area', '2054', '鄂托克前旗', '2', '437', NULL, '2054', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (505, 'area', '2055', '鄂托克旗', '2', '437', NULL, '2055', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (506, 'area', '2056', '杭锦旗', '2', '437', NULL, '2056', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (507, 'area', '2057', '乌审旗', '2', '437', NULL, '2057', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (508, 'area', '2058', '伊金霍勒旗', '2', '437', NULL, '2058', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (509, 'area', '2070', '巴彦淖尔盟', '2', '437', NULL, '2070', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (510, 'area', '2072', '五原县', '2', '437', NULL, '2072', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (511, 'area', '2073', '磴口县', '2', '437', NULL, '2073', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (512, 'area', '2074', '乌拉特前旗', '2', '437', NULL, '2074', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (513, 'area', '2075', '乌拉特中旗', '2', '437', NULL, '2075', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (514, 'area', '2076', '乌拉特后旗', '2', '437', NULL, '2076', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (515, 'area', '2077', '杭锦后旗', '2', '437', NULL, '2077', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (516, 'area', '2080', '阿拉善盟', '2', '437', NULL, '2080', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (517, 'area', '2082', '阿右旗', '2', '437', NULL, '2082', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (518, 'area', '2083', '额济纳旗', '2', '437', NULL, '2083', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (519, 'area', '2045', '达尔罕茂明安联合旗', '2', '437', NULL, '2045', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (520, 'area', '1910', '呼和浩特', '2', '437', NULL, '1910', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (521, 'area', '210', '辽宁省', '1', '0', NULL, '210', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (522, 'area', '2210', '沈阳', '1', '521', NULL, '2210', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (523, 'area', '2220', '大连市', '2', '521', NULL, '2220', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (524, 'area', '2222', '普兰店市', '2', '521', NULL, '2222', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (525, 'area', '2223', '庄河市', '2', '521', NULL, '2223', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (526, 'area', '2224', '瓦房店市', '2', '521', NULL, '2224', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (527, 'area', '2230', '鞍山市', '2', '521', NULL, '2230', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (528, 'area', '2231', '台安县', '2', '521', NULL, '2231', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (529, 'area', '2232', '海城市', '2', '521', NULL, '2232', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (530, 'area', '2240', '抚顺市', '2', '521', NULL, '2240', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (531, 'area', '2241', '抚顺县', '2', '521', NULL, '2241', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (532, 'area', '2242', '新宾县', '2', '521', NULL, '2242', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (533, 'area', '2243', '咯左县', '2', '521', NULL, '2243', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (534, 'area', '2250', '本溪市', '2', '521', NULL, '2250', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (535, 'area', '2251', '本溪县', '2', '521', NULL, '2251', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (536, 'area', '2252', '桓仁县', '2', '521', NULL, '2252', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (537, 'area', '2260', '丹东市', '2', '521', NULL, '2260', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (538, 'area', '2261', '凤城市', '2', '521', NULL, '2261', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (539, 'area', '2263', '东港市', '2', '521', NULL, '2263', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (540, 'area', '2264', '宽甸县', '2', '521', NULL, '2264', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (541, 'area', '2270', '锦州市', '2', '521', NULL, '2270', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (542, 'area', '2272', '凌海市', '2', '521', NULL, '2272', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (543, 'area', '2273', '北宁市', '2', '521', NULL, '2273', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (544, 'area', '2274', '黑山县', '2', '521', NULL, '2274', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (545, 'area', '2275', '义县', '2', '521', NULL, '2275', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (546, 'area', '2280', '营口市', '2', '521', NULL, '2280', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (547, 'area', '2282', '盖州市', '2', '521', NULL, '2282', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (548, 'area', '2290', '阜新市', '2', '521', NULL, '2290', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (549, 'area', '2291', '阜新县', '2', '521', NULL, '2291', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (550, 'area', '2292', '彰武县', '2', '521', NULL, '2292', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (551, 'area', '2310', '辽阳市', '2', '521', NULL, '2310', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (552, 'area', '2311', '辽阳县', '2', '521', NULL, '2311', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (553, 'area', '2312', '灯塔市', '2', '521', NULL, '2312', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (554, 'area', '2320', '盘锦市', '2', '521', NULL, '2320', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (555, 'area', '2321', '大洼县', '2', '521', NULL, '2321', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (556, 'area', '2322', '盘山县', '2', '521', NULL, '2322', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (557, 'area', '2330', '铁岭市', '2', '521', NULL, '2330', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (558, 'area', '2332', '西丰县', '2', '521', NULL, '2332', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (559, 'area', '2333', '昌图县', '2', '521', NULL, '2333', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (560, 'area', '2336', '调兵山市', '2', '521', NULL, '2336', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (561, 'area', '2337', '开原市', '2', '521', NULL, '2337', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (562, 'area', '2340', '朝阳市', '2', '521', NULL, '2340', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (563, 'area', '2342', '建平县', '2', '521', NULL, '2342', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (564, 'area', '2343', '凌源市', '2', '521', NULL, '2343', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (565, 'area', '2344', '清原县', '2', '521', NULL, '2344', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (566, 'area', '2346', '北票市', '2', '521', NULL, '2346', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (567, 'area', '2225', '长海县', '2', '521', NULL, '2225', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (568, 'area', '2262', '大石桥市', '2', '521', NULL, '2262', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (569, 'area', '2276', '葫芦岛市', '2', '521', NULL, '2276', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (570, 'area', '2271', '绥中县', '2', '521', NULL, '2271', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (571, 'area', '2345', '建昌县', '2', '521', NULL, '2345', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (572, 'area', '2277', '兴城市', '2', '521', NULL, '2277', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (573, 'area', '2265', '岫岩县', '2', '521', NULL, '2265', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (574, 'area', '220', '吉林省', '1', '0', NULL, '220', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (575, 'area', '2410', '长春', '1', '574', NULL, '2410', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (576, 'area', '2420', '吉林市', '2', '574', NULL, '2420', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (577, 'area', '2421', '永吉县', '2', '574', NULL, '2421', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (578, 'area', '2422', '临江市', '2', '574', NULL, '2422', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (579, 'area', '2423', '磐石市', '2', '574', NULL, '2423', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (580, 'area', '2424', '蛟河市', '2', '574', NULL, '2424', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (581, 'area', '2425', '桦甸市', '2', '574', NULL, '2425', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (582, 'area', '2430', '四平市', '2', '574', NULL, '2430', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (583, 'area', '2431', '梨树县', '2', '574', NULL, '2431', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (584, 'area', '2432', '伊通县', '2', '574', NULL, '2432', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (585, 'area', '2433', '双辽市', '2', '574', NULL, '2433', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (586, 'area', '2434', '公主岭市', '2', '574', NULL, '2434', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (587, 'area', '2440', '辽源市', '2', '574', NULL, '2440', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (588, 'area', '2441', '东丰县', '2', '574', NULL, '2441', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (589, 'area', '2442', '东辽县', '2', '574', NULL, '2442', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (590, 'area', '2450', '通化市', '2', '574', NULL, '2450', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (591, 'area', '2451', '通化县', '2', '574', NULL, '2451', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (592, 'area', '2452', '辉南县', '2', '574', NULL, '2452', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (593, 'area', '2453', '柳河县', '2', '574', NULL, '2453', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (594, 'area', '2454', '梅河口市', '2', '574', NULL, '2454', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (595, 'area', '2455', '集安市', '2', '574', NULL, '2455', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (596, 'area', '2460', '白山市', '2', '574', NULL, '2460', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (597, 'area', '2461', '抚松县', '2', '574', NULL, '2461', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (598, 'area', '2462', '靖宇县', '2', '574', NULL, '2462', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (599, 'area', '2463', '长白县', '2', '574', NULL, '2463', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (600, 'area', '2464', '江源县', '2', '574', NULL, '2464', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (601, 'area', '2470', '白城市', '2', '574', NULL, '2470', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (602, 'area', '2472', '洮南市', '2', '574', NULL, '2472', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (603, 'area', '2474', '大安市', '2', '574', NULL, '2474', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (604, 'area', '2477', '镇赉县', '2', '574', NULL, '2477', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (605, 'area', '2478', '通榆县', '2', '574', NULL, '2478', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (606, 'area', '2490', '延吉市', '2', '574', NULL, '2490', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (607, 'area', '2492', '图们市', '2', '574', NULL, '2492', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (608, 'area', '2493', '敦化市', '2', '574', NULL, '2493', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (609, 'area', '2494', '珲春市', '2', '574', NULL, '2494', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (610, 'area', '2495', '龙井市', '2', '574', NULL, '2495', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (611, 'area', '2496', '和龙市', '2', '574', NULL, '2496', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (612, 'area', '2497', '汪清县', '2', '574', NULL, '2497', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (613, 'area', '2498', '安图县', '2', '574', NULL, '2498', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (614, 'area', '2426', '舒兰市', '2', '574', NULL, '2426', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (615, 'area', '2520', '松原市', '2', '574', NULL, '2520', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (616, 'area', '2473', '扶余县', '2', '574', NULL, '2473', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (617, 'area', '2475', '长岭县', '2', '574', NULL, '2475', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (618, 'area', '2479', '乾安县', '2', '574', NULL, '2479', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (619, 'area', '2476', '前郭县', '2', '574', NULL, '2476', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (620, 'area', '230', '黑龙江省', '1', '0', NULL, '230', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (621, 'area', '2610', '哈尔滨', '1', '620', NULL, '2610', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (622, 'area', '2640', '齐齐哈尔市', '2', '620', NULL, '2640', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (623, 'area', '2641', '龙江县', '2', '620', NULL, '2641', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (624, 'area', '2642', '讷河市', '2', '620', NULL, '2642', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (625, 'area', '2643', '依安县', '2', '620', NULL, '2643', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (626, 'area', '2644', '泰来县', '2', '620', NULL, '2644', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (627, 'area', '2645', '甘南县', '2', '620', NULL, '2645', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (628, 'area', '2647', '富裕县', '2', '620', NULL, '2647', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (629, 'area', '2649', '克山县', '2', '620', NULL, '2649', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (630, 'area', '2651', '克东县', '2', '620', NULL, '2651', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (631, 'area', '2652', '拜泉县', '2', '620', NULL, '2652', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (632, 'area', '2660', '鸡西市', '2', '620', NULL, '2660', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (633, 'area', '2661', '鸡东县', '2', '620', NULL, '2661', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (634, 'area', '2670', '鹤岗市', '2', '620', NULL, '2670', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (635, 'area', '2671', '萝北县', '2', '620', NULL, '2671', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (636, 'area', '2672', '绥滨县', '2', '620', NULL, '2672', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (637, 'area', '2680', '双鸭山市', '2', '620', NULL, '2680', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (638, 'area', '2681', '集贤县', '2', '620', NULL, '2681', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (639, 'area', '2690', '佳木斯市', '2', '620', NULL, '2690', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (640, 'area', '2710', '伊春市', '2', '620', NULL, '2710', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (641, 'area', '2711', '嘉阴县', '2', '620', NULL, '2711', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (642, 'area', '2712', '铁力市', '2', '620', NULL, '2712', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (643, 'area', '2720', '牡丹江市', '2', '620', NULL, '2720', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (644, 'area', '2721', '桦南县', '2', '620', NULL, '2721', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (645, 'area', '2723', '桦川县', '2', '620', NULL, '2723', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (646, 'area', '2725', '汤原县', '2', '620', NULL, '2725', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (647, 'area', '2727', '抚远县', '2', '620', NULL, '2727', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (648, 'area', '2729', '同江市', '2', '620', NULL, '2729', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (649, 'area', '2731', '富锦市', '2', '620', NULL, '2731', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (650, 'area', '2740', '七台河市', '2', '620', NULL, '2740', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (651, 'area', '2741', '勃利县', '2', '620', NULL, '2741', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (652, 'area', '2751', '宁安市', '2', '620', NULL, '2751', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (653, 'area', '2752', '海林市', '2', '620', NULL, '2752', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (654, 'area', '2753', '穆棱市', '2', '620', NULL, '2753', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (655, 'area', '2754', '东宁县', '2', '620', NULL, '2754', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (656, 'area', '2755', '林口县', '2', '620', NULL, '2755', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (657, 'area', '2757', '绥芬河市', '2', '620', NULL, '2757', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (658, 'area', '2760', '绥化市', '2', '620', NULL, '2760', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (659, 'area', '2762', '安达市', '2', '620', NULL, '2762', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (660, 'area', '2763', '肇东市', '2', '620', NULL, '2763', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (661, 'area', '2764', '海伦市', '2', '620', NULL, '2764', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (662, 'area', '2765', '望奎县', '2', '620', NULL, '2765', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (663, 'area', '2766', '兰西县', '2', '620', NULL, '2766', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (664, 'area', '2767', '青冈县', '2', '620', NULL, '2767', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (665, 'area', '2771', '庆安县', '2', '620', NULL, '2771', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (666, 'area', '2772', '明安县', '2', '620', NULL, '2772', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (667, 'area', '2773', '绥棱县', '2', '620', NULL, '2773', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (668, 'area', '2780', '黑河市', '2', '620', NULL, '2780', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (669, 'area', '2782', '北安市', '2', '620', NULL, '2782', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (670, 'area', '2783', '五大连池市', '2', '620', NULL, '2783', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (671, 'area', '2784', '嫩江县', '2', '620', NULL, '2784', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (672, 'area', '2786', '逊克县', '2', '620', NULL, '2786', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (673, 'area', '2787', '孙吴县', '2', '620', NULL, '2787', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (674, 'area', '2790', '大兴安岭市', '2', '620', NULL, '2790', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (675, 'area', '2791', '呼玛县', '2', '620', NULL, '2791', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (676, 'area', '2792', '塔河县', '2', '620', NULL, '2792', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (677, 'area', '2793', '漠河县', '2', '620', NULL, '2793', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (678, 'area', '2756', '虎林市', '2', '620', NULL, '2756', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (679, 'area', '2758', '密山市', '2', '620', NULL, '2758', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (680, 'area', '2724', '宝清县', '2', '620', NULL, '2724', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (681, 'area', '2726', '饶河县', '2', '620', NULL, '2726', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (682, 'area', '2728', '友谊县', '2', '620', NULL, '2728', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (683, 'area', '2650', '大庆市', '2', '620', NULL, '2650', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (684, 'area', '2648', '林甸县', '2', '620', NULL, '2648', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (685, 'area', '2768', '肇源县', '2', '620', NULL, '2768', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (686, 'area', '2769', '肇州县', '2', '620', NULL, '2769', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (687, 'area', '2646', '杜蒙县', '2', '620', NULL, '2646', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (688, 'area', '310', '上海市', '1', '0', NULL, '310', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (689, 'area', '2900', '上海', '1', '688', NULL, '2900', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (690, 'area', '320', '江苏省', '1', '0', NULL, '320', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (691, 'area', '3010', '南京', '1', '690', NULL, '3010', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (692, 'area', '3020', '无锡市', '2', '690', NULL, '3020', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (693, 'area', '3022', '江阴市', '2', '690', NULL, '3022', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (694, 'area', '3023', '宜兴市', '2', '690', NULL, '3023', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (695, 'area', '3030', '徐州市', '2', '690', NULL, '3030', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (696, 'area', '3031', '丰县', '2', '690', NULL, '3031', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (697, 'area', '3032', '沛县', '2', '690', NULL, '3032', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (698, 'area', '3033', '铜山县', '2', '690', NULL, '3033', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (699, 'area', '3034', '睢宁县', '2', '690', NULL, '3034', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (700, 'area', '3035', '邳州市', '2', '690', NULL, '3035', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (701, 'area', '3036', '新沂市', '2', '690', NULL, '3036', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (702, 'area', '3040', '常州市', '2', '690', NULL, '3040', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (703, 'area', '3042', '金坛市', '2', '690', NULL, '3042', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (704, 'area', '3043', '溧阳市', '2', '690', NULL, '3043', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (705, 'area', '3050', '苏州市', '2', '690', NULL, '3050', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (706, 'area', '3051', '太仓市', '2', '690', NULL, '3051', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (707, 'area', '3052', '昆山市', '2', '690', NULL, '3052', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (708, 'area', '3054', '吴江市', '2', '690', NULL, '3054', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (709, 'area', '3055', '常熟市', '2', '690', NULL, '3055', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (710, 'area', '3056', '张家港市', '2', '690', NULL, '3056', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (711, 'area', '3060', '南通市', '2', '690', NULL, '3060', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (712, 'area', '3061', '海安县', '2', '690', NULL, '3061', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (713, 'area', '3062', '如皋市', '2', '690', NULL, '3062', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (714, 'area', '3063', '如东县', '2', '690', NULL, '3063', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (715, 'area', '3065', '海门市', '2', '690', NULL, '3065', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (716, 'area', '3066', '启东市', '2', '690', NULL, '3066', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (717, 'area', '3070', '连云港市', '2', '690', NULL, '3070', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (718, 'area', '3071', '赣榆县', '2', '690', NULL, '3071', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (719, 'area', '3072', '东海县', '2', '690', NULL, '3072', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (720, 'area', '3073', '灌云县', '2', '690', NULL, '3073', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (721, 'area', '3080', '淮安市', '2', '690', NULL, '3080', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (722, 'area', '3085', '涟水县', '2', '690', NULL, '3085', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (723, 'area', '3087', '洪泽县', '2', '690', NULL, '3087', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (724, 'area', '3088', '盱眙县', '2', '690', NULL, '3088', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (725, 'area', '3089', '金湖县', '2', '690', NULL, '3089', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (726, 'area', '3110', '盐城市', '2', '690', NULL, '3110', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (727, 'area', '3111', '响水县', '2', '690', NULL, '3111', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (728, 'area', '3112', '滨海县', '2', '690', NULL, '3112', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (729, 'area', '3113', '阜宁县', '2', '690', NULL, '3113', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (730, 'area', '3114', '射阳县', '2', '690', NULL, '3114', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (731, 'area', '3115', '建湖县', '2', '690', NULL, '3115', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (732, 'area', '3116', '大丰市', '2', '690', NULL, '3116', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (733, 'area', '3117', '东台市', '2', '690', NULL, '3117', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (734, 'area', '3120', '扬州市', '2', '690', NULL, '3120', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (735, 'area', '3121', '高邮市', '2', '690', NULL, '3121', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (736, 'area', '3122', '宝应县', '2', '690', NULL, '3122', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (737, 'area', '3125', '江都市', '2', '690', NULL, '3125', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (738, 'area', '3129', '仪征市', '2', '690', NULL, '3129', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (739, 'area', '3140', '镇江市', '2', '690', NULL, '3140', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (740, 'area', '3142', '勾容市', '2', '690', NULL, '3142', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (741, 'area', '3143', '扬中市', '2', '690', NULL, '3143', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (742, 'area', '3084', '通州市', '2', '690', NULL, '3084', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (743, 'area', '3082', '灌南县', '2', '690', NULL, '3082', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (744, 'area', '3141', '丹阳市', '2', '690', NULL, '3141', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (745, 'area', '3128', '泰州市', '2', '690', NULL, '3128', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (746, 'area', '3131', '兴化市', '2', '690', NULL, '3131', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (747, 'area', '3123', '靖江市', '2', '690', NULL, '3123', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (748, 'area', '3124', '泰兴市', '2', '690', NULL, '3124', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (749, 'area', '3132', '姜堰市', '2', '690', NULL, '3132', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (750, 'area', '3090', '宿迁市', '2', '690', NULL, '3090', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (751, 'area', '3083', '沭阳县', '2', '690', NULL, '3083', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (752, 'area', '3093', '泗阳县', '2', '690', NULL, '3093', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (753, 'area', '3086', '泗洪县', '2', '690', NULL, '3086', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (754, 'area', '3094', '宿豫县', '2', '690', NULL, '3094', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (755, 'area', '3118', '盐都县', '2', '690', NULL, '3118', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (756, 'area', '330', '浙江省', '1', '0', NULL, '330', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (757, 'area', '3310', '杭州', '1', '756', NULL, '3310', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (758, 'area', '3320', '宁波市', '2', '756', NULL, '3320', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (759, 'area', '3321', '象山县', '2', '756', NULL, '3321', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (760, 'area', '3322', '宁海县', '2', '756', NULL, '3322', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (761, 'area', '3324', '余姚市', '2', '756', NULL, '3324', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (762, 'area', '3325', '慈溪市', '2', '756', NULL, '3325', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (763, 'area', '3326', '奉化市', '2', '756', NULL, '3326', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (764, 'area', '3330', '温州市', '2', '756', NULL, '3330', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (765, 'area', '3332', '洞头县', '2', '756', NULL, '3332', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (766, 'area', '3333', '乐清市', '2', '756', NULL, '3333', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (767, 'area', '3334', '永嘉县', '2', '756', NULL, '3334', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (768, 'area', '3335', '平阳县', '2', '756', NULL, '3335', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (769, 'area', '3336', '苍南县', '2', '756', NULL, '3336', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (770, 'area', '3337', '文成县', '2', '756', NULL, '3337', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (771, 'area', '3338', '泰顺县', '2', '756', NULL, '3338', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (772, 'area', '3339', '瑞安市', '2', '756', NULL, '3339', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (773, 'area', '3350', '嘉兴市', '2', '756', NULL, '3350', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (774, 'area', '3351', '嘉善县', '2', '756', NULL, '3351', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (775, 'area', '3352', '平湖市', '2', '756', NULL, '3352', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (776, 'area', '3353', '海盐县', '2', '756', NULL, '3353', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (777, 'area', '3354', '桐乡市', '2', '756', NULL, '3354', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (778, 'area', '3355', '海宁市', '2', '756', NULL, '3355', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (779, 'area', '3360', '湖州市', '2', '756', NULL, '3360', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (780, 'area', '3361', '德清县', '2', '756', NULL, '3361', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (781, 'area', '3362', '长兴县', '2', '756', NULL, '3362', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (782, 'area', '3363', '安吉县', '2', '756', NULL, '3363', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (783, 'area', '3370', '绍兴市', '2', '756', NULL, '3370', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (784, 'area', '3371', '绍兴县', '2', '756', NULL, '3371', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (785, 'area', '3372', '上虞市', '2', '756', NULL, '3372', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (786, 'area', '3373', '嵊州市', '2', '756', NULL, '3373', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (787, 'area', '3374', '新昌县', '2', '756', NULL, '3374', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (788, 'area', '3375', '诸暨市', '2', '756', NULL, '3375', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (789, 'area', '3380', '金华市', '2', '756', NULL, '3380', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (790, 'area', '3382', '永康市', '2', '756', NULL, '3382', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (791, 'area', '3383', '武义县', '2', '756', NULL, '3383', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (792, 'area', '3384', '浦江县', '2', '756', NULL, '3384', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (793, 'area', '3385', '磐安县', '2', '756', NULL, '3385', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (794, 'area', '3386', '兰溪市', '2', '756', NULL, '3386', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (795, 'area', '3387', '义乌市', '2', '756', NULL, '3387', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (796, 'area', '3388', '东阳市', '2', '756', NULL, '3388', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (797, 'area', '3410', '衢州市', '2', '756', NULL, '3410', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (798, 'area', '3412', '常山县', '2', '756', NULL, '3412', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (799, 'area', '3413', '开化县', '2', '756', NULL, '3413', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (800, 'area', '3414', '龙游县', '2', '756', NULL, '3414', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (801, 'area', '3415', '江山市', '2', '756', NULL, '3415', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (802, 'area', '3421', '岱山县', '2', '756', NULL, '3421', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (803, 'area', '3422', '嵊泗县', '2', '756', NULL, '3422', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (804, 'area', '3430', '丽水市', '2', '756', NULL, '3430', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (805, 'area', '3432', '青天县', '2', '756', NULL, '3432', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (806, 'area', '3433', '云和县', '2', '756', NULL, '3433', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (807, 'area', '3434', '庆元县', '2', '756', NULL, '3434', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (808, 'area', '3435', '缙云县', '2', '756', NULL, '3435', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (809, 'area', '3436', '遂昌县', '2', '756', NULL, '3436', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (810, 'area', '3437', '松阳县', '2', '756', NULL, '3437', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (811, 'area', '3438', '景宁县', '2', '756', NULL, '3438', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (812, 'area', '3439', '龙泉市', '2', '756', NULL, '3439', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (813, 'area', '3450', '台州市', '2', '756', NULL, '3450', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (814, 'area', '3452', '临海市', '2', '756', NULL, '3452', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (815, 'area', '3454', '温岭市', '2', '756', NULL, '3454', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (816, 'area', '3455', '仙居县', '2', '756', NULL, '3455', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (817, 'area', '3456', '天台县', '2', '756', NULL, '3456', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (818, 'area', '3457', '三门县', '2', '756', NULL, '3457', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (819, 'area', '3458', '玉环县', '2', '756', NULL, '3458', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (820, 'area', '3420', '舟山市', '2', '756', NULL, '3420', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (821, 'area', '340', '安徽省', '1', '0', NULL, '340', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (822, 'area', '3771', '宣城市', '1', '821', NULL, '3771', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (823, 'area', '3781', '巢湖市', '2', '821', NULL, '3781', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (824, 'area', '3726', '涡阳县', '2', '821', NULL, '3726', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (825, 'area', '3727', '蒙城县', '2', '821', NULL, '3727', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (826, 'area', '3732', '利辛县', '2', '821', NULL, '3732', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (827, 'area', '3722', '亳州市', '2', '821', NULL, '3722', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (828, 'area', '3610', '合肥', '2', '821', NULL, '3610', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (829, 'area', '3620', '芜湖市', '2', '821', NULL, '3620', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (830, 'area', '3621', '芜湖县', '2', '821', NULL, '3621', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (831, 'area', '3622', '繁昌县', '2', '821', NULL, '3622', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (832, 'area', '3623', '南陵县', '2', '821', NULL, '3623', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (833, 'area', '3630', '蚌埠市', '2', '821', NULL, '3630', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (834, 'area', '3631', '怀远县', '2', '821', NULL, '3631', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (835, 'area', '3632', '五河县', '2', '821', NULL, '3632', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (836, 'area', '3633', '固镇县', '2', '821', NULL, '3633', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (837, 'area', '3640', '淮南市', '2', '821', NULL, '3640', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (838, 'area', '3641', '凤台县', '2', '821', NULL, '3641', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (839, 'area', '3650', '马鞍山市', '2', '821', NULL, '3650', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (840, 'area', '3651', '当涂县', '2', '821', NULL, '3651', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (841, 'area', '3660', '淮北市', '2', '821', NULL, '3660', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (842, 'area', '3661', '濉溪县', '2', '821', NULL, '3661', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (843, 'area', '3670', '铜陵市', '2', '821', NULL, '3670', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (844, 'area', '3671', '铜陵县', '2', '821', NULL, '3671', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (845, 'area', '3680', '安庆市', '2', '821', NULL, '3680', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (846, 'area', '3681', '桐城市', '2', '821', NULL, '3681', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (847, 'area', '3682', '怀宁县', '2', '821', NULL, '3682', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (848, 'area', '3683', '枞阳县', '2', '821', NULL, '3683', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (849, 'area', '3684', '潜山县', '2', '821', NULL, '3684', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (850, 'area', '3685', '太湖县', '2', '821', NULL, '3685', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (851, 'area', '3686', '宿松县', '2', '821', NULL, '3686', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (852, 'area', '3687', '望江县', '2', '821', NULL, '3687', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (853, 'area', '3688', '岳西县', '2', '821', NULL, '3688', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (854, 'area', '3710', '黄山市', '2', '821', NULL, '3710', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (855, 'area', '3711', '歙县', '2', '821', NULL, '3711', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (856, 'area', '3712', '休宁县', '2', '821', NULL, '3712', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (857, 'area', '3713', '黟县', '2', '821', NULL, '3713', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (858, 'area', '3714', '祁门县', '2', '821', NULL, '3714', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (859, 'area', '3720', '阜阳县', '2', '821', NULL, '3720', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (860, 'area', '3724', '临泉县', '2', '821', NULL, '3724', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (861, 'area', '3725', '太和县', '2', '821', NULL, '3725', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (862, 'area', '3728', '阜南县', '2', '821', NULL, '3728', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (863, 'area', '3729', '颍上县', '2', '821', NULL, '3729', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (864, 'area', '3731', '界首市', '2', '821', NULL, '3731', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (865, 'area', '3740', '宿州市', '2', '821', NULL, '3740', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (866, 'area', '3742', '砀山县', '2', '821', NULL, '3742', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (867, 'area', '3743', '萧县', '2', '821', NULL, '3743', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (868, 'area', '3745', '灵璧县', '2', '821', NULL, '3745', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (869, 'area', '3746', '泗县', '2', '821', NULL, '3746', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (870, 'area', '3750', '滁州市', '2', '821', NULL, '3750', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (871, 'area', '3752', '天长市', '2', '821', NULL, '3752', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (872, 'area', '3753', '来安县', '2', '821', NULL, '3753', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (873, 'area', '3754', '全椒县', '2', '821', NULL, '3754', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (874, 'area', '3755', '定远县', '2', '821', NULL, '3755', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (875, 'area', '3756', '凤阳县', '2', '821', NULL, '3756', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (876, 'area', '3757', '明光市', '2', '821', NULL, '3757', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (877, 'area', '3760', '六安市', '2', '821', NULL, '3760', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (878, 'area', '3763', '寿县', '2', '821', NULL, '3763', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (879, 'area', '3764', '霍邱县', '2', '821', NULL, '3764', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (880, 'area', '3765', '舒城县', '2', '821', NULL, '3765', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (881, 'area', '3766', '金寨县', '2', '821', NULL, '3766', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (882, 'area', '3767', '霍山县', '2', '821', NULL, '3767', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (883, 'area', '3772', '郎溪县', '2', '821', NULL, '3772', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (884, 'area', '3773', '广德县', '2', '821', NULL, '3773', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (885, 'area', '3774', '宁国市', '2', '821', NULL, '3774', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (886, 'area', '3775', '泾县', '2', '821', NULL, '3775', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (887, 'area', '3776', '旌德县', '2', '821', NULL, '3776', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (888, 'area', '3777', '绩溪县', '2', '821', NULL, '3777', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (889, 'area', '3782', '庐江县', '2', '821', NULL, '3782', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (890, 'area', '3783', '无为县', '2', '821', NULL, '3783', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (891, 'area', '3784', '含山县', '2', '821', NULL, '3784', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (892, 'area', '3785', '和县', '2', '821', NULL, '3785', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (893, 'area', '3790', '池州市', '2', '821', NULL, '3790', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (894, 'area', '3792', '东至县', '2', '821', NULL, '3792', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (895, 'area', '3793', '石台县', '2', '821', NULL, '3793', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (896, 'area', '3794', '青阳县', '2', '821', NULL, '3794', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (897, 'area', '350', '福建省', '1', '0', NULL, '350', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (898, 'area', '3960', '永安市', '1', '897', NULL, '3960', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (899, 'area', '4022', '武夷山市', '2', '897', NULL, '4022', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (900, 'area', '3941', '莆田县', '2', '897', NULL, '3941', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (901, 'area', '3910', '福州', '2', '897', NULL, '3910', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (902, 'area', '3930', '厦门市', '2', '897', NULL, '3930', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (903, 'area', '3940', '莆田市', '2', '897', NULL, '3940', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (904, 'area', '3942', '仙游县', '2', '897', NULL, '3942', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (905, 'area', '3950', '三明市', '2', '897', NULL, '3950', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (906, 'area', '3951', '明溪县', '2', '897', NULL, '3951', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (907, 'area', '3952', '清流县', '2', '897', NULL, '3952', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (908, 'area', '3953', '宁化县', '2', '897', NULL, '3953', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (909, 'area', '3954', '大田县', '2', '897', NULL, '3954', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (910, 'area', '3955', '尤溪县', '2', '897', NULL, '3955', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (911, 'area', '3956', '沙县', '2', '897', NULL, '3956', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (912, 'area', '3957', '将乐县', '2', '897', NULL, '3957', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (913, 'area', '3958', '泰宁县', '2', '897', NULL, '3958', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (914, 'area', '3959', '建宁县', '2', '897', NULL, '3959', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (915, 'area', '3970', '泉州市', '2', '897', NULL, '3970', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (916, 'area', '3971', '惠安县', '2', '897', NULL, '3971', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (917, 'area', '3972', '晋江市', '2', '897', NULL, '3972', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (918, 'area', '3973', '南安市', '2', '897', NULL, '3973', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (919, 'area', '3974', '安溪县', '2', '897', NULL, '3974', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (920, 'area', '3975', '永春县', '2', '897', NULL, '3975', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (921, 'area', '3976', '德化县', '2', '897', NULL, '3976', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (922, 'area', '3978', '石狮市', '2', '897', NULL, '3978', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (923, 'area', '3990', '漳州市', '2', '897', NULL, '3990', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (924, 'area', '3991', '龙海市', '2', '897', NULL, '3991', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (925, 'area', '3992', '云霄县', '2', '897', NULL, '3992', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (926, 'area', '3993', '漳浦县', '2', '897', NULL, '3993', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (927, 'area', '3994', '诏安县', '2', '897', NULL, '3994', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (928, 'area', '3995', '长泰县', '2', '897', NULL, '3995', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (929, 'area', '3996', '东山县', '2', '897', NULL, '3996', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (930, 'area', '3997', '南靖县', '2', '897', NULL, '3997', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (931, 'area', '3998', '平和县', '2', '897', NULL, '3998', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (932, 'area', '3999', '华安县', '2', '897', NULL, '3999', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (933, 'area', '4010', '南平市', '2', '897', NULL, '4010', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (934, 'area', '4012', '邵武市', '2', '897', NULL, '4012', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (935, 'area', '4013', '顺昌县', '2', '897', NULL, '4013', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (936, 'area', '4014', '建阳市', '2', '897', NULL, '4014', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (937, 'area', '4015', '建瓯市', '2', '897', NULL, '4015', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (938, 'area', '4016', '浦城县', '2', '897', NULL, '4016', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (939, 'area', '4018', '光泽县', '2', '897', NULL, '4018', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (940, 'area', '4019', '松溪县', '2', '897', NULL, '4019', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (941, 'area', '4021', '政和县', '2', '897', NULL, '4021', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (942, 'area', '4030', '宁德市', '2', '897', NULL, '4030', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (943, 'area', '4032', '福鼎市', '2', '897', NULL, '4032', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (944, 'area', '4033', '霞浦县', '2', '897', NULL, '4033', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (945, 'area', '4034', '福安市', '2', '897', NULL, '4034', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (946, 'area', '4035', '古田县', '2', '897', NULL, '4035', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (947, 'area', '4036', '屏南县', '2', '897', NULL, '4036', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (948, 'area', '4037', '寿宁县', '2', '897', NULL, '4037', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (949, 'area', '4038', '周宁县', '2', '897', NULL, '4038', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (950, 'area', '4039', '柘荣县', '2', '897', NULL, '4039', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (951, 'area', '4050', '龙岩市', '2', '897', NULL, '4050', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (952, 'area', '4052', '长汀县', '2', '897', NULL, '4052', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (953, 'area', '4053', '永定县', '2', '897', NULL, '4053', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (954, 'area', '4054', '上杭县', '2', '897', NULL, '4054', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (955, 'area', '4055', '武平县', '2', '897', NULL, '4055', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (956, 'area', '4056', '漳平市', '2', '897', NULL, '4056', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (957, 'area', '4057', '连城县', '2', '897', NULL, '4057', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (958, 'area', '360', '江西省', '1', '0', NULL, '360', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (959, 'area', '4364', '莲花县', '1', '958', NULL, '4364', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (960, 'area', '4210', '南昌', '2', '958', NULL, '4210', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (961, 'area', '4220', '景德镇市', '2', '958', NULL, '4220', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (962, 'area', '4221', '乐平市', '2', '958', NULL, '4221', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (963, 'area', '4222', '浮梁县', '2', '958', NULL, '4222', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (964, 'area', '4230', '萍乡市', '2', '958', NULL, '4230', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (965, 'area', '4231', '上栗县', '2', '958', NULL, '4231', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (966, 'area', '4232', '芦溪县', '2', '958', NULL, '4232', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (967, 'area', '4240', '九江市', '2', '958', NULL, '4240', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (968, 'area', '4241', '九江县', '2', '958', NULL, '4241', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (969, 'area', '4242', '瑞昌市', '2', '958', NULL, '4242', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (970, 'area', '4243', '武宁县', '2', '958', NULL, '4243', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (971, 'area', '4244', '修水县', '2', '958', NULL, '4244', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (972, 'area', '4245', '永修县', '2', '958', NULL, '4245', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (973, 'area', '4246', '德安县', '2', '958', NULL, '4246', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (974, 'area', '4247', '星子县', '2', '958', NULL, '4247', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (975, 'area', '4248', '都昌县', '2', '958', NULL, '4248', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (976, 'area', '4249', '湖口县', '2', '958', NULL, '4249', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (977, 'area', '4251', '彭泽县', '2', '958', NULL, '4251', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (978, 'area', '4260', '新余市', '2', '958', NULL, '4260', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (979, 'area', '4261', '分宜县', '2', '958', NULL, '4261', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (980, 'area', '4270', '鹰潭市', '2', '958', NULL, '4270', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (981, 'area', '4271', '贵溪市', '2', '958', NULL, '4271', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (982, 'area', '4272', '余江县', '2', '958', NULL, '4272', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (983, 'area', '4280', '赣州市', '2', '958', NULL, '4280', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (984, 'area', '4282', '赣县', '2', '958', NULL, '4282', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (985, 'area', '4283', '南康市', '2', '958', NULL, '4283', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (986, 'area', '4284', '信丰县', '2', '958', NULL, '4284', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (987, 'area', '4285', '大余县', '2', '958', NULL, '4285', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (988, 'area', '4286', '上犹县', '2', '958', NULL, '4286', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (989, 'area', '4287', '崇义县', '2', '958', NULL, '4287', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (990, 'area', '4288', '安远县', '2', '958', NULL, '4288', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (991, 'area', '4289', '龙南县', '2', '958', NULL, '4289', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (992, 'area', '4291', '定南县', '2', '958', NULL, '4291', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (993, 'area', '4292', '全南县', '2', '958', NULL, '4292', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (994, 'area', '4293', '宁都县', '2', '958', NULL, '4293', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (995, 'area', '4294', '于都县', '2', '958', NULL, '4294', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (996, 'area', '4295', '兴国县', '2', '958', NULL, '4295', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (997, 'area', '4296', '瑞金市', '2', '958', NULL, '4296', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (998, 'area', '4297', '会昌县', '2', '958', NULL, '4297', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (999, 'area', '4298', '寻乌县', '2', '958', NULL, '4298', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1000, 'area', '4299', '石城县', '2', '958', NULL, '4299', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1001, 'area', '4310', '宜春市', '2', '958', NULL, '4310', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1002, 'area', '4312', '丰城市', '2', '958', NULL, '4312', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1003, 'area', '4313', '樟树市', '2', '958', NULL, '4313', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1004, 'area', '4314', '高安市', '2', '958', NULL, '4314', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1005, 'area', '4315', '奉新县', '2', '958', NULL, '4315', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1006, 'area', '4316', '万载县', '2', '958', NULL, '4316', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1007, 'area', '4317', '上高县', '2', '958', NULL, '4317', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1008, 'area', '4318', '宜丰县', '2', '958', NULL, '4318', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1009, 'area', '4319', '靖安县', '2', '958', NULL, '4319', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1010, 'area', '4321', '铜鼓县', '2', '958', NULL, '4321', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1011, 'area', '4330', '上饶市', '2', '958', NULL, '4330', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1012, 'area', '4332', '上饶县', '2', '958', NULL, '4332', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1013, 'area', '4333', '广丰县', '2', '958', NULL, '4333', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1014, 'area', '4334', '玉山县', '2', '958', NULL, '4334', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1015, 'area', '4335', '铅山县', '2', '958', NULL, '4335', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1016, 'area', '4336', '横峰县', '2', '958', NULL, '4336', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1017, 'area', '4337', '弋阳县', '2', '958', NULL, '4337', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1018, 'area', '4338', '余干县', '2', '958', NULL, '4338', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1019, 'area', '4339', '波阳县', '2', '958', NULL, '4339', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1020, 'area', '4341', '万年县', '2', '958', NULL, '4341', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1021, 'area', '4342', '德兴市', '2', '958', NULL, '4342', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1022, 'area', '4343', '婺源县', '2', '958', NULL, '4343', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1023, 'area', '4350', '吉安市', '2', '958', NULL, '4350', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1024, 'area', '4352', '井冈山市', '2', '958', NULL, '4352', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1025, 'area', '4353', '吉安县', '2', '958', NULL, '4353', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1026, 'area', '4354', '吉水县', '2', '958', NULL, '4354', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1027, 'area', '4355', '峡江县', '2', '958', NULL, '4355', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1028, 'area', '4356', '新干县', '2', '958', NULL, '4356', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1029, 'area', '4357', '永丰县', '2', '958', NULL, '4357', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1030, 'area', '4358', '泰和县', '2', '958', NULL, '4358', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1031, 'area', '4359', '遂川县', '2', '958', NULL, '4359', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1032, 'area', '4361', '万安县', '2', '958', NULL, '4361', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1033, 'area', '4362', '安福县', '2', '958', NULL, '4362', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1034, 'area', '4363', '永新县', '2', '958', NULL, '4363', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1035, 'area', '4370', '抚州市', '2', '958', NULL, '4370', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1036, 'area', '4372', '南城县', '2', '958', NULL, '4372', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1037, 'area', '4373', '黎川县', '2', '958', NULL, '4373', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1038, 'area', '4374', '南丰县', '2', '958', NULL, '4374', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1039, 'area', '4375', '崇仁县', '2', '958', NULL, '4375', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1040, 'area', '4376', '乐安县', '2', '958', NULL, '4376', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1041, 'area', '4377', '宜黄县', '2', '958', NULL, '4377', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1042, 'area', '4378', '金溪县', '2', '958', NULL, '4378', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1043, 'area', '4379', '资溪县', '2', '958', NULL, '4379', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1044, 'area', '4381', '东乡县', '2', '958', NULL, '4381', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1045, 'area', '4382', '广昌县', '2', '958', NULL, '4382', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1046, 'area', '370', '山东省', '1', '0', NULL, '370', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1047, 'area', '4535', '高青县', '1', '1046', NULL, '4535', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1048, 'area', '4536', '沂源县', '2', '1046', NULL, '4536', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1049, 'area', '4741', '平邑县', '2', '1046', NULL, '4741', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1050, 'area', '4510', '济南', '2', '1046', NULL, '4510', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1051, 'area', '4520', '青岛市', '2', '1046', NULL, '4520', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1052, 'area', '4521', '即墨市', '2', '1046', NULL, '4521', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1053, 'area', '4522', '胶南市', '2', '1046', NULL, '4522', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1054, 'area', '4523', '莱西市', '2', '1046', NULL, '4523', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1055, 'area', '4524', '平度市', '2', '1046', NULL, '4524', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1056, 'area', '4525', '胶州市', '2', '1046', NULL, '4525', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1057, 'area', '4530', '淄博市', '2', '1046', NULL, '4530', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1058, 'area', '4531', '桓台县', '2', '1046', NULL, '4531', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1059, 'area', '4540', '枣庄市', '2', '1046', NULL, '4540', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1060, 'area', '4541', '滕州市', '2', '1046', NULL, '4541', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1061, 'area', '4550', '东营市', '2', '1046', NULL, '4550', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1062, 'area', '4551', '垦利县', '2', '1046', NULL, '4551', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1063, 'area', '4552', '利津县', '2', '1046', NULL, '4552', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1064, 'area', '4553', '广饶县', '2', '1046', NULL, '4553', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1065, 'area', '4560', '烟台市', '2', '1046', NULL, '4560', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1066, 'area', '4561', '蓬莱市', '2', '1046', NULL, '4561', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1067, 'area', '4562', '招远市', '2', '1046', NULL, '4562', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1068, 'area', '4563', '栖霞市', '2', '1046', NULL, '4563', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1069, 'area', '4564', '海阳市', '2', '1046', NULL, '4564', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1070, 'area', '4566', '长岛县', '2', '1046', NULL, '4566', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1071, 'area', '4567', '龙口市', '2', '1046', NULL, '4567', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1072, 'area', '4568', '莱阳市', '2', '1046', NULL, '4568', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1073, 'area', '4569', '莱州市', '2', '1046', NULL, '4569', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1074, 'area', '4580', '潍坊市', '2', '1046', NULL, '4580', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1075, 'area', '4581', '安丘市', '2', '1046', NULL, '4581', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1076, 'area', '4582', '寿光市', '2', '1046', NULL, '4582', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1077, 'area', '4583', '临朐县', '2', '1046', NULL, '4583', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1078, 'area', '4584', '昌乐县', '2', '1046', NULL, '4584', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1079, 'area', '4757', '梁山县', '2', '1046', NULL, '4757', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1080, 'area', '4732', '日照市', '2', '1046', NULL, '4732', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1081, 'area', '4587', '五莲县', '2', '1046', NULL, '4587', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1082, 'area', '4736', '莒县', '2', '1046', NULL, '4736', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1083, 'area', '4634', '莱芜市', '2', '1046', NULL, '4634', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1084, 'area', '4585', '昌邑市', '2', '1046', NULL, '4585', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1085, 'area', '4586', '高密市', '2', '1046', NULL, '4586', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1086, 'area', '4588', '青州市', '2', '1046', NULL, '4588', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1087, 'area', '4589', '诸城市', '2', '1046', NULL, '4589', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1088, 'area', '4610', '济宁市', '2', '1046', NULL, '4610', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1089, 'area', '4611', '兖州市', '2', '1046', NULL, '4611', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1090, 'area', '4612', '邹城市', '2', '1046', NULL, '4612', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1091, 'area', '4613', '微山县', '2', '1046', NULL, '4613', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1092, 'area', '4614', '鱼台县', '2', '1046', NULL, '4614', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1093, 'area', '4615', '金乡县', '2', '1046', NULL, '4615', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1094, 'area', '4616', '嘉祥县', '2', '1046', NULL, '4616', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1095, 'area', '4617', '汶上县', '2', '1046', NULL, '4617', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1096, 'area', '4618', '泗水县', '2', '1046', NULL, '4618', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1097, 'area', '4619', '曲阜市', '2', '1046', NULL, '4619', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1098, 'area', '4630', '泰安市', '2', '1046', NULL, '4630', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1099, 'area', '4631', '宁阳县', '2', '1046', NULL, '4631', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1100, 'area', '4632', '肥城市', '2', '1046', NULL, '4632', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1101, 'area', '4633', '东平县', '2', '1046', NULL, '4633', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1102, 'area', '4635', '新泰市', '2', '1046', NULL, '4635', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1103, 'area', '4650', '威海市', '2', '1046', NULL, '4650', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1104, 'area', '4651', '乳山市', '2', '1046', NULL, '4651', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1105, 'area', '4652', '文登市', '2', '1046', NULL, '4652', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1106, 'area', '4653', '荣成市', '2', '1046', NULL, '4653', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1107, 'area', '4660', '滨州市', '2', '1046', NULL, '4660', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1108, 'area', '4662', '惠民县', '2', '1046', NULL, '4662', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1109, 'area', '4663', '阳信县', '2', '1046', NULL, '4663', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1110, 'area', '4664', '无棣县', '2', '1046', NULL, '4664', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1111, 'area', '4665', '沾化县', '2', '1046', NULL, '4665', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1112, 'area', '4666', '博兴县', '2', '1046', NULL, '4666', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1113, 'area', '4667', '邹平县', '2', '1046', NULL, '4667', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1114, 'area', '4680', '德州市', '2', '1046', NULL, '4680', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1115, 'area', '4682', '乐陵市', '2', '1046', NULL, '4682', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1116, 'area', '4683', '陵县', '2', '1046', NULL, '4683', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1117, 'area', '4684', '平原县', '2', '1046', NULL, '4684', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1118, 'area', '4685', '夏津县', '2', '1046', NULL, '4685', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1119, 'area', '4686', '武城县', '2', '1046', NULL, '4686', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1120, 'area', '4687', '齐河县', '2', '1046', NULL, '4687', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1121, 'area', '4688', '禹城市', '2', '1046', NULL, '4688', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1122, 'area', '4689', '临邑县', '2', '1046', NULL, '4689', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1123, 'area', '4693', '宁津县', '2', '1046', NULL, '4693', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1124, 'area', '4694', '庆云县', '2', '1046', NULL, '4694', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1125, 'area', '4710', '聊城市', '2', '1046', NULL, '4710', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1126, 'area', '4712', '临清市', '2', '1046', NULL, '4712', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1127, 'area', '4713', '阳谷县', '2', '1046', NULL, '4713', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1128, 'area', '4714', '莘县', '2', '1046', NULL, '4714', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1129, 'area', '4715', '茌平县', '2', '1046', NULL, '4715', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1130, 'area', '4716', '东阿县', '2', '1046', NULL, '4716', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1131, 'area', '4717', '冠县', '2', '1046', NULL, '4717', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1132, 'area', '4718', '高唐县', '2', '1046', NULL, '4718', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1133, 'area', '4730', '临沂市', '2', '1046', NULL, '4730', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1134, 'area', '4733', '郯城县', '2', '1046', NULL, '4733', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1135, 'area', '4734', '苍山县', '2', '1046', NULL, '4734', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1136, 'area', '4735', '莒南县', '2', '1046', NULL, '4735', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1137, 'area', '4737', '沂水县', '2', '1046', NULL, '4737', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1138, 'area', '4739', '蒙阴县', '2', '1046', NULL, '4739', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1139, 'area', '4742', '费县', '2', '1046', NULL, '4742', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1140, 'area', '4743', '沂南县', '2', '1046', NULL, '4743', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1141, 'area', '4744', '临沭县', '2', '1046', NULL, '4744', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1142, 'area', '4750', '荷泽市', '2', '1046', NULL, '4750', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1143, 'area', '4752', '曹县', '2', '1046', NULL, '4752', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1144, 'area', '4753', '定陶县', '2', '1046', NULL, '4753', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1145, 'area', '4754', '成武县', '2', '1046', NULL, '4754', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1146, 'area', '4755', '单县', '2', '1046', NULL, '4755', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1147, 'area', '4756', '巨野县', '2', '1046', NULL, '4756', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1148, 'area', '4758', '郓城县', '2', '1046', NULL, '4758', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1149, 'area', '4759', '鄄城县', '2', '1046', NULL, '4759', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1150, 'area', '4761', '东明县', '2', '1046', NULL, '4761', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1151, 'area', '410', '河南省', '1', '0', NULL, '410', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1152, 'area', '5043', '郾城县', '1', '1151', NULL, '5043', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1153, 'area', '5154', '信阳县', '2', '1151', NULL, '5154', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1154, 'area', '5044', '舞钢市', '2', '1151', NULL, '5044', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1155, 'area', '4955', '襄城县', '2', '1151', NULL, '4955', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1156, 'area', '4910', '郑州', '2', '1151', NULL, '4910', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1157, 'area', '4920', '开封市', '2', '1151', NULL, '4920', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1158, 'area', '4921', '杞县', '2', '1151', NULL, '4921', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1159, 'area', '4922', '通许县', '2', '1151', NULL, '4922', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1160, 'area', '4923', '尉氏县', '2', '1151', NULL, '4923', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1161, 'area', '4924', '开封县', '2', '1151', NULL, '4924', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1162, 'area', '4925', '兰考县', '2', '1151', NULL, '4925', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1163, 'area', '4930', '洛阳市', '2', '1151', NULL, '4930', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1164, 'area', '4931', '偃师市', '2', '1151', NULL, '4931', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1165, 'area', '4932', '孟津县', '2', '1151', NULL, '4932', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1166, 'area', '4933', '新安县', '2', '1151', NULL, '4933', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1167, 'area', '4934', '弈川县', '2', '1151', NULL, '4934', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1168, 'area', '4935', '嵩县', '2', '1151', NULL, '4935', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1169, 'area', '4936', '汝阳县', '2', '1151', NULL, '4936', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1170, 'area', '4937', '宜阳县', '2', '1151', NULL, '4937', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1171, 'area', '4938', '洛宁县', '2', '1151', NULL, '4938', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1172, 'area', '4939', '伊川县', '2', '1151', NULL, '4939', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1173, 'area', '4950', '平顶山市', '2', '1151', NULL, '4950', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1174, 'area', '4951', '宝川县', '2', '1151', NULL, '4951', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1175, 'area', '4952', '叶县', '2', '1151', NULL, '4952', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1176, 'area', '4953', '鲁山县', '2', '1151', NULL, '4953', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1177, 'area', '4954', '郏县', '2', '1151', NULL, '4954', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1178, 'area', '4956', '汝州市', '2', '1151', NULL, '4956', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1179, 'area', '4960', '安阳市', '2', '1151', NULL, '4960', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1180, 'area', '4961', '林州市', '2', '1151', NULL, '4961', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1181, 'area', '4962', '安阳县', '2', '1151', NULL, '4962', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1182, 'area', '4963', '汤阴县', '2', '1151', NULL, '4963', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1183, 'area', '4964', '滑县', '2', '1151', NULL, '4964', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1184, 'area', '4965', '内黄县', '2', '1151', NULL, '4965', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1185, 'area', '4970', '鹤壁市', '2', '1151', NULL, '4970', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1186, 'area', '4971', '浚县', '2', '1151', NULL, '4971', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1187, 'area', '4972', '淇县', '2', '1151', NULL, '4972', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1188, 'area', '4980', '新乡市', '2', '1151', NULL, '4980', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1189, 'area', '4981', '新乡县', '2', '1151', NULL, '4981', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1190, 'area', '4982', '获嘉县', '2', '1151', NULL, '4982', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1191, 'area', '4983', '原阳县', '2', '1151', NULL, '4983', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1192, 'area', '4984', '延津县', '2', '1151', NULL, '4984', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1193, 'area', '4985', '封丘县', '2', '1151', NULL, '4985', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1194, 'area', '4986', '长垣县', '2', '1151', NULL, '4986', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1195, 'area', '4987', '卫辉市', '2', '1151', NULL, '4987', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1196, 'area', '4988', '辉县市', '2', '1151', NULL, '4988', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1197, 'area', '5010', '焦作市', '2', '1151', NULL, '5010', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1198, 'area', '5011', '修武县', '2', '1151', NULL, '5011', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1199, 'area', '5012', '博爱县', '2', '1151', NULL, '5012', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1200, 'area', '5013', '武陟县', '2', '1151', NULL, '5013', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1201, 'area', '5014', '沁阳市', '2', '1151', NULL, '5014', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1202, 'area', '5015', '温县', '2', '1151', NULL, '5015', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1203, 'area', '5016', '孟州市', '2', '1151', NULL, '5016', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1204, 'area', '5020', '濮阳市', '2', '1151', NULL, '5020', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1205, 'area', '5021', '清丰县', '2', '1151', NULL, '5021', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1206, 'area', '5022', '南乐县', '2', '1151', NULL, '5022', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1207, 'area', '5023', '范县', '2', '1151', NULL, '5023', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1208, 'area', '5024', '台前县', '2', '1151', NULL, '5024', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1209, 'area', '5025', '濮阳县', '2', '1151', NULL, '5025', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1210, 'area', '5030', '许昌市', '2', '1151', NULL, '5030', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1211, 'area', '5031', '长葛市', '2', '1151', NULL, '5031', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1212, 'area', '5032', '许昌县', '2', '1151', NULL, '5032', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1213, 'area', '5033', '鄢陵县', '2', '1151', NULL, '5033', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1214, 'area', '5034', '禹州市', '2', '1151', NULL, '5034', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1215, 'area', '5040', '漯河市', '2', '1151', NULL, '5040', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1216, 'area', '5041', '舞阳县', '2', '1151', NULL, '5041', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1217, 'area', '5042', '临颖县', '2', '1151', NULL, '5042', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1218, 'area', '5050', '三门峡市', '2', '1151', NULL, '5050', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1219, 'area', '5051', '渑池县', '2', '1151', NULL, '5051', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1220, 'area', '5052', '陕县', '2', '1151', NULL, '5052', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1221, 'area', '5053', '灵宝市', '2', '1151', NULL, '5053', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1222, 'area', '5054', '卢氏县', '2', '1151', NULL, '5054', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1223, 'area', '5055', '义马市', '2', '1151', NULL, '5055', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1224, 'area', '5060', '商丘市', '2', '1151', NULL, '5060', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1225, 'area', '5062', '虞城县', '2', '1151', NULL, '5062', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1226, 'area', '5064', '民权县', '2', '1151', NULL, '5064', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1227, 'area', '5065', '宁陵县', '2', '1151', NULL, '5065', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1228, 'area', '5066', '睢县', '2', '1151', NULL, '5066', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1229, 'area', '5067', '夏邑县', '2', '1151', NULL, '5067', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1230, 'area', '5068', '柘城县', '2', '1151', NULL, '5068', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1231, 'area', '5069', '永城市', '2', '1151', NULL, '5069', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1232, 'area', '5080', '周口市', '2', '1151', NULL, '5080', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1233, 'area', '5082', '扶沟县', '2', '1151', NULL, '5082', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1234, 'area', '5083', '西华县', '2', '1151', NULL, '5083', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1235, 'area', '5084', '商水县', '2', '1151', NULL, '5084', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1236, 'area', '5085', '太康县', '2', '1151', NULL, '5085', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1237, 'area', '5086', '鹿邑县', '2', '1151', NULL, '5086', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1238, 'area', '5087', '郸城县', '2', '1151', NULL, '5087', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1239, 'area', '5088', '淮阳县', '2', '1151', NULL, '5088', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1240, 'area', '5089', '沈丘县', '2', '1151', NULL, '5089', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1241, 'area', '5091', '项城市', '2', '1151', NULL, '5091', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1242, 'area', '5110', '驻马店市', '2', '1151', NULL, '5110', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1243, 'area', '5112', '确山县', '2', '1151', NULL, '5112', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1244, 'area', '5113', '泌阳县', '2', '1151', NULL, '5113', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1245, 'area', '5114', '遂平县', '2', '1151', NULL, '5114', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1246, 'area', '5115', '西平县', '2', '1151', NULL, '5115', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1247, 'area', '5116', '上蔡县', '2', '1151', NULL, '5116', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1248, 'area', '5117', '汝南县', '2', '1151', NULL, '5117', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1249, 'area', '5118', '平舆县', '2', '1151', NULL, '5118', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1250, 'area', '5119', '新蔡县', '2', '1151', NULL, '5119', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1251, 'area', '5121', '正阳县', '2', '1151', NULL, '5121', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1252, 'area', '5130', '南阳市', '2', '1151', NULL, '5130', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1253, 'area', '5132', '邓州市', '2', '1151', NULL, '5132', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1254, 'area', '5133', '南召县', '2', '1151', NULL, '5133', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1255, 'area', '5134', '方城县', '2', '1151', NULL, '5134', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1256, 'area', '5135', '西峡县', '2', '1151', NULL, '5135', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1257, 'area', '5137', '镇平县', '2', '1151', NULL, '5137', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1258, 'area', '5138', '内乡县', '2', '1151', NULL, '5138', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1259, 'area', '5139', '淅川县', '2', '1151', NULL, '5139', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1260, 'area', '5141', '社旗县', '2', '1151', NULL, '5141', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1261, 'area', '5142', '唐河县', '2', '1151', NULL, '5142', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1262, 'area', '5143', '新野县', '2', '1151', NULL, '5143', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1263, 'area', '5144', '桐柏县', '2', '1151', NULL, '5144', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1264, 'area', '5150', '信阳市', '2', '1151', NULL, '5150', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1265, 'area', '5152', '息县', '2', '1151', NULL, '5152', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1266, 'area', '5153', '淮滨县', '2', '1151', NULL, '5153', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1267, 'area', '5155', '潢川县', '2', '1151', NULL, '5155', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1268, 'area', '5156', '光山县', '2', '1151', NULL, '5156', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1269, 'area', '5157', '固始县', '2', '1151', NULL, '5157', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1270, 'area', '5158', '商城县', '2', '1151', NULL, '5158', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1271, 'area', '5159', '罗山县', '2', '1151', NULL, '5159', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1272, 'area', '5161', '新县', '2', '1151', NULL, '5161', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1273, 'area', '420', '湖北省', '1', '0', NULL, '420', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1274, 'area', '5382', '京山县', '1', '1273', NULL, '5382', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1275, 'area', '5383', '沙洋县', '2', '1273', NULL, '5383', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1276, 'area', '5381', '钟祥市', '2', '1273', NULL, '5381', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1277, 'area', '5263', '宜昌县', '2', '1273', NULL, '5263', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1278, 'area', '5286', '随州市', '2', '1273', NULL, '5286', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1279, 'area', '5354', '广水市', '2', '1273', NULL, '5354', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1280, 'area', '5362', '赤壁市', '2', '1273', NULL, '5362', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1281, 'area', '5288', '枣阳市', '2', '1273', NULL, '5288', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1282, 'area', '5367', '阳新县', '2', '1273', NULL, '5367', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1283, 'area', '5392', '郧县', '2', '1273', NULL, '5392', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1284, 'area', '5393', '郧西县', '2', '1273', NULL, '5393', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1285, 'area', '5394', '竹山县', '2', '1273', NULL, '5394', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1286, 'area', '5395', '竹溪县', '2', '1273', NULL, '5395', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1287, 'area', '5396', '房县', '2', '1273', NULL, '5396', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1288, 'area', '5391', '丹江口市', '2', '1273', NULL, '5391', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1289, 'area', '5260', '宜昌市', '2', '1273', NULL, '5260', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1290, 'area', '5261', '宜都市', '2', '1273', NULL, '5261', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1291, 'area', '5210', '武汉市', '2', '1273', NULL, '5210', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1292, 'area', '5220', '黄石市', '2', '1273', NULL, '5220', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1293, 'area', '5221', '大冶市', '2', '1273', NULL, '5221', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1294, 'area', '5230', '十堰市', '2', '1273', NULL, '5230', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1295, 'area', '5262', '当阳市', '2', '1273', NULL, '5262', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1296, 'area', '5264', '枝江市', '2', '1273', NULL, '5264', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1297, 'area', '5265', '远安县', '2', '1273', NULL, '5265', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1298, 'area', '5266', '兴山县', '2', '1273', NULL, '5266', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1299, 'area', '5267', '秭归县', '2', '1273', NULL, '5267', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1300, 'area', '5268', '长阳县', '2', '1273', NULL, '5268', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1301, 'area', '5269', '五峰县', '2', '1273', NULL, '5269', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1302, 'area', '5280', '襄樊市', '2', '1273', NULL, '5280', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1303, 'area', '5282', '宜城县', '2', '1273', NULL, '5282', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1304, 'area', '5283', '南漳县', '2', '1273', NULL, '5283', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1305, 'area', '5284', '谷城县', '2', '1273', NULL, '5284', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1306, 'area', '5285', '保康县', '2', '1273', NULL, '5285', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1307, 'area', '5287', '老河口市', '2', '1273', NULL, '5287', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1308, 'area', '5310', '鄂州市', '2', '1273', NULL, '5310', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1309, 'area', '5311', '神农架林区', '2', '1273', NULL, '5311', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1310, 'area', '5320', '荆门市', '2', '1273', NULL, '5320', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1311, 'area', '5330', '黄冈市', '2', '1273', NULL, '5330', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1312, 'area', '5331', '麻城市', '2', '1273', NULL, '5331', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1313, 'area', '5332', '武穴县', '2', '1273', NULL, '5332', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1314, 'area', '5333', '团风县', '2', '1273', NULL, '5333', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1315, 'area', '5334', '红安县', '2', '1273', NULL, '5334', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1316, 'area', '5335', '罗田县', '2', '1273', NULL, '5335', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1317, 'area', '5336', '英山县', '2', '1273', NULL, '5336', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1318, 'area', '5337', '浠水县', '2', '1273', NULL, '5337', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1319, 'area', '5338', '蕲春县', '2', '1273', NULL, '5338', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1320, 'area', '5339', '黄梅县', '2', '1273', NULL, '5339', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1321, 'area', '5350', '孝感市', '2', '1273', NULL, '5350', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1322, 'area', '5351', '孝昌县', '2', '1273', NULL, '5351', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1323, 'area', '5352', '应城市', '2', '1273', NULL, '5352', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1324, 'area', '5353', '安陆市', '2', '1273', NULL, '5353', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1325, 'area', '5355', '大悟县', '2', '1273', NULL, '5355', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1326, 'area', '5356', '云梦县', '2', '1273', NULL, '5356', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1327, 'area', '5357', '汉川县', '2', '1273', NULL, '5357', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1328, 'area', '5360', '咸宁市', '2', '1273', NULL, '5360', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1329, 'area', '5363', '嘉鱼县', '2', '1273', NULL, '5363', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1330, 'area', '5364', '通城县', '2', '1273', NULL, '5364', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1331, 'area', '5365', '崇阳县', '2', '1273', NULL, '5365', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1332, 'area', '5366', '通山县', '2', '1273', NULL, '5366', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1333, 'area', '5370', '荆州市', '2', '1273', NULL, '5370', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1334, 'area', '5371', '仙桃市', '2', '1273', NULL, '5371', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1335, 'area', '5372', '石首市', '2', '1273', NULL, '5372', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1336, 'area', '5373', '洪湖市', '2', '1273', NULL, '5373', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1337, 'area', '5374', '天门市', '2', '1273', NULL, '5374', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1338, 'area', '5375', '潜江市', '2', '1273', NULL, '5375', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1339, 'area', '5377', '松滋市', '2', '1273', NULL, '5377', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1340, 'area', '5378', '公安县', '2', '1273', NULL, '5378', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1341, 'area', '5379', '监利县', '2', '1273', NULL, '5379', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1342, 'area', '5410', '恩施州', '2', '1273', NULL, '5410', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1343, 'area', '5412', '利川市', '2', '1273', NULL, '5412', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1344, 'area', '5413', '建始市', '2', '1273', NULL, '5413', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1345, 'area', '5414', '巴东县', '2', '1273', NULL, '5414', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1346, 'area', '5415', '宣恩县', '2', '1273', NULL, '5415', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1347, 'area', '5416', '咸丰县', '2', '1273', NULL, '5416', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1348, 'area', '5417', '来凤县', '2', '1273', NULL, '5417', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1349, 'area', '5418', '鹤峰县', '2', '1273', NULL, '5418', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1350, 'area', '430', '湖南省', '1', '0', NULL, '430', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1351, 'area', '5654', '道县', '1', '1350', NULL, '5654', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1352, 'area', '5655', '宁远县', '2', '1350', NULL, '5655', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1353, 'area', '5656', '江永县', '2', '1350', NULL, '5656', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1354, 'area', '5657', '江华县', '2', '1350', NULL, '5657', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1355, 'area', '5658', '蓝山县', '2', '1350', NULL, '5658', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1356, 'area', '5659', '新田县', '2', '1350', NULL, '5659', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1357, 'area', '5661', '双牌县', '2', '1350', NULL, '5661', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1358, 'area', '5662', '祁阳县', '2', '1350', NULL, '5662', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1359, 'area', '5670', '怀化市', '2', '1350', NULL, '5670', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1360, 'area', '5672', '洪江市', '2', '1350', NULL, '5672', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1361, 'area', '5674', '沅陵县', '2', '1350', NULL, '5674', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1362, 'area', '5675', '辰溪县', '2', '1350', NULL, '5675', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1363, 'area', '5676', '溆浦县', '2', '1350', NULL, '5676', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1364, 'area', '5677', '麻阳县', '2', '1350', NULL, '5677', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1365, 'area', '5678', '新晃县', '2', '1350', NULL, '5678', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1366, 'area', '5679', '芷江县', '2', '1350', NULL, '5679', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1367, 'area', '5681', '会同县', '2', '1350', NULL, '5681', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1368, 'area', '5682', '靖州县', '2', '1350', NULL, '5682', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1369, 'area', '5683', '通道县', '2', '1350', NULL, '5683', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1370, 'area', '5690', '吉首市', '2', '1350', NULL, '5690', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1371, 'area', '5692', '泸溪县', '2', '1350', NULL, '5692', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1372, 'area', '5693', '凤凰县', '2', '1350', NULL, '5693', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1373, 'area', '5694', '花垣县', '2', '1350', NULL, '5694', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1374, 'area', '5695', '保靖县', '2', '1350', NULL, '5695', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1375, 'area', '5696', '古丈县', '2', '1350', NULL, '5696', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1376, 'area', '5697', '永顺县', '2', '1350', NULL, '5697', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1377, 'area', '5698', '龙山县', '2', '1350', NULL, '5698', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1378, 'area', '5624', '双峰县', '2', '1350', NULL, '5624', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1379, 'area', '5625', '新化县', '2', '1350', NULL, '5625', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1380, 'area', '5630', '郴州市', '2', '1350', NULL, '5630', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1381, 'area', '5632', '资兴市', '2', '1350', NULL, '5632', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1382, 'area', '5634', '桂阳县', '2', '1350', NULL, '5634', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1383, 'area', '5635', '永兴县', '2', '1350', NULL, '5635', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1384, 'area', '5636', '宜章县', '2', '1350', NULL, '5636', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1385, 'area', '5637', '嘉禾县', '2', '1350', NULL, '5637', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1386, 'area', '5638', '临武县', '2', '1350', NULL, '5638', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1387, 'area', '5639', '汝城县', '2', '1350', NULL, '5639', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1388, 'area', '5641', '桂东县', '2', '1350', NULL, '5641', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1389, 'area', '5642', '安仁县', '2', '1350', NULL, '5642', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1390, 'area', '5650', '永州市', '2', '1350', NULL, '5650', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1391, 'area', '5653', '东安县', '2', '1350', NULL, '5653', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1392, 'area', '5526', '炎陵县', '2', '1350', NULL, '5526', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1393, 'area', '5510', '长沙', '2', '1350', NULL, '5510', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1394, 'area', '5520', '株州市', '2', '1350', NULL, '5520', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1395, 'area', '5521', '株洲县', '2', '1350', NULL, '5521', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1396, 'area', '5522', '攸县县', '2', '1350', NULL, '5522', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1397, 'area', '5523', '茶陵县', '2', '1350', NULL, '5523', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1398, 'area', '5583', '澧县', '2', '1350', NULL, '5583', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1399, 'area', '5525', '醴陵市', '2', '1350', NULL, '5525', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1400, 'area', '5530', '湘潭市', '2', '1350', NULL, '5530', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1401, 'area', '5532', '湘乡市', '2', '1350', NULL, '5532', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1402, 'area', '5533', '韶山县', '2', '1350', NULL, '5533', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1403, 'area', '5540', '衡阳市', '2', '1350', NULL, '5540', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1404, 'area', '5541', '衡阳县', '2', '1350', NULL, '5541', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1405, 'area', '5542', '衡南县', '2', '1350', NULL, '5542', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1406, 'area', '5543', '衡山县', '2', '1350', NULL, '5543', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1407, 'area', '5544', '衡东县', '2', '1350', NULL, '5544', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1408, 'area', '5545', '常宁县', '2', '1350', NULL, '5545', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1409, 'area', '5546', '祁东县', '2', '1350', NULL, '5546', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1410, 'area', '5547', '耒阳县', '2', '1350', NULL, '5547', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1411, 'area', '5550', '邵阳市', '2', '1350', NULL, '5550', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1412, 'area', '5551', '邵东县', '2', '1350', NULL, '5551', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1413, 'area', '5552', '新邵县', '2', '1350', NULL, '5552', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1414, 'area', '5553', '邵阳县', '2', '1350', NULL, '5553', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1415, 'area', '5554', '隆回县', '2', '1350', NULL, '5554', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1416, 'area', '5555', '洞口县', '2', '1350', NULL, '5555', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1417, 'area', '5556', '武冈县', '2', '1350', NULL, '5556', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1418, 'area', '5557', '绥宁县', '2', '1350', NULL, '5557', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1419, 'area', '5558', '新宁县', '2', '1350', NULL, '5558', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1420, 'area', '5559', '城步县', '2', '1350', NULL, '5559', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1421, 'area', '5570', '岳阳市', '2', '1350', NULL, '5570', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1422, 'area', '5571', '岳阳县', '2', '1350', NULL, '5571', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1423, 'area', '5572', '临湘县', '2', '1350', NULL, '5572', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1424, 'area', '5573', '华容县', '2', '1350', NULL, '5573', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1425, 'area', '5574', '湘阴县', '2', '1350', NULL, '5574', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1426, 'area', '5575', '平江县', '2', '1350', NULL, '5575', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1427, 'area', '5576', '汩罗市', '2', '1350', NULL, '5576', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1428, 'area', '5580', '常德市', '2', '1350', NULL, '5580', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1429, 'area', '5581', '安乡县', '2', '1350', NULL, '5581', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1430, 'area', '5582', '汉寿县', '2', '1350', NULL, '5582', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1431, 'area', '5584', '临澧县', '2', '1350', NULL, '5584', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1432, 'area', '5585', '桃源县', '2', '1350', NULL, '5585', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1433, 'area', '5586', '石门县', '2', '1350', NULL, '5586', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1434, 'area', '5587', '津市市', '2', '1350', NULL, '5587', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1435, 'area', '5590', '张家界市', '2', '1350', NULL, '5590', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1436, 'area', '5591', '慈利县', '2', '1350', NULL, '5591', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1437, 'area', '5592', '桑植县', '2', '1350', NULL, '5592', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1438, 'area', '5610', '益阳市', '2', '1350', NULL, '5610', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1439, 'area', '5612', '沅江县', '2', '1350', NULL, '5612', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1440, 'area', '5614', '南县', '2', '1350', NULL, '5614', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1441, 'area', '5615', '桃江县', '2', '1350', NULL, '5615', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1442, 'area', '5616', '安化县', '2', '1350', NULL, '5616', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1443, 'area', '5620', '娄底市', '2', '1350', NULL, '5620', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1444, 'area', '5622', '冷水江市', '2', '1350', NULL, '5622', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1445, 'area', '5623', '涟源县', '2', '1350', NULL, '5623', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1446, 'area', '440', '广东省', '1', '0', NULL, '440', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1447, 'area', '5810', '广州', '1', '1446', NULL, '5810', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1448, 'area', '5820', '韶关市', '2', '1446', NULL, '5820', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1449, 'area', '5822', '始兴县', '2', '1446', NULL, '5822', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1450, 'area', '5823', '南雄市', '2', '1446', NULL, '5823', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1451, 'area', '5824', '仁化县', '2', '1446', NULL, '5824', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1452, 'area', '5825', '乐昌市', '2', '1446', NULL, '5825', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1453, 'area', '5826', '翁源县', '2', '1446', NULL, '5826', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1454, 'area', '5827', '乳源县', '2', '1446', NULL, '5827', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1455, 'area', '5828', '新丰县', '2', '1446', NULL, '5828', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1456, 'area', '5840', '深圳', '2', '1446', NULL, '5840', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1457, 'area', '5850', '珠海市', '2', '1446', NULL, '5850', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1458, 'area', '5860', '汕头市', '2', '1446', NULL, '5860', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1459, 'area', '5863', '南澳县', '2', '1446', NULL, '5863', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1460, 'area', '5880', '佛山市', '2', '1446', NULL, '5880', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1461, 'area', '5890', '江门市', '2', '1446', NULL, '5890', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1462, 'area', '5892', '台山市', '2', '1446', NULL, '5892', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1463, 'area', '5893', '恩平县', '2', '1446', NULL, '5893', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1464, 'area', '5894', '开平县', '2', '1446', NULL, '5894', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1465, 'area', '5895', '鹤山市', '2', '1446', NULL, '5895', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1466, 'area', '5910', '湛江市', '2', '1446', NULL, '5910', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1467, 'area', '5911', '吴川市', '2', '1446', NULL, '5911', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1468, 'area', '5912', '廉江市', '2', '1446', NULL, '5912', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1469, 'area', '5913', '逐溪县', '2', '1446', NULL, '5913', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1470, 'area', '5914', '雷州市', '2', '1446', NULL, '5914', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1471, 'area', '5915', '徐闻县', '2', '1446', NULL, '5915', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1472, 'area', '5920', '茂名市', '2', '1446', NULL, '5920', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1473, 'area', '5921', '信宜市', '2', '1446', NULL, '5921', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1474, 'area', '5922', '高州市', '2', '1446', NULL, '5922', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1475, 'area', '5923', '电白县', '2', '1446', NULL, '5923', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1476, 'area', '5924', '化州市', '2', '1446', NULL, '5924', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1477, 'area', '5930', '肇庆市', '2', '1446', NULL, '5930', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1478, 'area', '5931', '高要市', '2', '1446', NULL, '5931', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1479, 'area', '5932', '四会市', '2', '1446', NULL, '5932', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1480, 'area', '5933', '广宁县', '2', '1446', NULL, '5933', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1481, 'area', '5934', '怀集县', '2', '1446', NULL, '5934', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1482, 'area', '5935', '封开县', '2', '1446', NULL, '5935', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1483, 'area', '5936', '德庆县', '2', '1446', NULL, '5936', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1484, 'area', '5950', '惠州市', '2', '1446', NULL, '5950', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1485, 'area', '5952', '博罗县', '2', '1446', NULL, '5952', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1486, 'area', '5953', '惠东县', '2', '1446', NULL, '5953', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1487, 'area', '5954', '龙门县', '2', '1446', NULL, '5954', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1488, 'area', '5960', '梅州市', '2', '1446', NULL, '5960', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1489, 'area', '5962', '大埔县', '2', '1446', NULL, '5962', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1490, 'area', '5963', '丰顺县', '2', '1446', NULL, '5963', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1491, 'area', '5964', '五华县', '2', '1446', NULL, '5964', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1492, 'area', '5965', '兴宁市', '2', '1446', NULL, '5965', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1493, 'area', '5966', '平远县', '2', '1446', NULL, '5966', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1494, 'area', '5967', '蕉岭县', '2', '1446', NULL, '5967', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1495, 'area', '5970', '汕尾市', '2', '1446', NULL, '5970', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1496, 'area', '5971', '海丰县', '2', '1446', NULL, '5971', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1497, 'area', '5972', '陆丰市', '2', '1446', NULL, '5972', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1498, 'area', '5973', '陆河县', '2', '1446', NULL, '5973', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1499, 'area', '5980', '河源市', '2', '1446', NULL, '5980', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1500, 'area', '5981', '紫金县', '2', '1446', NULL, '5981', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1501, 'area', '5982', '龙川县', '2', '1446', NULL, '5982', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1502, 'area', '5983', '连平县', '2', '1446', NULL, '5983', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1503, 'area', '5984', '和平县', '2', '1446', NULL, '5984', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1504, 'area', '5985', '东源县', '2', '1446', NULL, '5985', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1505, 'area', '5990', '阳江市', '2', '1446', NULL, '5990', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1506, 'area', '5991', '阳西县', '2', '1446', NULL, '5991', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1507, 'area', '5992', '阳春市', '2', '1446', NULL, '5992', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1508, 'area', '5993', '阳东县', '2', '1446', NULL, '5993', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1509, 'area', '6010', '清远市', '2', '1446', NULL, '6010', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1510, 'area', '6011', '佛冈县', '2', '1446', NULL, '6011', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1511, 'area', '6012', '英德市', '2', '1446', NULL, '6012', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1512, 'area', '6013', '阳山县', '2', '1446', NULL, '6013', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1513, 'area', '6014', '连州市', '2', '1446', NULL, '6014', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1514, 'area', '6015', '连山县', '2', '1446', NULL, '6015', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1515, 'area', '6016', '连南县', '2', '1446', NULL, '6016', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1516, 'area', '6017', '清新县', '2', '1446', NULL, '6017', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1517, 'area', '6020', '东莞市', '2', '1446', NULL, '6020', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1518, 'area', '6030', '中山市', '2', '1446', NULL, '6030', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1519, 'area', '5821', '曲江县', '2', '1446', NULL, '5821', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1520, 'area', '5861', '澄海市', '2', '1446', NULL, '5861', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1521, 'area', '5864', '潮阳市', '2', '1446', NULL, '5864', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1522, 'area', '5872', '潮安营业部', '2', '1446', NULL, '5872', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1523, 'area', '5956', '大亚湾营业部', '2', '1446', NULL, '5956', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1524, 'area', '5869', '潮州市', '2', '1446', NULL, '5869', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1525, 'area', '5862', '饶平县', '2', '1446', NULL, '5862', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1526, 'area', '5865', '揭阳市', '2', '1446', NULL, '5865', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1527, 'area', '5871', '揭东县', '2', '1446', NULL, '5871', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1528, 'area', '5866', '揭西县', '2', '1446', NULL, '5866', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1529, 'area', '5868', '惠来县', '2', '1446', NULL, '5868', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1530, 'area', '5867', '普宁市', '2', '1446', NULL, '5867', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1531, 'area', '5937', '云浮市', '2', '1446', NULL, '5937', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1532, 'area', '5938', '新兴县', '2', '1446', NULL, '5938', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1533, 'area', '5939', '郁南县', '2', '1446', NULL, '5939', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1534, 'area', '5941', '罗定市', '2', '1446', NULL, '5941', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1535, 'area', '450', '广西壮族自治区', '1', '0', NULL, '450', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1536, 'area', '6110', '南宁', '1', '1535', NULL, '6110', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1537, 'area', '6140', '柳州市', '2', '1535', NULL, '6140', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1538, 'area', '6141', '柳江县', '2', '1535', NULL, '6141', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1539, 'area', '6142', '柳城县', '2', '1535', NULL, '6142', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1540, 'area', '6152', '鹿寨县', '2', '1535', NULL, '6152', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1541, 'area', '6156', '融安县', '2', '1535', NULL, '6156', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1542, 'area', '6157', '三江县', '2', '1535', NULL, '6157', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1543, 'area', '6158', '融水县', '2', '1535', NULL, '6158', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1544, 'area', '6170', '桂林市', '2', '1535', NULL, '6170', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1545, 'area', '6171', '阳朔县', '2', '1535', NULL, '6171', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1546, 'area', '6172', '临桂县', '2', '1535', NULL, '6172', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1547, 'area', '6181', '灵川县', '2', '1535', NULL, '6181', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1548, 'area', '6182', '金州县', '2', '1535', NULL, '6182', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1549, 'area', '6183', '兴安县', '2', '1535', NULL, '6183', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1550, 'area', '6184', '永福县', '2', '1535', NULL, '6184', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1551, 'area', '6185', '灌阳县', '2', '1535', NULL, '6185', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1552, 'area', '6186', '龙胜县', '2', '1535', NULL, '6186', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1553, 'area', '6187', '资源县', '2', '1535', NULL, '6187', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1554, 'area', '6188', '平乐县', '2', '1535', NULL, '6188', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1555, 'area', '6189', '荔浦县', '2', '1535', NULL, '6189', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1556, 'area', '6191', '恭城县', '2', '1535', NULL, '6191', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1557, 'area', '6210', '梧州市', '2', '1535', NULL, '6210', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1558, 'area', '6211', '苍梧县', '2', '1535', NULL, '6211', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1559, 'area', '6221', '岑溪市', '2', '1535', NULL, '6221', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1560, 'area', '6222', '藤县', '2', '1535', NULL, '6222', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1561, 'area', '6224', '蒙山县', '2', '1535', NULL, '6224', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1562, 'area', '6230', '北海市', '2', '1535', NULL, '6230', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1563, 'area', '6231', '合浦县', '2', '1535', NULL, '6231', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1564, 'area', '6240', '玉林市', '2', '1535', NULL, '6240', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1565, 'area', '6245', '容县', '2', '1535', NULL, '6245', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1566, 'area', '6246', '北流市', '2', '1535', NULL, '6246', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1567, 'area', '6247', '陆川县', '2', '1535', NULL, '6247', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1568, 'area', '6248', '博白县', '2', '1535', NULL, '6248', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1569, 'area', '6249', '兴业县', '2', '1535', NULL, '6249', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1570, 'area', '6262', '田阳县', '2', '1535', NULL, '6262', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1571, 'area', '6263', '田东县', '2', '1535', NULL, '6263', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1572, 'area', '6264', '平果县', '2', '1535', NULL, '6264', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1573, 'area', '6266', '靖西县', '2', '1535', NULL, '6266', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1574, 'area', '6267', '那坡县', '2', '1535', NULL, '6267', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1575, 'area', '6268', '凌云县', '2', '1535', NULL, '6268', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1576, 'area', '6269', '乐业县', '2', '1535', NULL, '6269', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1577, 'area', '6271', '田林县', '2', '1535', NULL, '6271', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1578, 'area', '6272', '隆林县', '2', '1535', NULL, '6272', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1579, 'area', '6273', '西林县', '2', '1535', NULL, '6273', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1580, 'area', '6282', '宜州市', '2', '1535', NULL, '6282', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1581, 'area', '6283', '罗城县', '2', '1535', NULL, '6283', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1582, 'area', '6284', '环江县', '2', '1535', NULL, '6284', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1583, 'area', '6285', '南丹县', '2', '1535', NULL, '6285', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1584, 'area', '6286', '天峨县', '2', '1535', NULL, '6286', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1585, 'area', '6287', '凤山县', '2', '1535', NULL, '6287', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1586, 'area', '6288', '东兰县', '2', '1535', NULL, '6288', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1587, 'area', '6289', '巴马县', '2', '1535', NULL, '6289', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1588, 'area', '6291', '都安县', '2', '1535', NULL, '6291', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1589, 'area', '6292', '大化县', '2', '1535', NULL, '6292', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1590, 'area', '6314', '灵山县', '2', '1535', NULL, '6314', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1591, 'area', '6315', '浦北县', '2', '1535', NULL, '6315', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1592, 'area', '6330', '防城港市', '2', '1535', NULL, '6330', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1593, 'area', '6331', '东兴市', '2', '1535', NULL, '6331', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1594, 'area', '6153', '象州市', '2', '1535', NULL, '6153', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1595, 'area', '6159', '金秀县', '2', '1535', NULL, '6159', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1596, 'area', '6261', '百色市', '2', '1535', NULL, '6261', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1597, 'area', '6275', '德保县', '2', '1535', NULL, '6275', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1598, 'area', '6281', '河池市', '2', '1535', NULL, '6281', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1599, 'area', '6311', '钦州市', '2', '1535', NULL, '6311', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1600, 'area', '6312', '上思县', '2', '1535', NULL, '6312', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1601, 'area', '6242', '贵港市', '2', '1535', NULL, '6242', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1602, 'area', '6244', '平南县', '2', '1535', NULL, '6244', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1603, 'area', '6243', '桂平市', '2', '1535', NULL, '6243', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1604, 'area', '6225', '贺州市', '2', '1535', NULL, '6225', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1605, 'area', '6223', '昭平县', '2', '1535', NULL, '6223', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1606, 'area', '6226', '钟山县', '2', '1535', NULL, '6226', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1607, 'area', '6155', '来宾市', '2', '1535', NULL, '6155', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1608, 'area', '6161', '忻城县', '2', '1535', NULL, '6161', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1609, 'area', '6154', '武宣县', '2', '1535', NULL, '6154', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1610, 'area', '6151', '合山市', '2', '1535', NULL, '6151', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1611, 'area', '6128', '崇左市', '2', '1535', NULL, '6128', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1612, 'area', '6127', '扶绥县', '2', '1535', NULL, '6127', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1613, 'area', '6132', '宁明县', '2', '1535', NULL, '6132', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1614, 'area', '6133', '龙州县', '2', '1535', NULL, '6133', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1615, 'area', '6129', '大新县', '2', '1535', NULL, '6129', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1616, 'area', '6131', '天等县', '2', '1535', NULL, '6131', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1617, 'area', '6121', '凭祥市', '2', '1535', NULL, '6121', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1618, 'area', '460', '海南省', '1', '0', NULL, '460', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1619, 'area', '6410', '海口', '1', '1618', NULL, '6410', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1620, 'area', '6420', '三亚', '2', '1618', NULL, '6420', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1621, 'area', '500', '重庆市', '1', '0', NULL, '500', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1622, 'area', '6530', '重庆', '1', '1621', NULL, '6530', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1623, 'area', '6681', '城口县', '2', '1621', NULL, '6681', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1624, 'area', '6695', '武隆县', '2', '1621', NULL, '6695', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1625, 'area', '6676', '云阳县', '2', '1621', NULL, '6676', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1626, 'area', '6677', '奉节县', '2', '1621', NULL, '6677', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1627, 'area', '6678', '巫山县', '2', '1621', NULL, '6678', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1628, 'area', '6679', '巫溪县', '2', '1621', NULL, '6679', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1629, 'area', '510', '四川省', '1', '0', NULL, '510', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1630, 'area', '6510', '成都', '1', '1629', NULL, '6510', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1631, 'area', '6550', '自贡市', '2', '1629', NULL, '6550', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1632, 'area', '6551', '荣县', '2', '1629', NULL, '6551', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1633, 'area', '6552', '富顺县', '2', '1629', NULL, '6552', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1634, 'area', '6560', '攀枝花市', '2', '1629', NULL, '6560', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1635, 'area', '6561', '米易县', '2', '1629', NULL, '6561', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1636, 'area', '6562', '盐边县', '2', '1629', NULL, '6562', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1637, 'area', '6570', '泸州市', '2', '1629', NULL, '6570', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1638, 'area', '6571', '泸县', '2', '1629', NULL, '6571', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1639, 'area', '6572', '合江县', '2', '1629', NULL, '6572', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1640, 'area', '6574', '叙永县', '2', '1629', NULL, '6574', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1641, 'area', '6575', '古蔺县', '2', '1629', NULL, '6575', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1642, 'area', '6580', '德阳县', '2', '1629', NULL, '6580', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1643, 'area', '6581', '绵竹县', '2', '1629', NULL, '6581', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1644, 'area', '6582', '中江县', '2', '1629', NULL, '6582', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1645, 'area', '6583', '什邡县', '2', '1629', NULL, '6583', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1646, 'area', '6584', '广汉市', '2', '1629', NULL, '6584', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1647, 'area', '6585', '罗江县', '2', '1629', NULL, '6585', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1648, 'area', '6590', '绵阳市', '2', '1629', NULL, '6590', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1649, 'area', '6591', '三台县', '2', '1629', NULL, '6591', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1650, 'area', '6592', '盐亭县', '2', '1629', NULL, '6592', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1651, 'area', '6593', '安县', '2', '1629', NULL, '6593', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1652, 'area', '6594', '梓潼县', '2', '1629', NULL, '6594', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1653, 'area', '6595', '北川县', '2', '1629', NULL, '6595', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1654, 'area', '6596', '平武县', '2', '1629', NULL, '6596', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1655, 'area', '6597', '江油市', '2', '1629', NULL, '6597', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1656, 'area', '6610', '广元市', '2', '1629', NULL, '6610', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1657, 'area', '6611', '旺苍县', '2', '1629', NULL, '6611', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1658, 'area', '6612', '青川县', '2', '1629', NULL, '6612', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1659, 'area', '6613', '剑阁县', '2', '1629', NULL, '6613', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1660, 'area', '6614', '苍溪县', '2', '1629', NULL, '6614', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1661, 'area', '6620', '遂宁县', '2', '1629', NULL, '6620', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1662, 'area', '6621', '蓬溪县', '2', '1629', NULL, '6621', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1663, 'area', '6622', '射洪县', '2', '1629', NULL, '6622', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1664, 'area', '6623', '大英县', '2', '1629', NULL, '6623', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1665, 'area', '6630', '内江市', '2', '1629', NULL, '6630', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1666, 'area', '6634', '威远县', '2', '1629', NULL, '6634', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1667, 'area', '6635', '资中县', '2', '1629', NULL, '6635', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1668, 'area', '6638', '隆昌县', '2', '1629', NULL, '6638', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1669, 'area', '6650', '乐山市', '2', '1629', NULL, '6650', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1670, 'area', '6653', '犍为县', '2', '1629', NULL, '6653', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1671, 'area', '6654', '井研县', '2', '1629', NULL, '6654', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1672, 'area', '6655', '夹江县', '2', '1629', NULL, '6655', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1673, 'area', '6658', '沐川县', '2', '1629', NULL, '6658', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1674, 'area', '6662', '峨边县', '2', '1629', NULL, '6662', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1675, 'area', '6663', '马边县', '2', '1629', NULL, '6663', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1676, 'area', '6664', '峨眉山市', '2', '1629', NULL, '6664', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1677, 'area', '6710', '宜宾市', '2', '1629', NULL, '6710', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1678, 'area', '6712', '宜宾县', '2', '1629', NULL, '6712', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1679, 'area', '6713', '南溪县', '2', '1629', NULL, '6713', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1680, 'area', '6714', '江安县', '2', '1629', NULL, '6714', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1681, 'area', '6715', '长宁县', '2', '1629', NULL, '6715', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1682, 'area', '6716', '高县', '2', '1629', NULL, '6716', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1683, 'area', '6717', '筠连县', '2', '1629', NULL, '6717', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1684, 'area', '6718', '珙县', '2', '1629', NULL, '6718', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1685, 'area', '6719', '兴文县', '2', '1629', NULL, '6719', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1686, 'area', '6721', '屏山县', '2', '1629', NULL, '6721', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1687, 'area', '6730', '南充市', '2', '1629', NULL, '6730', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1688, 'area', '6734', '南部县', '2', '1629', NULL, '6734', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1689, 'area', '6736', '营山县', '2', '1629', NULL, '6736', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1690, 'area', '6738', '蓬安县', '2', '1629', NULL, '6738', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1691, 'area', '6739', '仪陇县', '2', '1629', NULL, '6739', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1692, 'area', '6742', '西充县', '2', '1629', NULL, '6742', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1693, 'area', '6743', '阆中县', '2', '1629', NULL, '6743', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1694, 'area', '6750', '达州市', '2', '1629', NULL, '6750', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1695, 'area', '6752', '达县', '2', '1629', NULL, '6752', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1696, 'area', '6753', '宣汉县', '2', '1629', NULL, '6753', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1697, 'area', '6754', '开江县', '2', '1629', NULL, '6754', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1698, 'area', '6755', '万源县', '2', '1629', NULL, '6755', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1699, 'area', '6761', '大竹县', '2', '1629', NULL, '6761', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1700, 'area', '6762', '渠县', '2', '1629', NULL, '6762', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1701, 'area', '6770', '雅安市', '2', '1629', NULL, '6770', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1702, 'area', '6772', '名山县', '2', '1629', NULL, '6772', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1703, 'area', '6773', '荥经县', '2', '1629', NULL, '6773', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1704, 'area', '6774', '汉源县', '2', '1629', NULL, '6774', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1705, 'area', '6775', '石棉县', '2', '1629', NULL, '6775', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1706, 'area', '6776', '天全县', '2', '1629', NULL, '6776', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1707, 'area', '6777', '芦山县', '2', '1629', NULL, '6777', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1708, 'area', '6778', '宝兴县', '2', '1629', NULL, '6778', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1709, 'area', '6790', '马尔康县', '2', '1629', NULL, '6790', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1710, 'area', '6791', '汶川县', '2', '1629', NULL, '6791', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1711, 'area', '6792', '理县', '2', '1629', NULL, '6792', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1712, 'area', '6793', '茂县', '2', '1629', NULL, '6793', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1713, 'area', '6794', '松潘县', '2', '1629', NULL, '6794', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1714, 'area', '6795', '九寨沟县', '2', '1629', NULL, '6795', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1715, 'area', '6797', '小金县', '2', '1629', NULL, '6797', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1716, 'area', '6798', '黑水', '2', '1629', NULL, '6798', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1717, 'area', '6801', '壤塘县', '2', '1629', NULL, '6801', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1718, 'area', '6802', '阿坝县', '2', '1629', NULL, '6802', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1719, 'area', '6803', '若尔盖县', '2', '1629', NULL, '6803', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1720, 'area', '6804', '红原县', '2', '1629', NULL, '6804', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1721, 'area', '6810', '康定县', '2', '1629', NULL, '6810', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1722, 'area', '6812', '泸定县', '2', '1629', NULL, '6812', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1723, 'area', '6813', '丹巴县', '2', '1629', NULL, '6813', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1724, 'area', '6814', '九龙县', '2', '1629', NULL, '6814', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1725, 'area', '6815', '雅江县', '2', '1629', NULL, '6815', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1726, 'area', '6816', '道孚县', '2', '1629', NULL, '6816', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1727, 'area', '6817', '炉霍县', '2', '1629', NULL, '6817', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1728, 'area', '6818', '甘孜县', '2', '1629', NULL, '6818', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1729, 'area', '6819', '新龙县', '2', '1629', NULL, '6819', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1730, 'area', '6821', '德格县', '2', '1629', NULL, '6821', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1731, 'area', '6822', '白玉县', '2', '1629', NULL, '6822', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1732, 'area', '6823', '石渠县', '2', '1629', NULL, '6823', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1733, 'area', '6824', '色达县', '2', '1629', NULL, '6824', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1734, 'area', '6825', '理塘县', '2', '1629', NULL, '6825', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1735, 'area', '6826', '巴塘县', '2', '1629', NULL, '6826', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1736, 'area', '6827', '乡城县', '2', '1629', NULL, '6827', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1737, 'area', '6828', '稻城县', '2', '1629', NULL, '6828', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1738, 'area', '6829', '得荣县', '2', '1629', NULL, '6829', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1739, 'area', '6840', '西昌市', '2', '1629', NULL, '6840', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1740, 'area', '6842', '木里县', '2', '1629', NULL, '6842', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1741, 'area', '6843', '盐源县', '2', '1629', NULL, '6843', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1742, 'area', '6845', '会理县', '2', '1629', NULL, '6845', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1743, 'area', '6846', '会东县', '2', '1629', NULL, '6846', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1744, 'area', '6847', '宁南县', '2', '1629', NULL, '6847', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1745, 'area', '6848', '普格县', '2', '1629', NULL, '6848', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1746, 'area', '6849', '布拖县', '2', '1629', NULL, '6849', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1747, 'area', '6851', '金阳县', '2', '1629', NULL, '6851', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1748, 'area', '6852', '昭觉县', '2', '1629', NULL, '6852', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1749, 'area', '6853', '喜德县', '2', '1629', NULL, '6853', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1750, 'area', '6854', '冕宁县', '2', '1629', NULL, '6854', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1751, 'area', '6855', '越西县', '2', '1629', NULL, '6855', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1752, 'area', '6856', '甘洛县', '2', '1629', NULL, '6856', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1753, 'area', '6857', '美姑县', '2', '1629', NULL, '6857', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1754, 'area', '6858', '雷波县', '2', '1629', NULL, '6858', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1755, 'area', '6670', '万州区', '2', '1629', NULL, '6670', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1756, 'area', '6673', '开县', '2', '1629', NULL, '6673', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1757, 'area', '6674', '忠县', '2', '1629', NULL, '6674', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1758, 'area', '6675', '梁平县', '2', '1629', NULL, '6675', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1759, 'area', '6690', '涪陵区', '2', '1629', NULL, '6690', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1760, 'area', '6692', '垫江县', '2', '1629', NULL, '6692', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1761, 'area', '6693', '南川市', '2', '1629', NULL, '6693', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1762, 'area', '6694', '丰都县', '2', '1629', NULL, '6694', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1763, 'area', '6870', '黔江区', '2', '1629', NULL, '6870', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1764, 'area', '6871', '石柱县', '2', '1629', NULL, '6871', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1765, 'area', '6872', '秀山县', '2', '1629', NULL, '6872', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1766, 'area', '6227', '富山县', '2', '1629', NULL, '6227', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1767, 'area', '6573', '纳溪县', '2', '1629', NULL, '6573', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1768, 'area', '6636', '资阳县', '2', '1629', NULL, '6636', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1769, 'area', '6874', '酉阳县', '2', '1629', NULL, '6874', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1770, 'area', '6875', '彭水县', '2', '1629', NULL, '6875', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1771, 'area', '6805', '金川县', '2', '1629', NULL, '6805', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1772, 'area', '6859', '德昌县', '2', '1629', NULL, '6859', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1773, 'area', '6652', '眉山市', '2', '1629', NULL, '6652', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1774, 'area', '6651', '仁寿县', '2', '1629', NULL, '6651', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1775, 'area', '6657', '彭山县', '2', '1629', NULL, '6657', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1776, 'area', '6656', '洪雅县', '2', '1629', NULL, '6656', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1777, 'area', '6665', '丹棱县', '2', '1629', NULL, '6665', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1778, 'area', '6659', '青神县', '2', '1629', NULL, '6659', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1779, 'area', '6737', '广安市', '2', '1629', NULL, '6737', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1780, 'area', '6735', '岳池县', '2', '1629', NULL, '6735', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1781, 'area', '6741', '武胜县', '2', '1629', NULL, '6741', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1782, 'area', '6763', '邻水县', '2', '1629', NULL, '6763', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1783, 'area', '6732', '华蓥市', '2', '1629', NULL, '6732', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1784, 'area', '6758', '巴中市', '2', '1629', NULL, '6758', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1785, 'area', '6756', '通江县', '2', '1629', NULL, '6756', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1786, 'area', '6757', '南江县', '2', '1629', NULL, '6757', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1787, 'area', '6759', '平昌县', '2', '1629', NULL, '6759', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1788, 'area', '6633', '安岳县', '2', '1629', NULL, '6633', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1789, 'area', '6632', '乐至县', '2', '1629', NULL, '6632', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1790, 'area', '6637', '简阳市', '2', '1629', NULL, '6637', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1791, 'area', '520', '贵州省', '1', '0', NULL, '520', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1792, 'area', '7010', '贵阳', '1', '1791', NULL, '7010', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1793, 'area', '7020', '六盘水市', '2', '1791', NULL, '7020', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1794, 'area', '7021', '六枝特区', '2', '1791', NULL, '7021', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1795, 'area', '7022', '盘县', '2', '1791', NULL, '7022', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1796, 'area', '7030', '遵义市', '2', '1791', NULL, '7030', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1797, 'area', '7032', '遵义县', '2', '1791', NULL, '7032', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1798, 'area', '7033', '桐梓县', '2', '1791', NULL, '7033', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1799, 'area', '7034', '绥阳县', '2', '1791', NULL, '7034', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1800, 'area', '7035', '正安县', '2', '1791', NULL, '7035', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1801, 'area', '7036', '道真县', '2', '1791', NULL, '7036', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1802, 'area', '7037', '务川县', '2', '1791', NULL, '7037', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1803, 'area', '7038', '凤岗县', '2', '1791', NULL, '7038', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1804, 'area', '7039', '湄潭县', '2', '1791', NULL, '7039', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1805, 'area', '7041', '余庆县', '2', '1791', NULL, '7041', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1806, 'area', '7042', '仁怀市', '2', '1791', NULL, '7042', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1807, 'area', '7043', '赤水市', '2', '1791', NULL, '7043', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1808, 'area', '7044', '习水县', '2', '1791', NULL, '7044', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1809, 'area', '7050', '铜仁市', '2', '1791', NULL, '7050', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1810, 'area', '7052', '江口县', '2', '1791', NULL, '7052', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1811, 'area', '7053', '玉屏县', '2', '1791', NULL, '7053', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1812, 'area', '7054', '石阡县', '2', '1791', NULL, '7054', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1813, 'area', '7055', '思南县', '2', '1791', NULL, '7055', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1814, 'area', '7056', '印江县', '2', '1791', NULL, '7056', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1815, 'area', '7057', '德江县', '2', '1791', NULL, '7057', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1816, 'area', '7058', '沿河县', '2', '1791', NULL, '7058', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1817, 'area', '7059', '松桃县', '2', '1791', NULL, '7059', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1818, 'area', '7061', '万山', '2', '1791', NULL, '7061', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1819, 'area', '7070', '兴义市', '2', '1791', NULL, '7070', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1820, 'area', '7072', '兴仁县', '2', '1791', NULL, '7072', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1821, 'area', '7073', '普安县', '2', '1791', NULL, '7073', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1822, 'area', '7074', '晴隆县', '2', '1791', NULL, '7074', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1823, 'area', '7075', '贞丰县', '2', '1791', NULL, '7075', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1824, 'area', '7076', '望漠县', '2', '1791', NULL, '7076', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1825, 'area', '7077', '册亨县', '2', '1791', NULL, '7077', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1826, 'area', '7078', '安龙县', '2', '1791', NULL, '7078', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1827, 'area', '7090', '毕节市', '2', '1791', NULL, '7090', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1828, 'area', '7092', '大方县', '2', '1791', NULL, '7092', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1829, 'area', '7093', '黔西县', '2', '1791', NULL, '7093', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1830, 'area', '7094', '金沙县', '2', '1791', NULL, '7094', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1831, 'area', '7095', '织金县', '2', '1791', NULL, '7095', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1832, 'area', '7096', '纳雍县', '2', '1791', NULL, '7096', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1833, 'area', '7097', '威宁县', '2', '1791', NULL, '7097', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1834, 'area', '7098', '赫章县', '2', '1791', NULL, '7098', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1835, 'area', '7110', '安顺市', '2', '1791', NULL, '7110', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1836, 'area', '7117', '平坝县', '2', '1791', NULL, '7117', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1837, 'area', '7118', '普定县', '2', '1791', NULL, '7118', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1838, 'area', '7119', '关岭县', '2', '1791', NULL, '7119', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1839, 'area', '7121', '镇宁县', '2', '1791', NULL, '7121', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1840, 'area', '7122', '紫云县', '2', '1791', NULL, '7122', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1841, 'area', '7130', '凯里市', '2', '1791', NULL, '7130', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1842, 'area', '7132', '黄平县', '2', '1791', NULL, '7132', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1843, 'area', '7133', '施秉县', '2', '1791', NULL, '7133', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1844, 'area', '7134', '三穗县', '2', '1791', NULL, '7134', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1845, 'area', '7135', '镇远县', '2', '1791', NULL, '7135', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1846, 'area', '7136', '岑巩县', '2', '1791', NULL, '7136', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1847, 'area', '7137', '天柱县', '2', '1791', NULL, '7137', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1848, 'area', '7138', '锦屏县', '2', '1791', NULL, '7138', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1849, 'area', '7139', '剑河县', '2', '1791', NULL, '7139', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1850, 'area', '7141', '台江县', '2', '1791', NULL, '7141', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1851, 'area', '7142', '黎平县', '2', '1791', NULL, '7142', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1852, 'area', '7143', '榕江县', '2', '1791', NULL, '7143', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1853, 'area', '7144', '从江县', '2', '1791', NULL, '7144', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1854, 'area', '7145', '雷山县', '2', '1791', NULL, '7145', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1855, 'area', '7146', '麻江县', '2', '1791', NULL, '7146', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1856, 'area', '7147', '丹寨县', '2', '1791', NULL, '7147', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1857, 'area', '7150', '都匀市', '2', '1791', NULL, '7150', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1858, 'area', '7152', '荔波县', '2', '1791', NULL, '7152', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1859, 'area', '7153', '贵定县', '2', '1791', NULL, '7153', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1860, 'area', '7154', '福泉县', '2', '1791', NULL, '7154', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1861, 'area', '7155', '翁安县', '2', '1791', NULL, '7155', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1862, 'area', '7156', '独山县', '2', '1791', NULL, '7156', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1863, 'area', '7157', '平塘县', '2', '1791', NULL, '7157', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1864, 'area', '7158', '罗甸县', '2', '1791', NULL, '7158', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1865, 'area', '7159', '长顺县', '2', '1791', NULL, '7159', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1866, 'area', '7161', '龙里县', '2', '1791', NULL, '7161', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1867, 'area', '7162', '惠水县', '2', '1791', NULL, '7162', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1868, 'area', '7163', '三都县', '2', '1791', NULL, '7163', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1869, 'area', '530', '云南省', '1', '0', NULL, '530', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1870, 'area', '7543', '梁河县', '1', '1869', NULL, '7543', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1871, 'area', '7310', '昆明', '2', '1869', NULL, '7310', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1872, 'area', '7340', '昭通市', '2', '1869', NULL, '7340', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1873, 'area', '7342', '鲁甸县', '2', '1869', NULL, '7342', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1874, 'area', '7343', '巧家县', '2', '1869', NULL, '7343', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1875, 'area', '7344', '盐津县', '2', '1869', NULL, '7344', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1876, 'area', '7345', '大关县', '2', '1869', NULL, '7345', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1877, 'area', '7346', '永善县', '2', '1869', NULL, '7346', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1878, 'area', '7347', '绥江县', '2', '1869', NULL, '7347', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1879, 'area', '7348', '镇雄县', '2', '1869', NULL, '7348', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1880, 'area', '7349', '彝良县', '2', '1869', NULL, '7349', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1881, 'area', '7351', '威信县', '2', '1869', NULL, '7351', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1882, 'area', '7352', '永富县', '2', '1869', NULL, '7352', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1883, 'area', '7360', '曲靖市', '2', '1869', NULL, '7360', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1884, 'area', '7362', '马龙县', '2', '1869', NULL, '7362', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1885, 'area', '7363', '宣威市', '2', '1869', NULL, '7363', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1886, 'area', '7364', '富源县', '2', '1869', NULL, '7364', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1887, 'area', '7365', '罗平县', '2', '1869', NULL, '7365', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1888, 'area', '7366', '师宗县', '2', '1869', NULL, '7366', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1889, 'area', '7367', '陆良县', '2', '1869', NULL, '7367', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1890, 'area', '7369', '会泽县', '2', '1869', NULL, '7369', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1891, 'area', '7371', '沾益县', '2', '1869', NULL, '7371', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1892, 'area', '7380', '楚雄市', '2', '1869', NULL, '7380', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1893, 'area', '7382', '双柏县', '2', '1869', NULL, '7382', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1894, 'area', '7383', '牟定县', '2', '1869', NULL, '7383', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1895, 'area', '7384', '南华县', '2', '1869', NULL, '7384', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1896, 'area', '7385', '姚安县', '2', '1869', NULL, '7385', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1897, 'area', '7386', '大姚县', '2', '1869', NULL, '7386', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1898, 'area', '7387', '永仁县', '2', '1869', NULL, '7387', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1899, 'area', '7388', '元谋县', '2', '1869', NULL, '7388', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1900, 'area', '7389', '武定县', '2', '1869', NULL, '7389', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1901, 'area', '7391', '禄丰县', '2', '1869', NULL, '7391', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1902, 'area', '7410', '玉溪市', '2', '1869', NULL, '7410', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1903, 'area', '7412', '江川县', '2', '1869', NULL, '7412', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1904, 'area', '7413', '澄江县', '2', '1869', NULL, '7413', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1905, 'area', '7414', '通海县', '2', '1869', NULL, '7414', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1906, 'area', '7415', '华宁县', '2', '1869', NULL, '7415', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1907, 'area', '7416', '易门县', '2', '1869', NULL, '7416', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1908, 'area', '7417', '峨山县', '2', '1869', NULL, '7417', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1909, 'area', '7418', '新平县', '2', '1869', NULL, '7418', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1910, 'area', '7419', '元江县', '2', '1869', NULL, '7419', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1911, 'area', '7430', '个旧市', '2', '1869', NULL, '7430', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1912, 'area', '7432', '开远市', '2', '1869', NULL, '7432', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1913, 'area', '7433', '蒙自县', '2', '1869', NULL, '7433', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1914, 'area', '7434', '屏边县', '2', '1869', NULL, '7434', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1915, 'area', '7435', '建水县', '2', '1869', NULL, '7435', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1916, 'area', '7436', '石屏县', '2', '1869', NULL, '7436', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1917, 'area', '7437', '弥勒县', '2', '1869', NULL, '7437', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1918, 'area', '7438', '泸西县', '2', '1869', NULL, '7438', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1919, 'area', '7439', '元阳县', '2', '1869', NULL, '7439', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1920, 'area', '7441', '红河县', '2', '1869', NULL, '7441', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1921, 'area', '7442', '金平县', '2', '1869', NULL, '7442', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1922, 'area', '7443', '绿春县', '2', '1869', NULL, '7443', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1923, 'area', '7444', '河口县', '2', '1869', NULL, '7444', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1924, 'area', '7450', '文山县', '2', '1869', NULL, '7450', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1925, 'area', '7452', '砚山县', '2', '1869', NULL, '7452', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1926, 'area', '7453', '西畴县', '2', '1869', NULL, '7453', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1927, 'area', '7454', '麻栗坡县', '2', '1869', NULL, '7454', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1928, 'area', '7455', '马关县', '2', '1869', NULL, '7455', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1929, 'area', '7456', '邱北县', '2', '1869', NULL, '7456', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1930, 'area', '7457', '广南县', '2', '1869', NULL, '7457', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1931, 'area', '7458', '富宁县', '2', '1869', NULL, '7458', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1932, 'area', '7470', '思茅市', '2', '1869', NULL, '7470', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1933, 'area', '7472', '普洱县', '2', '1869', NULL, '7472', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1934, 'area', '7473', '墨江县', '2', '1869', NULL, '7473', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1935, 'area', '7474', '景东县', '2', '1869', NULL, '7474', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1936, 'area', '7475', '景谷县', '2', '1869', NULL, '7475', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1937, 'area', '7476', '镇沅县', '2', '1869', NULL, '7476', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1938, 'area', '7477', '江城县', '2', '1869', NULL, '7477', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1939, 'area', '7478', '孟连县', '2', '1869', NULL, '7478', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1940, 'area', '7479', '澜沧县', '2', '1869', NULL, '7479', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1941, 'area', '7481', '西盟县', '2', '1869', NULL, '7481', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1942, 'area', '7490', '景洪市', '2', '1869', NULL, '7490', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1943, 'area', '7492', '勐海县', '2', '1869', NULL, '7492', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1944, 'area', '7493', '勐腊县', '2', '1869', NULL, '7493', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1945, 'area', '7510', '大理市', '2', '1869', NULL, '7510', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1946, 'area', '7512', '漾濞县', '2', '1869', NULL, '7512', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1947, 'area', '7513', '祥云县', '2', '1869', NULL, '7513', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1948, 'area', '7514', '宾川县', '2', '1869', NULL, '7514', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1949, 'area', '7515', '弥渡县', '2', '1869', NULL, '7515', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1950, 'area', '7516', '南涧县', '2', '1869', NULL, '7516', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1951, 'area', '7517', '巍山县', '2', '1869', NULL, '7517', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1952, 'area', '7518', '永平县', '2', '1869', NULL, '7518', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1953, 'area', '7519', '云龙县', '2', '1869', NULL, '7519', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1954, 'area', '7521', '洱源县', '2', '1869', NULL, '7521', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1955, 'area', '7522', '剑川县', '2', '1869', NULL, '7522', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1956, 'area', '7523', '鹤庆县', '2', '1869', NULL, '7523', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1957, 'area', '7530', '保山市', '2', '1869', NULL, '7530', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1958, 'area', '7532', '施甸县', '2', '1869', NULL, '7532', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1959, 'area', '7533', '腾冲县', '2', '1869', NULL, '7533', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1960, 'area', '7534', '龙陵县', '2', '1869', NULL, '7534', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1961, 'area', '7535', '昌宁县', '2', '1869', NULL, '7535', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1962, 'area', '7540', '潞西市', '2', '1869', NULL, '7540', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1963, 'area', '7544', '盈江县', '2', '1869', NULL, '7544', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1964, 'area', '7545', '陇川县', '2', '1869', NULL, '7545', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1965, 'area', '7546', '瑞丽市', '2', '1869', NULL, '7546', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1966, 'area', '7550', '丽江县', '2', '1869', NULL, '7550', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1967, 'area', '7552', '永胜县', '2', '1869', NULL, '7552', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1968, 'area', '7553', '华坪县', '2', '1869', NULL, '7553', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1969, 'area', '7554', '宁蒗县', '2', '1869', NULL, '7554', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1970, 'area', '7560', '泸水县', '2', '1869', NULL, '7560', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1971, 'area', '7562', '福贡县', '2', '1869', NULL, '7562', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1972, 'area', '7563', '贡山县', '2', '1869', NULL, '7563', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1973, 'area', '7564', '兰坪县', '2', '1869', NULL, '7564', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1974, 'area', '7570', '香格里拉县', '2', '1869', NULL, '7570', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1975, 'area', '7572', '德钦县', '2', '1869', NULL, '7572', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1976, 'area', '7573', '维西县', '2', '1869', NULL, '7573', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1977, 'area', '7580', '临沧县', '2', '1869', NULL, '7580', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1978, 'area', '7582', '凤庆县', '2', '1869', NULL, '7582', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1979, 'area', '7583', '云县县', '2', '1869', NULL, '7583', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1980, 'area', '7584', '永德县', '2', '1869', NULL, '7584', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1981, 'area', '7585', '镇康县', '2', '1869', NULL, '7585', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1982, 'area', '7586', '双江县', '2', '1869', NULL, '7586', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1983, 'area', '7587', '耿马县', '2', '1869', NULL, '7587', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1984, 'area', '7588', '沧源县', '2', '1869', NULL, '7588', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1985, 'area', '540', '西藏自治区', '1', '0', NULL, '540', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1986, 'area', '7700', '拉萨', '1', '1985', NULL, '7700', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1987, 'area', '7730', '边坝县', '2', '1985', NULL, '7730', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1988, 'area', '7750', '错那县', '2', '1985', NULL, '7750', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1989, 'area', '7770', '康马县', '2', '1985', NULL, '7770', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1990, 'area', '7711', '樟木口岸', '2', '1985', NULL, '7711', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1991, 'area', '7720', '昌都县', '2', '1985', NULL, '7720', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1992, 'area', '7721', '江达县', '2', '1985', NULL, '7721', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1993, 'area', '7722', '贡觉县', '2', '1985', NULL, '7722', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1994, 'area', '7723', '类乌齐县', '2', '1985', NULL, '7723', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1995, 'area', '7724', '丁青县', '2', '1985', NULL, '7724', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1996, 'area', '7725', '察雅县', '2', '1985', NULL, '7725', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1997, 'area', '7726', '八宿县', '2', '1985', NULL, '7726', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1998, 'area', '7727', '左贡县', '2', '1985', NULL, '7727', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (1999, 'area', '7728', '芒康县', '2', '1985', NULL, '7728', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2000, 'area', '7729', '洛隆县', '2', '1985', NULL, '7729', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2001, 'area', '7740', '乃东县', '2', '1985', NULL, '7740', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2002, 'area', '7741', '扎囊县', '2', '1985', NULL, '7741', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2003, 'area', '7742', '贡嘎县', '2', '1985', NULL, '7742', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2004, 'area', '7743', '桑日县', '2', '1985', NULL, '7743', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2005, 'area', '7744', '琼结县', '2', '1985', NULL, '7744', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2006, 'area', '7745', '曲松县', '2', '1985', NULL, '7745', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2007, 'area', '7746', '措美县', '2', '1985', NULL, '7746', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2008, 'area', '7747', '洛扎县', '2', '1985', NULL, '7747', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2009, 'area', '7748', '加查县', '2', '1985', NULL, '7748', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2010, 'area', '7749', '隆子县', '2', '1985', NULL, '7749', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2011, 'area', '7751', '浪卡子县', '2', '1985', NULL, '7751', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2012, 'area', '7760', '日喀则市', '2', '1985', NULL, '7760', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2013, 'area', '7761', '南木林县', '2', '1985', NULL, '7761', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2014, 'area', '7762', '江孜县', '2', '1985', NULL, '7762', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2015, 'area', '7763', '定日县', '2', '1985', NULL, '7763', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2016, 'area', '7764', '萨迦县', '2', '1985', NULL, '7764', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2017, 'area', '7765', '拉孜县', '2', '1985', NULL, '7765', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2018, 'area', '7766', '昂仁县', '2', '1985', NULL, '7766', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2019, 'area', '7767', '谢通门县', '2', '1985', NULL, '7767', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2020, 'area', '7768', '白朗县', '2', '1985', NULL, '7768', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2021, 'area', '7769', '仁布县', '2', '1985', NULL, '7769', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2022, 'area', '7771', '定结县', '2', '1985', NULL, '7771', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2023, 'area', '7772', '仲巴县', '2', '1985', NULL, '7772', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2024, 'area', '7773', '亚东县', '2', '1985', NULL, '7773', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2025, 'area', '7774', '吉隆县', '2', '1985', NULL, '7774', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2026, 'area', '7775', '聂拉木县', '2', '1985', NULL, '7775', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2027, 'area', '7776', '萨嘎县', '2', '1985', NULL, '7776', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2028, 'area', '7777', '岗巴县', '2', '1985', NULL, '7777', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2029, 'area', '7790', '那曲县', '2', '1985', NULL, '7790', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2030, 'area', '7791', '嘉黎县', '2', '1985', NULL, '7791', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2031, 'area', '7792', '比如县', '2', '1985', NULL, '7792', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2032, 'area', '7793', '聂荣县', '2', '1985', NULL, '7793', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2033, 'area', '7794', '安多县', '2', '1985', NULL, '7794', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2034, 'area', '7795', '申扎县', '2', '1985', NULL, '7795', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2035, 'area', '7796', '索县', '2', '1985', NULL, '7796', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2036, 'area', '7797', '班戈县', '2', '1985', NULL, '7797', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2037, 'area', '7798', '巴青县', '2', '1985', NULL, '7798', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2038, 'area', '7799', '尼玛县', '2', '1985', NULL, '7799', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2039, 'area', '7810', '噶尔县', '2', '1985', NULL, '7810', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2040, 'area', '7811', '普兰县', '2', '1985', NULL, '7811', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2041, 'area', '7812', '札达县', '2', '1985', NULL, '7812', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2042, 'area', '7813', '日土县', '2', '1985', NULL, '7813', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2043, 'area', '7814', '革吉县', '2', '1985', NULL, '7814', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2044, 'area', '7815', '改则县', '2', '1985', NULL, '7815', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2045, 'area', '7816', '措勤县', '2', '1985', NULL, '7816', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2046, 'area', '7830', '林芝县', '2', '1985', NULL, '7830', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2047, 'area', '7831', '工布江达县', '2', '1985', NULL, '7831', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2048, 'area', '7832', '米林县', '2', '1985', NULL, '7832', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2049, 'area', '7833', '墨脱县', '2', '1985', NULL, '7833', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2050, 'area', '7834', '波密县', '2', '1985', NULL, '7834', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2051, 'area', '7835', '察隅县', '2', '1985', NULL, '7835', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2052, 'area', '7836', '朗县', '2', '1985', NULL, '7836', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2053, 'area', '610', '陕西省', '1', '0', NULL, '610', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2054, 'area', '7800', '双湖', '1', '2053', NULL, '7800', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2055, 'area', '7921', '耀县', '2', '2053', NULL, '7921', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2056, 'area', '7910', '西安', '2', '2053', NULL, '7910', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2057, 'area', '7920', '铜川市', '2', '2053', NULL, '7920', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2058, 'area', '7922', '宜君县', '2', '2053', NULL, '7922', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2059, 'area', '7930', '宝鸡县', '2', '2053', NULL, '7930', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2060, 'area', '7932', '凤翔县', '2', '2053', NULL, '7932', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2061, 'area', '7933', '岐山县', '2', '2053', NULL, '7933', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2062, 'area', '7934', '扶风县', '2', '2053', NULL, '7934', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2063, 'area', '7935', '眉县', '2', '2053', NULL, '7935', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2064, 'area', '7936', '陇县', '2', '2053', NULL, '7936', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2065, 'area', '7937', '千阳县', '2', '2053', NULL, '7937', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2066, 'area', '7938', '麟游县', '2', '2053', NULL, '7938', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2067, 'area', '7939', '凤县', '2', '2053', NULL, '7939', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2068, 'area', '7941', '太白县', '2', '2053', NULL, '7941', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2069, 'area', '7950', '咸阳市', '2', '2053', NULL, '7950', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2070, 'area', '7951', '兴平市', '2', '2053', NULL, '7951', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2071, 'area', '7952', '三原县', '2', '2053', NULL, '7952', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2072, 'area', '7953', '泾阳县', '2', '2053', NULL, '7953', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2073, 'area', '7954', '乾县', '2', '2053', NULL, '7954', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2074, 'area', '7955', '礼泉县', '2', '2053', NULL, '7955', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2075, 'area', '7956', '永寿县', '2', '2053', NULL, '7956', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2076, 'area', '7957', '彬县', '2', '2053', NULL, '7957', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2077, 'area', '7958', '长武县', '2', '2053', NULL, '7958', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2078, 'area', '7959', '旬邑县', '2', '2053', NULL, '7959', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2079, 'area', '7961', '淳化县', '2', '2053', NULL, '7961', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2080, 'area', '7962', '武功县', '2', '2053', NULL, '7962', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2081, 'area', '7970', '渭南市', '2', '2053', NULL, '7970', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2082, 'area', '7972', '韩城市', '2', '2053', NULL, '7972', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2083, 'area', '7973', '华县', '2', '2053', NULL, '7973', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2084, 'area', '7974', '华阴市', '2', '2053', NULL, '7974', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2085, 'area', '7975', '潼关县', '2', '2053', NULL, '7975', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2086, 'area', '7976', '大荔县', '2', '2053', NULL, '7976', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2087, 'area', '7977', '蒲城县', '2', '2053', NULL, '7977', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2088, 'area', '7978', '澄城县', '2', '2053', NULL, '7978', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2089, 'area', '7979', '白水县', '2', '2053', NULL, '7979', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2090, 'area', '7981', '合阳县', '2', '2053', NULL, '7981', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2091, 'area', '7982', '富平县', '2', '2053', NULL, '7982', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2092, 'area', '7990', '汉中市', '2', '2053', NULL, '7990', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2093, 'area', '7992', '南郑县', '2', '2053', NULL, '7992', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2094, 'area', '7993', '城固县', '2', '2053', NULL, '7993', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2095, 'area', '7994', '洋县', '2', '2053', NULL, '7994', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2096, 'area', '7995', '西乡县', '2', '2053', NULL, '7995', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2097, 'area', '7996', '勉县', '2', '2053', NULL, '7996', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2098, 'area', '7997', '宁强县', '2', '2053', NULL, '7997', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2099, 'area', '7998', '略阳县', '2', '2053', NULL, '7998', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2100, 'area', '7999', '镇巴县', '2', '2053', NULL, '7999', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2101, 'area', '8001', '留坝县', '2', '2053', NULL, '8001', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2102, 'area', '8002', '佛坪县', '2', '2053', NULL, '8002', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2103, 'area', '8010', '安康市', '2', '2053', NULL, '8010', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2104, 'area', '8012', '汉阴县', '2', '2053', NULL, '8012', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2105, 'area', '8013', '石泉县', '2', '2053', NULL, '8013', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2106, 'area', '8014', '宁陕县', '2', '2053', NULL, '8014', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2107, 'area', '8015', '紫阳县', '2', '2053', NULL, '8015', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2108, 'area', '8016', '岚皋县', '2', '2053', NULL, '8016', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2109, 'area', '8017', '平利县', '2', '2053', NULL, '8017', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2110, 'area', '8018', '镇坪县', '2', '2053', NULL, '8018', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2111, 'area', '8019', '旬阳县', '2', '2053', NULL, '8019', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2112, 'area', '8021', '白河县', '2', '2053', NULL, '8021', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2113, 'area', '8030', '商洛市', '2', '2053', NULL, '8030', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2114, 'area', '8032', '洛南县', '2', '2053', NULL, '8032', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2115, 'area', '8033', '丹凤县', '2', '2053', NULL, '8033', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2116, 'area', '8034', '商南县', '2', '2053', NULL, '8034', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2117, 'area', '8035', '山阳县', '2', '2053', NULL, '8035', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2118, 'area', '8036', '镇安县', '2', '2053', NULL, '8036', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2119, 'area', '8037', '柞水县', '2', '2053', NULL, '8037', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2120, 'area', '8040', '延安市', '2', '2053', NULL, '8040', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2121, 'area', '8042', '延长县', '2', '2053', NULL, '8042', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2122, 'area', '8043', '延川县', '2', '2053', NULL, '8043', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2123, 'area', '8044', '子长县', '2', '2053', NULL, '8044', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2124, 'area', '8045', '安塞县', '2', '2053', NULL, '8045', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2125, 'area', '8046', '志丹县', '2', '2053', NULL, '8046', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2126, 'area', '8047', '吴旗县', '2', '2053', NULL, '8047', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2127, 'area', '8048', '甘泉县', '2', '2053', NULL, '8048', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2128, 'area', '8049', '富县', '2', '2053', NULL, '8049', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2129, 'area', '8051', '洛川县', '2', '2053', NULL, '8051', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2130, 'area', '8052', '宜川县', '2', '2053', NULL, '8052', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2131, 'area', '8053', '黄龙县', '2', '2053', NULL, '8053', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2132, 'area', '8054', '黄陵县', '2', '2053', NULL, '8054', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2133, 'area', '8060', '榆林市', '2', '2053', NULL, '8060', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2134, 'area', '8062', '神木县', '2', '2053', NULL, '8062', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2135, 'area', '8063', '府谷县', '2', '2053', NULL, '8063', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2136, 'area', '8064', '横山县', '2', '2053', NULL, '8064', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2137, 'area', '8065', '靖边县', '2', '2053', NULL, '8065', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2138, 'area', '8066', '定边县', '2', '2053', NULL, '8066', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2139, 'area', '8067', '绥德县', '2', '2053', NULL, '8067', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2140, 'area', '8068', '米脂县', '2', '2053', NULL, '8068', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2141, 'area', '8069', '佳县', '2', '2053', NULL, '8069', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2142, 'area', '8071', '吴堡县', '2', '2053', NULL, '8071', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2143, 'area', '8072', '清涧县', '2', '2053', NULL, '8072', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2144, 'area', '8073', '子洲县', '2', '2053', NULL, '8073', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2145, 'area', '620', '甘肃省', '1', '0', NULL, '620', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2146, 'area', '8244', '平川', '1', '2145', NULL, '8244', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2147, 'area', '8311', '武都县', '2', '2145', NULL, '8311', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2148, 'area', '8210', '兰州', '2', '2145', NULL, '8210', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2149, 'area', '8220', '嘉峪关市', '2', '2145', NULL, '8220', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2150, 'area', '8230', '金昌市', '2', '2145', NULL, '8230', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2151, 'area', '8231', '永昌县', '2', '2145', NULL, '8231', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2152, 'area', '8240', '白银市', '2', '2145', NULL, '8240', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2153, 'area', '8241', '靖远县', '2', '2145', NULL, '8241', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2154, 'area', '8242', '会宁县', '2', '2145', NULL, '8242', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2155, 'area', '8243', '景泰县', '2', '2145', NULL, '8243', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2156, 'area', '8250', '天水县', '2', '2145', NULL, '8250', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2157, 'area', '8251', '清水县', '2', '2145', NULL, '8251', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2158, 'area', '8252', '秦安县', '2', '2145', NULL, '8252', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2159, 'area', '8253', '甘谷县', '2', '2145', NULL, '8253', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2160, 'area', '8254', '武山县', '2', '2145', NULL, '8254', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2161, 'area', '8255', '张家川县', '2', '2145', NULL, '8255', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2162, 'area', '8260', '酒泉市', '2', '2145', NULL, '8260', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2163, 'area', '8261', '玉门市', '2', '2145', NULL, '8261', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2164, 'area', '8263', '敦煌市', '2', '2145', NULL, '8263', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2165, 'area', '8264', '金塔县', '2', '2145', NULL, '8264', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2166, 'area', '8265', '肃北县', '2', '2145', NULL, '8265', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2167, 'area', '8266', '阿克塞县', '2', '2145', NULL, '8266', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2168, 'area', '8267', '安西县', '2', '2145', NULL, '8267', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2169, 'area', '8270', '张掖市', '2', '2145', NULL, '8270', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2170, 'area', '8272', '肃南县', '2', '2145', NULL, '8272', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2171, 'area', '8273', '民乐县', '2', '2145', NULL, '8273', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2172, 'area', '8274', '临泽县', '2', '2145', NULL, '8274', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2173, 'area', '8275', '高台县', '2', '2145', NULL, '8275', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2174, 'area', '8276', '山丹县', '2', '2145', NULL, '8276', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2175, 'area', '8280', '武威市', '2', '2145', NULL, '8280', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2176, 'area', '8282', '民勤县', '2', '2145', NULL, '8282', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2177, 'area', '8283', '古浪县', '2', '2145', NULL, '8283', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2178, 'area', '8284', '天祝县', '2', '2145', NULL, '8284', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2179, 'area', '8290', '定西市', '2', '2145', NULL, '8290', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2180, 'area', '8292', '通渭县', '2', '2145', NULL, '8292', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2181, 'area', '8293', '陇西县', '2', '2145', NULL, '8293', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2182, 'area', '8294', '渭源县', '2', '2145', NULL, '8294', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2183, 'area', '8295', '临兆县', '2', '2145', NULL, '8295', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2184, 'area', '8296', '漳县', '2', '2145', NULL, '8296', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2185, 'area', '8297', '岷县', '2', '2145', NULL, '8297', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2186, 'area', '8310', '陇南地区', '2', '2145', NULL, '8310', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2187, 'area', '8312', '宕昌县', '2', '2145', NULL, '8312', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2188, 'area', '8313', '成县', '2', '2145', NULL, '8313', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2189, 'area', '8314', '康县', '2', '2145', NULL, '8314', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2190, 'area', '8315', '文县', '2', '2145', NULL, '8315', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2191, 'area', '8316', '西和县', '2', '2145', NULL, '8316', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2192, 'area', '8317', '礼县', '2', '2145', NULL, '8317', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2193, 'area', '8318', '两当县', '2', '2145', NULL, '8318', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2194, 'area', '8319', '徽县', '2', '2145', NULL, '8319', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2195, 'area', '8330', '平凉市', '2', '2145', NULL, '8330', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2196, 'area', '8332', '泾川县', '2', '2145', NULL, '8332', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2197, 'area', '8333', '灵台县', '2', '2145', NULL, '8333', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2198, 'area', '8334', '崇信县', '2', '2145', NULL, '8334', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2199, 'area', '8335', '华亭县', '2', '2145', NULL, '8335', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2200, 'area', '8336', '庄浪县', '2', '2145', NULL, '8336', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2201, 'area', '8337', '静宁县', '2', '2145', NULL, '8337', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2202, 'area', '8340', '庆阳市', '2', '2145', NULL, '8340', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2203, 'area', '8342', '庆城县', '2', '2145', NULL, '8342', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2204, 'area', '8343', '环县', '2', '2145', NULL, '8343', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2205, 'area', '8344', '华池县', '2', '2145', NULL, '8344', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2206, 'area', '8345', '合水县', '2', '2145', NULL, '8345', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2207, 'area', '8346', '正宁县', '2', '2145', NULL, '8346', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2208, 'area', '8347', '宁县', '2', '2145', NULL, '8347', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2209, 'area', '8348', '镇原县', '2', '2145', NULL, '8348', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2210, 'area', '8360', '临夏州', '2', '2145', NULL, '8360', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2211, 'area', '8362', '临夏县', '2', '2145', NULL, '8362', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2212, 'area', '8363', '康乐县', '2', '2145', NULL, '8363', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2213, 'area', '8364', '永靖县', '2', '2145', NULL, '8364', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2214, 'area', '8365', '广河县', '2', '2145', NULL, '8365', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2215, 'area', '8366', '和政县', '2', '2145', NULL, '8366', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2216, 'area', '8367', '东乡', '2', '2145', NULL, '8367', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2217, 'area', '8368', '积石山县', '2', '2145', NULL, '8368', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2218, 'area', '8380', '甘南州', '2', '2145', NULL, '8380', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2219, 'area', '8381', '临潭县', '2', '2145', NULL, '8381', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2220, 'area', '8382', '卓尼县', '2', '2145', NULL, '8382', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2221, 'area', '8383', '舟曲县', '2', '2145', NULL, '8383', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2222, 'area', '8384', '迭部县', '2', '2145', NULL, '8384', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2223, 'area', '8385', '玛曲县', '2', '2145', NULL, '8385', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2224, 'area', '8386', '碌曲县', '2', '2145', NULL, '8386', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2225, 'area', '8387', '夏河县', '2', '2145', NULL, '8387', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2226, 'area', '630', '青海省', '1', '0', NULL, '630', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2227, 'area', '8510', '西宁', '1', '2226', NULL, '8510', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2228, 'area', '8520', '海东地区', '2', '2226', NULL, '8520', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2229, 'area', '8521', '平安县', '2', '2226', NULL, '8521', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2230, 'area', '8522', '民和回族土族自治县', '2', '2226', NULL, '8522', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2231, 'area', '8523', '乐都县', '2', '2226', NULL, '8523', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2232, 'area', '8526', '互助土族自治县', '2', '2226', NULL, '8526', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2233, 'area', '8527', '化隆回族自治县', '2', '2226', NULL, '8527', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2234, 'area', '8528', '循化撒拉族自治县', '2', '2226', NULL, '8528', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2235, 'area', '8540', '海北州', '2', '2226', NULL, '8540', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2236, 'area', '8541', '门源回族自治县', '2', '2226', NULL, '8541', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2237, 'area', '8542', '祁连县', '2', '2226', NULL, '8542', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2238, 'area', '8543', '海晏县', '2', '2226', NULL, '8543', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2239, 'area', '8544', '刚察县', '2', '2226', NULL, '8544', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2240, 'area', '8550', '黄南州', '2', '2226', NULL, '8550', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2241, 'area', '8551', '同仁县', '2', '2226', NULL, '8551', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2242, 'area', '8552', '尖扎县', '2', '2226', NULL, '8552', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2243, 'area', '8553', '泽库县', '2', '2226', NULL, '8553', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2244, 'area', '8554', '河南县', '2', '2226', NULL, '8554', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2245, 'area', '8560', '海南州', '2', '2226', NULL, '8560', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2246, 'area', '8561', '共和县', '2', '2226', NULL, '8561', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2247, 'area', '8562', '同德县', '2', '2226', NULL, '8562', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2248, 'area', '8563', '贵德县', '2', '2226', NULL, '8563', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2249, 'area', '8564', '兴海县', '2', '2226', NULL, '8564', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2250, 'area', '8565', '贵南县', '2', '2226', NULL, '8565', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2251, 'area', '8570', '果洛川', '2', '2226', NULL, '8570', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2252, 'area', '8571', '玛沁县', '2', '2226', NULL, '8571', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2253, 'area', '8572', '班玛县', '2', '2226', NULL, '8572', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2254, 'area', '8573', '甘德县', '2', '2226', NULL, '8573', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2255, 'area', '8574', '达日县', '2', '2226', NULL, '8574', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2256, 'area', '8575', '久治县', '2', '2226', NULL, '8575', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2257, 'area', '8576', '玛多县', '2', '2226', NULL, '8576', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2258, 'area', '8580', '玉树州', '2', '2226', NULL, '8580', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2259, 'area', '8581', '玉树县', '2', '2226', NULL, '8581', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2260, 'area', '8582', '杂多县', '2', '2226', NULL, '8582', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2261, 'area', '8583', '称多县', '2', '2226', NULL, '8583', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2262, 'area', '8584', '治多县', '2', '2226', NULL, '8584', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2263, 'area', '8585', '囊谦县', '2', '2226', NULL, '8585', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2264, 'area', '8586', '曲麻莱县', '2', '2226', NULL, '8586', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2265, 'area', '8590', '海西州', '2', '2226', NULL, '8590', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2266, 'area', '8591', '格尔木市', '2', '2226', NULL, '8591', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2267, 'area', '8592', '德令哈市', '2', '2226', NULL, '8592', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2268, 'area', '8593', '乌兰县', '2', '2226', NULL, '8593', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2269, 'area', '8594', '都兰县', '2', '2226', NULL, '8594', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2270, 'area', '8595', '天峻县', '2', '2226', NULL, '8595', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2271, 'area', '640', '宁夏回族自治区', '1', '0', NULL, '640', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2272, 'area', '8722', '陶乐县', '1', '2271', NULL, '8722', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2273, 'area', '8723', '惠农县', '2', '2271', NULL, '8723', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2274, 'area', '8733', '中卫县', '2', '2271', NULL, '8733', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2275, 'area', '8731', '吴忠市', '2', '2271', NULL, '8731', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2276, 'area', '8741', '固原市', '2', '2271', NULL, '8741', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2277, 'area', '8734', '中宁县', '2', '2271', NULL, '8734', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2278, 'area', '8742', '海原县', '2', '2271', NULL, '8742', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2279, 'area', '8710', '银川', '2', '2271', NULL, '8710', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2280, 'area', '8720', '石嘴山市', '2', '2271', NULL, '8720', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2281, 'area', '8721', '平罗县', '2', '2271', NULL, '8721', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2282, 'area', '8732', '青铜峡市', '2', '2271', NULL, '8732', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2283, 'area', '8736', '盐池县', '2', '2271', NULL, '8736', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2284, 'area', '8737', '同心县', '2', '2271', NULL, '8737', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2285, 'area', '8743', '西吉县', '2', '2271', NULL, '8743', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2286, 'area', '8744', '隆德县', '2', '2271', NULL, '8744', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2287, 'area', '8745', '泾源县', '2', '2271', NULL, '8745', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2288, 'area', '8746', '彭阳县', '2', '2271', NULL, '8746', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2289, 'area', '650', '新疆维吾尔自治区', '1', '0', NULL, '650', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2290, 'area', '8859', '木垒哈萨克自治县', '1', '2289', NULL, '8859', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2291, 'area', '8844', '北屯县', '2', '2289', NULL, '8844', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2292, 'area', '8847', '新疆博州阿拉山口口岸', '2', '2289', NULL, '8847', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2293, 'area', '9028', '石河子市', '2', '2289', NULL, '9028', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2294, 'area', '9029', '三道岭县', '2', '2289', NULL, '9029', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2295, 'area', '9031', '阿拉尔市', '2', '2289', NULL, '9031', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2296, 'area', '9032', '图木舒克市', '2', '2289', NULL, '9032', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2297, 'area', '8872', '精河县', '2', '2289', NULL, '8872', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2298, 'area', '8873', '温泉县', '2', '2289', NULL, '8873', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2299, 'area', '8880', '库尔勒市', '2', '2289', NULL, '8880', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2300, 'area', '8882', '轮台县', '2', '2289', NULL, '8882', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2301, 'area', '8883', '尉犁县', '2', '2289', NULL, '8883', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2302, 'area', '8884', '若羌县', '2', '2289', NULL, '8884', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2303, 'area', '8885', '且末县', '2', '2289', NULL, '8885', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2304, 'area', '8886', '焉耆回族自治县', '2', '2289', NULL, '8886', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2305, 'area', '8887', '和静县', '2', '2289', NULL, '8887', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2306, 'area', '8888', '和硕县', '2', '2289', NULL, '8888', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2307, 'area', '8889', '博湖县', '2', '2289', NULL, '8889', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2308, 'area', '8910', '阿克苏市', '2', '2289', NULL, '8910', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2309, 'area', '8912', '温宿县', '2', '2289', NULL, '8912', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2310, 'area', '8913', '库车县', '2', '2289', NULL, '8913', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2311, 'area', '8914', '沙雅县', '2', '2289', NULL, '8914', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2312, 'area', '8915', '新和县', '2', '2289', NULL, '8915', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2313, 'area', '8916', '拜城县', '2', '2289', NULL, '8916', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2314, 'area', '8917', '乌什县', '2', '2289', NULL, '8917', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2315, 'area', '8918', '阿瓦提县', '2', '2289', NULL, '8918', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2316, 'area', '8919', '柯坪县', '2', '2289', NULL, '8919', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2317, 'area', '8930', '阿图什市', '2', '2289', NULL, '8930', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2318, 'area', '8932', '阿可陶县', '2', '2289', NULL, '8932', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2319, 'area', '8933', '阿合奇县', '2', '2289', NULL, '8933', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2320, 'area', '8934', '乌恰县', '2', '2289', NULL, '8934', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2321, 'area', '8940', '喀什', '2', '2289', NULL, '8940', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2322, 'area', '8942', '疏附县', '2', '2289', NULL, '8942', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2323, 'area', '8943', '疏勒县', '2', '2289', NULL, '8943', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2324, 'area', '8944', '英吉沙县', '2', '2289', NULL, '8944', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2325, 'area', '8945', '泽普县', '2', '2289', NULL, '8945', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2326, 'area', '8946', '莎车县', '2', '2289', NULL, '8946', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2327, 'area', '8947', '叶城县', '2', '2289', NULL, '8947', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2328, 'area', '8948', '麦盖提县', '2', '2289', NULL, '8948', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2329, 'area', '8949', '岳普湖县', '2', '2289', NULL, '8949', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2330, 'area', '8951', '伽师县', '2', '2289', NULL, '8951', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2331, 'area', '8952', '巴楚县', '2', '2289', NULL, '8952', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2332, 'area', '8953', '塔什库尔干塔吉克县', '2', '2289', NULL, '8953', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2333, 'area', '8960', '和田市', '2', '2289', NULL, '8960', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2334, 'area', '8963', '墨玉县', '2', '2289', NULL, '8963', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2335, 'area', '8964', '皮山县', '2', '2289', NULL, '8964', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2336, 'area', '8965', '洛浦县', '2', '2289', NULL, '8965', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2337, 'area', '8966', '策勒县', '2', '2289', NULL, '8966', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2338, 'area', '8967', '于田县', '2', '2289', NULL, '8967', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2339, 'area', '8968', '民丰县', '2', '2289', NULL, '8968', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2340, 'area', '8980', '伊宁市', '2', '2289', NULL, '8980', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2341, 'area', '8981', '奎屯市', '2', '2289', NULL, '8981', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2342, 'area', '8992', '伊宁县', '2', '2289', NULL, '8992', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2343, 'area', '8993', '察布查尔锡伯自治县', '2', '2289', NULL, '8993', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2344, 'area', '8994', '霍城县', '2', '2289', NULL, '8994', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2345, 'area', '8995', '巩留县', '2', '2289', NULL, '8995', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2346, 'area', '8996', '新源县', '2', '2289', NULL, '8996', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2347, 'area', '8997', '昭苏县', '2', '2289', NULL, '8997', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2348, 'area', '8998', '特克斯县', '2', '2289', NULL, '8998', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2349, 'area', '8999', '尼勒克县', '2', '2289', NULL, '8999', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2350, 'area', '9010', '塔城市', '2', '2289', NULL, '9010', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2351, 'area', '9012', '额敏县', '2', '2289', NULL, '9012', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2352, 'area', '9013', '乌苏市', '2', '2289', NULL, '9013', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2353, 'area', '9014', '沙湾县', '2', '2289', NULL, '9014', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2354, 'area', '9015', '托里县', '2', '2289', NULL, '9015', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2355, 'area', '9016', '裕民县', '2', '2289', NULL, '9016', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2356, 'area', '9017', '和布克赛尔蒙古自治县', '2', '2289', NULL, '9017', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2357, 'area', '9020', '阿勒泰市', '2', '2289', NULL, '9020', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2358, 'area', '9022', '布尔津县', '2', '2289', NULL, '9022', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2359, 'area', '9023', '富蕴县', '2', '2289', NULL, '9023', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2360, 'area', '9024', '福海县', '2', '2289', NULL, '9024', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2361, 'area', '9025', '哈巴河县', '2', '2289', NULL, '9025', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2362, 'area', '9026', '青河县', '2', '2289', NULL, '9026', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2363, 'area', '9027', '吉木乃县', '2', '2289', NULL, '9027', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2364, 'area', '8810', '乌鲁木齐', '2', '2289', NULL, '8810', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2365, 'area', '8820', '克拉玛依市', '2', '2289', NULL, '8820', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2366, 'area', '8830', '吐鲁番市', '2', '2289', NULL, '8830', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2367, 'area', '8832', '鄯善县', '2', '2289', NULL, '8832', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2368, 'area', '8833', '托克逊县', '2', '2289', NULL, '8833', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2369, 'area', '8840', '哈密市', '2', '2289', NULL, '8840', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2370, 'area', '8842', '巴里坤哈萨克自治县', '2', '2289', NULL, '8842', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2371, 'area', '8843', '伊吾县', '2', '2289', NULL, '8843', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2372, 'area', '8850', '昌吉市', '2', '2289', NULL, '8850', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2373, 'area', '8852', '米泉市', '2', '2289', NULL, '8852', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2374, 'area', '8853', '呼图壁县', '2', '2289', NULL, '8853', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2375, 'area', '8854', '玛纳斯县', '2', '2289', NULL, '8854', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2376, 'area', '8855', '奇台县', '2', '2289', NULL, '8855', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2377, 'area', '8856', '阜康市', '2', '2289', NULL, '8856', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2378, 'area', '8857', '吉木萨尔县', '2', '2289', NULL, '8857', NULL, NULL, NULL, '1');
INSERT INTO `dim_node` VALUES (2379, 'area', '8858', '五家渠市', '2', '2289', NULL, '8858', NULL, NULL, NULL, '1');

-- ----------------------------
-- Table structure for dim_tree
-- ----------------------------
DROP TABLE IF EXISTS `dim_tree`;
CREATE TABLE `dim_tree`  (
  `TREE_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TREE_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TOPNODE_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TREE_TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TREE_SEQ` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CRT_TIME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ICON_TOP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ICON_NODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ICON_LEAF` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`TREE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dim_tree
-- ----------------------------
INSERT INTO `dim_tree` VALUES ('area', '地区', NULL, NULL, '1', NULL, '2015-05-07 13:18:06', NULL, NULL, NULL);
INSERT INTO `dim_tree` VALUES ('BANK', '银行编码', NULL, NULL, '0', NULL, '2015-07-08 09:51:39', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fm_account
-- ----------------------------
DROP TABLE IF EXISTS `fm_account`;
CREATE TABLE `fm_account`  (
  `account_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `account_f_user_id` bigint(20) NULL DEFAULT NULL COMMENT '�û���',
  `account_f_ubc_id` bigint(20) NULL DEFAULT NULL COMMENT '�û����п�ID',
  `account_seq` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流水号',
  `account_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户姓名',
  `account_id_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `account_phone_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�˺�',
  `account_card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行卡号',
  `account_channel` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������� 1 ���� 2 ���� 3 ͨ�� 4 �Ƹ�ͨ',
  `account_login_pass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��½����',
  `account_pay_pass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '֧������',
  `account_is_success` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否开户成功 1 是 0 否',
  `account_create_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `account_bank_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户银行代码',
  `account_city_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户城市代码',
  `account_is_upload` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否上传成功 1 是 0 否',
  `account_upload_time` datetime(0) NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`account_id`) USING BTREE,
  UNIQUE INDEX `account_seq`(`account_seq`) USING BTREE,
  INDEX `Index_account_f_user_id`(`account_f_user_id`) USING BTREE,
  INDEX `Index_account_f_ubc_id`(`account_f_ubc_id`) USING BTREE,
  INDEX `Index_account_phone_no`(`account_phone_no`) USING BTREE,
  INDEX `Index_account_channel`(`account_channel`) USING BTREE,
  INDEX `Index_account_login_pass`(`account_login_pass`) USING BTREE,
  INDEX `Index_account_pay_pass`(`account_pay_pass`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_account
-- ----------------------------
INSERT INTO `fm_account` VALUES (25, 6160, 14, 'M81150618172345223000001', '张杰', '370923198704100653', '18813130608', '6222020200031875507', '1', '111111', '111111', '1', '2015-06-18 17:23:46', '0102', '1000', '1', '2015-06-18 17:23:46');
INSERT INTO `fm_account` VALUES (26, 6154, 15, 'M81150618173254839000001', '王浩', '110228190001010810', '18310550015', '6222020200090700015', '1', '123456', '123456', '1', '2015-06-18 17:31:30', '0102', '1000', '2', '2015-06-18 17:31:30');
INSERT INTO `fm_account` VALUES (27, 6163, 16, 'M81150618173606909000004', '王浩', '110228190001010554', '18310550016', '6222020200090700016', '1', '123456', '123456', '1', '2015-06-18 17:34:41', '0102', '1000', '1', '2015-06-18 17:34:41');
INSERT INTO `fm_account` VALUES (29, 6141, NULL, 'M81150618174638875000001', '歼击机', '130921190001011933', '13651099898', '6222020200090700015', '1', '123456', '123456', '1', '2015-06-18 17:46:39', '0102', '1000', '1', '2015-06-25 14:23:07');
INSERT INTO `fm_account` VALUES (30, 6141, 17, 'M81150618175203978000001', '风景', '130921190001011837', '13651099898', '6222020200090710002', '1', '123456', '123456', '1', '2015-06-18 17:52:04', '0102', '1000', '1', '2015-06-18 17:52:04');
INSERT INTO `fm_account` VALUES (31, 6141, NULL, 'M81150618175336991000005', '风景', '152324198203106365', '13651099898', '6222020288106594894', '1', '123456', '123456', '1', '2015-06-18 17:53:37', '0102', '1000', '1', '2015-06-25 14:23:42');
INSERT INTO `fm_account` VALUES (33, 6172, NULL, 'M81150618182436291000005', '王浩', '130921190001011837', '18310550019', '6222020200090700014', '1', '123456', '123456', '1', '2015-06-18 18:24:08', '0102', '1000', '1', '2015-06-25 14:23:46');
INSERT INTO `fm_account` VALUES (38, 6172, 18, 'M81150618184050103000002', '王浩', '130921190001012477', '18310550019', '6222020200090700019', '1', '123456', '123456', '1', '2015-06-18 18:39:24', '0102', '1000', '1', '2015-06-18 18:39:24');
INSERT INTO `fm_account` VALUES (39, 6173, NULL, 'M81150618184917758000001', '王浩', '130921190001012477', '18310550020', '6222020200090700020', '1', '123456', '123456', '1', '2015-06-18 18:47:51', '0102', '1000', '1', '2015-06-25 14:23:47');
INSERT INTO `fm_account` VALUES (40, 6173, 19, 'M81150619092050511000001', '王浩', '130921109707070014', '18310550020', '6222020200090700020', '1', '123456', '123456', '1', '2015-06-19 09:19:41', '0102', '1000', '1', '2015-06-19 09:19:41');
INSERT INTO `fm_account` VALUES (46, 6174, NULL, 'M81150619093702825000005', '王浩', '130921198707070021', '18310550021', '6222020200090700014', '1', '123456', '123456', '1', '2015-06-19 09:35:34', '0102', '1000', '1', '2015-06-25 14:23:47');
INSERT INTO `fm_account` VALUES (47, 6174, 20, 'M81150619093730547000006', '王浩', '130921198707070021', '18310550021', '6222020200090700021', '1', '123456', '123456', '1', '2015-06-19 09:36:06', '0102', '1000', '2', '2015-06-19 09:36:06');
INSERT INTO `fm_account` VALUES (49, 6155, 21, 'M81150619103310322000001', '王伟', '110114198201011618', '15010575938', '6212260200060930027', '1', '123456', '654321', '1', '2015-06-19 10:33:11', '0102', '1000', '1', '2015-06-19 10:33:11');
INSERT INTO `fm_account` VALUES (51, 6176, 22, 'M81150623093346425000024', '赵小敏', '123456198903036688', '15652866160', '6222020200970055991', '1', '123456', '123456', '1', '2015-06-23 09:33:49', '0102', '1000', '1', '2015-06-23 09:33:49');
INSERT INTO `fm_account` VALUES (52, 6182, NULL, 'M81150623174602344000084', '李袁', '510102196301237497', '13825260892', '6210817200005444334', '1', '630123', '261899', '1', '2015-06-23 17:46:02', '0102', '1000', '1', '2015-06-25 14:23:47');
INSERT INTO `fm_account` VALUES (54, 6182, 23, 'M81150623184258589000086', '李袁', '510102196301237497', '13825260892', '6212260200060930028', '1', '630123', '940326', '1', '2015-06-23 18:42:59', '0102', '1000', '1', '2015-06-23 18:42:59');
INSERT INTO `fm_account` VALUES (56, 6183, NULL, 'M81150625111418823000016', '陈仕勤', '445281198111091219', '13601702682', '6217100212001219368', '1', '123456', '123456', '0', '2015-06-25 11:14:19', '0102', '1000', '2', NULL);
INSERT INTO `fm_account` VALUES (57, 6156, NULL, 'M81150625174206456000025', '胡华', '430624198010235123', '18002206359', '12345678901234', '1', '123456', '000000', '0', '2015-06-25 17:42:06', '0102', '1000', '1', NULL);
INSERT INTO `fm_account` VALUES (58, 6156, NULL, 'M81150625175019062000026', '胡华', '430624198010235123', '18002206359', '6227003324100103120', '1', '111111', '111111', '0', '2015-06-25 17:50:19', '0102', '1000', '1', NULL);
INSERT INTO `fm_account` VALUES (59, 6156, 24, 'M81150625175345755000027', '胡美华', '430624198801019988', '18002206359', '6222020200000788888', '1', '123456', '123456', '1', '2015-06-25 17:53:48', '0102', '1000', '1', '2015-06-25 17:53:48');
INSERT INTO `fm_account` VALUES (60, 6192, NULL, 'M81150626102459733000031', '张某某', '310106199202190654', '18201773918', '169864688667946768', '1', '123456', '123456', '0', '2015-06-26 10:25:00', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (61, 6192, NULL, 'M81150626102523849000032', '张某某', '310106199202190654', '18201773918', '169864688667946768', '1', '123456', '123456', '0', '2015-06-26 10:25:24', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (62, 6192, NULL, 'M81150626102806448000033', '张某某', '310106199202190642', '18201773918', '496886698649', '1', '123456', '123456', '0', '2015-06-26 10:28:06', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (63, 6157, 25, 'M81150626102859668000034', '张杰', '430624198010235123', '18002206358', '6222020220555555555', '1', '123456', '123456', '1', '2015-06-26 10:30:09', '0102', '1000', '1', '2015-06-26 10:30:09');
INSERT INTO `fm_account` VALUES (64, 6192, 26, 'M81150626103313253000038', '张某某', '310106199206190869', '18201773918', '6222020200090788888', '1', '123456', '123456', '1', '2015-06-26 10:33:15', '0102', '1000', '1', '2015-06-26 10:33:15');
INSERT INTO `fm_account` VALUES (65, 6193, NULL, 'M81150626142843110000046', '杜妍彬', '310105197910142828', '13917170717', '4367482090060582', '1', 'dyb2015', '051014', '0', '2015-06-26 14:28:43', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (66, 6193, 27, 'M81150626143324212000047', '杜妍彬', '310105197910142828', '13917170717', '6212261001031034819', '1', 'dyb2015', '051014', '1', '2015-06-26 14:33:25', '0102', '1000', '1', '2015-06-26 14:33:25');
INSERT INTO `fm_account` VALUES (67, 6181, NULL, 'M81150630143655275000132', '雷少林', '123456123456789012', '18917676180', '111111', '1', '000000', '123456', '0', '2015-06-30 14:36:55', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (68, 6213, NULL, 'M81150701104115768000019', '谢静雯', '430481198512037947', '15999558513', '6222333380009000', '1', 'love2015', '111111', '0', '2015-07-01 10:41:15', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (69, 6215, NULL, 'M81150701110128819000020', '刘丽君', '510623198002138649', '13751151450', '123456789000', '1', '220740', '220740', '0', '2015-07-01 11:01:29', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (70, 6215, NULL, 'M81150701110137939000021', '', '', '', '', '1', '220740', '220740', '0', '2015-07-01 11:01:38', '', '', '0', NULL);
INSERT INTO `fm_account` VALUES (71, 6212, NULL, 'M81150701110245150000022', '曹燕贤', '440582198007246944', '13554755489', '6012882534698456714', '1', '654cao', '654cao', '0', '2015-07-01 11:02:45', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (72, 6212, NULL, 'M81150701110305420000023', '曹燕贤', '440582198007246944', '13554755489', '6012882534698456714', '1', '654cao', '654licai', '0', '2015-07-01 11:03:05', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (73, 6215, NULL, 'M81150701110323924000024', '刘丽君', '510623198002138649', '13751151450', '1234567890', '1', '220740', '220740', '0', '2015-07-01 11:03:24', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (74, 6215, NULL, 'M81150701110329395000025', '', '', '', '', '1', '220740', '220740', '0', '2015-07-01 11:03:29', '', '', '0', NULL);
INSERT INTO `fm_account` VALUES (75, 6212, NULL, 'M81150701110448259000026', '曹燕贤', '440582198007246944', '13554755489', '6012882534698456714', '1', '654cao', '654cao', '0', '2015-07-01 11:04:48', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (76, 6212, NULL, 'M81150701111924090000029', '曹燕贤', '440582198007246944', '13554755489', '6013822050404221802', '1', '654cao', '123456', '0', '2015-07-01 11:19:24', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (77, 6212, NULL, 'M81150701112254662000034', '曹燕贤', '440582198007246944', '13554755489', '6013822000574721802', '1', '654cao', '123456', '0', '2015-07-01 11:22:54', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (78, 6215, NULL, 'M81150701113125684000037', '刘丽君', '510623198002138649', '13751151450', '1234567890', '1', '220740', '220740', '0', '2015-07-01 11:31:25', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (79, 6212, NULL, 'M81150701114220966000038', '曹映芳', '440301196506036986', '13554755489', '6013822000574721802', '1', '654cao', '123456', '0', '2015-07-01 11:42:21', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (80, 6219, NULL, 'M81150701162259050000041', '胡宇红', '430204197310124024', '13811660292', '6222020200090819109', '1', '731012', '731012', '0', '2015-07-01 16:23:54', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (81, 6219, 28, 'M81150701162220721000040', '胡宇红', '430204197310124024', '13811660292', '6222020200090819109', '1', '731012', '731012', '1', '2015-07-01 16:23:55', '0102', '1000', '1', '2015-07-01 16:23:55');
INSERT INTO `fm_account` VALUES (82, 6219, NULL, 'M81150701162516544000042', '胡宇红', '430204197310124024', '13811660292', '6222020200090819109', '1', 'hyh731012', 'hyh731012', '0', '2015-07-01 16:25:19', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (83, 6219, NULL, 'M81150701162702115000043', '胡宇红', '430204197310124024', '13811660292', '6222020200090819109', '1', 'hyh731012', 'hyh731012', '0', '2015-07-01 16:27:03', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (84, 6191, NULL, 'M81150701203120309000020', '张亚美', '321283198607145024', '15195204888', '39394388399', '1', '888888888', '888888888', '0', '2015-07-01 20:31:20', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (85, 6225, NULL, 'M81150702094227511000034', '朱江军', '362202198207110818', '18103084776', '6217003230009635099', '1', 'jzh911004mht', '911004', '0', '2015-07-02 09:44:01', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (86, 6225, NULL, 'M81150702095146539000036', '朱江军', '362202198207110818', '18103084776', '6217003230009635099', '1', 'jzh911004mht', '911004', '0', '2015-07-02 09:51:46', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (87, 6214, NULL, 'M81150702103001654000038', '邹辉', '500235198706281162', '18927437370', '6217582000009396144', '1', '104666', '77206833', '0', '2015-07-02 10:30:01', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (88, 6199, NULL, 'M81150702171454475000012', '张某', '130921198707070023', '18310550023', '62270000137803798888', '1', '123456', '123456', '0', '2015-07-02 17:14:54', '0105', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (89, 6199, NULL, 'M81150702172420759000001', '张某', '130921198707070023', '18310550023', '62270000137803798888', '1', '123456', '123456', '0', '2015-07-02 17:23:40', '0105', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (90, 6199, NULL, 'M81150702173703846000001', '张某', '130921198707070023', '18310550023', '6222020200090700023', '1', '123456', '123456', '0', '2015-07-02 17:35:45', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (91, 6199, NULL, 'M81150702174820798000001', '张某', '130921109707070023', '18310550023', '62270000137803798888', '1', '123456', '123456', '0', '2015-07-02 17:46:56', '0105', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (92, 6199, NULL, 'M81150702175029027000002', '张某', '130921109707070023', '18310550023', '6222020200090788888', '1', '123456', '123456', '0', '2015-07-02 17:49:01', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (93, 6224, 29, 'M81150703093319117000035', '田俊强', '130235199002105868', '13621292093', '6222020200970068568', '1', '123456', '123456', '1', '2015-07-03 09:33:21', '0102', '1000', '1', '2015-07-07 11:18:34');
INSERT INTO `fm_account` VALUES (94, 6211, 30, 'M81150704101526591000001', '陆秋红', '152224198301241549', '18701193178', '6225210606358399', '1', 'MAY521lu', '888888', '1', '2015-07-04 10:15:29', '0310', '1000', '1', '2015-07-04 10:15:29');
INSERT INTO `fm_account` VALUES (95, 6195, 31, 'M81150706144331600000003', '李仲琦', '320902199011120030', '15298393487', '6225882502160168', '1', '19901112', '19901112', '1', '2015-07-06 14:43:32', '0308', '1000', '1', '2015-07-06 14:43:32');
INSERT INTO `fm_account` VALUES (96, 6217, 32, 'M81150706144428849000006', '孔高华', '320125198812013338', '15150610411', '6214850216796349', '1', '888789', '888789', '1', '2015-07-06 14:44:29', '0308', '1000', '1', '2015-07-06 14:44:29');
INSERT INTO `fm_account` VALUES (97, 6229, NULL, 'M81150706144642348000016', '王培', '32010719880101181X', '13813855571', '6222024301053565980', '1', 'danbis880101', 'danbis880101', '0', '2015-07-06 14:47:10', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (98, 6229, NULL, 'M81150706144610287000013', '王培', '32010719880101181X', '13813855571', '6222024301053565980', '1', 'danbis880101', 'danbis880101', '0', '2015-07-06 14:47:10', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (99, 6229, 33, 'M81150706144644653000017', '王培', '32010719880101181X', '13813855571', '6222024301053565980', '1', 'danbis880101', 'danbis880101', '1', '2015-07-06 14:47:11', '0102', '1000', '1', '2015-07-06 14:47:11');
INSERT INTO `fm_account` VALUES (100, 6229, NULL, 'M81150706144706703000019', '王培', '32010719880101181X', '13813855571', '6222024301053565980', '1', 'danbis880101', 'danbis880101', '0', '2015-07-06 14:47:11', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (101, 6229, NULL, 'M81150706144656705000018', '王培', '32010719880101181X', '13813855571', '6222024301053565980', '1', 'danbis880101', 'danbis880101', '0', '2015-07-06 14:47:11', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (102, 6229, NULL, 'M81150706144716974000021', '', '', '', '', '1', 'danbis880101', 'danbis880101', '0', '2015-07-06 14:47:17', '', '', '0', NULL);
INSERT INTO `fm_account` VALUES (103, 6229, NULL, 'M81150706144822303000025', '王培', '32010719880101181X', '13813855571', '6222024301053565980', '1', 'danbis880101', 'danbis880101', '0', '2015-07-06 14:48:22', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (104, 6230, 34, 'M81150706145019062000026', '孙擎宇', '320481199202070417', '15062267607', '6228480399466048374', '1', '230666', '230666', '1', '2015-07-06 14:50:25', '0103', '1000', '1', '2015-07-06 14:50:25');
INSERT INTO `fm_account` VALUES (105, 6218, 35, 'M81150706150403593000030', '张翮', '340521198712190054', '13951809494', '6227001376640110215', '1', 'zhanghe87', 'zhanghe87', '1', '2015-07-06 15:04:04', '0105', '1000', '1', '2015-07-06 15:04:04');
INSERT INTO `fm_account` VALUES (106, 6218, NULL, 'M81150706150259518000029', '张翮', '340521198712190054', '13951809494', '6227001376640110215', '1', 'zhanghe87', 'zhanghe87', '0', '2015-07-06 15:04:29', '0105', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (107, 6220, 36, 'M81150706151224249000038', '刘双双', '450324198810200774', '15950468633', '6217920400489980', '1', '633axq', '633axq', '1', '2015-07-06 15:12:25', '0310', '1000', '1', '2015-07-06 15:12:25');
INSERT INTO `fm_account` VALUES (108, 6231, 37, 'M81150706151503249000041', '王影', '500107198704159429', '13651398146', '6214830100031011', '1', 'wy415320', '415419', '1', '2015-07-06 15:15:04', '0308', '1000', '1', '2015-07-06 15:15:04');
INSERT INTO `fm_account` VALUES (109, 6212, 38, 'M81150706153324857000051', '曹燕贤', '440582198007246944', '13554755489', '6013822000111101740', '1', '654cao', '654cao', '1', '2015-07-06 15:33:26', '0104', '1000', '1', '2015-07-06 15:33:26');
INSERT INTO `fm_account` VALUES (110, 6200, 39, 'M81150706161737956000002', '张某', '130921198707070024', '18310550024', '6222020200090700024', '1', '123456', '123456', '1', '2015-07-06 16:17:38', '0102', '1430', '1', '2015-07-06 16:17:38');
INSERT INTO `fm_account` VALUES (111, 6201, 40, 'M81150706163554667000006', '张某', '130921198707070025', '18310550025', '6222020200090700025', '1', '123456', '123456', '1', '2015-07-06 16:35:56', '0102', '1430', '1', '2015-07-06 16:35:56');
INSERT INTO `fm_account` VALUES (112, 6222, NULL, 'M81150707095828270000109', '张某', '130921109707070030', '18310550030', '6222020200090788888', '1', '123456', '123456', '0', '2015-07-07 09:58:28', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (113, 6222, 41, 'M81150707095905226000110', '王浩', '130921109707070030', '18310550030', '6222020200090700030', '1', '123456', '123456', '1', '2015-07-07 09:59:08', '0102', '1000', '1', '2015-07-07 09:59:08');
INSERT INTO `fm_account` VALUES (114, 6202, 42, 'M81150707100441555000117', '张某', '130921198707070026', '18310550026', '6222020200090700026', '1', '123456', '123456', '1', '2015-07-07 10:04:42', '0102', '1000', '1', '2015-07-07 10:04:42');
INSERT INTO `fm_account` VALUES (115, 6183, 43, 'M81150707130205939000145', '陈仕勤', '445281198012131513', '13601702682', '6217001210021219306', '1', '123456', '123456', '1', '2015-07-07 13:02:06', '0105', '2900', '1', '2015-07-07 13:02:06');
INSERT INTO `fm_account` VALUES (116, 6194, NULL, 'M81150707134038467000194', '彭姝', '430103197806291528', '13651849649', '4682030210441469', '1', '000000', '000000', '0', '2015-07-07 13:40:38', '0310', '2900', '0', NULL);
INSERT INTO `fm_account` VALUES (117, 6151, 44, 'M81150707161649365000229', '王灵', '532300199211281395', '18601979931', '6217920600414598', '1', '1232456', '111111', '1', '2015-07-07 16:16:50', '0310', '1000', '1', '2015-07-07 16:16:50');
INSERT INTO `fm_account` VALUES (118, 6175, NULL, 'M81150708143923659000481', 'Gig ', '371402198903047017', '13261777763', '36474', '1', '123456', '123456', '0', '2015-07-08 14:39:23', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (119, 6175, NULL, 'M81150708144057529000482', '高', '371402198903047017', '13261777763', '222223747848499595', '1', 'denglu', 'denglu', '0', '2015-07-08 14:40:57', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (120, 6197, 45, 'M81150709130041332000130', '孙文焕', '340827198708155218', '13515126338', '6222024301068392172', '1', 'swh520zzz', 'swh520zz', '1', '2015-07-09 13:00:42', '0102', '3010', '1', '2015-07-09 13:00:42');
INSERT INTO `fm_account` VALUES (121, 6175, NULL, 'M81150709175457752000360', '我', '371402198903047017', '13261777763', '22222223333344', '1', '123456', '123456', '0', '2015-07-09 10:09:14', '0102', '1000', '1', '2021-12-16 18:27:29');
INSERT INTO `fm_account` VALUES (122, 6234, 46, 'M81150710091626052000002', '王浩', '130921198707070031', '18310550031', '6222020200090700031', '1', '123456', '123456', '1', '2015-07-10 09:14:57', '0102', '1000', '1', '2015-07-10 09:14:57');
INSERT INTO `fm_account` VALUES (123, 6175, 47, 'M81150710100543982000240', '我的', '152324198901012345', '13261777763', '6222020200970065896', '1', '123456', '123456', '1', '2015-07-10 10:05:44', '0102', '1000', '1', '2015-07-10 10:05:44');
INSERT INTO `fm_account` VALUES (124, 6175, NULL, 'M81150710100914698000245', '我', '371402198903047017', '13261777763', '6212260200069782288', '1', 'xef123', 'xef123', '0', '2015-07-10 10:09:14', '0102', '1000', '0', NULL);
INSERT INTO `fm_account` VALUES (125, 6198, 48, 'M81150710104636217000002', '王浩', '130921198707070022', '18310550022', '6222020200090700022', '1', '123456', '123456', '1', '2015-07-10 10:45:07', '0102', '1000', '1', '2015-07-10 10:45:07');
INSERT INTO `fm_account` VALUES (126, 6199, 49, 'M81150710105349645000001', '王浩', '130921198707070023', '18310550023', '6222020200090700023', '1', '123456', '123456', '1', '2015-07-10 10:52:21', '0102', '1000', '1', '2015-07-10 10:52:21');
INSERT INTO `fm_account` VALUES (127, 6246, 50, 'M81150710140752500000001', '开户', '152324198801016589', '18310550032', '6222020200970085698', '1', '123456', '123456', '1', '2015-07-10 14:07:53', '0102', '1000', '1', '2015-07-10 14:07:53');
INSERT INTO `fm_account` VALUES (128, 6164, 51, 'M81150710143926836000002', '王浩', '130921109707070017', '18310550017', '6222020200090700017', '1', '123456', '123456', '1', '2015-07-10 14:38:15', '0102', '1000', '1', '2015-07-10 14:38:15');
INSERT INTO `fm_account` VALUES (129, 6194, 52, 'M81150713135828726000546', '彭姝', '430103197806291529', '13651849649', '4682030210441469', '1', 'crf780629', '000000', '1', '2015-07-13 13:58:29', '0308', '2900', '1', '2015-07-13 13:58:29');
INSERT INTO `fm_account` VALUES (130, 6251, 53, 'M81150714213933841000028', '张某某', '130921198707070067', '18310553867', '6222020200090700067', '1', '123456', '123456', '1', '2015-07-14 21:38:06', '0102', '1000', '1', '2015-07-14 21:38:06');
INSERT INTO `fm_account` VALUES (131, 6254, NULL, 'M81150717143734253000001', '王浩', '130921198707070035', '18310550035', '6222020200090700035', '1', '12345678', '12345678', '0', '2015-07-17 14:37:34', '0102', '北京市', '0', NULL);
INSERT INTO `fm_account` VALUES (132, 6254, NULL, 'M81150717143923569000002', '张某', '130921198707070035', '18310550035', '6222020200090700035', '1', 'lz881015', 'lz881015', '0', '2015-07-17 14:39:23', '0102', '北京市', '0', NULL);
INSERT INTO `fm_account` VALUES (133, 6254, NULL, 'M81150717151456666000001', '王浩', '130921109707070035', '18310550035', '6222020200090700035', '1', 'lz123456', 'lz123456', '0', '2015-07-17 15:13:29', '0102', '北京市', '0', NULL);

-- ----------------------------
-- Table structure for fm_bank
-- ----------------------------
DROP TABLE IF EXISTS `fm_bank`;
CREATE TABLE `fm_bank`  (
  `bank_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `bank_name` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行名称',
  `bank_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行类型  1 富友 2 银联 3 通联 4 财付通',
  `bank_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行编号',
  `bank_enabled` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否可用 1 是 0 否 默认为1',
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '银行信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_bank
-- ----------------------------
INSERT INTO `fm_bank` VALUES (1, '中国工商银行', '1', '0102', '1');
INSERT INTO `fm_bank` VALUES (2, '中国农业银行', '1', '0103', '1');
INSERT INTO `fm_bank` VALUES (3, '中国建设银行', '1', '0105', '1');
INSERT INTO `fm_bank` VALUES (4, '招商银行', '1', '0308', '1');
INSERT INTO `fm_bank` VALUES (5, '中信实业银行', '1', '0302', '1');
INSERT INTO `fm_bank` VALUES (6, '中国光大银行', '1', '0303', '1');
INSERT INTO `fm_bank` VALUES (7, '广东发展银行', '1', '0306', '1');
INSERT INTO `fm_bank` VALUES (8, '兴业银行', '1', '0309', '1');
INSERT INTO `fm_bank` VALUES (9, '国家邮政局邮政储汇局', '1', '0403', '1');
INSERT INTO `fm_bank` VALUES (10, '平安银行股份有限公司', '1', '0307', '1');
INSERT INTO `fm_bank` VALUES (11, '中国银行', '1', '0104', '1');
INSERT INTO `fm_bank` VALUES (12, '华夏银行', '1', '0304', '1');
INSERT INTO `fm_bank` VALUES (13, '上海浦东发展银行', '1', '0310', '1');
INSERT INTO `fm_bank` VALUES (14, '中国民生银行', '1', '0305', '1');

-- ----------------------------
-- Table structure for fm_dim_node
-- ----------------------------
DROP TABLE IF EXISTS `fm_dim_node`;
CREATE TABLE `fm_dim_node`  (
  `node_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `node_tree_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标示类型',
  `node_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度编号',
  `node_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度内容',
  `node_parent_no` int(11) NULL DEFAULT 0 COMMENT '所属的父类节点（默认为0 ，0为父类节点）',
  `node_enable` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否可用 1是 0 否 默认1',
  PRIMARY KEY (`node_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '纬度信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_dim_node
-- ----------------------------
INSERT INTO `fm_dim_node` VALUES (1, 'province', 'SD', '山东', 0, '1');
INSERT INTO `fm_dim_node` VALUES (2, 'province', 'BJ', '北京', 0, '1');
INSERT INTO `fm_dim_node` VALUES (3, 'province', 'HB', '河北', 0, '1');
INSERT INTO `fm_dim_node` VALUES (4, 'province', 'GD', '广东', 0, '1');
INSERT INTO `fm_dim_node` VALUES (5, 'city', '1000', '北京', 2, '1');
INSERT INTO `fm_dim_node` VALUES (6, 'city', '1000', '上海', 0, '1');
INSERT INTO `fm_dim_node` VALUES (7, 'city', '1000', '广州', 4, '1');
INSERT INTO `fm_dim_node` VALUES (8, 'city', '1000', '深圳', 4, '1');
INSERT INTO `fm_dim_node` VALUES (9, 'city', '1000', '东莞', 4, '1');

-- ----------------------------
-- Table structure for fm_fetch
-- ----------------------------
DROP TABLE IF EXISTS `fm_fetch`;
CREATE TABLE `fm_fetch`  (
  `fetch_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `fetch_f_fund_id` bigint(20) NULL DEFAULT NULL COMMENT '���ʱ�ID',
  `fetch_f_user_id` bigint(20) NULL DEFAULT NULL COMMENT '�û���ID',
  `fetch_f_ubc_id` bigint(20) NULL DEFAULT NULL COMMENT '�û����п���ID',
  `fetch_seq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ͬ��',
  `fetch_create_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `fetch_income` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  `fetch_money` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����ܽ��',
  `fetch_channel` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������� 1 ���� 2 ���� 3 ͨ�� 4 �Ƹ�ͨ',
  `fetch_state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���״̬ 1 �ɹ� 0 ʧ��',
  `fetch_is_withdraw` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '�Ƿ����� 1 �� 0 �� Ĭ��Ϊ0',
  PRIMARY KEY (`fetch_id`) USING BTREE,
  UNIQUE INDEX `fetch_seq`(`fetch_seq`) USING BTREE,
  INDEX `Index_fetch_f_fund_id`(`fetch_f_fund_id`) USING BTREE,
  INDEX `Index_fetch_f_user_id`(`fetch_f_user_id`) USING BTREE,
  INDEX `Index_fetch_f_ubc_id`(`fetch_f_ubc_id`) USING BTREE,
  INDEX `Index_fetch_seq`(`fetch_seq`) USING BTREE,
  INDEX `Index_fetch_channel`(`fetch_channel`) USING BTREE,
  INDEX `Index_fetch_state`(`fetch_state`) USING BTREE,
  INDEX `Index_fetch_is_withdraw`(`fetch_is_withdraw`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�����Ϣ��' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_fetch
-- ----------------------------
INSERT INTO `fm_fetch` VALUES (1, 0, 6150, 0, NULL, '2015-06-19 16:21:40', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (2, 0, 6150, 0, NULL, '2015-06-19 16:22:42', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (3, 0, 6150, 0, NULL, '2015-06-19 16:25:11', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (4, 0, 6150, 0, '1757', '2015-06-19 16:25:36', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (6, 0, 6150, 0, '1731', '2015-06-19 17:41:52', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (7, 0, 6150, 0, '1728', '2015-06-19 18:12:23', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (8, 0, 6150, 0, '1734', '2015-06-19 19:09:55', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (9, 0, 6150, 0, '1752', '2015-06-23 14:14:13', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (10, 0, 6141, 0, '3864', '2015-06-30 09:26:25', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (11, 0, 6141, 0, '3884', '2015-07-03 11:04:35', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (15, 0, 6141, 0, '3905', '2015-07-03 11:17:54', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (16, 0, 6150, 0, '3924', '2015-07-03 11:34:18', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (17, 0, 6150, 0, '3944', '2015-07-03 11:36:06', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (18, 0, 6150, 0, '3945', '2015-07-03 11:38:27', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (20, 0, 6150, 0, '3946', '2015-07-03 11:41:19', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (21, 0, 6141, 0, '3953', '2015-07-03 17:34:22', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (22, 0, 6141, 0, '3984', '2015-07-06 10:33:45', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (23, 0, 6156, 0, '3964', '2015-07-06 17:40:23', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (24, 0, 6150, 0, '3949', '2015-07-06 17:41:46', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (25, 0, 6155, 0, '4043', '2015-07-06 17:43:16', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (26, 0, 6156, 0, '4042', '2015-07-06 21:32:44', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (27, 0, 6141, 0, '4009', '2015-07-07 11:07:15', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (28, 0, 6141, 0, '4015', '2015-07-07 11:07:48', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (29, 0, 6141, 0, '3985', '2015-07-07 11:08:11', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (30, 0, 6141, 0, '4031', '2015-07-07 11:09:52', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (31, 0, 6141, 0, '4021', '2015-07-07 11:10:07', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (36, 0, 6141, 0, '4020', '2015-07-07 11:11:29', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (38, 0, 6141, 0, '4019', '2015-07-07 11:12:01', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (39, 0, 6141, 0, '4013', '2015-07-07 11:15:30', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (40, 0, 6141, 0, '4027', '2015-07-07 11:15:43', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (41, 0, 6141, 0, '4011', '2015-07-07 11:16:00', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (43, 0, 6141, 0, '4035', '2015-07-07 11:16:55', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (44, 0, 6222, 0, '4084', '2015-07-07 17:08:38', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (45, 0, 6141, 0, '4006', '2015-07-07 17:21:00', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (46, 0, 6141, 0, '4041', '2015-07-07 18:18:42', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (47, 0, 6141, 0, '4126', '2015-07-07 18:20:00', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (48, 0, 6222, 0, '4124', '2015-07-07 18:59:12', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (49, 0, 6222, 0, '4144', '2015-07-08 09:15:03', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (50, 0, 6222, 0, '4130', '2015-07-08 09:15:12', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (51, 0, 6151, 0, '4104', '2015-07-08 10:38:19', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (52, 0, 6141, 0, '4128', '2015-07-08 10:41:50', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (53, 0, 6222, 0, '4145', '2015-07-08 12:07:10', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (54, 0, 6222, 0, '4164', '2015-07-08 14:39:17', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (55, 0, 6155, 0, '4044', '2015-07-08 17:34:38', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (56, 0, 6141, 0, '4022', '2015-07-08 19:10:34', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (57, 0, 6141, 0, '4037', '2015-07-09 10:48:03', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (58, 0, 6160, 0, '4167', '2015-07-09 11:15:50', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (59, 0, 6192, 0, '4224', '2015-07-09 13:40:19', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (60, 0, 6141, 0, '4004', '2015-07-09 15:55:26', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (61, 0, 6141, 0, '4008', '2015-07-09 16:32:36', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (62, 0, 6156, 0, '4064', '2015-07-09 17:56:33', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (63, 0, 6246, 0, '4284', '2015-07-10 16:31:18', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (64, 0, 6246, 0, '4285', '2015-07-10 16:31:30', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (65, 0, 6246, 0, '4286', '2015-07-10 16:46:17', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (66, 0, 6200, 0, '4278', '2015-07-13 17:34:04', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (67, 0, 6157, 0, '4329', '2015-07-14 12:00:36', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (68, 0, 6157, 0, '4330', '2015-07-14 12:02:10', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (69, 0, 6141, 0, '4029', '2015-07-14 12:02:12', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (70, 0, 6141, 0, '4038', '2015-07-14 12:02:34', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (71, 0, 6141, 0, '4036', '2015-07-14 16:42:52', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (72, 0, 6156, 0, '4326', '2015-07-15 13:11:30', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (73, 0, 6141, 0, '4039', '2015-07-15 15:29:50', NULL, NULL, NULL, '1', '0');
INSERT INTO `fm_fetch` VALUES (74, 0, 6141, 0, '4040', '2015-07-15 15:29:55', NULL, NULL, NULL, '1', '0');

-- ----------------------------
-- Table structure for fm_funding
-- ----------------------------
DROP TABLE IF EXISTS `fm_funding`;
CREATE TABLE `fm_funding`  (
  `fund_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
  `fund_f_user_id` bigint(20) NULL DEFAULT NULL COMMENT '�û���ID',
  `fund_f_pro_id` bigint(20) NULL DEFAULT NULL COMMENT '��ƷID',
  `fund_f_ubc_id` bigint(20) NULL DEFAULT NULL COMMENT '�û����п���ID',
  `fund_seq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ͬ��',
  `fund_money` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ʽ��',
  `fund_source` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Դ ��Դ 1 ΢�� 2 App 3 PC',
  `fund_create_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `fund_state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '״̬ 0δ���� 1�Ѷ���2�ѿۿ�  Ĭ�� 0',
  `fund_frost_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `fund_fuiou_mchnt_txn_ssn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '富友冻结流水号',
  `fund_fuiou_contract_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fund_req_state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '����ʱ��',
  `fund_deduct_time` datetime(0) NULL DEFAULT NULL COMMENT '�ۿ�ʱ��',
  `fund_channel` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���� 1 ���� 2 ���� 3 ͨ�� 4 �Ƹ�ͨ',
  `fund_begin_date` date NULL DEFAULT NULL COMMENT '��ʼ��',
  `fund_end_date` date NULL DEFAULT NULL COMMENT '������',
  `fund_hold_days` int(11) NULL DEFAULT NULL COMMENT '��������',
  `fund_close_income` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����������',
  `fund_total_income` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������',
  `fund_fetch_time` datetime(0) NULL DEFAULT NULL,
  `fund_fetch_state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '���״̬ 0 δ��� 1 ��� Ĭ�� 0',
  PRIMARY KEY (`fund_id`) USING BTREE,
  UNIQUE INDEX `fund_seq`(`fund_seq`) USING BTREE,
  INDEX `Index_fund_f_user_id`(`fund_f_user_id`) USING BTREE,
  INDEX `Index_fund_f_pro_id`(`fund_f_pro_id`) USING BTREE,
  INDEX `Index_fund_f_ubc_id`(`fund_f_ubc_id`) USING BTREE,
  INDEX `Index_fund_seq`(`fund_seq`) USING BTREE,
  INDEX `Index_fund_source`(`fund_source`) USING BTREE,
  INDEX `Index_fund_state`(`fund_state`) USING BTREE,
  INDEX `Index_fund_channel`(`fund_channel`) USING BTREE,
  INDEX `Index_fund_fetch_state`(`fund_fetch_state`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 395 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���ʱ�' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_funding
-- ----------------------------
INSERT INTO `fm_funding` VALUES (371, 6200, 58, 0, 'M8800150710095529000024', '1000', '1', '2015-07-10 09:53:59', '1', '2015-07-10 00:00:00', 'M83150710095529514000026', '000002941403', '1', '2015-07-10 10:19:04', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (372, 6175, 58, 0, 'M8800150710100625000243', '1000', '1', '2015-07-10 10:06:25', '1', '2015-07-10 10:18:31', 'M83150710102000110000028', '000002941458', '1', '2015-07-10 10:19:05', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (373, 6175, 58, 0, 'M8800150710101422000251', '1000', '1', '2015-07-10 10:14:22', '1', '2015-07-10 10:18:31', 'M83150710102000651000029', '000002941459', '1', '2015-07-10 10:19:06', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (374, 6246, 58, 0, 'M8800150710140935000003', '2000', '1', '2015-07-10 14:09:35', '1', '2015-07-10 14:20:00', 'M83150710142000078000022', '000002946293', '1', '2015-07-10 14:20:30', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (375, 6246, 56, 0, 'M8800150710152305000022', '5000', '1', '2015-07-10 15:23:05', '1', '2015-07-10 00:00:00', 'M83150710152305971000024', '000002946738', '1', '2015-07-10 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (376, 6246, 55, 0, 'M8800150710152818000027', '10000', '1', '2015-07-10 15:28:18', '1', '2015-07-10 00:00:00', 'M83150710152818645000029', '000002946756', '1', '2015-07-10 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (377, 6175, 58, 0, 'M8800150710163134000009', '1000', '1', '2015-07-10 16:31:34', '1', '2015-07-10 00:00:00', 'M83150710163135372000011', '000002946968', '1', '2015-07-10 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (378, 6246, 55, 0, 'M8800150710164543000041', '10000', '1', '2015-07-10 16:45:43', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (379, 6193, 58, 0, 'M8800150713104317000496', '1000', '1', '2015-07-13 10:43:17', '1', '2015-07-13 00:00:00', 'M83150713104317479000498', '000002949569', '1', '2015-07-13 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (380, 6141, 55, 0, 'M8800150713105032000503', '20000', '1', '2015-07-13 10:50:32', '1', '2015-07-13 15:50:03', 'M83150713155001975000613', '000003020521', '1', '2015-07-13 15:50:30', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (381, 6141, 56, 0, 'M8800150713154828000602', '5000', '1', '2015-07-13 15:48:28', '1', '2015-07-13 00:00:00', 'M83150713154829194000604', '000003020517', '1', '2015-07-13 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (382, 6156, 58, 0, 'M8800150713154925000606', '1000', '1', '2015-07-13 15:49:25', '1', '2015-07-13 00:00:00', 'M83150713154925847000608', '000003020518', '1', '2015-07-13 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (383, 6141, 58, 0, 'M8800150713155020000615', '3000', '1', '2015-07-13 15:50:20', '1', '2015-07-13 00:00:00', 'M83150713155021081000617', '000003020524', '1', '2015-07-13 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (384, 6141, 58, 0, 'M8800150713155022000618', '3000', '1', '2015-07-13 15:50:22', '1', '2015-07-14 09:58:32', 'M83150714100000641000005', '000003041318', '1', '2015-07-14 09:59:05', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (385, 6157, 58, 0, 'M8800150713161557000024', '10000', '1', '2015-07-13 16:16:24', '1', '2015-07-13 00:00:00', 'M83150713161558269000026', '000003040015', '1', '2015-07-13 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (386, 6157, 58, 0, 'M8800150713165651000647', '10000', '1', '2015-07-13 16:56:51', '1', '2015-07-13 00:00:00', 'M83150713165651336000649', '000003040212', '1', '2015-07-13 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (387, 6163, 58, 0, 'M8800150713172003000657', '10000', '1', '2015-07-13 17:20:03', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (388, 6200, 58, 0, 'M8800150713173718000004', '1000', '1', '2015-07-13 17:35:49', '1', '2015-07-13 00:00:00', 'M83150713173718764000006', '000003040636', '1', '2015-07-13 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (389, 6251, 56, 0, 'M8800150714214215000036', '5000', '1', '2015-07-14 21:40:46', '1', '2015-07-14 00:00:00', 'M83150714214215738000038', '000003260936', '1', '2015-07-14 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (390, 6156, 58, 0, 'M8800150715122238000019', '10000', '1', '2015-07-15 12:21:10', '1', '2015-07-15 00:00:00', 'M83150715122238808000021', '000003261684', '1', '2015-07-15 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (391, 6156, 58, 0, 'M8800150715122601000023', '10000', '1', '2015-07-15 12:24:33', '1', '2015-07-15 00:00:00', 'M83150715122602166000025', '000003261686', '1', '2015-07-15 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (392, 6141, 58, 0, 'M8800150715152528000004', '1000', '1', '2015-07-15 15:24:00', '1', '2015-07-15 00:00:00', 'M83150715152529061000006', '000003262112', '1', '2015-07-16 15:00:30', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (393, 6151, 58, 0, 'M8800150715152934000016', '60000', '1', '2015-07-15 15:28:06', '1', '2015-07-15 15:40:01', 'M83150715154001599000339', '000003262173', '1', '2015-07-15 15:40:30', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');
INSERT INTO `fm_funding` VALUES (394, 6200, 58, 0, 'M8800150717145610000013', '1000', '1', '2015-07-17 14:56:10', '1', '2015-07-17 00:00:00', 'M83150717145611270000015', '000003302637', '1', '2015-07-17 00:00:00', NULL, NULL, NULL, 0, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for fm_log_login
-- ----------------------------
DROP TABLE IF EXISTS `fm_log_login`;
CREATE TABLE `fm_log_login`  (
  `login_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_data` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ϣ',
  `login_version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ͻ��˰汾��',
  `login_device_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸���� 1 Android Phone 2 Android Pad  3 iPhone 4 iPad 5 PC',
  `login_device_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸IMEI',
  `login_device_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸����',
  `login_device_os` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸����ϵͳ',
  `login_device_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸Tokenֵ',
  `login_net_category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  `login_net_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������� 1 WIFI 2 2G 3 3G 4 4G 5 5G',
  `login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ',
  `login_ip_country` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ�������',
  `login_ip_region` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ��������',
  `login_ip_city` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ�������',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '��½ʱ��',
  `login_is_success` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '�Ƿ��½�ɹ�  1 �� 0 ��',
  `login_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`login_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��½��־' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_log_login
-- ----------------------------

-- ----------------------------
-- Table structure for fm_log_register
-- ----------------------------
DROP TABLE IF EXISTS `fm_log_register`;
CREATE TABLE `fm_log_register`  (
  `register_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `register_data` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ϣ',
  `register_version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ͻ��˰汾��',
  `register_device_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸���� 1 Android Phone 2 Android Pad  3 iPhone 4 iPad 5 PC',
  `register_device_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸IMEI',
  `register_device_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸����',
  `register_device_os` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸����ϵͳ',
  `register_device_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸Tokenֵ',
  `register_net_category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  `register_net_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������  1 WIFI 2 2G 3 3G 4 4G 5 5G',
  `register_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ',
  `register_ip_country` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ�������',
  `register_ip_region` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ��������',
  `register_ip_city` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ�������',
  `register_time` datetime(0) NULL DEFAULT NULL COMMENT 'ע��ʱ��',
  `register_is_success` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '�Ƿ�ע��ɹ� 1 ��  0 �� Ĭ��Ϊ1',
  `register_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`register_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ע����־' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_log_register
-- ----------------------------

-- ----------------------------
-- Table structure for fm_log_request
-- ----------------------------
DROP TABLE IF EXISTS `fm_log_request`;
CREATE TABLE `fm_log_request`  (
  `request_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `request_f_user_id` bigint(20) NULL DEFAULT NULL COMMENT '�û���ID',
  `request_data` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ϣ',
  `request_version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�汾��',
  `request_device_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸����  1 Android Phone 2 Android Pad  3 iPhone 4 iPad 5 PC',
  `request_device_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸IMEI��',
  `request_device_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸����',
  `request_device_token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸Tokenֵ',
  `request_device_os` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�豸����ϵͳ',
  `request_net_category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������',
  `request_net_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������  1 WIFI 2 2G 3 3G 4 4G 5 5G',
  `request_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ',
  `request_ip_country` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ�������',
  `request_ip_region` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ��������',
  `request_ip_city` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP��ַ�������',
  `request_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `request_method` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����Ľӿ�����',
  `request_desc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  `request_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`request_id`) USING BTREE,
  INDEX `Index_request_f_user_id`(`request_f_user_id`) USING BTREE,
  INDEX `Index_method`(`request_method`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������־' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_log_request
-- ----------------------------

-- ----------------------------
-- Table structure for fm_log_response
-- ----------------------------
DROP TABLE IF EXISTS `fm_log_response`;
CREATE TABLE `fm_log_response`  (
  `response_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `response_f_request_id` bigint(20) NULL DEFAULT NULL COMMENT '����ID',
  `response_time` datetime(0) NULL DEFAULT NULL COMMENT '��Ӧʱ��',
  `response_data` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ӧ��Ϣ',
  PRIMARY KEY (`response_id`) USING BTREE,
  INDEX `Index_response_f_request_id`(`response_f_request_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��Ӧ��¼' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_log_response
-- ----------------------------

-- ----------------------------
-- Table structure for fm_message
-- ----------------------------
DROP TABLE IF EXISTS `fm_message`;
CREATE TABLE `fm_message`  (
  `mes_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mes_user_id` bigint(20) NOT NULL COMMENT '消息用户ID',
  `mes_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息内容',
  `mes_date` datetime(0) NOT NULL COMMENT '消息插入时间',
  PRIMARY KEY (`mes_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 564 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消息记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_message
-- ----------------------------
INSERT INTO `fm_message` VALUES (388, 6222, '您成功申请赎回出资的【九九特供方案】，赎回总额：2000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-08 14:39:17');
INSERT INTO `fm_message` VALUES (389, 6141, '您成功充值2000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 14:45:37');
INSERT INTO `fm_message` VALUES (390, 6127, '您成功充值10000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 14:49:22');
INSERT INTO `fm_message` VALUES (391, 6127, '您成功充值2000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 14:51:15');
INSERT INTO `fm_message` VALUES (392, 6127, '您成功充值10000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 14:53:06');
INSERT INTO `fm_message` VALUES (393, 6127, '您成功充值10000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 14:53:38');
INSERT INTO `fm_message` VALUES (394, 6127, '您成功充值2000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 14:55:16');
INSERT INTO `fm_message` VALUES (395, 6151, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 14:57:09');
INSERT INTO `fm_message` VALUES (396, 6127, '您成功申请提现2000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-08 14:59:17');
INSERT INTO `fm_message` VALUES (397, 6127, '您成功申请提现3685元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-08 15:01:37');
INSERT INTO `fm_message` VALUES (398, 6127, '您成功申请提现5963.25元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-08 15:02:21');
INSERT INTO `fm_message` VALUES (399, 6127, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 15:05:32');
INSERT INTO `fm_message` VALUES (400, 6127, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 15:06:10');
INSERT INTO `fm_message` VALUES (401, 6151, '您成功申请提现100元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-08 15:07:31');
INSERT INTO `fm_message` VALUES (402, 6141, '您已成功认购【九九特供方案】10000元，划款成功后次日开始产生利息', '2015-07-08 15:10:15');
INSERT INTO `fm_message` VALUES (403, 6141, '您成功申请提现2222元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-08 15:16:10');
INSERT INTO `fm_message` VALUES (404, 6141, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 15:16:49');
INSERT INTO `fm_message` VALUES (405, 6141, '您成功申请提现1000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-08 15:19:42');
INSERT INTO `fm_message` VALUES (406, 6141, '您成功申请提现1000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-08 15:19:42');
INSERT INTO `fm_message` VALUES (407, 6141, '您成功充值2000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 15:20:26');
INSERT INTO `fm_message` VALUES (408, 6222, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-08 15:25:01');
INSERT INTO `fm_message` VALUES (409, 6160, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-08 15:25:29');
INSERT INTO `fm_message` VALUES (410, 6160, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-08 15:25:43');
INSERT INTO `fm_message` VALUES (411, 6160, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-08 15:26:04');
INSERT INTO `fm_message` VALUES (412, 6222, '您已成功认购【九九特供方案】2000元，划款成功后次日开始产生利息', '2015-07-08 15:26:31');
INSERT INTO `fm_message` VALUES (413, 6160, '您已成功认购【信富双季】5000元，划款成功后次日开始产生利息', '2015-07-08 15:30:31');
INSERT INTO `fm_message` VALUES (414, 6151, '您成功充值10000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 15:43:32');
INSERT INTO `fm_message` VALUES (415, 6151, '您成功充值5000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 15:47:45');
INSERT INTO `fm_message` VALUES (416, 6151, '您已成功认购【信富双季】900元，划款成功后次日开始产生利息', '2015-07-08 16:23:37');
INSERT INTO `fm_message` VALUES (417, 6174, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-08 16:24:33');
INSERT INTO `fm_message` VALUES (418, 6174, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 16:25:47');
INSERT INTO `fm_message` VALUES (419, 6174, '您已成功认购【信富双季】5000元，划款成功后次日开始产生利息', '2015-07-08 16:38:51');
INSERT INTO `fm_message` VALUES (420, 6174, '您成功充值5000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-08 16:42:34');
INSERT INTO `fm_message` VALUES (421, 6151, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-08 17:00:03');
INSERT INTO `fm_message` VALUES (422, 6155, '您已成功认购【信富双季】100元，划款成功后次日开始产生利息', '2015-07-08 17:05:31');
INSERT INTO `fm_message` VALUES (423, 6155, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-08 17:34:38');
INSERT INTO `fm_message` VALUES (424, 6141, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-08 19:10:34');
INSERT INTO `fm_message` VALUES (425, 6174, '您成功充值100元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 09:39:58');
INSERT INTO `fm_message` VALUES (426, 6151, '您已成功认购【信富双季】5000元，划款成功后次日开始产生利息', '2015-07-09 09:44:10');
INSERT INTO `fm_message` VALUES (427, 6141, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-09 10:48:03');
INSERT INTO `fm_message` VALUES (428, 6141, '您已成功认购【信富四季】10000元，划款成功后次日开始产生利息', '2015-07-09 10:56:28');
INSERT INTO `fm_message` VALUES (429, 6141, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 10:57:38');
INSERT INTO `fm_message` VALUES (430, 6151, '您已成功认购【信富四季】40000元，划款成功后次日开始产生利息', '2015-07-09 10:58:43');
INSERT INTO `fm_message` VALUES (431, 6141, '您已成功认购【信富四季】20000元，划款成功后次日开始产生利息', '2015-07-09 10:59:32');
INSERT INTO `fm_message` VALUES (432, 6141, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-09 11:00:14');
INSERT INTO `fm_message` VALUES (433, 6141, '您已成功认购【信富双季】10000元，划款成功后次日开始产生利息', '2015-07-09 11:00:55');
INSERT INTO `fm_message` VALUES (434, 6141, '您成功充值2000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 11:02:32');
INSERT INTO `fm_message` VALUES (435, 6160, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-09 11:15:50');
INSERT INTO `fm_message` VALUES (436, 6141, '您成功充值19000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 11:35:17');
INSERT INTO `fm_message` VALUES (437, 6174, '您成功充值100元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 12:26:22');
INSERT INTO `fm_message` VALUES (438, 6192, '您已成功认购【信富四季】10000元，划款成功后次日开始产生利息', '2015-07-09 13:35:11');
INSERT INTO `fm_message` VALUES (439, 6192, '您成功充值2400元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 13:38:04');
INSERT INTO `fm_message` VALUES (440, 6192, '您成功申请赎回出资的【信富四季】，赎回总额：10000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-09 13:40:19');
INSERT INTO `fm_message` VALUES (441, 6141, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 13:45:48');
INSERT INTO `fm_message` VALUES (442, 6192, '您已成功认购【信富双季】20000元，划款成功后次日开始产生利息', '2015-07-09 13:47:02');
INSERT INTO `fm_message` VALUES (443, 6192, '您成功充值12657元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 13:47:53');
INSERT INTO `fm_message` VALUES (444, 6192, '您成功申请提现100元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-09 13:51:11');
INSERT INTO `fm_message` VALUES (445, 6192, '您成功申请提现100元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-09 13:51:50');
INSERT INTO `fm_message` VALUES (446, 6197, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-09 14:30:07');
INSERT INTO `fm_message` VALUES (447, 6151, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 14:33:58');
INSERT INTO `fm_message` VALUES (448, 6155, '您已成功认购【信富双季】5000元，划款成功后次日开始产生利息', '2015-07-09 15:05:39');
INSERT INTO `fm_message` VALUES (449, 6151, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 15:22:02');
INSERT INTO `fm_message` VALUES (450, 6151, '您已成功认购【九九特供方案】4000元，划款成功后次日开始产生利息', '2015-07-09 15:31:44');
INSERT INTO `fm_message` VALUES (451, 6151, '您已成功认购【信富双季】5000元，划款成功后次日开始产生利息', '2015-07-09 15:38:19');
INSERT INTO `fm_message` VALUES (452, 6151, '您成功充值6000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 15:44:52');
INSERT INTO `fm_message` VALUES (453, 6141, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-09 15:55:26');
INSERT INTO `fm_message` VALUES (454, 6141, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-09 16:32:36');
INSERT INTO `fm_message` VALUES (455, 6222, '您成功充值3000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 17:53:52');
INSERT INTO `fm_message` VALUES (456, 6222, '您成功充值3000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 17:55:53');
INSERT INTO `fm_message` VALUES (457, 6156, '您成功申请赎回出资的【九九特供方案】，赎回总额：10000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-09 17:56:33');
INSERT INTO `fm_message` VALUES (458, 6222, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-09 17:56:39');
INSERT INTO `fm_message` VALUES (459, 6222, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-09 18:02:00');
INSERT INTO `fm_message` VALUES (460, 6222, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-09 18:03:42');
INSERT INTO `fm_message` VALUES (461, 6222, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-09 18:07:22');
INSERT INTO `fm_message` VALUES (462, 6222, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-09 18:15:17');
INSERT INTO `fm_message` VALUES (463, 6222, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-09 18:19:17');
INSERT INTO `fm_message` VALUES (464, 6222, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-09 18:20:20');
INSERT INTO `fm_message` VALUES (465, 6174, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 22:06:23');
INSERT INTO `fm_message` VALUES (466, 6174, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-09 22:07:34');
INSERT INTO `fm_message` VALUES (467, 6200, '您成功充值5000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-10 09:05:55');
INSERT INTO `fm_message` VALUES (468, 6200, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-10 09:06:21');
INSERT INTO `fm_message` VALUES (469, 6200, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-10 09:07:14');
INSERT INTO `fm_message` VALUES (470, 6200, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-10 09:21:33');
INSERT INTO `fm_message` VALUES (471, 6200, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-10 09:27:50');
INSERT INTO `fm_message` VALUES (472, 6200, '您已成功认购【九九特供方案】2000元，划款成功后次日开始产生利息', '2015-07-10 09:39:20');
INSERT INTO `fm_message` VALUES (473, 6200, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-10 09:54:12');
INSERT INTO `fm_message` VALUES (474, 6175, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-10 10:06:25');
INSERT INTO `fm_message` VALUES (475, 6175, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-10 10:14:06');
INSERT INTO `fm_message` VALUES (476, 6175, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-10 10:14:23');
INSERT INTO `fm_message` VALUES (477, 6200, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-10 10:23:35');
INSERT INTO `fm_message` VALUES (478, 6198, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-10 11:53:59');
INSERT INTO `fm_message` VALUES (479, 6198, '您成功充值2000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-10 11:56:30');
INSERT INTO `fm_message` VALUES (480, 6198, '您成功申请提现100元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-10 11:57:34');
INSERT INTO `fm_message` VALUES (481, 6246, '您已成功认购【九九特供方案】2000元，划款成功后次日开始产生利息', '2015-07-10 14:09:36');
INSERT INTO `fm_message` VALUES (482, 6246, '您成功充值2000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-10 14:10:35');
INSERT INTO `fm_message` VALUES (483, 6246, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-10 14:13:33');
INSERT INTO `fm_message` VALUES (484, 6246, '您成功申请提现100元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-10 14:28:49');
INSERT INTO `fm_message` VALUES (485, 6246, '您成功申请提现1元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-10 14:34:18');
INSERT INTO `fm_message` VALUES (486, 6164, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-10 14:39:20');
INSERT INTO `fm_message` VALUES (487, 6164, '您成功申请提现188.35元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-10 14:40:07');
INSERT INTO `fm_message` VALUES (488, 6246, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-10 15:20:51');
INSERT INTO `fm_message` VALUES (489, 6246, '您成功申请提现99元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-10 15:21:56');
INSERT INTO `fm_message` VALUES (490, 6246, '您已成功认购【信富双季】5000元，划款成功后次日开始产生利息', '2015-07-10 15:23:09');
INSERT INTO `fm_message` VALUES (491, 6246, '您已成功认购【信富四季】10000元，划款成功后次日开始产生利息', '2015-07-10 15:28:19');
INSERT INTO `fm_message` VALUES (492, 6246, '您成功申请赎回出资的【九九特供方案】，赎回总额：2000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-10 16:31:18');
INSERT INTO `fm_message` VALUES (493, 6246, '您成功申请赎回出资的【信富双季】，赎回总额：5000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-10 16:31:30');
INSERT INTO `fm_message` VALUES (494, 6175, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-10 16:31:36');
INSERT INTO `fm_message` VALUES (495, 6246, '您已成功认购【信富四季】10000元，划款成功后次日开始产生利息', '2015-07-10 16:45:43');
INSERT INTO `fm_message` VALUES (496, 6246, '您成功申请赎回出资的【信富四季】，赎回总额：10000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-10 16:46:17');
INSERT INTO `fm_message` VALUES (497, 6156, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-11 19:20:11');
INSERT INTO `fm_message` VALUES (498, 6156, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-11 19:22:16');
INSERT INTO `fm_message` VALUES (499, 6193, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-13 10:43:18');
INSERT INTO `fm_message` VALUES (500, 6141, '您已成功认购【信富四季】20000元，划款成功后次日开始产生利息', '2015-07-13 10:50:32');
INSERT INTO `fm_message` VALUES (501, 6141, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-13 15:42:46');
INSERT INTO `fm_message` VALUES (502, 6141, '您已成功认购【信富双季】5000元，划款成功后次日开始产生利息', '2015-07-13 15:48:35');
INSERT INTO `fm_message` VALUES (503, 6156, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-13 15:49:26');
INSERT INTO `fm_message` VALUES (504, 6141, '您已成功认购【九九特供方案】3000元，划款成功后次日开始产生利息', '2015-07-13 15:50:22');
INSERT INTO `fm_message` VALUES (505, 6141, '您已成功认购【九九特供方案】3000元，划款成功后次日开始产生利息', '2015-07-13 15:50:22');
INSERT INTO `fm_message` VALUES (506, 6157, '您已成功认购【九九特供方案】10000元，划款成功后次日开始产生利息', '2015-07-13 16:16:25');
INSERT INTO `fm_message` VALUES (507, 6200, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-13 16:29:28');
INSERT INTO `fm_message` VALUES (508, 6157, '您已成功认购【九九特供方案】10000元，划款成功后次日开始产生利息', '2015-07-13 16:56:52');
INSERT INTO `fm_message` VALUES (509, 6163, '您已成功认购【九九特供方案】10000元，划款成功后次日开始产生利息', '2015-07-13 17:20:03');
INSERT INTO `fm_message` VALUES (510, 6200, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-13 17:34:04');
INSERT INTO `fm_message` VALUES (511, 6200, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-13 17:35:51');
INSERT INTO `fm_message` VALUES (512, 6127, '您成功充值10000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-13 22:23:33');
INSERT INTO `fm_message` VALUES (513, 6141, '您成功充值4000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-14 09:52:23');
INSERT INTO `fm_message` VALUES (514, 6157, '您成功申请赎回出资的【九九特供方案】，赎回总额：10000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-14 12:00:36');
INSERT INTO `fm_message` VALUES (515, 6157, '您成功申请赎回出资的【九九特供方案】，赎回总额：10000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-14 12:02:10');
INSERT INTO `fm_message` VALUES (516, 6141, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-14 12:02:12');
INSERT INTO `fm_message` VALUES (517, 6141, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-14 12:02:34');
INSERT INTO `fm_message` VALUES (518, 6141, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-14 16:42:52');
INSERT INTO `fm_message` VALUES (519, 6141, '您成功充值10000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-14 17:42:42');
INSERT INTO `fm_message` VALUES (520, 6251, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-14 21:38:51');
INSERT INTO `fm_message` VALUES (521, 6251, '您已成功认购【信富双季】5000元，划款成功后次日开始产生利息', '2015-07-14 21:40:48');
INSERT INTO `fm_message` VALUES (522, 6200, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 09:19:47');
INSERT INTO `fm_message` VALUES (523, 6200, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 09:46:44');
INSERT INTO `fm_message` VALUES (524, 6141, '您成功充值5000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 10:00:40');
INSERT INTO `fm_message` VALUES (525, 6141, '您成功充值4000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 10:04:28');
INSERT INTO `fm_message` VALUES (526, 6141, '您成功充值3000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 10:11:04');
INSERT INTO `fm_message` VALUES (527, 6141, '您成功充值2000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 10:18:28');
INSERT INTO `fm_message` VALUES (528, 6141, '您成功申请提现1000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 10:37:03');
INSERT INTO `fm_message` VALUES (529, 6141, '您成功申请提现3000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 10:55:01');
INSERT INTO `fm_message` VALUES (530, 6200, '您成功申请提现5000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 10:55:52');
INSERT INTO `fm_message` VALUES (531, 6141, '您成功申请提现1000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 10:57:48');
INSERT INTO `fm_message` VALUES (532, 6141, '您成功申请提现4000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 10:58:44');
INSERT INTO `fm_message` VALUES (533, 6200, '您成功申请提现1500元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 10:59:11');
INSERT INTO `fm_message` VALUES (534, 6200, '您成功申请提现1000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 11:00:45');
INSERT INTO `fm_message` VALUES (535, 6141, '您成功申请提现500元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 11:00:54');
INSERT INTO `fm_message` VALUES (536, 6141, '您成功申请提现1元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 11:03:37');
INSERT INTO `fm_message` VALUES (537, 6200, '您成功申请提现1元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 11:05:08');
INSERT INTO `fm_message` VALUES (538, 6200, '您成功充值100元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 11:06:36');
INSERT INTO `fm_message` VALUES (539, 6141, '您成功申请提现2元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 11:07:40');
INSERT INTO `fm_message` VALUES (540, 6200, '您成功申请提现1000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 11:08:33');
INSERT INTO `fm_message` VALUES (541, 6141, '您成功申请提现3元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 11:11:16');
INSERT INTO `fm_message` VALUES (542, 6141, '您成功充值8000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 11:12:30');
INSERT INTO `fm_message` VALUES (543, 6141, '您成功充值900元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 11:13:49');
INSERT INTO `fm_message` VALUES (544, 6141, '您成功申请提现4元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 11:14:33');
INSERT INTO `fm_message` VALUES (545, 6156, '您成功充值1000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 12:14:51');
INSERT INTO `fm_message` VALUES (546, 6156, '您成功申请提现10000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 12:17:23');
INSERT INTO `fm_message` VALUES (547, 6156, '您已成功认购【九九特供方案】10000元，划款成功后次日开始产生利息', '2015-07-15 12:21:11');
INSERT INTO `fm_message` VALUES (548, 6156, '您已成功认购【九九特供方案】10000元，划款成功后次日开始产生利息', '2015-07-15 12:24:34');
INSERT INTO `fm_message` VALUES (549, 6156, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-15 13:11:30');
INSERT INTO `fm_message` VALUES (550, 6156, '您成功申请提现1000元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 14:41:20');
INSERT INTO `fm_message` VALUES (551, 6141, '您已成功认购【九九特供方案】1000元，划款成功后次日开始产生利息', '2015-07-15 15:24:01');
INSERT INTO `fm_message` VALUES (552, 6141, '您成功充值2000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 15:26:20');
INSERT INTO `fm_message` VALUES (553, 6151, '您已成功认购【九九特供方案】60000元，划款成功后次日开始产生利息', '2015-07-15 15:28:06');
INSERT INTO `fm_message` VALUES (554, 6141, '您成功申请提现200元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 15:29:36');
INSERT INTO `fm_message` VALUES (555, 6141, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-15 15:29:50');
INSERT INTO `fm_message` VALUES (556, 6141, '您成功申请赎回出资的【九九特供方案】，赎回总额：1000元，预计24小时后到账，若有疑问，请拨打信而富热线4006888692。', '2015-07-15 15:29:55');
INSERT INTO `fm_message` VALUES (557, 6151, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 15:30:45');
INSERT INTO `fm_message` VALUES (558, 6151, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 15:34:26');
INSERT INTO `fm_message` VALUES (559, 6151, '您成功充值20000元，预计次日到账（工作日除外），若有疑问，请拨打信而富热线4006888692。', '2015-07-15 15:36:22');
INSERT INTO `fm_message` VALUES (560, 6141, '您成功申请提现5元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 16:11:49');
INSERT INTO `fm_message` VALUES (561, 6141, '您成功申请提现6元，手续费2元。（工作日当天下午4点以前的提现，当天资金到帐；工作日下午4点以后的提现请求将在下一个工作日到帐，若有疑问，请拨打信而富热线4006888692。）', '2015-07-15 16:14:14');
INSERT INTO `fm_message` VALUES (562, 6200, '您已成功申请【九九特供方案】的出借认购，出借人民币1000元。出借资金暂被冻结，等平台把您的资金匹配给借款人以后，将从您的第三方托管帐户进行划款，次日产生利息。若有疑问请联系：400-688-8692', '2015-07-17 14:56:12');
INSERT INTO `fm_message` VALUES (563, 6200, '您成功充值100元，将在下个工作日到时账，未到账前您可在“充值未转金额”中查看该资金。若有疑问请联系：400-688-8692', '2015-07-17 15:05:34');

-- ----------------------------
-- Table structure for fm_notes
-- ----------------------------
DROP TABLE IF EXISTS `fm_notes`;
CREATE TABLE `fm_notes`  (
  `notes_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `notes_f_user_id` bigint(20) NULL DEFAULT NULL COMMENT '�û���ID',
  `notes_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���� 1��ֵ 2 ���� 3 ��� 4 ����',
  `notes_content` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ϣ����',
  `notes_create_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `notes_is_view` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '�Ƿ�鿴 1 �� 0 ��',
  PRIMARY KEY (`notes_id`) USING BTREE,
  INDEX `Index_notes_f_user_id`(`notes_f_user_id`) USING BTREE,
  INDEX `Index_notes_type`(`notes_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��Ϣ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_notes
-- ----------------------------

-- ----------------------------
-- Table structure for fm_order
-- ----------------------------
DROP TABLE IF EXISTS `fm_order`;
CREATE TABLE `fm_order`  (
  `order_id` bigint(22) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_create_time` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_order
-- ----------------------------
INSERT INTO `fm_order` VALUES (1, '2015-06-15 17:48:53');
INSERT INTO `fm_order` VALUES (2, '2015-06-15 17:55:49');
INSERT INTO `fm_order` VALUES (3, '2015-06-15 17:57:35');
INSERT INTO `fm_order` VALUES (4, '2015-06-15 23:54:48');
INSERT INTO `fm_order` VALUES (5, '2015-06-16 00:14:20');
INSERT INTO `fm_order` VALUES (6, '2015-06-16 09:51:36');
INSERT INTO `fm_order` VALUES (7, '2015-06-16 09:52:29');
INSERT INTO `fm_order` VALUES (8, '2015-06-16 09:52:29');
INSERT INTO `fm_order` VALUES (9, '2015-06-16 09:52:52');
INSERT INTO `fm_order` VALUES (10, '2015-06-16 09:53:24');
INSERT INTO `fm_order` VALUES (11, '2015-06-16 09:54:34');
INSERT INTO `fm_order` VALUES (12, '2015-06-16 09:57:03');
INSERT INTO `fm_order` VALUES (13, '2015-06-16 10:02:41');
INSERT INTO `fm_order` VALUES (14, '2015-06-16 10:09:21');
INSERT INTO `fm_order` VALUES (15, '2015-06-16 10:13:38');
INSERT INTO `fm_order` VALUES (16, '2015-06-16 10:15:21');
INSERT INTO `fm_order` VALUES (17, '2015-06-16 10:16:25');
INSERT INTO `fm_order` VALUES (18, '2015-06-16 10:21:54');
INSERT INTO `fm_order` VALUES (19, '2015-06-16 10:25:27');
INSERT INTO `fm_order` VALUES (20, '2015-06-16 10:29:00');
INSERT INTO `fm_order` VALUES (21, '2015-06-16 10:31:36');
INSERT INTO `fm_order` VALUES (22, '2015-06-16 10:32:28');
INSERT INTO `fm_order` VALUES (23, '2015-06-16 10:37:33');
INSERT INTO `fm_order` VALUES (24, '2015-06-16 14:08:46');
INSERT INTO `fm_order` VALUES (25, '2015-06-16 14:13:04');
INSERT INTO `fm_order` VALUES (26, '2015-06-16 15:52:30');
INSERT INTO `fm_order` VALUES (27, '2015-06-16 15:52:30');
INSERT INTO `fm_order` VALUES (28, '2015-06-16 16:03:02');
INSERT INTO `fm_order` VALUES (29, '2015-06-16 17:27:17');
INSERT INTO `fm_order` VALUES (30, '2015-06-16 20:09:35');
INSERT INTO `fm_order` VALUES (31, '2015-06-16 20:13:45');
INSERT INTO `fm_order` VALUES (32, '2015-06-16 20:14:55');
INSERT INTO `fm_order` VALUES (33, '2015-06-16 20:17:25');
INSERT INTO `fm_order` VALUES (34, '2015-06-16 21:13:16');
INSERT INTO `fm_order` VALUES (35, '2015-06-16 21:27:26');
INSERT INTO `fm_order` VALUES (36, '2015-06-16 21:32:00');
INSERT INTO `fm_order` VALUES (37, '2015-06-16 21:36:15');
INSERT INTO `fm_order` VALUES (38, '2015-06-16 21:41:36');
INSERT INTO `fm_order` VALUES (39, '2015-06-17 09:12:26');
INSERT INTO `fm_order` VALUES (40, '2015-06-17 09:13:29');
INSERT INTO `fm_order` VALUES (41, '2015-06-17 09:21:06');
INSERT INTO `fm_order` VALUES (42, '2015-06-17 09:57:24');
INSERT INTO `fm_order` VALUES (43, '2015-06-17 10:05:09');
INSERT INTO `fm_order` VALUES (44, '2015-06-17 10:11:27');
INSERT INTO `fm_order` VALUES (45, '2015-06-17 10:13:56');
INSERT INTO `fm_order` VALUES (46, '2015-06-17 10:43:25');
INSERT INTO `fm_order` VALUES (47, '2015-06-17 10:54:35');
INSERT INTO `fm_order` VALUES (48, '2015-06-17 11:07:57');
INSERT INTO `fm_order` VALUES (49, '2015-06-17 14:06:56');
INSERT INTO `fm_order` VALUES (50, '2015-06-17 14:09:37');
INSERT INTO `fm_order` VALUES (51, '2015-06-17 14:10:01');
INSERT INTO `fm_order` VALUES (52, '2015-06-17 14:20:15');
INSERT INTO `fm_order` VALUES (53, '2015-06-17 14:30:20');
INSERT INTO `fm_order` VALUES (54, '2015-06-17 14:47:11');
INSERT INTO `fm_order` VALUES (55, '2015-06-17 14:48:48');
INSERT INTO `fm_order` VALUES (56, '2015-06-17 14:59:21');
INSERT INTO `fm_order` VALUES (57, '2015-06-17 15:01:48');
INSERT INTO `fm_order` VALUES (58, '2015-06-17 15:50:06');
INSERT INTO `fm_order` VALUES (59, '2015-06-17 15:51:06');
INSERT INTO `fm_order` VALUES (60, '2015-06-17 17:35:16');
INSERT INTO `fm_order` VALUES (61, '2015-06-17 17:38:20');
INSERT INTO `fm_order` VALUES (62, '2015-06-17 17:38:23');
INSERT INTO `fm_order` VALUES (63, '2015-06-17 19:28:27');
INSERT INTO `fm_order` VALUES (64, '2015-06-17 19:28:33');
INSERT INTO `fm_order` VALUES (65, '2015-06-17 19:29:41');
INSERT INTO `fm_order` VALUES (66, '2015-06-17 19:29:48');
INSERT INTO `fm_order` VALUES (67, '2015-06-17 19:48:01');
INSERT INTO `fm_order` VALUES (68, '2015-06-17 19:48:12');
INSERT INTO `fm_order` VALUES (69, '2015-06-17 21:02:48');
INSERT INTO `fm_order` VALUES (70, '2015-06-17 21:03:02');
INSERT INTO `fm_order` VALUES (71, '2015-06-17 21:05:13');
INSERT INTO `fm_order` VALUES (72, '2015-06-17 21:09:22');
INSERT INTO `fm_order` VALUES (73, '2015-06-17 21:10:21');
INSERT INTO `fm_order` VALUES (74, '2015-06-17 21:17:37');
INSERT INTO `fm_order` VALUES (75, '2015-06-17 21:25:09');
INSERT INTO `fm_order` VALUES (76, '2015-06-17 21:25:12');
INSERT INTO `fm_order` VALUES (77, '2015-06-18 09:51:23');
INSERT INTO `fm_order` VALUES (78, '2015-06-18 09:51:57');
INSERT INTO `fm_order` VALUES (79, '2015-06-18 10:02:04');
INSERT INTO `fm_order` VALUES (80, '2015-06-18 17:33:35');
INSERT INTO `fm_order` VALUES (81, '2015-06-18 17:55:16');
INSERT INTO `fm_order` VALUES (82, '2015-06-18 18:18:18');
INSERT INTO `fm_order` VALUES (83, '2015-06-18 18:18:20');
INSERT INTO `fm_order` VALUES (84, '2015-06-18 18:18:22');
INSERT INTO `fm_order` VALUES (85, '2015-06-18 18:19:00');
INSERT INTO `fm_order` VALUES (86, '2015-06-18 18:20:35');
INSERT INTO `fm_order` VALUES (87, '2015-06-18 18:21:06');
INSERT INTO `fm_order` VALUES (88, '2015-06-18 18:21:06');
INSERT INTO `fm_order` VALUES (89, '2015-06-18 18:21:07');
INSERT INTO `fm_order` VALUES (90, '2015-06-18 18:21:07');
INSERT INTO `fm_order` VALUES (91, '2015-06-18 18:21:34');
INSERT INTO `fm_order` VALUES (92, '2015-06-18 18:21:35');
INSERT INTO `fm_order` VALUES (93, '2015-06-18 18:21:55');
INSERT INTO `fm_order` VALUES (94, '2015-06-18 18:47:10');
INSERT INTO `fm_order` VALUES (95, '2015-06-19 09:29:24');
INSERT INTO `fm_order` VALUES (96, '2015-06-19 09:31:29');
INSERT INTO `fm_order` VALUES (97, '2015-06-19 19:20:30');
INSERT INTO `fm_order` VALUES (98, '2015-06-23 09:31:11');
INSERT INTO `fm_order` VALUES (99, '2015-06-23 11:50:54');
INSERT INTO `fm_order` VALUES (100, '2015-06-23 15:15:00');
INSERT INTO `fm_order` VALUES (101, '2015-06-23 15:53:35');
INSERT INTO `fm_order` VALUES (102, '2015-06-23 15:54:49');
INSERT INTO `fm_order` VALUES (103, '2015-06-23 16:00:03');
INSERT INTO `fm_order` VALUES (104, '2015-06-23 17:42:49');
INSERT INTO `fm_order` VALUES (105, '2015-06-23 17:54:35');
INSERT INTO `fm_order` VALUES (106, '2015-06-23 18:49:08');
INSERT INTO `fm_order` VALUES (107, '2015-06-23 18:50:55');
INSERT INTO `fm_order` VALUES (108, '2015-06-23 18:52:11');
INSERT INTO `fm_order` VALUES (109, '2015-06-23 18:54:46');
INSERT INTO `fm_order` VALUES (110, '2015-06-24 10:52:10');
INSERT INTO `fm_order` VALUES (111, '2015-06-24 16:48:20');
INSERT INTO `fm_order` VALUES (112, '2015-06-24 17:32:15');
INSERT INTO `fm_order` VALUES (113, '2015-06-25 10:04:02');
INSERT INTO `fm_order` VALUES (114, '2015-06-25 11:04:38');
INSERT INTO `fm_order` VALUES (115, '2015-06-25 11:09:26');
INSERT INTO `fm_order` VALUES (116, '2015-06-25 15:06:54');
INSERT INTO `fm_order` VALUES (117, '2015-06-25 15:07:27');
INSERT INTO `fm_order` VALUES (118, '2015-06-25 15:13:42');
INSERT INTO `fm_order` VALUES (119, '2015-06-25 17:35:35');
INSERT INTO `fm_order` VALUES (120, '2015-06-25 22:19:33');
INSERT INTO `fm_order` VALUES (121, '2015-06-26 10:00:31');
INSERT INTO `fm_order` VALUES (122, '2015-06-26 10:07:55');
INSERT INTO `fm_order` VALUES (123, '2015-06-26 14:13:42');
INSERT INTO `fm_order` VALUES (124, '2015-06-26 14:16:10');
INSERT INTO `fm_order` VALUES (125, '2015-06-26 15:23:49');
INSERT INTO `fm_order` VALUES (126, '2015-06-26 15:23:59');
INSERT INTO `fm_order` VALUES (127, '2015-06-26 15:27:14');
INSERT INTO `fm_order` VALUES (128, '2015-06-26 16:54:11');
INSERT INTO `fm_order` VALUES (129, '2015-06-26 16:55:37');
INSERT INTO `fm_order` VALUES (130, '2015-06-26 16:55:54');
INSERT INTO `fm_order` VALUES (131, '2015-06-26 16:57:24');
INSERT INTO `fm_order` VALUES (132, '2015-06-29 09:27:45');
INSERT INTO `fm_order` VALUES (133, '2015-06-29 09:46:05');
INSERT INTO `fm_order` VALUES (134, '2015-06-29 09:55:18');
INSERT INTO `fm_order` VALUES (135, '2015-06-30 13:40:56');
INSERT INTO `fm_order` VALUES (136, '2015-06-30 14:36:12');
INSERT INTO `fm_order` VALUES (137, '2015-06-30 15:11:58');
INSERT INTO `fm_order` VALUES (138, '2015-06-30 17:05:13');
INSERT INTO `fm_order` VALUES (139, '2015-07-01 06:15:32');
INSERT INTO `fm_order` VALUES (140, '2015-07-01 09:24:23');
INSERT INTO `fm_order` VALUES (141, '2015-07-01 10:15:04');
INSERT INTO `fm_order` VALUES (142, '2015-07-01 10:35:55');
INSERT INTO `fm_order` VALUES (143, '2015-07-01 10:50:55');
INSERT INTO `fm_order` VALUES (144, '2015-07-01 10:58:40');
INSERT INTO `fm_order` VALUES (145, '2015-07-01 10:59:08');
INSERT INTO `fm_order` VALUES (146, '2015-07-01 13:42:36');
INSERT INTO `fm_order` VALUES (147, '2015-07-01 13:43:54');
INSERT INTO `fm_order` VALUES (148, '2015-07-01 15:58:56');
INSERT INTO `fm_order` VALUES (149, '2015-07-01 16:08:19');
INSERT INTO `fm_order` VALUES (150, '2015-07-01 16:10:22');
INSERT INTO `fm_order` VALUES (151, '2015-07-01 16:15:21');
INSERT INTO `fm_order` VALUES (152, '2015-07-01 16:36:02');
INSERT INTO `fm_order` VALUES (153, '2015-07-01 16:36:12');
INSERT INTO `fm_order` VALUES (154, '2015-07-01 17:13:38');
INSERT INTO `fm_order` VALUES (155, '2015-07-01 17:25:55');
INSERT INTO `fm_order` VALUES (156, '2015-07-01 18:10:43');
INSERT INTO `fm_order` VALUES (157, '2015-07-02 09:32:05');
INSERT INTO `fm_order` VALUES (158, '2015-07-03 16:16:37');
INSERT INTO `fm_order` VALUES (159, '2015-07-03 16:50:09');
INSERT INTO `fm_order` VALUES (160, '2015-07-03 17:29:08');
INSERT INTO `fm_order` VALUES (161, '2015-07-06 14:16:48');
INSERT INTO `fm_order` VALUES (162, '2015-07-06 14:40:03');
INSERT INTO `fm_order` VALUES (163, '2015-07-06 14:44:04');
INSERT INTO `fm_order` VALUES (164, '2015-07-06 15:09:39');
INSERT INTO `fm_order` VALUES (165, '2015-07-07 12:02:50');
INSERT INTO `fm_order` VALUES (166, '2015-07-07 16:09:41');
INSERT INTO `fm_order` VALUES (167, '2015-07-08 14:30:34');
INSERT INTO `fm_order` VALUES (168, '2015-07-08 15:48:24');
INSERT INTO `fm_order` VALUES (169, '2015-07-10 14:04:28');
INSERT INTO `fm_order` VALUES (170, '2015-07-10 14:19:58');
INSERT INTO `fm_order` VALUES (171, '2015-07-11 15:19:59');
INSERT INTO `fm_order` VALUES (172, '2015-07-13 16:26:22');
INSERT INTO `fm_order` VALUES (173, '2015-07-13 16:27:47');
INSERT INTO `fm_order` VALUES (174, '2015-07-14 21:36:36');
INSERT INTO `fm_order` VALUES (175, '2015-07-16 01:51:41');
INSERT INTO `fm_order` VALUES (176, '2015-07-16 01:52:01');
INSERT INTO `fm_order` VALUES (177, '2015-07-17 14:35:36');

-- ----------------------------
-- Table structure for fm_product
-- ----------------------------
DROP TABLE IF EXISTS `fm_product`;
CREATE TABLE `fm_product`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
  `pro_id` bigint(20) NULL DEFAULT NULL COMMENT '����ϵͳID',
  `pro_aps_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '������Ʋ�Ʒ���',
  `pro_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ʒ����',
  `pro_rate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�껯��',
  `pro_down_limit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��������',
  `pro_deadline` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������(��λ��)',
  `pro_create_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `pro_desc` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ʒ����',
  `pro_termentry` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加入条件',
  `pro_loanlimittop` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出借上限',
  `pro_yearincomeplan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预期年化收益',
  `pro_holdtimeleast` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最低持有时间',
  `pro_interesttime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计息时间',
  `pro_loanway` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出借方式',
  `pro_capitalinteresthand` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本息处理方式',
  `pro_securityplan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保障方式',
  `pro_exitmode` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退出方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 268 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��Ʒ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_product
-- ----------------------------
INSERT INTO `fm_product` VALUES (265, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:42:20', NULL, '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product` VALUES (266, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:42:20', NULL, '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product` VALUES (267, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:42:20', NULL, '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');

-- ----------------------------
-- Table structure for fm_product_log
-- ----------------------------
DROP TABLE IF EXISTS `fm_product_log`;
CREATE TABLE `fm_product_log`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `pro_id` bigint(20) NULL DEFAULT NULL COMMENT '主键ID',
  `pro_aps_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pro_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `pro_rate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年化率',
  `pro_down_limit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出资下限',
  `pro_deadline` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最低期限(单位月)',
  `pro_create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `pro_desc` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品描述',
  `import_time` datetime(0) NULL DEFAULT NULL,
  `pro_termentry` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加入条件',
  `pro_loanlimittop` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出借上限',
  `pro_yearincomeplan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预期年化收益',
  `pro_holdtimeleast` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最低持有时间',
  `pro_interesttime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计息时间',
  `pro_loanway` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出借方式',
  `pro_capitalinteresthand` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本息处理方式',
  `pro_securityplan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保障方式',
  `pro_exitmode` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退出方式'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品产品日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_product_log
-- ----------------------------
INSERT INTO `fm_product_log` VALUES (61, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-15 22:23:20', NULL, '2015-06-15 22:24:10', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (62, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-15 22:23:20', NULL, '2015-06-15 22:24:10', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (63, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-15 22:23:20', NULL, '2015-06-15 22:24:10', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (64, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-15 22:24:00', NULL, '2015-06-15 22:24:29', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (65, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-15 22:24:00', NULL, '2015-06-15 22:24:29', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (66, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-15 22:24:00', NULL, '2015-06-15 22:24:29', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (67, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-15 22:24:20', NULL, '2015-06-15 22:24:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (68, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-15 22:24:20', NULL, '2015-06-15 22:24:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (69, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-15 22:24:20', NULL, '2015-06-15 22:24:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (70, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-15 22:24:40', NULL, '2015-06-15 22:25:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (71, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-15 22:24:40', NULL, '2015-06-15 22:25:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (72, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-15 22:24:40', NULL, '2015-06-15 22:25:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (73, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-15 22:25:00', NULL, '2015-06-15 22:25:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (74, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-15 22:25:00', NULL, '2015-06-15 22:25:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (75, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-15 22:25:00', NULL, '2015-06-15 22:25:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (76, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-15 22:25:20', NULL, '2015-06-16 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (77, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-15 22:25:20', NULL, '2015-06-16 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (78, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-15 22:25:20', NULL, '2015-06-16 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (79, 0, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-17 09:32:20', NULL, '2015-06-17 09:35:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (80, 0, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-17 09:32:20', NULL, '2015-06-17 09:35:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (81, 0, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-17 09:32:20', NULL, '2015-06-17 09:35:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (82, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-17 09:35:00', NULL, '2015-06-17 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (83, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-17 09:35:00', NULL, '2015-06-17 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (84, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-17 09:35:00', NULL, '2015-06-17 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (85, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-17 23:00:00', NULL, '2015-06-18 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (86, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-17 23:00:00', NULL, '2015-06-18 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (87, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-17 23:00:00', NULL, '2015-06-18 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (88, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-18 23:00:00', NULL, '2015-06-19 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (89, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-18 23:00:00', NULL, '2015-06-19 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (90, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-18 23:00:00', NULL, '2015-06-19 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (91, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-19 23:00:00', NULL, '2015-06-20 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (92, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-19 23:00:00', NULL, '2015-06-20 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (93, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-19 23:00:00', NULL, '2015-06-20 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (94, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-20 23:00:00', NULL, '2015-06-21 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (95, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-20 23:00:00', NULL, '2015-06-21 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (96, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-20 23:00:00', NULL, '2015-06-21 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (97, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-21 23:00:00', NULL, '2015-06-22 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (98, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-21 23:00:00', NULL, '2015-06-22 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (99, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-21 23:00:00', NULL, '2015-06-22 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (100, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-22 23:00:00', NULL, '2015-06-23 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (101, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-22 23:00:00', NULL, '2015-06-23 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (102, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-22 23:00:00', NULL, '2015-06-23 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (103, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-23 23:00:00', NULL, '2015-06-24 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (104, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-23 23:00:00', NULL, '2015-06-24 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (105, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-23 23:00:00', NULL, '2015-06-24 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (106, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-24 23:00:00', NULL, '2015-06-25 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (107, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-24 23:00:00', NULL, '2015-06-25 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (108, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-24 23:00:00', NULL, '2015-06-25 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (109, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-26 10:00:15', NULL, '2015-06-26 10:00:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (110, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-26 10:00:15', NULL, '2015-06-26 10:00:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (111, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-26 10:00:15', NULL, '2015-06-26 10:00:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (112, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-26 10:00:20', NULL, '2015-06-26 10:00:30', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (113, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-26 10:00:20', NULL, '2015-06-26 10:00:30', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (114, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-26 10:00:20', NULL, '2015-06-26 10:00:30', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (115, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-26 10:00:30', NULL, '2015-06-26 10:00:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (116, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-26 10:00:30', NULL, '2015-06-26 10:00:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (117, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-26 10:00:30', NULL, '2015-06-26 10:00:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (118, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-26 10:00:40', NULL, '2015-06-26 10:00:50', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (119, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-26 10:00:40', NULL, '2015-06-26 10:00:50', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (120, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-26 10:00:40', NULL, '2015-06-26 10:00:50', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (121, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-26 10:00:50', NULL, '2015-06-26 10:01:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (122, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-26 10:00:50', NULL, '2015-06-26 10:01:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (123, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-26 10:00:50', NULL, '2015-06-26 10:01:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (124, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-26 10:01:00', NULL, '2015-06-26 10:01:10', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (125, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-26 10:01:00', NULL, '2015-06-26 10:01:10', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (126, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-26 10:01:00', NULL, '2015-06-26 10:01:10', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (127, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-26 10:01:10', NULL, '2015-06-26 10:01:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (128, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-26 10:01:10', NULL, '2015-06-26 10:01:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (129, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-26 10:01:10', NULL, '2015-06-26 10:01:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (130, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-26 10:01:20', NULL, '2015-06-26 10:01:30', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (131, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-26 10:01:20', NULL, '2015-06-26 10:01:30', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (132, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-26 10:01:20', NULL, '2015-06-26 10:01:30', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (133, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-26 10:01:30', NULL, '2015-06-26 10:06:55', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (134, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-26 10:01:30', NULL, '2015-06-26 10:06:55', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (135, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-26 10:01:30', NULL, '2015-06-26 10:06:55', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (136, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-26 10:06:51', NULL, '2015-06-27 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (137, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-26 10:06:51', NULL, '2015-06-27 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (138, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-26 10:06:51', NULL, '2015-06-27 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (139, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-27 23:00:00', NULL, '2015-06-28 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (140, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-27 23:00:00', NULL, '2015-06-28 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (141, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-27 23:00:00', NULL, '2015-06-28 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (142, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-28 23:00:00', NULL, '2015-06-29 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (143, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-28 23:00:00', NULL, '2015-06-29 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (144, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-28 23:00:00', NULL, '2015-06-29 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (145, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-29 23:00:01', NULL, '2015-06-30 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (146, 56, '1780', '信富双季', '0.1052', '1000.0', '6', '2015-06-29 23:00:01', NULL, '2015-06-30 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (147, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-29 23:00:01', NULL, '2015-06-30 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (148, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-06-30 23:00:00', NULL, '2015-07-01 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (149, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-06-30 23:00:00', NULL, '2015-07-01 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (150, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-06-30 23:00:00', NULL, '2015-07-01 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (151, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-01 23:00:00', NULL, '2015-07-02 09:50:19', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (152, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-01 23:00:00', NULL, '2015-07-02 09:50:19', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (153, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-01 23:00:00', NULL, '2015-07-02 09:50:19', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (154, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-02 09:50:17', NULL, '2015-07-02 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (155, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-02 09:50:17', NULL, '2015-07-02 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (156, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-02 09:50:17', NULL, '2015-07-02 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (157, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-02 23:00:00', NULL, '2015-07-03 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (158, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-02 23:00:00', NULL, '2015-07-03 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (159, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-02 23:00:00', NULL, '2015-07-03 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (160, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-03 23:00:00', NULL, '2015-07-04 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (161, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-03 23:00:00', NULL, '2015-07-04 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (162, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-03 23:00:00', NULL, '2015-07-04 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (163, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-04 23:00:00', NULL, '2015-07-05 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (164, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-04 23:00:00', NULL, '2015-07-05 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (165, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-04 23:00:00', NULL, '2015-07-05 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (166, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-05 23:00:00', NULL, '2015-07-06 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (167, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-05 23:00:00', NULL, '2015-07-06 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (168, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-05 23:00:00', NULL, '2015-07-06 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (169, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-06 23:00:00', NULL, '2015-07-06 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (170, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-06 23:00:00', NULL, '2015-07-06 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (171, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-06 23:00:00', NULL, '2015-07-06 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (172, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-06 23:00:00', NULL, '2015-07-07 09:03:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (173, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-06 23:00:00', NULL, '2015-07-07 09:03:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (174, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-06 23:00:00', NULL, '2015-07-07 09:03:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (175, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-07 09:02:58', NULL, '2015-07-07 16:24:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (176, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-07 09:02:58', NULL, '2015-07-07 16:24:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (177, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-07 09:02:58', NULL, '2015-07-07 16:24:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (178, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-07 16:24:40', NULL, '2015-07-07 16:25:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (179, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-07 16:24:40', NULL, '2015-07-07 16:25:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (180, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-07 16:24:40', NULL, '2015-07-07 16:25:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (181, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-07 16:25:00', NULL, '2015-07-07 16:48:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (182, 56, '1776', '信富双季', '0.1052', '1000.0', '6', '2015-07-07 16:25:00', NULL, '2015-07-07 16:48:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (183, 55, '1779', '信富四季', '0.1202', '1000.0', '12', '2015-07-07 16:25:00', NULL, '2015-07-07 16:48:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (184, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-07 16:48:40', NULL, '2015-07-07 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (185, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-07 16:48:40', NULL, '2015-07-07 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (186, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-07 16:48:40', NULL, '2015-07-07 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (187, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-07 23:00:01', NULL, '2015-07-08 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (188, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-07 23:00:01', NULL, '2015-07-08 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (189, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-07 23:00:01', NULL, '2015-07-08 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (190, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-08 23:00:00', NULL, '2015-07-09 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (191, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-08 23:00:00', NULL, '2015-07-09 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (192, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-08 23:00:00', NULL, '2015-07-09 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (193, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-09 23:00:00', NULL, '2015-07-10 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (194, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-09 23:00:00', NULL, '2015-07-10 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (195, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-09 23:00:00', NULL, '2015-07-10 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (196, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-10 23:00:00', NULL, '2015-07-11 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (197, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-10 23:00:00', NULL, '2015-07-11 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (198, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-10 23:00:00', NULL, '2015-07-11 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (199, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-11 23:00:00', NULL, '2015-07-12 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (200, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-11 23:00:00', NULL, '2015-07-12 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (201, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-11 23:00:00', NULL, '2015-07-12 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (202, 58, '1760', '九九特供方案', '0.099', '1000', '3', '2015-07-12 23:00:00', NULL, '2015-07-13 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (203, 56, '1776', '信富双季', '0.1052', '5000', '6', '2015-07-12 23:00:00', NULL, '2015-07-13 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (204, 55, '1779', '信富四季', '0.1202', '10000', '12', '2015-07-12 23:00:00', NULL, '2015-07-13 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (205, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-13 23:00:01', NULL, '2015-07-14 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (206, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-13 23:00:01', NULL, '2015-07-14 23:00:01', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (207, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-13 23:00:01', NULL, '2015-07-14 23:00:01', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (208, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-14 23:00:01', NULL, '2015-07-14 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (209, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-14 23:00:01', NULL, '2015-07-14 23:00:00', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (210, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-14 23:00:01', NULL, '2015-07-14 23:00:00', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (211, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-14 23:00:00', NULL, '2015-07-15 23:00:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (212, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-14 23:00:00', NULL, '2015-07-15 23:00:00', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (213, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-14 23:00:00', NULL, '2015-07-15 23:00:00', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (214, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-15 23:00:00', NULL, '2015-07-15 23:00:13', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (215, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-15 23:00:00', NULL, '2015-07-15 23:00:13', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (216, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-15 23:00:00', NULL, '2015-07-15 23:00:13', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (217, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-15 23:00:11', NULL, '2015-07-16 23:00:01', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (218, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-15 23:00:11', NULL, '2015-07-16 23:00:01', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (219, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-15 23:00:11', NULL, '2015-07-16 23:00:01', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (220, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-16 23:00:01', NULL, '2015-07-17 10:16:10', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (221, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-16 23:00:01', NULL, '2015-07-17 10:16:10', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '一次性出借一定金额给若干借款人', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (222, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-16 23:00:01', NULL, '2015-07-17 10:16:10', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '一次性出借一定金额给若干借款人\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (223, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:16:10', NULL, '2015-07-17 10:16:22', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (224, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:16:10', NULL, '2015-07-17 10:16:22', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (225, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:16:10', NULL, '2015-07-17 10:16:22', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (226, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:16:21', NULL, '2015-07-17 10:40:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (227, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:16:21', NULL, '2015-07-17 10:40:20', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (228, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:16:21', NULL, '2015-07-17 10:40:20', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (229, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:40:20', NULL, '2015-07-17 10:40:30', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (230, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:40:20', NULL, '2015-07-17 10:40:30', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (231, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:40:20', NULL, '2015-07-17 10:40:30', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (232, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:40:30', NULL, '2015-07-17 10:40:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (233, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:40:30', NULL, '2015-07-17 10:40:40', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (234, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:40:30', NULL, '2015-07-17 10:40:40', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (235, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:40:40', NULL, '2015-07-17 10:40:50', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (236, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:40:40', NULL, '2015-07-17 10:40:50', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (237, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:40:40', NULL, '2015-07-17 10:40:50', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (238, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:40:50', NULL, '2015-07-17 10:41:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (239, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:40:50', NULL, '2015-07-17 10:41:00', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (240, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:40:50', NULL, '2015-07-17 10:41:00', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (241, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:41:00', NULL, '2015-07-17 10:41:10', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (242, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:41:00', NULL, '2015-07-17 10:41:10', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (243, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:41:00', NULL, '2015-07-17 10:41:10', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (244, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:41:10', NULL, '2015-07-17 10:41:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (245, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:41:10', NULL, '2015-07-17 10:41:20', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (246, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:41:10', NULL, '2015-07-17 10:41:20', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (247, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:41:20', NULL, '2015-07-17 10:41:30', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (248, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:41:20', NULL, '2015-07-17 10:41:30', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (249, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:41:20', NULL, '2015-07-17 10:41:30', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (250, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:41:30', NULL, '2015-07-17 10:41:40', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (251, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:41:30', NULL, '2015-07-17 10:41:40', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (252, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:41:30', NULL, '2015-07-17 10:41:40', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (253, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:41:40', NULL, '2015-07-17 10:41:50', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (254, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:41:40', NULL, '2015-07-17 10:41:50', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (255, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:41:40', NULL, '2015-07-17 10:41:50', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (256, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:41:50', NULL, '2015-07-17 10:42:00', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (257, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:41:50', NULL, '2015-07-17 10:42:00', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (258, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:41:50', NULL, '2015-07-17 10:42:00', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (259, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:42:00', NULL, '2015-07-17 10:42:10', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (260, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:42:00', NULL, '2015-07-17 10:42:10', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (261, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:42:00', NULL, '2015-07-17 10:42:10', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');
INSERT INTO `fm_product_log` VALUES (262, 58, '1760', '九九特供方案', '0.099', '1000.0', '3', '2015-07-17 10:42:10', NULL, '2015-07-17 10:42:20', '人民币1000元起，出借金额为1000的整数倍', '单笔上限5万元', '复利累计，满3个月9.56%，满一年9.9%', '3个月 ', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (263, 56, '1776', '信富双季', '0.1052', '5000.0', '6', '2015-07-17 10:42:10', NULL, '2015-07-17 10:42:20', '人民币5000元起，出借金额为5000的整数倍', '单笔上限5万元', '复利累计，满一年10.52%', '6个月', '资金出借日（出借资金成功匹配债权日）', '一次性出借一定金额给若干借款人', '本息将循环出借，收益再投资，退出时还本付息', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出');
INSERT INTO `fm_product_log` VALUES (264, 55, '1779', '信富四季', '0.1202', '10000.0', '12', '2015-07-17 10:42:10', NULL, '2015-07-17 10:42:20', '人民币10000元起，出借金额为10000的整数倍', '单笔上限5万元', '复利累计，满一年12.02%', '12个月', '资金出借日（出借资金成功匹配债权日）\n', '一次性出借一定金额给若干借款人\n', '本息将循环出借，收益再投资，退出时还本付息\n', '信而富   质保计划   查看详情\n', '到期后，您可以选择继续持有，也可以选择退出。如您继续持有，您的债权本息将继续循环出借；如您选择退出，系统将通过债权转让自动完成退出\n');

-- ----------------------------
-- Table structure for fm_recharge
-- ----------------------------
DROP TABLE IF EXISTS `fm_recharge`;
CREATE TABLE `fm_recharge`  (
  `recharge_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `recharge_f_user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户表ID',
  `recharge_channel` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易渠道 1 富友 2 银联 3 通联 4 财付通',
  `recharge_seq` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流水号',
  `recharge_money` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recharge_create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `recharge_state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '充值状态 1 成功 0 失败 ',
  `recharge_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `recharge_resp_time` datetime(0) NULL DEFAULT NULL,
  `recharge_fuiou_login_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recharge_resp_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recharge_resp_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_upload_success` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `recharge_upload_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`recharge_id`) USING BTREE,
  UNIQUE INDEX `recharge_seq`(`recharge_seq`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 487 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_recharge
-- ----------------------------
INSERT INTO `fm_recharge` VALUES (339, 6127, '1', 'M82150708144851035000011', '10000', '2015-07-08 14:49:22', '0', '', NULL, '13581900000', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (340, 6127, '1', 'M82150708145044223000012', '2000', '2015-07-08 14:51:15', '0', '', NULL, '13581900000', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (341, 6127, '1', 'M82150708145235109000013', '10000', '2015-07-08 14:53:06', '0', '', NULL, '13581900000', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (342, 6127, '1', 'M82150708145306715000014', '10000', '2015-07-08 14:53:38', '0', '', NULL, '13581900000', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (343, 6127, '1', 'M82150708145445448000015', '2000', '2015-07-08 14:55:16', '0', '', NULL, '13581900000', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (344, 6151, '1', 'M82150708145709909000485', '1000', '2015-07-08 14:57:09', '1', '', '2015-07-08 15:07:08', '18601979931', '0000', NULL, '1', '2015-07-08 15:07:10');
INSERT INTO `fm_recharge` VALUES (345, 6127, '1', 'M82150708150500949000021', '20000', '2015-07-08 15:05:32', '0', '', NULL, '13581900000', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (346, 6127, '1', 'M82150708150539274000022', '20000', '2015-07-08 15:06:10', '0', '', NULL, '13581900000', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (347, 6141, '1', 'M82150708151648997000496', '1000', '2015-07-08 15:16:49', '0', '', '2015-07-08 15:18:34', '13651099898', '5143', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (348, 6141, '1', 'M82150708152026108000502', '2000', '2015-07-08 15:20:26', '1', '', '2015-07-08 15:20:57', '13651099898', '0000', NULL, '1', '2015-07-08 15:20:58');
INSERT INTO `fm_recharge` VALUES (349, 6160, '1', 'M82150708152747661000019', '2000', '2015-07-08 15:28:19', '0', '', NULL, '18813130608', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (350, 6151, '1', 'M82150708154332539000525', '10000', '2015-07-08 15:43:32', '1', '', '2015-07-08 15:47:06', '18601979931', '0000', NULL, '1', '2015-07-08 15:47:09');
INSERT INTO `fm_recharge` VALUES (351, 6151, '1', 'M82150708154744994000527', '5000', '2015-07-08 15:47:45', '0', '', NULL, '18601979931', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (352, 6174, '1', 'M82150708162547181000550', '1000', '2015-07-08 16:25:47', '1', '', '2015-07-08 16:26:15', '18310550021', '0000', NULL, '1', '2015-07-08 16:26:15');
INSERT INTO `fm_recharge` VALUES (353, 6174, '1', 'M82150708164234013000569', '5000', '2015-07-08 16:42:34', '1', '', '2015-07-08 16:43:14', '18310550021', '0000', NULL, '1', '2015-07-08 16:43:15');
INSERT INTO `fm_recharge` VALUES (354, 6141, '1', 'M82150708190900282000009', '1000', '2015-07-08 19:09:00', '0', '', NULL, '13651099898', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (355, 6141, '1', 'M82150708191358223000013', '20000', '2015-07-08 19:13:58', '0', '', NULL, '13651099898', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (356, 6174, '1', 'M82150709093845486000019', '100', '2015-07-09 09:38:45', '1', '', '2015-07-09 09:39:58', '18310550021', '0000', NULL, '1', '2015-07-09 09:40:01');
INSERT INTO `fm_recharge` VALUES (357, 6174, '1', 'M82150709103310234000011', '1000', '2015-07-09 10:31:40', '0', '', NULL, '18310550021', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (358, 6141, '1', 'M82150709105653385000054', '1000', '2015-07-09 10:56:53', '1', '', '2015-07-09 10:57:38', '13651099898', '0000', NULL, '1', '2015-07-09 10:57:42');
INSERT INTO `fm_recharge` VALUES (359, 6141, '1', 'M82150709110202847000085', '2000', '2015-07-09 11:02:02', '1', '', '2015-07-09 11:02:32', '13651099898', '0000', NULL, '1', '2015-07-09 11:02:36');
INSERT INTO `fm_recharge` VALUES (360, 6141, '1', 'M82150709113445320000110', '19000', '2015-07-09 11:34:45', '1', '', '2015-07-09 11:35:17', '13651099898', '0000', NULL, '1', '2015-07-09 11:35:19');
INSERT INTO `fm_recharge` VALUES (361, 6174, '1', 'M82150709122720348000005', '100', '2015-07-09 12:25:50', '1', '', '2015-07-09 12:27:52', '18310550021', '0000', NULL, '1', '2015-07-09 12:26:22');
INSERT INTO `fm_recharge` VALUES (362, 6192, '1', 'M82150709133549763000141', '20000', '2015-07-09 13:35:49', '0', '', NULL, '18201773918', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (363, 6192, '1', 'M82150709133729750000145', '2400', '2015-07-09 13:37:29', '1', '', '2015-07-09 13:38:04', '18201773918', '0000', NULL, '1', '2015-07-09 13:38:05');
INSERT INTO `fm_recharge` VALUES (364, 6141, '1', 'M82150709134513879000158', '20000', '2015-07-09 13:45:13', '1', '', '2015-07-09 13:45:47', '13651099898', '0000', NULL, '1', '2015-07-09 13:45:49');
INSERT INTO `fm_recharge` VALUES (365, 6192, '1', 'M82150709134721569000163', '12657', '2015-07-09 13:47:21', '1', '', '2015-07-09 13:47:53', '18201773918', '0000', NULL, '1', '2015-07-09 13:47:54');
INSERT INTO `fm_recharge` VALUES (366, 6192, '1', 'M82150709134823349000168', '20000', '2015-07-09 13:48:23', '0', '', '2015-07-09 13:48:46', '18201773918', '5594', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (367, 6192, '1', 'M82150709134902013000172', '20000', '2015-07-09 13:49:02', '0', '', '2015-07-09 13:49:36', '18201773918', '5594', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (368, 6192, '1', 'M82150709134954100000176', '20000', '2015-07-09 13:49:54', '0', '', '2015-07-09 13:50:19', '18201773918', '5594', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (369, 6197, '1', 'M82150709143028250000206', '1000', '2015-07-09 14:30:28', '0', '', NULL, '13515126338', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (370, 6151, '1', 'M82150709143242953000207', '20000', '2015-07-09 14:32:42', '1', '', '2015-07-09 14:33:58', '18601979931', '0000', NULL, '1', '2015-07-09 14:33:59');
INSERT INTO `fm_recharge` VALUES (371, 6151, '1', 'M82150709143440017000209', '20000', '2015-07-09 14:34:40', '0', '', NULL, '18601979931', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (372, 6197, '1', 'M82150709143738175000211', '1000', '2015-07-09 14:37:38', '0', '', NULL, '13515126338', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (373, 6151, '1', 'M82150709145620972000226', '20000', '2015-07-09 14:56:20', '0', '', '2015-07-09 14:57:12', '18601979931', '5098', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (374, 6155, '1', 'M82150709150638878000235', '20000', '2015-07-09 15:06:38', '0', '', NULL, '1', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (375, 6155, '1', 'M82150709150659262000236', '20000', '2015-07-09 15:06:59', '0', '', NULL, '1', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (376, 6155, '1', 'M82150709150719651000237', '20000', '2015-07-09 15:07:19', '0', '', NULL, '1', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (377, 6155, '1', 'M82150709150744766000238', '20000', '2015-07-09 15:07:44', '0', '', NULL, '1', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (378, 6155, '1', 'M82150709150805124000239', '20000', '2015-07-09 15:08:05', '0', '', NULL, '1', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (379, 6155, '1', 'M82150709150825590000241', '20000', '2015-07-09 15:08:25', '0', '', NULL, '1', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (380, 6155, '1', 'M82150709150845964000242', '20000', '2015-07-09 15:08:45', '0', '', NULL, '1', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (381, 6155, '1', 'M82150709150906397000243', '20000', '2015-07-09 15:09:06', '0', '', NULL, '1', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (382, 6155, '1', 'M82150709150926818000244', '20000', '2015-07-09 15:09:26', '0', '', NULL, '1', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (383, 6155, '1', 'M82150709151059773000249', '1000', '2015-07-09 15:10:59', '0', '', '2015-07-09 15:11:02', '1', '5019', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (384, 6155, '1', 'M82150709151208363000250', '20000', '2015-07-09 15:12:08', '0', '', '2015-07-09 15:12:09', '1', '5019', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (385, 6151, '1', 'M82150709152058297000255', '20000', '2015-07-09 15:20:58', '1', '', '2015-07-09 15:22:02', '18601979931', '0000', NULL, '1', '2015-07-09 15:22:03');
INSERT INTO `fm_recharge` VALUES (386, 6155, '1', 'M82150709152448469000263', '20000', '2015-07-09 15:24:48', '0', '', NULL, '15010575938', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (387, 6151, '1', 'M82150709154406347000288', '6000', '2015-07-09 15:44:06', '1', '', '2015-07-09 15:44:52', '18601979931', '0000', NULL, '1', '2015-07-09 15:44:55');
INSERT INTO `fm_recharge` VALUES (388, 6193, '1', 'M82150709163158159000332', '1000', '2015-07-09 16:31:58', '0', '', NULL, '13917170717', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (389, 6193, '1', 'M82150709163439161000335', '1000', '2015-07-09 16:34:39', '0', '', NULL, '13917170717', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (390, 6222, '1', 'M82150709163850421000336', '1000', '2015-07-09 16:38:50', '0', '', NULL, '18310550030', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (391, 6222, '1', 'M82150709163851159000337', '1000', '2015-07-09 16:38:51', '0', '', NULL, '18310550030', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (392, 6155, '1', 'M82150709163936449000338', '1999', '2015-07-09 16:39:36', '0', '', NULL, '15010575938', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (393, 6222, '1', 'M82150709172058199000003', '2334', '2015-07-09 17:19:40', '0', '', NULL, '18310550030', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (394, 6222, '1', 'M82150709175313479000359', '3000', '2015-07-09 17:53:13', '1', '', '2015-07-09 17:53:52', '18310550030', '0000', NULL, '1', '2015-07-09 17:53:55');
INSERT INTO `fm_recharge` VALUES (395, 6222, '1', 'M82150709175620247000006', '3000', '2015-07-09 17:54:50', '0', '', NULL, '18310550030', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (396, 6222, '1', 'M82150709175620521000007', '3000', '2015-07-09 17:54:50', '0', '', NULL, '18310550030', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (397, 6222, '1', 'M82150709175620579000008', '3000', '2015-07-09 17:54:50', '0', '', NULL, '18310550030', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (398, 6222, '1', 'M82150709175620635000009', '3000', '2015-07-09 17:54:51', '0', '', NULL, '18310550030', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (399, 6222, '1', 'M82150709175620719000010', '3000', '2015-07-09 17:54:51', '1', '', '2015-07-09 17:55:53', '18310550030', '0000', NULL, '1', '2015-07-09 17:55:54');
INSERT INTO `fm_recharge` VALUES (400, 6222, '1', 'M82150709180756503000010', '1000', '2015-07-09 18:06:26', '0', '', NULL, '18310550030', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (401, 6222, '1', 'M82150709182321793000039', '20000', '2015-07-09 18:21:52', '0', '', '2015-07-09 18:22:04', '18310550030', '5594', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (402, 6222, '1', 'M82150709182926082000002', '20000', '2015-07-09 18:27:56', '0', '', '2015-07-09 18:28:25', '18310550030', '5594', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (403, 6222, '1', 'M82150709182923588000383', '20000', '2015-07-09 18:29:23', '0', '', '2015-07-09 18:29:47', '18310550030', '5594', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (404, 6222, '1', 'M82150709190754892000010', '15000', '2015-07-09 19:06:25', '0', '', '2015-07-09 19:08:04', '18310550030', '5594', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (405, 6174, '1', 'M82150709220552472000007', '1000', '2015-07-09 22:05:52', '1', '', '2015-07-09 22:06:23', '18310550021', '0000', NULL, '1', '2015-07-09 22:06:25');
INSERT INTO `fm_recharge` VALUES (406, 6174, '1', 'M82150709220654571000008', '1000', '2015-07-09 22:06:54', '1', '', '2015-07-09 22:07:34', '18310550021', '0000', NULL, '1', '2015-07-09 22:07:34');
INSERT INTO `fm_recharge` VALUES (407, 6222, '1', 'M82150710090511152000002', '20000', '2015-07-10 09:03:41', '0', '', '2015-07-10 09:04:01', '18310550030', '5594', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (408, 6222, '1', 'M82150710090420206000208', '20000', '2015-07-10 09:04:20', '0', '', '2015-07-10 09:04:33', '18310550030', '5594', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (409, 6200, '1', 'M82150710090538446000212', '5000', '2015-07-10 09:05:38', '1', '', '2015-07-10 09:05:55', '18310550024', '0000', NULL, '1', '2015-07-10 09:05:55');
INSERT INTO `fm_recharge` VALUES (410, 6200, '1', 'M82150710090606843000213', '20000', '2015-07-10 09:06:06', '1', '', '2015-07-10 09:06:21', '18310550024', '0000', NULL, '1', '2015-07-10 09:06:21');
INSERT INTO `fm_recharge` VALUES (411, 6200, '1', 'M82150710091136468000017', '15000', '2015-07-10 09:10:07', '0', '', '2015-07-10 09:10:07', '18310550024', '1011', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (412, 6200, '1', 'M82150710091211296000020', '15000', '2015-07-10 09:10:41', '0', '', '2015-07-10 09:10:42', '18310550024', '1011', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (413, 6234, '1', 'M82150710091659555000004', '10000', '2015-07-10 09:15:30', '0', '', '2015-07-10 09:17:35', '18310550031', '10F7', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (414, 6175, '1', 'M82150710101039704000249', '20000', '2015-07-10 10:10:39', '1', '', '2015-07-10 10:14:06', '13261777763', '0000', NULL, '1', '2015-07-10 10:14:09');
INSERT INTO `fm_recharge` VALUES (415, 6200, '1', 'M82150710102447224000001', '1000', '2015-07-10 10:23:18', '1', '', '2015-07-10 10:25:04', '18310550024', '0000', NULL, '1', '2015-07-10 10:23:35');
INSERT INTO `fm_recharge` VALUES (416, 6200, '1', 'M82150710104024846000001', '1000', '2015-07-10 10:38:55', '0', '', NULL, '18310550024', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (417, 6200, '1', 'M82150710104455295000001', '1000', '2015-07-10 10:43:26', '0', '', NULL, '18310550024', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (418, 6198, '1', 'M82150710104716216000003', '1000', '2015-07-10 10:45:52', '0', '', '2015-07-10 10:47:22', '', '5019', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (419, 6198, '1', 'M82150710104738135000005', '1000', '2015-07-10 10:46:08', '0', '', '2015-07-10 10:47:38', '', '5019', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (420, 6200, '1', 'M82150710104811409000007', '1000', '2015-07-10 10:46:41', '0', '', NULL, '18310550024', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (421, 6198, '1', 'M82150710105008638000008', '1000', '2015-07-10 10:48:39', '0', '', NULL, '18310550022', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (422, 6199, '1', 'M82150710105405162000002', '1000', '2015-07-10 10:52:36', '0', '', '2015-07-10 10:54:17', '', '5019', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (423, 6199, '1', 'M82150710105719815000003', '1000', '2015-07-10 10:55:55', '0', '', '2015-07-10 10:57:26', '', '5019', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (424, 6199, '1', 'M82150710105746541000004', '1000', '2015-07-10 10:56:28', '0', '', '2015-07-10 10:57:58', '', '5019', NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (425, 6199, '1', 'M82150710105825825000005', '1000', '2015-07-10 10:56:56', '0', '', NULL, '18310550023', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (426, 6198, '1', 'M82150710115445976000001', '1000', '2015-07-10 11:53:16', '1', '', '2015-07-10 11:53:59', '18310550022', '0000', NULL, '1', '2015-07-10 11:53:59');
INSERT INTO `fm_recharge` VALUES (427, 6198, '1', 'M82150710115715378000001', '2000', '2015-07-10 11:55:46', '1', '', '2015-07-10 11:57:39', '18310550022', '0000', '成功10', '1', '2015-07-10 11:56:30');
INSERT INTO `fm_recharge` VALUES (428, 6222, '1', 'M82150710115946511000005', '20000', '2015-07-10 11:58:17', '0', '', '2015-07-10 12:00:05', '18310550030', '5594', '订单支付失败，超单月限额[5594]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (429, 6246, '1', 'M82150710141002358000009', '2000', '2015-07-10 14:10:02', '1', '', '2015-07-10 14:10:35', '18310550032', '0000', '成功10', '1', '2015-07-10 14:10:36');
INSERT INTO `fm_recharge` VALUES (430, 6246, '1', 'M82150710141255748000013', '1000', '2015-07-10 14:12:55', '1', '', '2015-07-10 14:13:33', '18310550032', '0000', '成功10', '1', '2015-07-10 14:13:34');
INSERT INTO `fm_recharge` VALUES (431, 6149, '1', 'M82150710143629253000001', '1000', '2015-07-10 14:35:00', '0', '', NULL, '18310550013', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (432, 6164, '1', 'M82150710144016466000004', '20000', '2015-07-10 14:38:47', '1', '', '2015-07-10 14:39:20', '18310550017', '0000', '成功10', '1', '2015-07-10 14:39:20');
INSERT INTO `fm_recharge` VALUES (433, 6246, '1', 'M82150710143956328000033', '20000', '2015-07-10 14:39:56', '0', '', NULL, '18310550032', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (434, 6246, '1', 'M82150710152017621000014', '20000', '2015-07-10 15:20:17', '1', '', '2015-07-10 15:20:50', '18310550032', '0000', '成功10', '1', '2015-07-10 15:20:51');
INSERT INTO `fm_recharge` VALUES (435, 6156, '1', 'M82150710173400729000066', '1000', '2015-07-10 17:34:00', '0', '', NULL, '18002206359', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (436, 6156, '1', 'M82150710173418014000067', '1000', '2015-07-10 17:34:18', '0', '', NULL, '18002206359', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (437, 6156, '1', 'M82150711191854043000225', '20000', '2015-07-11 19:18:54', '1', '', '2015-07-11 19:20:11', '18002206359', '0000', '成功10', '1', '2015-07-11 19:20:12');
INSERT INTO `fm_recharge` VALUES (438, 6156, '1', 'M82150711192121811000228', '20000', '2015-07-11 19:21:21', '1', '', '2015-07-11 19:22:15', '18002206359', '0000', '成功10', '1', '2015-07-11 19:22:16');
INSERT INTO `fm_recharge` VALUES (439, 6156, '1', 'M82150711192235771000230', '20000', '2015-07-11 19:22:35', '0', '', '2015-07-11 19:24:01', '18002206359', '5594', '订单支付失败，超单月限额[5594]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (440, 6160, '1', 'M82150712022555809000274', '2000', '2015-07-12 02:25:55', '0', '', NULL, '18813130608', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (441, 6193, '1', 'M82150713104122375000493', '1000', '2015-07-13 10:41:22', '0', '', NULL, '13917170717', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (442, 6141, '1', 'M82150713154032621000586', '20000', '2015-07-13 15:40:32', '0', '', '2015-07-13 15:41:07', '13651099898', '5594', '订单支付失败，超单月限额[5594]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (443, 6141, '1', 'M82150713154204476000590', '20000', '2015-07-13 15:42:04', '1', '', '2015-07-13 15:42:46', '13651099898', '0000', '成功10', '1', '2015-07-13 15:44:29');
INSERT INTO `fm_recharge` VALUES (444, 6234, '1', 'M82150713162503199000633', '20000', '2015-07-13 16:25:03', '0', '', '2015-07-13 16:25:19', '18310550031', '1011', '用户不存在', '0', NULL);
INSERT INTO `fm_recharge` VALUES (445, 6200, '1', 'M82150713162829443000635', '20000', '2015-07-13 16:28:29', '1', '', '2015-07-13 16:29:28', '18310550024', '0000', '成功10', '1', '2015-07-13 16:31:22');
INSERT INTO `fm_recharge` VALUES (446, 6163, '1', 'M82150713172016228000659', '100', '2015-07-13 17:20:16', '0', '', NULL, '18310550016', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (447, 6127, '1', 'M82150713222243943000088', '10000', '2015-07-13 22:22:44', '1', '', '2015-07-13 22:23:33', '13581900000', '0000', '成功10', '1', '2015-07-13 22:23:34');
INSERT INTO `fm_recharge` VALUES (448, 6141, '1', 'M82150714094218435000300', '3000', '2015-07-14 09:42:18', '0', '', '2015-07-14 09:42:51', '13651099898', '5138', '请求接口失败!', '0', NULL);
INSERT INTO `fm_recharge` VALUES (449, 6141, '1', 'M82150714095146700000305', '4000', '2015-07-14 09:51:46', '1', '', '2015-07-14 09:52:23', '13651099898', '0000', '成功10', '1', '2015-07-14 09:52:26');
INSERT INTO `fm_recharge` VALUES (450, 6175, '1', 'M82150714170914310000041', '11111', '2015-07-14 17:09:14', '0', '', NULL, '13261777763', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (451, 6127, '1', 'M82150714174022011000067', '10000', '2015-07-14 17:40:22', '0', '', NULL, '13581900000', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (452, 6127, '1', 'M82150714174115874000068', '10000', '2015-07-14 17:41:15', '0', '', NULL, '13581900000', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (453, 6141, '1', 'M82150714174133411000069', '10000', '2015-07-14 17:41:33', '1', '', '2015-07-14 17:42:42', '13651099898', '0000', '成功10', '1', '2015-07-14 17:42:43');
INSERT INTO `fm_recharge` VALUES (454, 6251, '1', 'M82150714213947717000031', '20000', '2015-07-14 21:38:19', '1', '', '2015-07-14 21:38:50', '18310553867', '0000', '成功10', '1', '2015-07-14 21:38:51');
INSERT INTO `fm_recharge` VALUES (455, 6200, '1', 'M82150715092050375000003', '1000', '2015-07-15 09:19:22', '1', '', '2015-07-15 09:19:47', '18310550024', '0000', '成功10', '1', '2015-07-15 09:19:47');
INSERT INTO `fm_recharge` VALUES (456, 6200, '1', 'M82150715094727032000001', '1000', '2015-07-15 09:46:08', '1', '', '2015-07-15 09:46:44', '18310550024', '0000', '成功10', '1', '2015-07-15 09:46:45');
INSERT INTO `fm_recharge` VALUES (457, 6141, '1', 'M82150715100023865000011', '5000', '2015-07-15 09:58:55', '1', '', '2015-07-15 10:00:40', '13651099898', '0000', '成功10', '1', '2015-07-15 10:00:41');
INSERT INTO `fm_recharge` VALUES (458, 6141, '1', 'M82150715100354956000012', '4000', '2015-07-15 10:02:26', '0', '', NULL, '13651099898', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (459, 6141, '1', 'M82150715100524917000013', '4000', '2015-07-15 10:03:56', '1', '', '2015-07-15 10:04:28', '13651099898', '0000', '成功10', '1', '2015-07-15 10:04:29');
INSERT INTO `fm_recharge` VALUES (460, 6141, '1', 'M82150715101155701000001', '3000', '2015-07-15 10:10:27', '1', '', '2015-07-15 10:12:32', '13651099898', '0000', '成功10', '1', '2015-07-15 10:11:05');
INSERT INTO `fm_recharge` VALUES (461, 6141, '1', 'M82150715101908868000002', '2000', '2015-07-15 10:17:40', '1', '', '2015-07-15 10:19:57', '13651099898', '0000', '成功10', '1', '2015-07-15 10:18:29');
INSERT INTO `fm_recharge` VALUES (462, 6141, '1', 'M82150715102305349000005', '1500', '2015-07-15 10:21:36', '0', '', '2015-07-15 10:23:45', '13651099898', '5098', '订单支付失败，通讯异常[5098]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (463, 6141, '1', 'M82150715102509243000006', '6000', '2015-07-15 10:23:40', '0', '', '2015-07-15 10:25:38', '13651099898', '5098', '订单支付失败，通讯异常[5098]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (464, 6141, '1', 'M82150715102640921000001', '6000', '2015-07-15 10:25:12', '0', '', NULL, '13651099898', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (465, 6141, '1', 'M82150715102641897000002', '6000', '2015-07-15 10:25:13', '0', '', NULL, '13651099898', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (466, 6141, '1', 'M82150715102642162000003', '6000', '2015-07-15 10:25:13', '0', '', '2015-07-15 10:27:09', '13651099898', '5594', '订单支付失败，超单月限额[5594]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (467, 6141, '1', 'M82150715102738476000004', '1000', '2015-07-15 10:26:10', '0', '', '2015-07-15 10:28:05', '13651099898', '5098', '订单支付失败，通讯异常[5098]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (468, 6200, '1', 'M82150715102740437000005', '1000', '2015-07-15 10:26:12', '0', '', NULL, '18310550024', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (469, 6200, '1', 'M82150715102809226000006', '1000', '2015-07-15 10:26:40', '0', '', NULL, '18310550024', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (470, 6200, '1', 'M82150715102835210000007', '1000', '2015-07-15 10:27:06', '0', '', '2015-07-15 10:28:57', '18310550024', '5098', '订单支付失败，通讯异常[5098]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (471, 6200, '1', 'M82150715102917599000008', '1000', '2015-07-15 10:27:49', '0', '', NULL, '18310550024', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (472, 6200, '1', 'M82150715102939435000009', '1000', '2015-07-15 10:28:11', '0', '', '2015-07-15 10:29:53', '18310550024', '5098', '订单支付失败，通讯异常[5098]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (473, 6200, '1', 'M82150715102919842000271', '1000', '2015-07-15 10:29:19', '0', '', '2015-07-15 10:29:40', '18310550024', '5098', '订单支付失败，通讯异常[5098]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (474, 6198, '1', 'M82150715103011562000275', '1000', '2015-07-15 10:30:11', '0', '', '2015-07-15 10:30:27', '18310550022', '5098', '订单支付失败，通讯异常[5098]', '0', NULL);
INSERT INTO `fm_recharge` VALUES (475, 6200, '1', 'M82150715110748358000048', '100', '2015-07-15 11:06:19', '1', '', '2015-07-15 11:08:05', '18310550024', '0000', '成功10', '1', '2015-07-15 11:06:37');
INSERT INTO `fm_recharge` VALUES (476, 6141, '1', 'M82150715111321916000005', '8000', '2015-07-15 11:11:53', '1', '', '2015-07-15 11:13:58', '13651099898', '0000', '成功10', '1', '2015-07-15 11:12:31');
INSERT INTO `fm_recharge` VALUES (477, 6141, '1', 'M82150715111434953000008', '900', '2015-07-15 11:13:06', '1', '', '2015-07-15 11:15:18', '13651099898', '0000', '成功10', '1', '2015-07-15 11:13:50');
INSERT INTO `fm_recharge` VALUES (478, 6156, '1', 'M82150715121400263000009', '1000', '2015-07-15 12:12:31', '1', '', '2015-07-15 12:16:19', '18002206359', '0000', '成功10', '1', '2015-07-15 12:14:52');
INSERT INTO `fm_recharge` VALUES (479, 6151, '1', 'M82150715152347617000001', '20000', '2015-07-15 15:22:19', '0', '', NULL, '18601979931', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (480, 6151, '1', 'M82150715152432493000002', '20000', '2015-07-15 15:23:04', '0', '', NULL, '18601979931', NULL, NULL, '0', NULL);
INSERT INTO `fm_recharge` VALUES (481, 6141, '1', 'M82150715152710861000008', '2000', '2015-07-15 15:25:42', '1', '', '2015-07-15 15:27:48', '13651099898', '0000', '成功10', '1', '2015-07-15 15:26:21');
INSERT INTO `fm_recharge` VALUES (482, 6151, '1', 'M82150715153045228000022', '20000', '2015-07-15 15:29:16', '1', '', '2015-07-15 15:32:13', '18601979931', '0000', '成功10', '1', '2015-07-15 15:30:45');
INSERT INTO `fm_recharge` VALUES (483, 6151, '1', 'M82150715153423517000001', '20000', '2015-07-15 15:32:55', '1', '', NULL, '18601979931', NULL, NULL, '2', '2015-07-16 15:30:00');
INSERT INTO `fm_recharge` VALUES (484, 6151, '1', 'M82150715153449460000002', '20000', '2015-07-15 15:33:21', '1', '', '2015-07-15 15:35:54', '18601979931', '0000', '成功10', '1', '2015-07-15 15:34:26');
INSERT INTO `fm_recharge` VALUES (485, 6151, '1', 'M82150715153656457000006', '20000', '2015-07-15 15:35:28', '1', '', '2015-07-15 15:37:51', '18601979931', '0000', '成功10', '1', '2015-07-15 15:36:22');
INSERT INTO `fm_recharge` VALUES (486, 6200, '1', 'M82150717150515625000025', '100', '2015-07-17 15:05:15', '1', '', '2015-07-17 15:05:34', '18310550024', '0000', '成功10', '1', '2015-07-17 15:05:34');

-- ----------------------------
-- Table structure for fm_settlement
-- ----------------------------
DROP TABLE IF EXISTS `fm_settlement`;
CREATE TABLE `fm_settlement`  (
  `set_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `set_f_user_id` bigint(20) NULL DEFAULT NULL COMMENT '�û���ID',
  `set_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '����',
  `set_req_mess` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `set_req_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `set_res_mess` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `set_res_time` datetime(0) NULL DEFAULT NULL COMMENT '��Ӧʱ��',
  `set_result` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���',
  `set_seq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`set_id`) USING BTREE,
  INDEX `Index_set_f_user_id`(`set_f_user_id`) USING BTREE,
  INDEX `Index_set_type`(`set_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7337 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '��ˮ��¼' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_settlement
-- ----------------------------
INSERT INTO `fm_settlement` VALUES (7267, 6246, '2', '18310550032', '2015-07-17 15:28:57', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717152856422000001</mchnt_txn_ssn><contract_no>000003302864</contract_no></plain><signature>AbLi8mC1UVkzWH/KdYa7lXqsjx8QxXism/22F/4O7RmK4Xhg7rGRDWiOq7Xgcuw3LKG2Ikiie2h+9E/oqIBcPYNpRHsdNE1NeTwA71FHQacxAUpKToTGqRDgf657AZwl4HxJ9+xbA0lfScVLJqb1Al+P1i2vDmNvKk2nZie0P2U=</signature></ap>', '2015-07-17 15:28:58', '3018', 'M83150717152856422000001');
INSERT INTO `fm_settlement` VALUES (7268, 6163, '2', '18310550016', '2015-07-17 15:28:58', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717152858368000002</mchnt_txn_ssn><contract_no>000003302865</contract_no></plain><signature>dDJ9GyvL9g8uPueHhpQCS+KGwPCiWXZoj4AT/n6hN88ZK2HxgMHxK0+BSWdqqieazYSn8QSQKsF8/Sbt6toleMk2dOGJL/cQVZMhIm6wG8w2/GloqYPt/qcgYw5zqOZYQvDRtLgfvxIdPzn9LedJkBofR3Ybq3mt4725EPovrpE=</signature></ap>', '2015-07-17 15:28:58', '3018', 'M83150717152858368000002');
INSERT INTO `fm_settlement` VALUES (7269, 6246, '2', '18310550032', '2015-07-17 15:29:08', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717152908835000003</mchnt_txn_ssn><contract_no>000003302866</contract_no></plain><signature>Y3alsbvDk9i7TpTpYOmV1UgOa7z4VcsMbqJN5OkYoYXXxiCfZWtNh9JEqVSdzd2sH/LSC7CKatPNKZZt4dtuiSfkfnIEv0r0KTfoNN7jtmRAxgNvFaZkQUD9FZTarYcgihPlcVwCo8U8Obyaab6dsI1HH6WkSWsYxbRBn0WG3dw=</signature></ap>', '2015-07-17 15:29:09', '3018', 'M83150717152908835000003');
INSERT INTO `fm_settlement` VALUES (7270, 6163, '2', '18310550016', '2015-07-17 15:29:09', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717152909294000004</mchnt_txn_ssn><contract_no>000003302867</contract_no></plain><signature>bhCgDRF9i+1Y/stPMfpPzDOhZkrf7l202oFp3EwkqVHqc1prZDTy0tf+Z+dlFG6ECvG45LI8UmueWY7rGA2pPaANPgHsKRHHgX5GZWv/Sr0HzDjqIb2qaG/XlyK4zWap5wRgeuCWm0nXkIhpT5gEkvAS/NsYpW/2WmPYvfR+10k=</signature></ap>', '2015-07-17 15:29:09', '3018', 'M83150717152909294000004');
INSERT INTO `fm_settlement` VALUES (7271, 6246, '2', '18310550032', '2015-07-17 15:31:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717153100620000001</mchnt_txn_ssn><contract_no>000003302869</contract_no></plain><signature>Gkiz39mAn7zCHzg9mryBRW+jcgAE5j02Up+R5nFeUca8chP5vaJj0k0LLhsFcGxkeZ8fHJ6+3EmZwdjs94z2u/BRMrJ8q63woZrgBvmsMdMWoD50kQoFpBNQ36LbJCy+oa4WKMqMxL4B+QQvNcInlLyVRfz6cCQkQXh3ZyFvaO4=</signature></ap>', '2015-07-17 15:31:01', '3018', 'M83150717153100620000001');
INSERT INTO `fm_settlement` VALUES (7272, 6163, '2', '18310550016', '2015-07-17 15:31:01', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717153101454000002</mchnt_txn_ssn><contract_no>000003302870</contract_no></plain><signature>Qbli6d6dKb6JSAnVkAWd8kkaZCm5Ez13WDYQefwTQr37Qq9aeibMJKcLy+kjRvjtd2e0ThIsM51LRvgzwVR8nNXWtbLXJUA99ongyIrIR7FpP8uPJN+nn+QH0zA9VVGaVsOIeG9JzES+XZY3AR3UbEAEBRHi/dqHu9YhPug3Yx0=</signature></ap>', '2015-07-17 15:31:01', '3018', 'M83150717153101454000002');
INSERT INTO `fm_settlement` VALUES (7273, 6246, '2', '18310550032', '2015-07-17 15:32:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717153200151000003</mchnt_txn_ssn><contract_no>000003302875</contract_no></plain><signature>YIr8BzGkzi9qzA0L9tEWsg0orztgtFyGTE4yXsoMDetA/2M1r+yOorCz2KYzlBUaEmuXNz7/Q/un33rVDMru+8OOI0t1SzPYbgZxaZ3jhqHnfvkylnJ4TSvEJquYILYCF4cpkfh7/aIHHefH8M3+ye0ioFmAM5PAOH/Qpj/crMg=</signature></ap>', '2015-07-17 15:32:00', '3018', 'M83150717153200151000003');
INSERT INTO `fm_settlement` VALUES (7274, 6163, '2', '18310550016', '2015-07-17 15:32:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717153200735000004</mchnt_txn_ssn><contract_no>000003302876</contract_no></plain><signature>buw74jroDS/tY1roUecHg7tSXyld24V3LLax3UAatG5V8k7ynl1oiZKrgdO/ZQcbdLafwwFlFxu4HwqmrK5xZ9h86TbPCaqYenYZeIBPbVHGoOtRcIsQfmOkOmFZDIE10uBGcTEoYoTM2UiCdgb2O3HWKaTNJPx04xx9DVo9kvE=</signature></ap>', '2015-07-17 15:32:01', '3018', 'M83150717153200735000004');
INSERT INTO `fm_settlement` VALUES (7275, 6246, '2', '18310550032', '2015-07-17 15:33:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717153300133000005</mchnt_txn_ssn><contract_no>000003302879</contract_no></plain><signature>BMVHMD3bD7rePWE6jek4jHKHioMwxQld7Gp9sUs2MUjxyrxVHUn8KJvDmGJSTyuh3GwsLST7aQSe628r7kGy5lRY6s7rf99gMgzMiVDA8ACleLkRO4YwjH8BdY+7SHdiltg9qgpR9QgrSt50q8zDg6ygx9dxKBGdl5RGT7GopoY=</signature></ap>', '2015-07-17 15:33:00', '3018', 'M83150717153300133000005');
INSERT INTO `fm_settlement` VALUES (7276, 6163, '2', '18310550016', '2015-07-17 15:33:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717153300805000006</mchnt_txn_ssn><contract_no>000003302880</contract_no></plain><signature>b0Wvn9+kXRS+iKVkPP5Znnbj056IorY2eY0Mh+sPZC77tBPSlDIOoFAxccZGumO8RX5uW16G9DtkYwMWfprzcEY9eDxOFvNb+5L5M/qUuZyN3W09Rg+R6Aolwle024oenV7MF6lAgKOD6lZzLhSe5vsQfgs3UNcOc5EctlQUn0o=</signature></ap>', '2015-07-17 15:33:01', '3018', 'M83150717153300805000006');
INSERT INTO `fm_settlement` VALUES (7277, 6246, '2', '1000000', '2015-07-17 16:10:03', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717161003165000001</mchnt_txn_ssn><contract_no>000003303096</contract_no></plain><signature>ytj0aLLaDWSutc7BfvewyzzVbeUHQHcAtvxOQc9xDaaNiZiQr0jk3m/9HIVCjWNUfDCQyPEIMjSUlGMBotxOrcUWfrisHpOqEesBPjE+aJ+3vhU+E46RIjvhD66wwjLekUaTQplnnrMBfwq8AlkkPUExI1MJH2MMURhWx+UJRto=</signature></ap>', '2015-07-17 16:10:04', '3018', 'M83150717161003165000001');
INSERT INTO `fm_settlement` VALUES (7278, 6163, '2', '1000000', '2015-07-17 16:10:04', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717161004686000002</mchnt_txn_ssn><contract_no>000003303097</contract_no></plain><signature>mLZsYJ4PepqqdijUnMRVQHd8KK9ABIqoAgirBbQq1FrFG3dQ59SOpEln+Dw1y5ZawssDAcRBybDPz0uNagDpQ0UhzHlFHFkjdCW6SoyNpaAvkyLv0xyGZr4t6hS+xogEHzs5fOJd8Jh2cNA/jPKkLG8raLVcY2+8TShOYyUPmwQ=</signature></ap>', '2015-07-17 16:10:07', '3018', 'M83150717161004686000002');
INSERT INTO `fm_settlement` VALUES (7279, 6246, '2', '1000000', '2015-07-17 16:20:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717162000138000003</mchnt_txn_ssn><contract_no>000003303165</contract_no></plain><signature>a2LPZyUA7sCH81CAf7Nlak5gmsoFt1+sdUz8aVJ6ewyFHTDWC0pWFVl5zvY5MWYfvqLj3VpWBBzKige83KcXF/330VCjaM970+aUv6RPHWZU0fhj0HMFrLhFfuXdiAKEYwZMGRCulh2LOPqnx+llM6GpsJrkhZ9/CDLLh5BYx/c=</signature></ap>', '2015-07-17 16:20:08', '3018', 'M83150717162000138000003');
INSERT INTO `fm_settlement` VALUES (7280, 6163, '2', '1000000', '2015-07-17 16:20:08', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717162008624000004</mchnt_txn_ssn><contract_no>000003303166</contract_no></plain><signature>IfBpfTDZJMzwEfSDYZhjcXJu1oESh4+bqZShfmKMGxHKob7zoZ+SExoqT09CVv+/Ml8ZoHbdlcshO8NekXcTjzbrfze08ozPBZoKxYUFgxFjRyd26PpfgZBMyvMlXviQJ2zpczU1djB/glGUOQxzoyKYcwU5vAXRqdpubWwKhDM=</signature></ap>', '2015-07-17 16:20:14', '3018', 'M83150717162008624000004');
INSERT INTO `fm_settlement` VALUES (7281, 6200, '3', '18310550024', '2015-07-17 16:31:20', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717163121068000001</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>mn7qkEAjnQYpJXt+8gAP2Nq207bgF36z/t1pS5yohqGwMj/s7yjMHP3qRjqQE6+03wqq9H1LlL/hJIzfuziq+bzjHLlQSCMYmUOEtgUX/z4eFo9iwOGVeBSzOsay/8ZHXBiDhpheruiNgSLKxx9NnVN28FXpEZd9gIttqEUjHTQ=</signature></ap>', '2015-07-17 16:31:21', '0000', 'M85150717163121068000001');
INSERT INTO `fm_settlement` VALUES (7282, 6246, '2', '1000000', '2015-07-17 16:30:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717163000143000005</mchnt_txn_ssn><contract_no>000003303191</contract_no></plain><signature>wI/Nd/dfaqbHTK1N8XfAbRcsQUeLt/FBlsmdfIboU4i1yiHz428MpZ2Blxb2pMjxjCV6LH0wagqUj7EG9+dlcMJ8RHCZGV4LUixiKl9Z1z+kTU+IrsTiHmjmgy9NIsOr4ddJkXzynql/7aohM22PA4JnOnWko4dAKaiJxyiUOuw=</signature></ap>', '2015-07-17 16:30:00', '3018', 'M83150717163000143000005');
INSERT INTO `fm_settlement` VALUES (7283, 6163, '2', '1000000', '2015-07-17 16:30:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717163000692000006</mchnt_txn_ssn><contract_no>000003303192</contract_no></plain><signature>piAKod42tRWWdczcgWWUijySqRc9p4xGK6jbsAfBtB60yehR33/9CHS7DCwXjepk9ruMafv9iw7tA6DxKZwTotCnGQ2iaprNEM2bQlupuJXkC9XePlaeSEQAer6p34uVNGc4nkSDvc3KvVzrIirClOC3N3Ib6SAKCZHQcAQAnS0=</signature></ap>', '2015-07-17 16:30:00', '3018', 'M83150717163000692000006');
INSERT INTO `fm_settlement` VALUES (7284, 6200, '3', '18310550024', '2015-07-17 16:31:23', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717163123533000002</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>Nd/dk85eivFr/kchSnTCHISe6jA5oXSxthRCcIeQuX73Zzp0SXjFK+rybiBiF65D97WMQ9CRxWD4oawp97V4Xfk+8F1y1Zf8zazXaWsV4sDs7JrJlXM7/J7o401cPu+4ZGs6Fb4IRyWV/akySmGbejKQUPC3B2HFDJQX1ZbQ5Io=</signature></ap>', '2015-07-17 16:31:23', '0000', 'M85150717163123533000002');
INSERT INTO `fm_settlement` VALUES (7285, 6200, '3', '18310550024', '2015-07-17 16:33:51', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717163351178000003</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>ecprmB5v07nj008Llgxvtl8RgXyH5rkcmIoP9ZfU/YhmSSn8XohNoQ0iNWn+gkRJwN9C9tiAUee75I7yq2gP2Ky+hHbdM+DqhJz75Cqck2yH4OS5Pr1ouFM0bKtBPnWGdYMwR84hFXtM46WqQihWwuTfKccL7ErJQui/49kt85o=</signature></ap>', '2015-07-17 16:33:51', '0000', 'M85150717163351178000003');
INSERT INTO `fm_settlement` VALUES (7286, 6200, '3', '18310550024', '2015-07-17 16:34:19', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717163419651000004</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>HZbqScjltwPpOvj6DGmn1ABsHhhYEXAsfi4Z1Cz4weUNb4XpGcxI3iG9CDIMFvGATVB07uxyjO7tZ9RjSxugIFrj7caohYBBfVSKJSu7BjdE6Nb6m5qJxiDLrt1npO96k6bjbQ5eua/9+LvTDMZufWG5v6mp0YUX4AMFDlpUT8Y=</signature></ap>', '2015-07-17 16:34:19', '0000', 'M85150717163419651000004');
INSERT INTO `fm_settlement` VALUES (7287, 6246, '2', '18310550032', '2015-07-17 16:40:01', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717164001582000001</mchnt_txn_ssn><contract_no>000003303215</contract_no></plain><signature>mLYVzofqaZnb5OfGUIMeD6DcX/Gz6ckTdKxIdgB/Ys9oyzATAnFGdOSjqxXSp9JAzxL9foQoq91anRWVTs1HNTD1spSPk7o7sujr622w/2PvvzEKrQbQ3tS8jSniVU+dGf0BQOLN47jzoayadC93JwNVd68i3tzDSKDeLfyoGWM=</signature></ap>', '2015-07-17 16:40:02', '3018', 'M83150717164001582000001');
INSERT INTO `fm_settlement` VALUES (7288, 6163, '2', '18310550016', '2015-07-17 16:40:02', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717164002695000002</mchnt_txn_ssn><contract_no>000003303216</contract_no></plain><signature>SyS/v5RoB5IMYB2BxeH0aO/Rcv9iEWawtIZKiEv04oMvqKxCEAgnrII5OBE4u6DHmaE8LpvxDcXacGZmn70Yx6Gajn2NZW43EBLdRG3UzPZXpEiVf5ngUeZqraspm0BARr8QJWxyafnmg+GGndWbmfmLFFqIy1Tyx3YNyQgcjAk=</signature></ap>', '2015-07-17 16:40:02', '3018', 'M83150717164002695000002');
INSERT INTO `fm_settlement` VALUES (7289, 6246, '2', '1000000', '2015-07-17 16:40:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717164000298000007</mchnt_txn_ssn><contract_no>000003303218</contract_no></plain><signature>YLxJ8TPtu5rFjD2e/xjjCNUvsMmaDnhshD9FjIvzIjGNCjArLFqrVz81L9rYefK3IThOwrUcr2zKKwEiVPAlv2MElzVMC3wVy8eJRvgx8sT4bMDs1YMV1eetGjWMdsfWNYAkONsMRpuiVc0Zdhnct+uFtXP79kKwceXaaolffIc=</signature></ap>', '2015-07-17 16:40:00', '3018', 'M83150717164000298000007');
INSERT INTO `fm_settlement` VALUES (7290, 6163, '2', '1000000', '2015-07-17 16:40:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717164000757000008</mchnt_txn_ssn><contract_no>000003303219</contract_no></plain><signature>L8dCUeYfd0DELLXiVK/QfL12b/9lujqMgXNtqHnAH7xCMd3W6Js8oPK9MZ/L4OfFgL8tTBGZiU4gcm2lJ3OlVJYSI0CdDTweeobTpTRBwWxzBvjQiqLYaoifMLiU5nz9Fc4AvHh5+iWvUyJrzIPd50do1jP5zkTTX3UBg5KhY20=</signature></ap>', '2015-07-17 16:40:01', '3018', 'M83150717164000757000008');
INSERT INTO `fm_settlement` VALUES (7291, 6246, '2', '18310550032', '2015-07-17 16:40:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717164000113000001</mchnt_txn_ssn><contract_no>000003303220</contract_no></plain><signature>jX3JJlzP3ZvgUDa6iz0HCl9jU0oPNLLP4Pa7gdlM0zV/emEFiQY4CT4G9EBRYdAlYIL1PQU/PQysFwU92lWmR7nccrroQuYi3RHoYH7s8oX8ykAOwyowvGDQyFOrIibBm+bWDb4eIfuCZ/6K6BlzGRfTTSCBJaQ+D2quZGSJI3I=</signature></ap>', '2015-07-17 16:40:00', '3018', 'M83150717164000113000001');
INSERT INTO `fm_settlement` VALUES (7292, 6163, '2', '18310550016', '2015-07-17 16:40:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717164000760000002</mchnt_txn_ssn><contract_no>000003303221</contract_no></plain><signature>XlOD51Qa5GbBh197Ci0N1w9EVapypDd5MXGEyalvwtiXUAhp9DSSos2WcfrAFBQDMVj39cra4aQzX86mRdXhbU18TPCqx62A9RA1eUjNLcwCX3nZK5z3+5+SKnwQ3cDd5XeT0Q95GBC3WSpwyR6g8VMfB5IkGOt33fXNAj8XbII=</signature></ap>', '2015-07-17 16:40:01', '3018', 'M83150717164000760000002');
INSERT INTO `fm_settlement` VALUES (7293, 6200, '3', '18310550024', '2015-07-17 16:40:03', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164003338000003</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>zxWDa95emje2NyiVOcr5y4Tq3mS/sFUX32uOcM6XsvFxr9BWcfoqLzJz3KKTS/XowvUra0UfVhgkz/VOFObljiJXFBD/iCKTp5mY9er9hgFKChNMpzXn0DJOV0wXdrLBW1Ja+aS8BW5LymV/PXQ0xMhOBaWs6pNLHoJJ6Foflx4=</signature></ap>', '2015-07-17 16:40:03', '0000', 'M85150717164003338000003');
INSERT INTO `fm_settlement` VALUES (7294, 6200, '3', '18310550024', '2015-07-17 16:40:05', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164005731000004</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>M4LE18jLvQIDX6wVNSgqID2aXZ40CgIdnG+Z3GNAjHRdn4hG9yMbjf1azAYDruHB7kgZzQNlvkE+iDCuSoDFb78y17MwklTGXRzxam/wurBUvUU46Jphjc+pLJSv0GtR0jx/WSfGGVdxmTAss2KQ79RK1peZF0TymdiN8BWi9M4=</signature></ap>', '2015-07-17 16:40:05', '0000', 'M85150717164005731000004');
INSERT INTO `fm_settlement` VALUES (7295, 6200, '3', '18310550024', '2015-07-17 16:42:01', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164201956000005</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>BabZIj46Wq5XzheQOP9fSfUeeimb3S3PHs/xfOxW1JuUhLlD+R4lVbu0077dDiR8ho22hNswrEwnG9qHpC4GDH/t3t5AlyTI2jNFEZ6ws6FIUwWA5ZIJC44dgZt679TakhdnTAmTtRu+1RhZ3L+KtR1T3HyyqSX41ePs7u5cXhM=</signature></ap>', '2015-07-17 16:42:02', '0000', 'M85150717164201956000005');
INSERT INTO `fm_settlement` VALUES (7296, 6200, '3', '18310550024', '2015-07-17 16:42:08', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164209043000006</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>iM6GHPzAbAN9dIr25zqN6NByHL//SrUeE+BmnKKiMsuHI+wAMd5Scuakh3rbXpZBBuDP3A5stBE5PBbVTsRw2mzHqJjpMa0dKKpy4NkZRrQVC37UG8Fjjf0vtBDqD9rRR2P9jXI9zXJgyuFV3Y7A8ofqiYFMeVL5aVfLUOPYFEM=</signature></ap>', '2015-07-17 16:42:09', '0000', 'M85150717164209043000006');
INSERT INTO `fm_settlement` VALUES (7297, 6200, '3', '18310550024', '2015-07-17 16:43:05', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164305947000007</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>0P00al7emXdn1ldWMOC1+a9stTTwZ99dtHW3F23F+3OqXhpzlICeDIrfBBapjZYIG45q6vdop4JmwIA1c5fnaUyCVW+H1cNch0cAgn9ceRY9yDvASIilN6g35386HaFe7PiuGq/ZsM9zSiY3GZE8SaL0S2WqX9ScKfB6f9mZ5uA=</signature></ap>', '2015-07-17 16:43:06', '0000', 'M85150717164305947000007');
INSERT INTO `fm_settlement` VALUES (7298, 6200, '3', '18310550024', '2015-07-17 16:43:08', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164308341000008</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>nVsaovB457yT7UyWFAH/Bqqo9kJw5uvkqxcDJqvT2pS1ArlITKKrGINhwgPFJnjDiMRP906YEJ6Tg9pv6Fkj1zakQRYRByW7nSog4fDsgSjwqZ4qjlyA5N2ea6QkRlr22ZFt7MUPXxPxSEmhZE1wsE+N9qZ+zVd1KWgzzGlLwbA=</signature></ap>', '2015-07-17 16:43:08', '0000', 'M85150717164308341000008');
INSERT INTO `fm_settlement` VALUES (7299, 6200, '3', '18310550024', '2015-07-17 16:43:29', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164329360000009</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>YIQevRx8hkrIjjmHeq2ulm+MQBHeSD1/vyw2qbib22GeJB77nq6drGxD269THnnXXfaGMhMRZ0hc6B0pWqhUPVZG5pGsFQmnVJ8nWFpoTPtAOlS0lBuNYtd5BDUxjpDTftaotUk2/nSmiWdiC0qx1TjZGk0OsSbk0NUjnrjNnFE=</signature></ap>', '2015-07-17 16:43:29', '0000', 'M85150717164329360000009');
INSERT INTO `fm_settlement` VALUES (7300, 6200, '3', '18310550024', '2015-07-17 16:46:09', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164609132000010</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>HI5wmm4NzD1BCbnb+9kHERzTvhQ3mRrx2K2lMP0NWlwDf1jkOb1+seaqCUPL1/rgaI9lvAb7Lwvp7HUC5Hg/c/A2LzSRJa1Xa89XhuR3/tKGRqZFqiAptt8ZNW9J3HkPOtfCPjuVliEWGDEfQ6p2cZH4pOVtf1oHPJm5pgilRMQ=</signature></ap>', '2015-07-17 16:46:09', '0000', 'M85150717164609132000010');
INSERT INTO `fm_settlement` VALUES (7301, 6200, '3', '18310550024', '2015-07-17 16:47:16', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164716491000011</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>Yyn9hHmFZgBTTbDrV52MBP5fgmVH4PxYZE3w7oImswVeudKE2Ol8w18j1qGzGrbS+BgQ0MqRe1lRMLFEq5IEgSTyXF2V9cslr93M9KoYDq5yqsQd/lKxchaHY1niu41yCni8nHPXDhE38hQsc6bqTLGdS3Votk1Ct+H+i302bMM=</signature></ap>', '2015-07-17 16:47:16', '0000', 'M85150717164716491000011');
INSERT INTO `fm_settlement` VALUES (7302, 6200, '3', '18310550024', '2015-07-17 16:47:18', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164718629000012</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>2e2pVXygZxbmu1fUmMmoAoYDsJvdLYq4emNdWNmAnVGI6Rlm3pZZR4MPfqupehayaX7qYIJKS1OwR4Zas9Z15JCr6YzupoqWkHuh3Ig8T55lvjCXdAwv25rim2p0xPhUeUy3cgZ55zZERFE7xsHCrkjjI0xyv8BM3YIkpB5rRDc=</signature></ap>', '2015-07-17 16:47:18', '0000', 'M85150717164718629000012');
INSERT INTO `fm_settlement` VALUES (7303, 6200, '3', '18310550024', '2015-07-17 16:49:38', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164938598000001</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>xvTg4cwmQTrM+8JQ5mY7xHXbfpvzecgVbdACayfhLnMBpcz5ME+2sZb21SjPL+vHtksqFvkxQfxZ6qTIWsOspVVmMU0Ik4eXW8axAcQ/0Dqq1ED4ZGWNW7aVLucEV2qc6VAA9DFjhYK8F7lgPQutC1CUPw4riuS5cG1Lb9YndEU=</signature></ap>', '2015-07-17 16:49:39', '0000', 'M85150717164938598000001');
INSERT INTO `fm_settlement` VALUES (7304, 6200, '3', '18310550024', '2015-07-17 16:49:41', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717164941123000002</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>etFR+rg2EqX3jFFjTgDlDmE6TwoGNXozCRu6YlWGeCQhRR9f6XoNBb49jfHvSYv+kAjedz5jEOf2d1c4bx9Sjo7trsTk+KWWjeGzdoXM6/btvpmFcdQGIorHNgBmQIgpj3dJiXX076pffW+ZDIfID1TmBuwm5vU7UeOsy9BD1zQ=</signature></ap>', '2015-07-17 16:49:41', '0000', 'M85150717164941123000002');
INSERT INTO `fm_settlement` VALUES (7305, 6246, '2', '18310550032', '2015-07-17 16:50:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717165000096000003</mchnt_txn_ssn><contract_no>000003303234</contract_no></plain><signature>Co4rIynZC3VsLOigB5ID+5cAFvsltoIbuJ1Gqn6K2JXDaOFHEpsdAc0rAOTK93GRKiAK86R5Prk2NfkajGH3LgoMNr5ZNpVYfbH2oBel2+3ehQHlNfExOzu944ruzDeSrftRh2ALDjr5cn3iM/YhjVy15xEzPP3pM5wed3GIgfs=</signature></ap>', '2015-07-17 16:50:01', '3018', 'M83150717165000096000003');
INSERT INTO `fm_settlement` VALUES (7306, 6163, '2', '18310550016', '2015-07-17 16:50:01', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717165001269000004</mchnt_txn_ssn><contract_no>000003303235</contract_no></plain><signature>kTFgBN7xneQ4/xFxWhDOQXcpFQFUK7ykXSf21R0owkwA9R/gCQNzLNglwaq8pEk39cVczidhQRYQ8D5DbqG/a858LyU/6rAR0s/eSpDgcXJaVrNZ3YUpm4OzO7zWv7FdcBdGVLiWkwbOq87JBh0q2EgMQDuJQhEFI2wsnRpf1ww=</signature></ap>', '2015-07-17 16:50:01', '3018', 'M83150717165001269000004');
INSERT INTO `fm_settlement` VALUES (7307, 6200, '3', '18310550024', '2015-07-17 16:50:10', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165010445000005</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>viJTvHl79a4m1GWcHeidZ5hefBgTTL7I63JhA/L25LUh7JvmDZ42DDges1g+V55xAYjTsQV00A7fDFsrA27eWtkzC/PQi7DsLQiOfy+od4PUJFne3LFyUOKxoP12C+b4rOER1qI4dsXYR8RTBXMqTF9I0x7EU1LDt9GeAU4mo2E=</signature></ap>', '2015-07-17 16:50:10', '0000', 'M85150717165010445000005');
INSERT INTO `fm_settlement` VALUES (7308, 6200, '3', '18310550024', '2015-07-17 16:50:11', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165011796000006</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>cFLHTtDPXBG87k+9mh1IfGKc+dEmphfzWFQVQfOIuaJFk1+/vAGIuVdoLnHVjSnTpmdgXLIB1Zenin6XlrsfgA/Kq9BHCwDouNKoHsKzJXpnCKW2Z0QL/R9QCv7rkLFLF97QGvsivRW0DUAk7tX5sMjC/QC2XnXDi2d0ppxzrZo=</signature></ap>', '2015-07-17 16:50:11', '0000', 'M85150717165011796000006');
INSERT INTO `fm_settlement` VALUES (7309, 6246, '2', '1000000', '2015-07-17 16:50:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717165000276000009</mchnt_txn_ssn><contract_no>000003303237</contract_no></plain><signature>lDrO8C2Msi01dy6iJPXxTpWkL6F7Dkp8jgf9xImD2NzJWbS9+trG2o9DLgI1ZcXMnA/Xqj7sV7Grve/hLFkpH2MEersSDsuc2AURaZShWJPqybNQG9JtyK3g9XK1KdLNdwR8K2U8X8w2RYuoLOmNv7pHgLRmOELoWN6okGXwnjg=</signature></ap>', '2015-07-17 16:50:01', '3018', 'M83150717165000276000009');
INSERT INTO `fm_settlement` VALUES (7310, 6163, '2', '1000000', '2015-07-17 16:50:01', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717165001455000010</mchnt_txn_ssn><contract_no>000003303238</contract_no></plain><signature>t5r+JZo7UMuEEcOsurKs2SK5jVerRBD6qa1l8lSexnADoaFEU68QHgBsHxasp3sBOzI69swVOjlmMPglvxb6Xkm88z3hVrBoL8k0skmKiuRjRhZjS8HRP+uKXVCiaHvN5OHtw1s7hVR203BgJYoymfEQ8J97J24VQmdsPb2tu14=</signature></ap>', '2015-07-17 16:50:01', '3018', 'M83150717165001455000010');
INSERT INTO `fm_settlement` VALUES (7311, 6246, '2', '18310550032', '2015-07-17 16:50:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717165000098000013</mchnt_txn_ssn><contract_no>000003303239</contract_no></plain><signature>hie4qYuZgoUeEnXCDNFo/lmEXKvV7pqEehuTjHa2m9yAl2rgPMp+aao8JBk2mxKXiYfZ5PUGO5Jem8fhMZH2hLrNpNIEMucy1DYwXB4yfbqD7golmNULhM4gJ0nOzlPvGf9I2FOd9+cZS2miug3ziShxBgmI1/Kso25sxoZd/PU=</signature></ap>', '2015-07-17 16:50:00', '3018', 'M83150717165000098000013');
INSERT INTO `fm_settlement` VALUES (7312, 6163, '2', '18310550016', '2015-07-17 16:50:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717165000584000014</mchnt_txn_ssn><contract_no>000003303240</contract_no></plain><signature>qOCuBCzSsXKBJ/lurnkQghpUka7H0GBBWDy2cd0VOGGhG3tK05cGho3FTP9kEuHNVHDCsPp3NDwxjcfSS96w5UeG8GbYxygDWgOSIhohvkcb/vig/Dxq+Ffv+Mq9LZEJ+9jamOc+dWbivxC2CVpk1orE0jfSBMUcZhS3U8nJ/3E=</signature></ap>', '2015-07-17 16:50:00', '3018', 'M83150717165000584000014');
INSERT INTO `fm_settlement` VALUES (7313, 6200, '3', '18310550024', '2015-07-17 16:52:08', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165208741000015</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>gXK7Z0rMcYABqqwv8SnPpatZlGIk15s0nb8rhIC9NfuMmlAVmu5gyHza2BFTui83ST6nuwNPlIycbnw4H5YcnQEAe8HQCzQNLgO34frxnBsPuddOavqwGEWyXH0MPWKu71r3X9xL7m99xluJYb3yo/OBcm3qNY7TJRuG+WnXL5g=</signature></ap>', '2015-07-17 16:52:08', '0000', 'M85150717165208741000015');
INSERT INTO `fm_settlement` VALUES (7314, 6200, '3', '18310550024', '2015-07-17 16:52:08', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165208759000016</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>aP5dTWUB3X2zZQhWUJZf/+5Y8WIxTrWaeEACOphf3uFQ0scCVb/EIXasuwKGkFgd33B7m5Jl0yNeS1Do3sTNuUGe7qieC6btLhq2AqeoRCwgl5u6VSQocDLWSvIsmkqEh+UKwZu3JqjHFr5gF26dt6rxekjKg5NdLE/TvoqbTLU=</signature></ap>', '2015-07-17 16:52:08', '0000', 'M85150717165208759000016');
INSERT INTO `fm_settlement` VALUES (7315, 6200, '3', '18310550024', '2015-07-17 16:52:15', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165215201000017</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>RfbUkiom3unu2eupfhC67C4yWFJqkZuR8Ntdw/hrameqh6retcSOXvve66HUKuJVMPEBgvK5h9ShkZ2CcGPiOZomINiF8Cv7Un5KcWURhWoc+eRFWZFCg8uyHCrFnWkeBORfL8esfgqKw3TInIKKbANM+wji+lTATTT53CHbbBQ=</signature></ap>', '2015-07-17 16:52:15', '0000', 'M85150717165215201000017');
INSERT INTO `fm_settlement` VALUES (7316, 6200, '3', '18310550024', '2015-07-17 16:52:17', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165217869000018</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>H1ov7PYQ7hwqmJQr6i+1PrhB70hnujYDhl7V30CeAcfw4BBNWsjo4qL7RUhkdG8zrvd6N6sfMLEln8rK0rqdROIf3ItrDzpHvm2Z7V0ZrlBOA5LTiDcgFtU3IkcbqdZC2lWDrGolEAqRKgPT+8QgHoNK9BPNbcRld1KSvsq6wwQ=</signature></ap>', '2015-07-17 16:52:17', '0000', 'M85150717165217869000018');
INSERT INTO `fm_settlement` VALUES (7317, 6200, '3', '18310550024', '2015-07-17 16:53:46', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165346251000007</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>G6thTPiDcV9rOZyqmKvDtn4A2hJxV9lyVKdxN+QrWYWu+JtcN/zbHTydUkmQ+2ITUtMYECKiIRmysh7BCt51yTV10cwg+kMNvMxg+PhvwzZ/LYSVsLTZ0AZ+AgvLUakkVEAsndNYfwwDhXWzV5A+OI1yRKT8DhR+aBcnzpOgF2Q=</signature></ap>', '2015-07-17 16:53:46', '0000', 'M85150717165346251000007');
INSERT INTO `fm_settlement` VALUES (7318, 6200, '3', '18310550024', '2015-07-17 16:53:48', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165348920000008</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>Spoz5GOm1Bei6aWowVdb2WagcIi/eoTzXPdoBsWjSlmBgFmsFkqUrbJTi4qYo9qYe4XVaOiaYPkMp9WtDcCK6jbk4cpu4HOKHJ17pQcVux1m84inSB6zP+qFGPcS8zBM+jpPOwk28Idou/sWyZO3zuymdK72U+nLye7WpE1p8zU=</signature></ap>', '2015-07-17 16:53:49', '0000', 'M85150717165348920000008');
INSERT INTO `fm_settlement` VALUES (7319, 6200, '3', '18310550024', '2015-07-17 16:55:14', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165514754000009</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>2+YnHfeeOzGUFgLxBXPXrFVo+fHFYwGMwb8+2xGVRibBXD9bkgQE48cF1TIqGusAQx2sL1XAYg+8Fy6d3AcOqpR2JJ2/LFgAcwYHIlFkwzO8rFMgysqFkJ+uaT4I4Jr6febpkBnfLL4YAHWAJF3YigEZUqckwItpEEumlDMuqWM=</signature></ap>', '2015-07-17 16:55:14', '0000', 'M85150717165514754000009');
INSERT INTO `fm_settlement` VALUES (7320, 6200, '3', '18310550024', '2015-07-17 16:55:16', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165516268000010</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>TsfNsSs0JveTUYMC1ziigXcyFLHQyF3RI+e4UoDFHpgB3jxyj+4TDPwq5dlv+7+3Ro5dyYlP5Y9dzMmvP3Iw8RrpZAi7nQG7lK5f0NLf5w2XanRZvJY1ckT1ge9hVVJqb8D8iwSzgOdgc5JdCmZ/4keOx3zRo14w0bMJ/12RahM=</signature></ap>', '2015-07-17 16:55:16', '0000', 'M85150717165516268000010');
INSERT INTO `fm_settlement` VALUES (7321, 6200, '3', '18310550024', '2015-07-17 16:55:17', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165517724000011</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>cJmsrU/CxXoAMZ48dPQpx4KJLKXrczNVCAWdVoKshmiPL6d+oJSDAATXGt78eF21Z9vwBjyCjVkyi/NqDlROUpZn18FCCltyoseqAr+uvAjv4DgnR8OGWJZyVrkRdOhd9saWWJ4b0V1/I06/X0FS1hS/9Dg3NZjO6JzgE5BZfM0=</signature></ap>', '2015-07-17 16:55:17', '0000', 'M85150717165517724000011');
INSERT INTO `fm_settlement` VALUES (7322, 6200, '3', '18310550024', '2015-07-17 16:55:23', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165523294000013</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>EeHoDS4E6B316ZIpBNMHxL9RGfdqsrOeND95NIBmSWoMvfyqO7kjN6z7mtuoD6RNK9fj8s1iZf97RoPMx+IZTzfkmHQmogUWQG9CwdajXwGGtFrVFwKvlmBuJDnLqLdUsrZWuJtY0lVVKVMogHnM8pszK6dPN74cW3brRMf8dxM=</signature></ap>', '2015-07-17 16:55:23', '0000', 'M85150717165523294000013');
INSERT INTO `fm_settlement` VALUES (7323, 6200, '3', '18310550024', '2015-07-17 16:55:22', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165523293000012</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>TBiXRPOYWC6PMNUCAwbdno2KfjVvfRzLpfqIOgsUF+izE5mr1/WmHKaASHRXQ2rSFSvIvrD+bbvQB8nsPm35GuSNVPLVILFLCQRx5lVJdGii5sKu6GPsI5GQvHQ8XDJcXSIxb/dS1HuARz0FAlQeTD1E2vG8bk8UrJy5wmhzd3c=</signature></ap>', '2015-07-17 16:55:23', '0000', 'M85150717165523293000012');
INSERT INTO `fm_settlement` VALUES (7324, 6200, '3', '18310550024', '2015-07-17 16:55:25', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165526046000014</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>FKRedFXMcwhdI7s7E1hSuToTMOO1MBo4Sr/R2jhVsZVA+3Rn9DinWg2hOFwmvgw9Kax20bSNVXFigaLTr9+wSSfxPYQVUAtYlsP5zaZIH+1Q2KYFIVXYiI6IGwpVyN6jfaKInSWP0hu6C1H/+3GWRVshrx+lwWDpimwM3F1l1KU=</signature></ap>', '2015-07-17 16:55:26', '0000', 'M85150717165526046000014');
INSERT INTO `fm_settlement` VALUES (7325, 6200, '3', '18310550024', '2015-07-17 16:55:35', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165536423000015</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>jMJxJt/5gnRPhu+20j5YH/MXyfyaPxkwuRWNkv+/OkJBP3OBzL5IrpIpdO7uc4B5XHPgE1QFss+sCjW0oCiongGnS9evdjtK81a7ACFmhMSEdSAvq7fJBgkP98AVqKCsKalDXUOW2SNkY1/jpvqLGZjlh42c1R3W4FFcImczSzQ=</signature></ap>', '2015-07-17 16:55:37', '0000', 'M85150717165536423000015');
INSERT INTO `fm_settlement` VALUES (7326, 6200, '3', '18310550024', '2015-07-17 16:57:16', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165716658000016</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>HZYgfAot5qZsei+BO/lyCrXWK/jkhQjjhrGcg8S6BvjQ28E+Um+2PjCM5S/AsTThAKmNcV++UQCugA9CtDE1Vem10SZsxgaLHchE4IpMUoBc8Az4xwjWnDjwKsE5EBRls0q5pJ2Z0b34nJRdsCX9EC89LohdycOamEfue83+jPo=</signature></ap>', '2015-07-17 16:57:16', '0000', 'M85150717165716658000016');
INSERT INTO `fm_settlement` VALUES (7327, 6200, '3', '18310550024', '2015-07-17 16:57:17', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165717323000017</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>GyF1IE5frR0GQkAiirmhSm5PXeZgMreH2WCDyp4khKrdzvERZ0QlhE0uHXGOFjxm/2R/CCrP5NP4UEJ/WmMyvIkMtsvyCF9DKbNuYSV2DMyvimz6vjDXYDb7rYH4bgDC9a2CVcx+QJQtVvsF2Ks7Lx/o9kX5tWk2ZjAnVhPguEc=</signature></ap>', '2015-07-17 16:57:17', '0000', 'M85150717165717323000017');
INSERT INTO `fm_settlement` VALUES (7328, 6200, '3', '18310550024', '2015-07-17 16:58:03', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165803538000018</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>C75tMTbMQ5V4qtTtAZo7AUNXs4/2iYNSJpGQVeqSrEi8SLTpS4g8Bb2XkF1/WM7jRsACpAuyw4d3bc8Q7AKCnh+ouKS3aWYyL88pMREspeSMJiLsh1GEs+7eAIS7ztYPkz2ve2PzqUI9NjPFfTKb/UXao0D2kmSibk/TcxSCzd4=</signature></ap>', '2015-07-17 16:58:03', '0000', 'M85150717165803538000018');
INSERT INTO `fm_settlement` VALUES (7329, 6200, '3', '18310550024', '2015-07-17 16:58:06', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165807053000019</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>2laiUXPB6J5R7vL4zfiLQD0ZOW9aGC+XP6l4cec/oxaI+f+bL8Qtgi25Jwz2kJ77kO+w6tv2gRVms2PFK+sBD6dxh1ai0WfhOSuUYChoReqmQz4TrVzgv5VYIgtIOGqOfHxPxpDQ3WwjTcX2gTc+YwZQSQch/Gy1xsf2PGd297w=</signature></ap>', '2015-07-17 16:58:07', '0000', 'M85150717165807053000019');
INSERT INTO `fm_settlement` VALUES (7330, 6200, '3', '18310550024', '2015-07-17 16:58:09', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>0000</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M85150717165809679000020</mchnt_txn_ssn><results><result><user_id>18310550024</user_id><ct_balance>2969700</ct_balance><ca_balance>2169700</ca_balance><cf_balance>800000</cf_balance><cu_balance>0</cu_balance></result></results></plain><signature>QbNsrQ08Pb7ScWdcQQk74hSuP5SgfcSy+oLTsRkIwwPGDgGHDEhDUberKYR8fH0YnGqNsUSNGFvPP+C+QqUq9c3mQ7qWISmxr1PDxiWtRTxHqIQB+1trFh/mvIhDbKk4mhutYXL8XsI1avB1uvoNHALy4ynt4XMOmUqFPmOPUWY=</signature></ap>', '2015-07-17 16:58:09', '0000', 'M85150717165809679000020');
INSERT INTO `fm_settlement` VALUES (7331, 6246, '2', '18310550032', '2015-07-17 17:00:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717170000111000021</mchnt_txn_ssn><contract_no>000003303247</contract_no></plain><signature>UYTGXOuueaO9U/fjmCfKPLVxtntmuMQDjzpbYquc9FuzzpmOxRJTVWq8JC72yszoaMHeqBKPfHZxIsgThFMKx1jDJbOMN71uHDCJb2DkpiNP6AHzqH7s3QCpDpSHPNwKbQLJDXhe/WILH75ck0X+POTx3jV0qRYyDhWuqKjZUqY=</signature></ap>', '2015-07-17 17:00:00', '3018', 'M83150717170000111000021');
INSERT INTO `fm_settlement` VALUES (7332, 6163, '2', '18310550016', '2015-07-17 17:00:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717170000577000022</mchnt_txn_ssn><contract_no>000003303248</contract_no></plain><signature>BDRm1R41ENpFGMBKBDgWh7mHsZwzdis5Ja6Dj3D1t1KULHswEHV8/2COXrWXJsTFmfvfF3OhkWnwB1+CCSDE0Db4t3SZIVae+CF+//ZaeDWtLf8Jainuz2PbEVMmYjQBWmDytnUlnWqtlRXX+BRT0/GYHNs4KgOm19CYygq0+js=</signature></ap>', '2015-07-17 17:00:00', '3018', 'M83150717170000577000022');
INSERT INTO `fm_settlement` VALUES (7333, 6246, '2', '1000000', '2015-07-17 17:00:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717170000362000011</mchnt_txn_ssn><contract_no>000003303251</contract_no></plain><signature>14gEOoM8xFxl18+AsRe0h3dBSZ3GFmhKvKfqsyNBZdYqh5iiyULBxCKItYv/GCAhaIP9ynNsoQr6vnFO7aHQ6R+KT3SoMWzPPhbV9DV4UtL67emxvp8gaAkeCVx74zvKb0VexXXIMAVE422FPRCrUuv1MK7aH+P8SrB1MtdJHXU=</signature></ap>', '2015-07-17 17:00:00', '3018', 'M83150717170000362000011');
INSERT INTO `fm_settlement` VALUES (7334, 6163, '2', '1000000', '2015-07-17 17:00:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717170000833000012</mchnt_txn_ssn><contract_no>000003303252</contract_no></plain><signature>ou6GfXIFlVspi8aYaUpfaFjfxWbrddoOT7wfwHfAPtGnGh5gBe4zFf2bNWVW62XaqUhpTbuQcKpDRq57t5Sebo34thvpR5mSNtVo6MCn5BIgyEsBmV4NvIhAuMcH7pE0hFerDYs9FxIK14EB2ssprcxCrT4uCggUSDgnYNHn5es=</signature></ap>', '2015-07-17 17:00:01', '3018', 'M83150717170000833000012');
INSERT INTO `fm_settlement` VALUES (7335, 6246, '2', '18310550032', '2015-07-17 17:00:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717170000097000019</mchnt_txn_ssn><contract_no>000003303253</contract_no></plain><signature>cLFLFjHv+ZInQOPtDdlOMgTwJEjE15R6VmDFUE+H+iGVGXvJF8wLTTN3+8g6QsroU96smRApow5zBPmtx4MMXooibdawy9xKKGQo+Wdi/lmwFHhLojbXrlRAKnJ3KC68mOWSZ+q8hqn1BvyMDjI92g/UajdE7gXuV/zBDqdBykc=</signature></ap>', '2015-07-17 17:00:00', '3018', 'M83150717170000097000019');
INSERT INTO `fm_settlement` VALUES (7336, 6163, '2', '18310550016', '2015-07-17 17:00:00', '<?xml version=\"1.0\" encoding=\"UTF-8\"?><ap><plain><resp_code>3018</resp_code><mchnt_cd>0002900F0096235</mchnt_cd><mchnt_txn_ssn>M83150717170000554000020</mchnt_txn_ssn><contract_no>000003303254</contract_no></plain><signature>ZfD+dstglPJttUP43MNgrhIBWT3y7qfARjGHv6gHhRkni32zXrYjh7n5QK2kAbZNBhPR7qRH3XwBih4ZfPhg1SYv2LMZojHJdyuRUQyRDWM/H392gjSaPUZlryxk9Cnf51e4Cngi2+m45byHHQsZmhxeozoeH5fTlDxdhBO/gG0=</signature></ap>', '2015-07-17 17:00:00', '3018', 'M83150717170000554000020');

-- ----------------------------
-- Table structure for fm_sms
-- ----------------------------
DROP TABLE IF EXISTS `fm_sms`;
CREATE TABLE `fm_sms`  (
  `sms_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
  `sms_phone_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֻ���',
  `sms_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sms_verify_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��֤��',
  `sms_sent_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `sms_is_send_success` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-1' COMMENT '�Ƿ��ͳɹ� 1 �� 0 �� - 1δ��',
  `sms_content` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��Ϣ����',
  `sms_is_verify` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '�Ƿ�У�� 1 �� 0 ��',
  `sms_vefity_time` datetime(0) NULL DEFAULT NULL COMMENT 'У��ʱ��',
  PRIMARY KEY (`sms_id`) USING BTREE,
  INDEX `Index_sms_phone_no`(`sms_phone_no`) USING BTREE,
  INDEX `Index_sms_sent_type`(`sms_type`) USING BTREE,
  INDEX `Index_sms_code`(`sms_verify_code`) USING BTREE,
  INDEX `Index_sms_is_verify`(`sms_is_verify`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 189 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '������֤��' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_sms
-- ----------------------------
INSERT INTO `fm_sms` VALUES (1, '18682109666', '1', '553833', '2015-06-18 10:01:46', '1', '【信而富】您好，您本次的手机验证码为：553833，有效期为 5分钟。', '1', '2015-06-18 10:02:03');
INSERT INTO `fm_sms` VALUES (2, '13651099898', '2', '287176', '2015-06-18 10:10:47', '1', '【信而富】您好，您本次的手机验证码为：287176，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (3, '18310550014', '2', '304470', '2015-06-18 15:17:27', '1', '【信而富】您好，您本次的手机验证码为：304470，有效期为 5分钟。', '1', '2015-06-18 15:18:30');
INSERT INTO `fm_sms` VALUES (4, '18310550015', '2', '578941', '2015-06-18 16:12:11', '1', '【信而富】您好，您本次的手机验证码为：578941，有效期为 5分钟。', '1', '2015-06-18 16:12:21');
INSERT INTO `fm_sms` VALUES (5, '18310550016', '1', '420661', '2015-06-18 17:33:20', '1', '【信而富】您好，您本次的手机验证码为：420661，有效期为 5分钟。', '1', '2015-06-18 17:33:35');
INSERT INTO `fm_sms` VALUES (6, '18310550017', '1', '098312', '2015-06-18 17:55:06', '1', '【信而富】您好，您本次的手机验证码为：098312，有效期为 5分钟。', '1', '2015-06-18 17:55:16');
INSERT INTO `fm_sms` VALUES (7, '18310550018', '2', '692283', '2015-06-18 18:17:30', '1', '【信而富】您好，您本次的手机验证码为：692283，有效期为 5分钟。', '1', '2015-06-18 18:17:48');
INSERT INTO `fm_sms` VALUES (8, '18310550017', '1', '073666', '2015-06-18 18:18:08', '1', '【信而富】您好，您本次的手机验证码为：073666，有效期为 5分钟。', '1', '2015-06-18 18:18:22');
INSERT INTO `fm_sms` VALUES (9, '18310550018', '1', '464664', '2015-06-18 18:18:45', '1', '【信而富】您好，您本次的手机验证码为：464664，有效期为 5分钟。', '1', '2015-06-18 18:19:00');
INSERT INTO `fm_sms` VALUES (10, '18310550018', '1', '053434', '2015-06-18 18:20:09', '1', '【信而富】您好，您本次的手机验证码为：053434，有效期为 5分钟。', '1', '2015-06-18 18:21:35');
INSERT INTO `fm_sms` VALUES (11, '18310550019', '1', '860622', '2015-06-18 18:21:30', '1', '【信而富】您好，您本次的手机验证码为：860622，有效期为 5分钟。', '1', '2015-06-18 18:21:55');
INSERT INTO `fm_sms` VALUES (12, '18310550020', '1', '776506', '2015-06-18 18:46:59', '1', '【信而富】您好，您本次的手机验证码为：776506，有效期为 5分钟。', '1', '2015-06-18 18:47:10');
INSERT INTO `fm_sms` VALUES (13, '18310550019', '1', '135028', '2015-06-19 09:29:00', '1', '【信而富】您好，您本次的手机验证码为：135028，有效期为 5分钟。', '1', '2015-06-19 09:29:24');
INSERT INTO `fm_sms` VALUES (14, '18310550019', '2', '626386', '2015-06-19 09:29:43', '1', '【信而富】您好，您本次的手机验证码为：626386，有效期为 5分钟。', '1', '2015-06-19 09:29:59');
INSERT INTO `fm_sms` VALUES (15, '18310550021', '1', '240780', '2015-06-19 09:30:52', '1', '【信而富】您好，您本次的手机验证码为：240780，有效期为 5分钟。', '1', '2015-06-19 09:31:29');
INSERT INTO `fm_sms` VALUES (16, '18002206358', '1', '066132', '2015-06-19 13:23:02', '1', '【信而富】您好，您本次的手机验证码为：066132，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (17, '13261777763', '1', '330366', '2015-06-19 19:19:53', '1', '【信而富】您好，您本次的手机验证码为：330366，有效期为 5分钟。', '1', '2015-06-19 19:20:30');
INSERT INTO `fm_sms` VALUES (18, '15652866160', '1', '887128', '2015-06-23 09:30:39', '1', '【信而富】您好，您本次的手机验证码为：887128，有效期为 5分钟。', '1', '2015-06-23 09:31:11');
INSERT INTO `fm_sms` VALUES (19, '18511574497', '1', '261307', '2015-06-23 11:50:31', '1', '【信而富】您好，您本次的手机验证码为：261307，有效期为 5分钟。', '1', '2015-06-23 11:50:54');
INSERT INTO `fm_sms` VALUES (20, '13774465580', '1', '553207', '2015-06-23 15:14:35', '1', '【信而富】您好，您本次的手机验证码为：553207，有效期为 5分钟。', '1', '2015-06-23 15:15:00');
INSERT INTO `fm_sms` VALUES (21, '13917397817', '1', '453290', '2015-06-23 15:53:04', '1', '【信而富】您好，您本次的手机验证码为：453290，有效期为 5分钟。', '1', '2015-06-23 15:54:49');
INSERT INTO `fm_sms` VALUES (22, '18917676180', '1', '114004', '2015-06-23 15:59:38', '1', '【信而富】您好，您本次的手机验证码为：114004，有效期为 5分钟。', '1', '2015-06-23 16:00:03');
INSERT INTO `fm_sms` VALUES (23, '13825260892', '1', '761203', '2015-06-23 17:42:00', '1', '【信而富】您好，您本次的手机验证码为：761203，有效期为 5分钟。', '1', '2015-06-23 17:42:49');
INSERT INTO `fm_sms` VALUES (24, '13601702682', '1', '623177', '2015-06-23 17:54:13', '1', '【信而富】您好，您本次的手机验证码为：623177，有效期为 5分钟。', '1', '2015-06-23 17:54:35');
INSERT INTO `fm_sms` VALUES (25, '13601702682', '2', '766222', '2015-06-23 17:55:10', '1', '【信而富】您好，您本次的手机验证码为：766222，有效期为 5分钟。', '1', '2015-06-23 17:55:30');
INSERT INTO `fm_sms` VALUES (26, '18037500828', '2', '354829', '2015-06-23 18:46:34', '1', '【信而富】您好，您本次的手机验证码为：354829，有效期为 5分钟。', '1', '2015-06-23 18:47:04');
INSERT INTO `fm_sms` VALUES (27, '18037500828', '1', '394315', '2015-06-23 18:47:38', '1', '【信而富】您好，您本次的手机验证码为：394315，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (28, '18037500828', '1', '896657', '2015-06-23 18:48:40', '1', '【信而富】您好，您本次的手机验证码为：896657，有效期为 5分钟。', '1', '2015-06-23 18:49:07');
INSERT INTO `fm_sms` VALUES (29, '15800784148', '1', '252084', '2015-06-23 18:49:36', '1', '【信而富】您好，您本次的手机验证码为：252084，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (30, '15800784178', '1', '201864', '2015-06-23 18:50:25', '1', '【信而富】您好，您本次的手机验证码为：201864，有效期为 5分钟。', '1', '2015-06-23 18:50:55');
INSERT INTO `fm_sms` VALUES (31, '15800784178', '1', '299587', '2015-06-23 18:51:42', '1', '【信而富】您好，您本次的手机验证码为：299587，有效期为 5分钟。', '1', '2015-06-23 18:52:11');
INSERT INTO `fm_sms` VALUES (32, '13426454299', '1', '579784', '2015-06-23 18:52:30', '1', '【信而富】您好，您本次的手机验证码为：579784，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (33, '13426454299', '1', '582969', '2015-06-23 18:54:25', '1', '【信而富】您好，您本次的手机验证码为：582969，有效期为 5分钟。', '1', '2015-06-23 18:54:46');
INSERT INTO `fm_sms` VALUES (34, '13651849649', '1', '677857', '2015-06-23 20:16:05', '1', '【信而富】您好，您本次的手机验证码为：677857，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (35, '13823682705', '1', '269960', '2015-06-24 10:51:36', '1', '【信而富】您好，您本次的手机验证码为：269960，有效期为 5分钟。', '1', '2015-06-24 10:52:10');
INSERT INTO `fm_sms` VALUES (36, '13651099898', '2', '671977', '2015-06-24 10:54:16', '1', '【信而富】您好，您本次的手机验证码为：671977，有效期为 5分钟。', '1', '2015-06-24 10:54:47');
INSERT INTO `fm_sms` VALUES (37, '13651099898', '2', '304549', '2015-06-24 11:02:01', '1', '【信而富】您好，您本次的手机验证码为：304549，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (38, '15618569433', '1', '015713', '2015-06-24 16:47:49', '1', '【信而富】您好，您本次的手机验证码为：015713，有效期为 5分钟。', '1', '2015-06-24 16:48:20');
INSERT INTO `fm_sms` VALUES (39, '13916803496', '1', '119433', '2015-06-24 17:31:54', '1', '【信而富】您好，您本次的手机验证码为：119433，有效期为 5分钟。', '1', '2015-06-24 17:32:15');
INSERT INTO `fm_sms` VALUES (40, '13817122966', '1', '360111', '2015-06-25 10:03:38', '1', '【信而富】您好，您本次的手机验证码为：360111，有效期为 5分钟。', '1', '2015-06-25 10:04:02');
INSERT INTO `fm_sms` VALUES (41, '13817122966', '2', '483946', '2015-06-25 10:43:53', '1', '【信而富】您好，您本次的手机验证码为：483946，有效期为 5分钟。', '1', '2015-06-25 10:44:18');
INSERT INTO `fm_sms` VALUES (42, '15195204888', '1', '041135', '2015-06-25 11:03:46', '1', '【信而富】您好，您本次的手机验证码为：041135，有效期为 5分钟。', '1', '2015-06-25 11:04:38');
INSERT INTO `fm_sms` VALUES (43, '15195204888', '2', '642138', '2015-06-25 11:05:41', '1', '【信而富】您好，您本次的手机验证码为：642138，有效期为 5分钟。', '1', '2015-06-25 11:06:08');
INSERT INTO `fm_sms` VALUES (44, '13601702682', '1', '447147', '2015-06-25 11:08:53', '1', '【信而富】您好，您本次的手机验证码为：447147，有效期为 5分钟。', '1', '2015-06-25 11:09:26');
INSERT INTO `fm_sms` VALUES (45, '13601702682', '2', '947479', '2015-06-25 11:10:10', '1', '【信而富】您好，您本次的手机验证码为：947479，有效期为 5分钟。', '1', '2015-06-25 11:10:30');
INSERT INTO `fm_sms` VALUES (46, '13482717891', '1', '065073', '2015-06-25 15:03:47', '1', '【信而富】您好，您本次的手机验证码为：065073，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (47, '13482717891', '1', '264612', '2015-06-25 15:05:04', '1', '【信而富】您好，您本次的手机验证码为：264612，有效期为 5分钟。', '1', '2015-06-25 15:13:42');
INSERT INTO `fm_sms` VALUES (48, '13482717891', '1', '084992', '2015-06-25 15:06:21', '1', '【信而富】您好，您本次的手机验证码为：084992，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (49, '13482717894', '1', '846509', '2015-06-25 15:08:43', '1', '【信而富】您好，您本次的手机验证码为：846509，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (50, '13482717891', '1', '886910', '2015-06-25 15:13:07', '1', '【信而富】您好，您本次的手机验证码为：886910，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (51, '18002206359', '1', '608655', '2015-06-25 17:35:12', '1', '【信而富】您好，您本次的手机验证码为：608655，有效期为 5分钟。', '1', '2015-06-25 17:35:35');
INSERT INTO `fm_sms` VALUES (52, '18002206359', '2', '998843', '2015-06-25 17:38:24', '1', '【信而富】您好，您本次的手机验证码为：998843，有效期为 5分钟。', '1', '2015-06-25 17:38:41');
INSERT INTO `fm_sms` VALUES (53, '13651849649', '1', '043553', '2015-06-25 22:18:52', '1', '【信而富】您好，您本次的手机验证码为：043553，有效期为 5分钟。', '1', '2015-06-25 22:19:32');
INSERT INTO `fm_sms` VALUES (54, '13482717891', '1', '225539', '2015-06-26 09:44:10', '1', '【信而富】您好，您本次的手机验证码为：225539，有效期为 5分钟。', '1', '2015-06-26 10:00:31');
INSERT INTO `fm_sms` VALUES (55, '13482717891', '1', '767239', '2015-06-26 09:45:32', '1', '【信而富】您好，您本次的手机验证码为：767239，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (56, '13482717891', '1', '099099', '2015-06-26 09:49:31', '1', '【信而富】您好，您本次的手机验证码为：099099，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (57, '13482717891', '1', '966956', '2015-06-26 09:51:18', '1', '【信而富】您好，您本次的手机验证码为：966956，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (58, '13482717891', '1', '458877', '2015-06-26 09:54:45', '1', '【信而富】您好，您本次的手机验证码为：458877，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (59, '13482717861', '1', '357281', '2015-06-26 09:57:46', '1', '【信而富】您好，您本次的手机验证码为：357281，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (60, '18201773918', '1', '579699', '2015-06-26 09:59:00', '1', '【信而富】您好，您本次的手机验证码为：579699，有效期为 5分钟。', '1', '2015-06-26 10:07:55');
INSERT INTO `fm_sms` VALUES (61, '13651849649', '1', '898359', '2015-06-26 10:00:58', '1', '【信而富】您好，您本次的手机验证码为：898359，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (62, '13482717891', '2', '587116', '2015-06-26 10:01:41', '1', '【信而富】您好，您本次的手机验证码为：587116，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (63, '13482717891', '2', '142511', '2015-06-26 10:03:55', '1', '【信而富】您好，您本次的手机验证码为：142511，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (64, '13482717891', '2', '270751', '2015-06-26 10:05:20', '1', '【信而富】您好，您本次的手机验证码为：270751，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (65, '13651849649', '1', '953740', '2015-06-26 10:05:51', '1', '【信而富】您好，您本次的手机验证码为：953740，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (66, '13482717891', '2', '952167', '2015-06-26 10:06:51', '1', '【信而富】您好，您本次的手机验证码为：952167，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (67, '13581915307', '1', '727380', '2015-06-26 10:09:51', '1', '【信而富】您好，您本次的手机验证码为：727380，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (68, '13917170717', '1', '049826', '2015-06-26 14:12:14', '1', '【信而富】您好，您本次的手机验证码为：049826，有效期为 5分钟。', '1', '2015-06-26 14:13:42');
INSERT INTO `fm_sms` VALUES (69, '13651849649', '1', '628171', '2015-06-26 14:15:48', '1', '【信而富】您好，您本次的手机验证码为：628171，有效期为 5分钟。', '1', '2015-06-26 14:16:10');
INSERT INTO `fm_sms` VALUES (70, '18602503377', '1', '111076', '2015-06-26 15:23:19', '1', '【信而富】您好，您本次的手机验证码为：111076，有效期为 5分钟。', '1', '2015-06-26 15:23:59');
INSERT INTO `fm_sms` VALUES (71, '15298393487', '1', '107638', '2015-06-26 15:23:19', '1', '【信而富】您好，您本次的手机验证码为：107638，有效期为 5分钟。', '1', '2015-06-26 15:23:49');
INSERT INTO `fm_sms` VALUES (72, '13515126338', '1', '585969', '2015-06-26 15:26:08', '1', '【信而富】您好，您本次的手机验证码为：585969，有效期为 5分钟。', '1', '2015-06-26 15:27:14');
INSERT INTO `fm_sms` VALUES (73, '18310550021', '1', '416218', '2015-06-26 16:53:30', '1', '【信而富】您好，您本次的手机验证码为：416218，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (74, '18310550022', '1', '451490', '2015-06-26 16:53:30', '1', '【信而富】您好，您本次的手机验证码为：451490，有效期为 5分钟。', '1', '2015-06-26 16:54:11');
INSERT INTO `fm_sms` VALUES (75, '18310550022', '1', '745108', '2015-06-26 16:54:02', '1', '【信而富】您好，您本次的手机验证码为：745108，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (76, '18310550022', '1', '499488', '2015-06-26 16:55:18', '1', '【信而富】您好，您本次的手机验证码为：499488，有效期为 5分钟。', '1', '2015-06-26 16:55:37');
INSERT INTO `fm_sms` VALUES (77, '18310550023', '1', '833829', '2015-06-26 16:55:46', '1', '【信而富】您好，您本次的手机验证码为：833829，有效期为 5分钟。', '1', '2015-06-26 16:55:54');
INSERT INTO `fm_sms` VALUES (78, '18310550024', '1', '638296', '2015-06-26 16:57:10', '1', '【信而富】您好，您本次的手机验证码为：638296，有效期为 5分钟。', '1', '2015-06-26 16:57:24');
INSERT INTO `fm_sms` VALUES (79, '18310550025', '1', '811773', '2015-06-29 09:27:16', '1', '【信而富】您好，您本次的手机验证码为：811773，有效期为 5分钟。', '1', '2015-06-29 09:27:45');
INSERT INTO `fm_sms` VALUES (80, '18310550026', '1', '575224', '2015-06-29 09:44:57', '1', '【信而富】您好，您本次的手机验证码为：575224，有效期为 5分钟。', '1', '2015-06-29 09:46:00');
INSERT INTO `fm_sms` VALUES (81, '18310550027', '1', '103161', '2015-06-29 09:55:06', '1', '【信而富】您好，您本次的手机验证码为：103161，有效期为 5分钟。', '1', '2015-06-29 09:55:18');
INSERT INTO `fm_sms` VALUES (82, '18310550028', '1', '398499', '2015-06-30 13:40:29', '1', '【信而富】您好，您本次的手机验证码为：398499，有效期为 5分钟。', '1', '2015-06-30 13:40:56');
INSERT INTO `fm_sms` VALUES (83, '13818133555', '1', '348826', '2015-06-30 14:35:37', '1', '【信而富】您好，您本次的手机验证码为：348826，有效期为 5分钟。', '1', '2015-06-30 14:36:12');
INSERT INTO `fm_sms` VALUES (84, '18002206356', '1', '975160', '2015-06-30 15:11:36', '1', '【信而富】您好，您本次的手机验证码为：975160，有效期为 5分钟。', '1', '2015-06-30 15:11:58');
INSERT INTO `fm_sms` VALUES (85, '18310550029', '1', '957677', '2015-06-30 17:04:51', '1', '【信而富】您好，您本次的手机验证码为：957677，有效期为 5分钟。', '1', '2015-06-30 17:05:13');
INSERT INTO `fm_sms` VALUES (86, '13755923346', '1', '112425', '2015-07-01 06:15:08', '1', '【信而富】您好，您本次的手机验证码为：112425，有效期为 5分钟。', '1', '2015-07-01 06:15:32');
INSERT INTO `fm_sms` VALUES (87, '18701193178', '1', '799767', '2015-07-01 09:23:56', '1', '【信而富】您好，您本次的手机验证码为：799767，有效期为 5分钟。', '1', '2015-07-01 09:24:23');
INSERT INTO `fm_sms` VALUES (88, '13554755489', '1', '222162', '2015-07-01 10:13:31', '1', '【信而富】您好，您本次的手机验证码为：222162，有效期为 5分钟。', '1', '2015-07-01 10:15:04');
INSERT INTO `fm_sms` VALUES (89, '15999558513', '1', '789704', '2015-07-01 10:35:13', '1', '【信而富】您好，您本次的手机验证码为：789704，有效期为 5分钟。', '1', '2015-07-01 10:35:55');
INSERT INTO `fm_sms` VALUES (90, '18927437370', '1', '253738', '2015-07-01 10:50:25', '1', '【信而富】您好，您本次的手机验证码为：253738，有效期为 5分钟。', '1', '2015-07-01 10:50:55');
INSERT INTO `fm_sms` VALUES (91, '13751151450', '1', '448267', '2015-07-01 10:57:49', '1', '【信而富】您好，您本次的手机验证码为：448267，有效期为 5分钟。', '1', '2015-07-01 10:59:08');
INSERT INTO `fm_sms` VALUES (92, '18611805534', '1', '506317', '2015-07-01 13:41:40', '1', '【信而富】您好，您本次的手机验证码为：506317，有效期为 5分钟。', '1', '2015-07-01 13:43:54');
INSERT INTO `fm_sms` VALUES (93, '15150610411', '1', '757828', '2015-07-01 15:58:31', '1', '【信而富】您好，您本次的手机验证码为：757828，有效期为 5分钟。', '1', '2015-07-01 15:58:56');
INSERT INTO `fm_sms` VALUES (94, '13951809494', '1', '699714', '2015-07-01 16:07:49', '1', '【信而富】您好，您本次的手机验证码为：699714，有效期为 5分钟。', '1', '2015-07-01 16:08:19');
INSERT INTO `fm_sms` VALUES (95, '13811660292', '1', '334389', '2015-07-01 16:09:51', '1', '【信而富】您好，您本次的手机验证码为：334389，有效期为 5分钟。', '1', '2015-07-01 16:10:22');
INSERT INTO `fm_sms` VALUES (96, '15950468633', '1', '777014', '2015-07-01 16:14:34', '1', '【信而富】您好，您本次的手机验证码为：777014，有效期为 5分钟。', '1', '2015-07-01 16:15:21');
INSERT INTO `fm_sms` VALUES (97, '13951809494', '1', '935508', '2015-07-01 16:22:28', '1', '【信而富】您好，您本次的手机验证码为：935508，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (98, '18310550030', '1', '659037', '2015-07-01 16:34:41', '1', '【信而富】您好，您本次的手机验证码为：659037，有效期为 5分钟。', '1', '2015-07-01 16:36:12');
INSERT INTO `fm_sms` VALUES (99, '13002105862', '1', '995636', '2015-07-01 16:35:32', '1', '【信而富】您好，您本次的手机验证码为：995636，有效期为 5分钟。', '1', '2015-07-01 16:36:02');
INSERT INTO `fm_sms` VALUES (100, '15195204888', '1', '768690', '2015-07-01 17:13:03', '1', '【信而富】您好，您本次的手机验证码为：768690，有效期为 5分钟。', '1', '2015-07-01 17:13:38');
INSERT INTO `fm_sms` VALUES (101, '15195204888', '2', '235652', '2015-07-01 17:14:08', '1', '【信而富】您好，您本次的手机验证码为：235652，有效期为 5分钟。', '1', '2015-07-01 17:14:37');
INSERT INTO `fm_sms` VALUES (102, '13522337797', '1', '794652', '2015-07-01 17:25:15', '1', '【信而富】您好，您本次的手机验证码为：794652，有效期为 5分钟。', '1', '2015-07-01 17:25:55');
INSERT INTO `fm_sms` VALUES (103, '18698690337', '1', '785860', '2015-07-01 17:58:39', '1', '【信而富】您好，您本次的手机验证码为：785860，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (104, '18698690337', '1', '069124', '2015-07-01 18:00:21', '1', '【信而富】您好，您本次的手机验证码为：069124，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (105, '13621292093', '1', '202408', '2015-07-01 18:10:15', '1', '【信而富】您好，您本次的手机验证码为：202408，有效期为 5分钟。', '1', '2015-07-01 18:10:43');
INSERT INTO `fm_sms` VALUES (106, '18103084776', '1', '148778', '2015-07-02 09:31:25', '1', '【信而富】您好，您本次的手机验证码为：148778，有效期为 5分钟。', '1', '2015-07-02 09:32:05');
INSERT INTO `fm_sms` VALUES (107, '13813865439', '2', '244144', '2015-07-03 16:06:00', '1', '【信而富】您好，您本次的手机验证码为：244144，有效期为 5分钟。', '1', '2015-07-03 16:07:01');
INSERT INTO `fm_sms` VALUES (108, '13162394299', '2', '493952', '2015-07-03 16:07:42', '1', '【信而富】您好，您本次的手机验证码为：493952，有效期为 5分钟。', '1', '2015-07-03 16:08:47');
INSERT INTO `fm_sms` VALUES (109, '13813865439', '1', '054877', '2015-07-03 16:15:46', '1', '【信而富】您好，您本次的手机验证码为：054877，有效期为 5分钟。', '1', '2015-07-03 16:16:37');
INSERT INTO `fm_sms` VALUES (110, '18916223307', '1', '110523', '2015-07-03 16:49:27', '1', '【信而富】您好，您本次的手机验证码为：110523，有效期为 5分钟。', '1', '2015-07-03 16:50:09');
INSERT INTO `fm_sms` VALUES (111, '13293343583', '1', '520135', '2015-07-03 17:28:30', '1', '【信而富】您好，您本次的手机验证码为：520135，有效期为 5分钟。', '1', '2015-07-03 17:29:08');
INSERT INTO `fm_sms` VALUES (112, '18602503377', '2', '458465', '2015-07-06 08:37:49', '1', '【信而富】您好，您本次的手机验证码为：458465，有效期为 5分钟。', '1', '2015-07-06 08:39:16');
INSERT INTO `fm_sms` VALUES (113, '18602503377', '2', '026651', '2015-07-06 08:41:30', '1', '【信而富】您好，您本次的手机验证码为：026651，有效期为 5分钟。', '1', '2015-07-06 08:42:16');
INSERT INTO `fm_sms` VALUES (114, '13813855571', '1', '733176', '2015-07-06 14:16:25', '1', '【信而富】您好，您本次的手机验证码为：733176，有效期为 5分钟。', '1', '2015-07-06 14:16:48');
INSERT INTO `fm_sms` VALUES (115, '18602503377', '1', '775061', '2015-07-06 14:39:39', '1', '【信而富】您好，您本次的手机验证码为：775061，有效期为 5分钟。', '1', '2015-07-06 14:40:03');
INSERT INTO `fm_sms` VALUES (116, '18602503377', '2', '933510', '2015-07-06 14:40:37', '1', '【信而富】您好，您本次的手机验证码为：933510，有效期为 5分钟。', '1', '2015-07-06 14:45:19');
INSERT INTO `fm_sms` VALUES (117, '15062267607', '1', '380264', '2015-07-06 14:43:35', '1', '【信而富】您好，您本次的手机验证码为：380264，有效期为 5分钟。', '1', '2015-07-06 14:44:04');
INSERT INTO `fm_sms` VALUES (118, '18602503377', '2', '234879', '2015-07-06 14:50:26', '1', '【信而富】您好，您本次的手机验证码为：234879，有效期为 5分钟。', '1', '2015-07-06 14:55:33');
INSERT INTO `fm_sms` VALUES (119, '13813865439', '2', '949834', '2015-07-06 14:52:43', '1', '【信而富】您好，您本次的手机验证码为：949834，有效期为 5分钟。', '1', '2015-07-06 14:53:05');
INSERT INTO `fm_sms` VALUES (120, '13651398146', '1', '031125', '2015-07-06 15:08:34', '1', '【信而富】您好，您本次的手机验证码为：031125，有效期为 5分钟。', '1', '2015-07-06 15:09:39');
INSERT INTO `fm_sms` VALUES (121, '13601702682', '1', '573641', '2015-07-07 12:02:25', '1', '【信而富】您好，您本次的手机验证码为：573641，有效期为 5分钟。', '1', '2015-07-07 12:02:50');
INSERT INTO `fm_sms` VALUES (122, '13601702682', '2', '108868', '2015-07-07 12:03:10', '1', '【信而富】您好，您本次的手机验证码为：108868，有效期为 5分钟。', '1', '2015-07-07 12:05:08');
INSERT INTO `fm_sms` VALUES (123, '13601702682', '2', '720232', '2015-07-07 12:04:25', '1', '【信而富】您好，您本次的手机验证码为：720232，有效期为 5分钟。', '1', '2015-07-07 12:05:04');
INSERT INTO `fm_sms` VALUES (124, '13601702682', '2', '008330', '2015-07-07 12:08:41', '1', '【信而富】您好，您本次的手机验证码为：008330，有效期为 5分钟。', '1', '2015-07-07 12:09:05');
INSERT INTO `fm_sms` VALUES (125, '13601702682', '2', '396400', '2015-07-07 12:56:29', '1', '【信而富】您好，您本次的手机验证码为：396400，有效期为 5分钟。', '1', '2015-07-07 12:57:08');
INSERT INTO `fm_sms` VALUES (126, '18310550014', '2', '301701', '2015-07-07 14:27:06', '1', '【信而富】您好，您本次的手机验证码为：301701，有效期为 5分钟。', '1', '2015-07-07 14:28:22');
INSERT INTO `fm_sms` VALUES (127, '15001291621', '1', '269146', '2015-07-07 16:07:04', '1', '【信而富】您好，您本次的手机验证码为：269146，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (128, '18601979931', '1', '100321', '2015-07-07 16:08:51', '1', '【信而富】您好，您本次的手机验证码为：100321，有效期为 5分钟。', '1', '2015-07-07 16:09:41');
INSERT INTO `fm_sms` VALUES (129, '15001291621', '1', '108477', '2015-07-07 16:13:10', '1', '【信而富】您好，您本次的手机验证码为：108477，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (130, '15001291621', '1', '407764', '2015-07-07 16:14:16', '1', '【信而富】您好，您本次的手机验证码为：407764，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (131, '15001291621', '1', '618843', '2015-07-07 16:15:36', '1', '【信而富】您好，您本次的手机验证码为：618843，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (132, '13426454299', '1', '273748', '2015-07-07 16:16:57', '1', '【信而富】您好，您本次的手机验证码为：273748，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (133, '13426454299', '1', '490655', '2015-07-07 16:18:14', '1', '【信而富】您好，您本次的手机验证码为：490655，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (134, '15001291611', '1', '301826', '2015-07-07 16:18:37', '1', '【信而富】您好，您本次的手机验证码为：301826，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (135, '15001291621', '1', '914066', '2015-07-07 16:18:50', '1', '【信而富】您好，您本次的手机验证码为：914066，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (136, '13426454299', '1', '201092', '2015-07-07 16:20:29', '1', '【信而富】您好，您本次的手机验证码为：201092，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (137, '14782349620', '1', '032750', '2015-07-07 16:45:28', '1', '【信而富】您好，您本次的手机验证码为：032750，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (138, '18601979931', '2', '153938', '2015-07-07 17:00:14', '1', '【信而富】您好，您本次的手机验证码为：153938，有效期为 5分钟。', '1', '2015-07-07 17:28:15');
INSERT INTO `fm_sms` VALUES (139, '18310550014', '2', '718663', '2015-07-07 17:16:05', '1', '【信而富】您好，您本次的手机验证码为：718663，有效期为 5分钟。', '1', '2015-07-07 17:16:27');
INSERT INTO `fm_sms` VALUES (140, '18310550014', '2', '046218', '2015-07-07 17:17:25', '1', '【信而富】您好，您本次的手机验证码为：046218，有效期为 5分钟。', '1', '2015-07-07 17:18:16');
INSERT INTO `fm_sms` VALUES (141, '18601979931', '2', '143325', '2015-07-08 10:00:28', '1', '【信而富】您好，您本次的手机验证码为：143325，有效期为 5分钟。', '1', '2015-07-08 10:01:17');
INSERT INTO `fm_sms` VALUES (142, '18002206359', '1', '039485', '2015-07-08 14:29:42', '1', '【信而富】您好，您本次的手机验证码为：039485，有效期为 5分钟。', '1', '2015-07-08 14:30:34');
INSERT INTO `fm_sms` VALUES (143, '18002206359', '2', '094093', '2015-07-08 14:31:16', '1', '【信而富】您好，您本次的手机验证码为：094093，有效期为 5分钟。', '1', '2015-07-08 14:31:42');
INSERT INTO `fm_sms` VALUES (144, '18002206359', '2', '466728', '2015-07-08 14:32:23', '1', '【信而富】您好，您本次的手机验证码为：466728，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (145, '18310550030', '2', '959347', '2015-07-08 15:47:15', '1', '【信而富】您好，您本次的手机验证码为：959347，有效期为 5分钟。', '1', '2015-07-08 15:47:32');
INSERT INTO `fm_sms` VALUES (146, '18310550031', '1', '935450', '2015-07-08 15:47:50', '1', '【信而富】您好，您本次的手机验证码为：935450，有效期为 5分钟。', '1', '2015-07-08 15:48:24');
INSERT INTO `fm_sms` VALUES (147, '18310550021', '2', '507100', '2015-07-08 17:29:09', '1', '【信而富】您好，您本次的手机验证码为：507100，有效期为 5分钟。', '1', '2015-07-08 17:29:27');
INSERT INTO `fm_sms` VALUES (148, '18813130608', '2', '347686', '2015-07-09 17:45:03', '1', '【信而富】您好，您本次的手机验证码为：347686，有效期为 5分钟。', '1', '2015-07-09 17:45:35');
INSERT INTO `fm_sms` VALUES (149, '13261777763', '2', '162351', '2015-07-09 17:49:39', '1', '【信而富】您好，您本次的手机验证码为：162351，有效期为 5分钟。', '1', '2015-07-09 17:53:32');
INSERT INTO `fm_sms` VALUES (150, '18813130608', '2', '125267', '2015-07-09 18:01:27', '1', '【信而富】您好，您本次的手机验证码为：125267，有效期为 5分钟。', '1', '2015-07-09 18:02:10');
INSERT INTO `fm_sms` VALUES (151, '18310550022', '1', '032250', '2015-07-09 18:44:10', '1', '【信而富】您好，您本次的手机验证码为：032250，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (152, '18002206356', '1', '074700', '2015-07-09 18:45:13', '1', '【信而富】您好，您本次的手机验证码为：074700，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (153, '18310550032', '1', '450359', '2015-07-10 14:02:21', '1', '【信而富】您好，您本次的手机验证码为：450359，有效期为 5分钟。', '1', '2015-07-10 14:04:28');
INSERT INTO `fm_sms` VALUES (154, '18002206359', '1', '610991', '2015-07-10 14:09:07', '1', '【信而富】您好，您本次的手机验证码为：610991，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (155, '13263135239', '1', '694564', '2015-07-10 14:19:24', '1', '【信而富】您好，您本次的手机验证码为：694564，有效期为 5分钟。', '1', '2015-07-10 14:19:58');
INSERT INTO `fm_sms` VALUES (156, '18652998019', '2', '903029', '2015-07-11 13:16:22', '1', '【信而富】您好，您本次的手机验证码为：903029，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (157, '15862591846', '1', '022539', '2015-07-11 15:19:27', '1', '【信而富】您好，您本次的手机验证码为：022539，有效期为 5分钟。', '1', '2015-07-11 15:19:59');
INSERT INTO `fm_sms` VALUES (158, '18611163318', '2', '278560', '2015-07-13 09:36:37', '1', '【信而富】您好，您本次的手机验证码为：278560，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (159, '18611163318', '2', '159756', '2015-07-13 10:08:29', '1', '【信而富】您好，您本次的手机验证码为：159756，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (160, '18611163318', '2', '765703', '2015-07-13 10:48:54', '1', '【信而富】您好，您本次的手机验证码为：765703，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (161, '18611163318', '2', '708424', '2015-07-13 10:48:55', '1', '【信而富】您好，您本次的手机验证码为：708424，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (162, '18611163318', '2', '260094', '2015-07-13 10:49:28', '1', '【信而富】您好，您本次的手机验证码为：260094，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (163, '18813130609', '3', '745011', '2015-07-13 11:50:26', '1', '【信而富】您好，您本次的手机验证码为：745011，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (164, '18813130609', '3', '585294', '2015-07-13 11:59:49', '1', '【信而富】您好，您本次的手机验证码为：585294，有效期为 5分钟。', '1', '2015-07-13 12:00:24');
INSERT INTO `fm_sms` VALUES (165, '18813130609', '3', '451549', '2015-07-13 13:44:43', '1', '【信而富】您好，您本次的手机验证码为：451549，有效期为 5分钟。', '1', '2015-07-13 13:45:45');
INSERT INTO `fm_sms` VALUES (166, '18813130608', '3', '951777', '2015-07-13 14:14:02', '1', '【信而富】您好，您本次的手机验证码为：951777，有效期为 5分钟。', '1', '2015-07-13 14:14:28');
INSERT INTO `fm_sms` VALUES (167, '18813130608', '3', '842880', '2015-07-13 14:17:27', '1', '【信而富】您好，您本次的手机验证码为：842880，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (168, '18813130609', '3', '209119', '2015-07-13 14:19:28', '1', '【信而富】您好，您本次的手机验证码为：209119，有效期为 5分钟。', '1', '2015-07-13 14:19:52');
INSERT INTO `fm_sms` VALUES (169, '13426454299', '3', '483859', '2015-07-13 14:24:57', '1', '【信而富】您好，您本次的手机验证码为：483859，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (170, '13426454299', '3', '173671', '2015-07-13 14:26:06', '1', '【信而富】您好，您本次的手机验证码为：173671，有效期为 5分钟。', '1', '2015-07-13 14:26:44');
INSERT INTO `fm_sms` VALUES (171, '18813130608', '3', '133247', '2015-07-13 14:30:12', '1', '【信而富】您好，您本次的手机验证码为：133247，有效期为 5分钟。', '1', '2015-07-13 14:30:32');
INSERT INTO `fm_sms` VALUES (172, '13426454299', '3', '113368', '2015-07-13 14:32:21', '1', '【信而富】您好，您本次的手机验证码为：113368，有效期为 5分钟。', '1', '2015-07-13 14:32:46');
INSERT INTO `fm_sms` VALUES (173, '18310550033', '1', '735336', '2015-07-13 16:26:03', '1', '【信而富】您好，您本次的手机验证码为：735336，有效期为 5分钟。', '1', '2015-07-13 16:26:22');
INSERT INTO `fm_sms` VALUES (174, '18310550033', '1', '893975', '2015-07-13 16:27:22', '1', '【信而富】您好，您本次的手机验证码为：893975，有效期为 5分钟。', '1', '2015-07-13 16:27:47');
INSERT INTO `fm_sms` VALUES (175, '18002206359', '3', '124800', '2015-07-13 23:14:12', '1', '【信而富】您好，您本次的手机验证码为：124800，有效期为 5分钟。', '1', '2015-07-13 23:14:38');
INSERT INTO `fm_sms` VALUES (176, '18611163318', '2', '834455', '2015-07-14 10:27:12', '1', '【信而富】您好，您本次的手机验证码为：834455，有效期为 5分钟。', '1', '2015-07-14 10:28:05');
INSERT INTO `fm_sms` VALUES (177, '18511574497', '3', '583758', '2015-07-14 12:06:04', '1', '【信而富】您好，您本次的手机验证码为：583758，有效期为 5分钟。', '1', '2015-07-14 12:06:23');
INSERT INTO `fm_sms` VALUES (178, '18511574497', '3', '961821', '2015-07-14 12:07:42', '1', '【信而富】您好，您本次的手机验证码为：961821，有效期为 5分钟。', '1', '2015-07-14 12:07:58');
INSERT INTO `fm_sms` VALUES (179, '18310550024', '1', '525629', '2015-07-14 15:39:35', '1', '【信而富】您好，您本次的手机验证码为：525629，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (180, '18310553867', '1', '538126', '2015-07-14 21:36:04', '1', '【信而富】您好，您本次的手机验证码为：538126，有效期为 5分钟。', '1', '2015-07-14 21:36:36');
INSERT INTO `fm_sms` VALUES (181, '18511574497', '3', '794877', '2015-07-15 15:34:25', '1', '【信而富】您好，您本次的手机验证码为：794877，有效期为 5分钟。', '1', '2015-07-15 15:34:45');
INSERT INTO `fm_sms` VALUES (182, '18002206359', '3', '289605', '2015-07-15 15:37:41', '1', '【信而富】您好，您本次的手机验证码为：289605，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (183, '13651099899', '3', '510830', '2015-07-15 16:06:49', '1', '【信而富】您好，您本次的手机验证码为：510830，有效期为 5分钟。', '1', '2015-07-15 16:07:18');
INSERT INTO `fm_sms` VALUES (184, '18310550033', '1', '965323', '2015-07-16 01:51:04', '1', '【信而富】您好，您本次的手机验证码为：965323，有效期为 5分钟。', '1', '2015-07-16 01:51:41');
INSERT INTO `fm_sms` VALUES (185, '18310550034', '1', '787213', '2015-07-16 01:51:49', '1', '【信而富】您好，您本次的手机验证码为：787213，有效期为 5分钟。', '1', '2015-07-16 01:52:01');
INSERT INTO `fm_sms` VALUES (186, '18611163318', '2', '302424', '2015-07-17 11:13:23', '1', '【信而富】您好，您本次的手机验证码为：302424，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (187, '18611163318', '2', '574277', '2015-07-17 11:20:23', '1', '【信而富】您好，您本次的手机验证码为：574277，有效期为 5分钟。', '0', NULL);
INSERT INTO `fm_sms` VALUES (188, '18310550035', '1', '541715', '2015-07-17 14:35:21', '1', '【信而富】您好，您本次的手机验证码为：541715，有效期为 5分钟。', '1', '2015-07-17 14:35:35');

-- ----------------------------
-- Table structure for fm_user
-- ----------------------------
DROP TABLE IF EXISTS `fm_user`;
CREATE TABLE `fm_user`  (
  `user_id` bigint(20) NOT NULL COMMENT '����',
  `user_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�˺�',
  `user_phone_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�ֻ���',
  `user_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��½����(MD5����)',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�û���ʵ����',
  `user_sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ա�',
  `user_register_date` date NULL DEFAULT NULL COMMENT 'ע��ʱ��',
  `user_id_card` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���֤��',
  `user_is_marry` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�Ƿ��� 1 �� 0 ��',
  `user_address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ס��',
  `user_education` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ѧ��',
  `user_graduate_school` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵѧУ',
  `user_trade` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ҵ',
  `user_occupation` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ְλ',
  `user_salary` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ÿ��нˮ',
  `user_create_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `user_qq_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ��',
  `user_wechat_no` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '΢�ź�',
  `user_weibo_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '΢����',
  `user_email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����ַ',
  `user_is_logout` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '�Ƿ�ע��  1 �� 0 ��',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_no`(`user_no`) USING BTREE,
  INDEX `Index_user_phone_no`(`user_phone_no`) USING BTREE,
  INDEX `Index_user_password`(`user_password`) USING BTREE,
  INDEX `Index_user_is_logout`(`user_is_logout`) USING BTREE,
  INDEX `Index_user_qq_no`(`user_qq_no`) USING BTREE,
  INDEX `Index_user_wechat_no`(`user_wechat_no`) USING BTREE,
  INDEX `Index_user_weibo_no`(`user_weibo_no`) USING BTREE,
  INDEX `Index_user_email`(`user_email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�û���' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_user
-- ----------------------------
INSERT INTO `fm_user` VALUES (6124, 'M0000000022', '18682109647', '11111111111', NULL, NULL, '2015-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 10:32:40', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6125, 'M0000000023', '18682109648', '11111111111111111111', NULL, NULL, '2015-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 10:37:37', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6126, 'M0000000024', '18682109649', '1111111111', NULL, NULL, '2015-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 14:08:50', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6127, 'M0000000028', '18611163318', '111111', 'ddd', NULL, '2015-06-16', '1111111111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 16:03:06', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6128, 'M0000000029', '18682109650', '134324324324', NULL, NULL, '2015-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 17:27:19', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6129, 'M0000000030', '18310550001', '111111', NULL, NULL, '2015-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 20:09:36', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6130, 'M0000000032', '18310550002', 'llllll', NULL, NULL, '2015-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 20:14:55', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6131, 'M0000000033', '18611163319', '111111', NULL, NULL, '2015-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 20:17:26', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6132, 'M0000000034', '18310550004', '111111', '张某', NULL, '2015-06-16', '130921109707070004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 21:13:17', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6133, 'M0000000035', '18310550005', '111111', NULL, NULL, '2015-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 21:27:26', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6134, 'M0000000036', '18310550006', '111111', NULL, NULL, '2015-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 21:32:00', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6135, 'M0000000037', '18310550007', '111111', NULL, NULL, '2015-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 21:36:15', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6136, 'M0000000038', '18310550008', '111111', '张某', NULL, '2015-06-16', '130921109707070008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-16 21:41:37', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6137, 'M0000000039', '18682109640', '1111111111', NULL, NULL, '2015-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 09:12:28', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6138, 'M0000000041', '18310550009', 'llllll', '张某', NULL, '2015-06-17', '130921109707070009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 09:21:07', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6139, 'M0000000042', '18682109641', '111111', NULL, NULL, '2015-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 09:57:25', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6140, 'M0000000043', '18310550010', '111111', '张大爷', NULL, '2015-06-17', '130921109707070010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 10:05:10', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6141, 'M0000000044', '13651099898', '333333', '风景', NULL, '2015-06-17', '130921190001011837', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 10:11:28', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6142, 'M0000000045', '18310550011', '111111', '张大爷', NULL, '2015-06-17', '130921109707070011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 10:13:56', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6143, 'M0000000048', '18310550012', '111111', '张', NULL, '2015-06-17', '130921109707070012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 11:07:58', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6146, 'M0000000051', '18682109661', '1111111', NULL, NULL, '2015-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 14:10:02', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6147, 'M0000000052', '18682109662', '1111111111', NULL, NULL, '2015-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 14:20:15', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6148, 'M0000000053', '18682109663', '111111', NULL, NULL, '2015-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 14:30:20', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6149, 'M0000000054', '18310550013', '111111', '张某', NULL, '2015-06-17', '130921198707070013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 14:47:12', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6150, 'M0000000056', '18310550014', 'kkkkkk', '张某', NULL, '2015-06-17', '130921198707070014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 14:59:22', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6151, 'M0000000057', '18601979931', '123456', '王灵', NULL, '2015-06-17', '532300199211281395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 15:01:49', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6152, 'M0000000058', '13260423360', '111111', NULL, NULL, '2015-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 15:50:07', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6153, 'M0000000059', '13260523360', '111111', NULL, NULL, '2015-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 15:51:06', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6154, 'M0000000060', '18310550015', '111111', '王浩', NULL, '2015-06-17', '110228190001010810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 17:35:22', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6155, 'M0000000061', '15010575938', 'wyxahcn', '王伟', NULL, '2015-06-17', '110114198201011618', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 17:38:20', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6156, 'M0000000063', '18002206359', 'qqqqqq', '胡美华', NULL, '2015-06-17', '430624198801019988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 19:28:28', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6157, 'M0000000067', '18002206358', 'qqqqqq', '张杰', NULL, '2015-06-17', '430624198010235123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 19:48:01', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6158, 'M0000000069', '18813130607', '111111', NULL, NULL, '2015-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 21:02:48', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6159, 'M0000000074', '18682109664', '111111111', NULL, NULL, '2015-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 21:17:38', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6160, 'M0000000075', '18813130609', '123456', '张杰', NULL, '2015-06-17', '370923198704100653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-17 21:25:10', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6161, 'M0000000078', '18682109665', '18682109646', NULL, NULL, '2015-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 09:51:58', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6162, 'M0000000079', '18682109666', '11111111111111111111', NULL, NULL, '2015-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 10:02:06', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6163, 'M0000000080', '18310550016', '111111', '王浩', NULL, '2015-06-18', '110228190001010554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 17:33:36', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6164, 'M0000000081', '18310550017', '111111', '王浩', NULL, '2015-06-18', '130921109707070017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 17:55:17', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6165, 'M0000000086', '18310550018', '111111', NULL, NULL, '2015-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 18:21:43', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6166, 'M0000000087', '18310550018', '111111', NULL, NULL, '2015-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 18:21:43', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6167, 'M0000000088', '18310550018', '111111', NULL, NULL, '2015-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 18:21:43', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6168, 'M0000000089', '18310550018', '111111', NULL, NULL, '2015-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 18:21:43', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6169, 'M0000000090', '18310550018', '111111', NULL, NULL, '2015-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 18:21:43', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6170, 'M0000000091', '18310550018', '111111', NULL, NULL, '2015-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 18:21:43', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6171, 'M0000000092', '18310550018', '111111', NULL, NULL, '2015-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 18:21:43', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6172, 'M0000000093', '18310550019', '111111', '王浩', NULL, '2015-06-18', '130921190001012477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 18:21:55', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6173, 'M0000000094', '18310550020', '111111', '王浩', NULL, '2015-06-18', '130921109707070014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-18 18:47:10', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6174, 'M0000000096', '18310550021', '111111', '王浩', NULL, '2015-06-19', '130921198707070021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-19 09:31:30', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6175, 'M0000000097', '13261777763', '123456', '我的', NULL, '2015-06-19', '152324198901012345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-19 19:20:30', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6176, 'M0000000098', '15652866160', '111111', '赵小敏', NULL, '2015-06-23', '123456198903036688', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-23 09:31:12', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6177, 'M0000000099', '18511574497', '111111', NULL, NULL, '2015-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-23 11:50:55', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6179, 'M0000000100', '13774465580', 'chenhui11', NULL, NULL, '2015-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-23 15:15:01', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6180, 'M0000000101', '13917397817', 'crf0820', NULL, NULL, '2015-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-23 15:53:35', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6181, 'M0000000103', '18917676180', 'lei11111', NULL, NULL, '2015-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-23 16:00:04', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6182, 'M0000000104', '13825260892', 'a7907115', '李袁', NULL, '2015-06-23', '510102196301237497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-23 17:42:50', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6183, 'M0000000105', '13601702682', 'qwerty', '陈仕勤', NULL, '2015-06-23', '445281198012131513', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-23 17:54:35', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6184, 'M0000000106', '18037500828', '12345678', NULL, NULL, '2015-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-23 18:49:08', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6185, 'M0000000107', '15800784178', '123456', NULL, NULL, '2015-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-23 18:50:55', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6186, 'M0000000109', '13426454299', 'zenghong2008', NULL, NULL, '2015-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-23 18:54:47', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6187, 'M0000000110', '13823682705', 'plmnbv', NULL, NULL, '2015-06-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-24 10:52:11', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6188, 'M0000000111', '15618569433', '316412', NULL, NULL, '2015-06-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-24 16:48:22', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6189, 'M0000000112', '13916803496', '84292959', NULL, NULL, '2015-06-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-24 17:32:16', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6191, 'M0000000114', '15195204888', 'yumi123456', NULL, NULL, '2015-06-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-25 11:04:39', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6192, 'M0000000122', '18201773918', '1992219', '张某某', NULL, '2015-06-26', '310106199206190869', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-26 10:07:56', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6193, 'M0000000123', '13917170717', 'dyb2015', '杜妍彬', NULL, '2015-06-26', '310105197910142828', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-26 14:13:43', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6194, 'M0000000124', '13651849649', 'crf780629', '彭姝', NULL, '2015-06-26', '430103197806291529', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-26 14:16:10', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6195, 'M0000000125', '15298393487', 'lzq19901112', '李仲琦', NULL, '2015-06-26', '320902199011120030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-26 15:23:49', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6196, 'M0000000126', '18602503377', '125521fan', NULL, NULL, '2015-06-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-26 15:23:59', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6197, 'M0000000127', '13515126338', 'swh520zzz', '孙文焕', NULL, '2015-06-26', '340827198708155218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-26 15:27:14', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6198, 'M0000000128', '18310550022', '111111', '王浩', NULL, '2015-06-26', '130921198707070022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-26 16:54:13', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6199, 'M0000000130', '18310550023', '111111', '王浩', NULL, '2015-06-26', '130921198707070023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-26 16:55:54', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6200, 'M0000000131', '18310550024', '111111', '张某', NULL, '2015-06-26', '130921198707070024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-26 16:57:25', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6201, 'M0000000132', '18310550025', '111111', '张某', NULL, '2015-06-29', '130921198707070025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-29 09:27:50', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6202, 'M0000000133', '18310550026', '111111', '张某', NULL, '2015-06-29', '130921198707070026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-29 09:46:12', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6203, 'M0000000134', '18310550027', '111111', NULL, NULL, '2015-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-29 09:55:18', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6206, 'M0000000135', '18310550028', '111111', NULL, NULL, '2015-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-30 13:40:58', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6207, 'M0000000136', '13818133555', 'owen1205321', NULL, NULL, '2015-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-30 14:36:12', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6208, 'M0000000137', '18002206356', 'qqqqqq', NULL, NULL, '2015-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-30 15:11:58', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6209, 'M0000000138', '18310550029', '111111', NULL, NULL, '2015-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-30 17:05:13', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6210, 'M0000000139', '13755923346', '1314520', NULL, NULL, '2015-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 06:15:33', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6211, 'M0000000140', '18701193178', 'MAY521lu', '陆秋红', NULL, '2015-07-01', '152224198301241549', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 09:24:23', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6212, 'M0000000141', '13554755489', '654cao', '曹燕贤', NULL, '2015-07-01', '440582198007246944', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 10:15:04', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6213, 'M0000000142', '15999558513', 'love2015', NULL, NULL, '2015-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 10:35:56', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6214, 'M0000000143', '18927437370', '10466647', NULL, NULL, '2015-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 10:50:55', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6215, 'M0000000144', '13751151450', '220740', NULL, NULL, '2015-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 10:58:40', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6216, 'M0000000146', '18611805534', 'wy415320', NULL, NULL, '2015-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 13:42:36', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6217, 'M0000000148', '15150610411', 'kghkxm1230', '孔高华', NULL, '2015-07-01', '320125198812013338', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 15:58:56', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6218, 'M0000000149', '13951809494', 'zhanghe87', '张翮', NULL, '2015-07-01', '340521198712190054', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 16:08:20', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6219, 'M0000000150', '13811660292', '731012', '胡宇红', NULL, '2015-07-01', '430204197310124024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 16:10:22', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6220, 'M0000000151', '15950468633', '633axq', '刘双双', NULL, '2015-07-01', '450324198810200774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 16:15:21', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6221, 'M0000000152', '13002105862', '131313', NULL, NULL, '2015-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 16:36:02', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6222, 'M0000000153', '18310550030', '111111', '王浩', NULL, '2015-07-01', '130921109707070030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 16:36:13', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6223, 'M0000000155', '13522337797', 'qhdljm123', NULL, NULL, '2015-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 17:25:56', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6224, 'M0000000156', '13621292093', '333333', '田俊强', NULL, '2015-07-01', '130235199002105868', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-01 18:10:43', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6225, 'M0000000157', '18103084776', 'jzh911004mht', NULL, NULL, '2015-07-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-02 09:32:06', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6226, 'M0000000158', '13813865439', '830031', NULL, NULL, '2015-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-03 16:16:38', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6227, 'M0000000159', '18916223307', 'happy1981', NULL, NULL, '2015-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-03 16:50:10', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6228, 'M0000000160', '13293343583', '333333', NULL, NULL, '2015-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-03 17:29:08', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6229, 'M0000000161', '13813855571', 'danbis880101', '王培', NULL, '2015-07-06', '32010719880101181X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-06 14:16:49', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6230, 'M0000000163', '15062267607', '230666', '孙擎宇', NULL, '2015-07-06', '320481199202070417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-06 14:44:05', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6231, 'M0000000164', '13651398146', 'wy415320', '王影', NULL, '2015-07-06', '500107198704159429', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-06 15:09:40', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6234, 'M0000000168', '18310550031', '111111', '王浩', NULL, '2015-07-08', '130921198707070031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-08 15:48:25', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6246, 'M0000000169', '18310550032', '111111', '开户', NULL, '2015-07-10', '152324198801016589', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-10 14:04:29', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6247, 'M0000000170', '13263135239', '123456', NULL, NULL, '2015-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-10 14:19:59', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6249, 'M0000000171', '15862591846', '852014', NULL, NULL, '2015-07-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-11 15:20:00', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6250, 'M0000000172', '18310550033', '111111', NULL, NULL, '2015-07-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-13 16:26:54', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6251, 'M0000000174', '18310553867', '111111', '张某某', NULL, '2015-07-14', '130921198707070067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-14 21:36:36', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6253, 'M0000000176', '18310550034', '111111', NULL, NULL, '2015-07-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-16 01:52:02', NULL, '', NULL, NULL, '0');
INSERT INTO `fm_user` VALUES (6254, 'M0000000177', '18310550035', '96e79218965eb72c92a549dd5a330112', NULL, NULL, '2015-07-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-07-17 14:35:36', NULL, '', NULL, NULL, '0');

-- ----------------------------
-- Table structure for fm_user_bank_card
-- ----------------------------
DROP TABLE IF EXISTS `fm_user_bank_card`;
CREATE TABLE `fm_user_bank_card`  (
  `ubc_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
  `ubc_f_user_id` bigint(20) NULL DEFAULT NULL COMMENT '�û���ID',
  `ubc_f_bank_id` bigint(20) NULL DEFAULT NULL COMMENT '���б�ID',
  `ubc_card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���п���',
  `ubc_bank_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���п�������������',
  `ubc_bank_province` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户开卡省份',
  `ubc_bank_city` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���п������������',
  `ubc_is_delete` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '�Ƿ�ɾ�� 1 �� 0 �� Ĭ��Ϊ0',
  `ubc_create_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`ubc_id`) USING BTREE,
  INDEX `Index_ubc_f_user_id`(`ubc_f_user_id`) USING BTREE,
  INDEX `Index_ubc_f_bank_id`(`ubc_f_bank_id`) USING BTREE,
  INDEX `Index_ubc_card_no`(`ubc_card_no`) USING BTREE,
  INDEX `Index_ubc_is_delete`(`ubc_is_delete`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '�û����п���' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_user_bank_card
-- ----------------------------
INSERT INTO `fm_user_bank_card` VALUES (1, 6131, NULL, '6222020200031919808', '0102', 'GD', '1000', '0', '2015-06-16 20:19:53');
INSERT INTO `fm_user_bank_card` VALUES (2, 6130, NULL, '6222020200090700003', '0102', 'GD', '1000', '0', '2015-06-16 21:09:24');
INSERT INTO `fm_user_bank_card` VALUES (3, 6132, NULL, '6222020200090700004', '0102', 'GD', '1000', '0', '2015-06-16 21:16:43');
INSERT INTO `fm_user_bank_card` VALUES (4, 6133, NULL, '6222020200090700005', '0102', 'GD', '1000', '0', '2015-06-16 21:28:30');
INSERT INTO `fm_user_bank_card` VALUES (5, 6134, NULL, '6222020200090700006', '0102', 'GD', '1000', '0', '2015-06-16 21:33:05');
INSERT INTO `fm_user_bank_card` VALUES (6, 6135, NULL, '6222020200090700007', '0102', 'GD', '1000', '0', '2015-06-16 21:37:47');
INSERT INTO `fm_user_bank_card` VALUES (7, 6136, NULL, '6222020200090700008', '0102', 'GD', '1000', '0', '2015-06-16 21:42:50');
INSERT INTO `fm_user_bank_card` VALUES (8, 6138, NULL, '6222020200090700009', '0102', 'GD', '1000', '0', '2015-06-17 09:43:54');
INSERT INTO `fm_user_bank_card` VALUES (9, 6140, NULL, '6222020200090700010', '0102', 'GD', '1000', '0', '2015-06-17 10:07:04');
INSERT INTO `fm_user_bank_card` VALUES (10, 6142, NULL, '6222020200090100011', '0102', 'GD', '1000', '0', '2015-06-17 10:15:35');
INSERT INTO `fm_user_bank_card` VALUES (11, 6143, NULL, '6222020200090700012', '0102', 'GD', '1000', '0', '2015-06-17 11:22:33');
INSERT INTO `fm_user_bank_card` VALUES (12, 6149, NULL, '6222020200090700013', '0102', 'GD', '1000', '0', '2015-06-17 14:51:10');
INSERT INTO `fm_user_bank_card` VALUES (13, 6150, NULL, '6222020200090700014', '0102', 'GD', '1000', '0', '2015-06-17 15:01:56');
INSERT INTO `fm_user_bank_card` VALUES (14, 6160, NULL, '6222020200031875507', '0102', 'GD', '1000', '0', '2015-06-18 17:23:46');
INSERT INTO `fm_user_bank_card` VALUES (15, 6154, NULL, '6222020200090700015', '0102', 'GD', '1000', '0', '2015-06-18 17:31:30');
INSERT INTO `fm_user_bank_card` VALUES (16, 6163, NULL, '6222020200090700016', '0102', 'GD', '1000', '0', '2015-06-18 17:34:40');
INSERT INTO `fm_user_bank_card` VALUES (17, 6141, NULL, '6222020200090710002', '0102', 'GD', '1000', '0', '2015-06-18 17:52:04');
INSERT INTO `fm_user_bank_card` VALUES (18, 6172, NULL, '6222020200090700019', '0102', 'GD', '1000', '0', '2015-06-18 18:39:24');
INSERT INTO `fm_user_bank_card` VALUES (19, 6173, NULL, '6222020200090700020', '0102', 'GD', '1000', '0', '2015-06-19 09:19:41');
INSERT INTO `fm_user_bank_card` VALUES (20, 6174, NULL, '6222020200090700021', '0102', 'GD', '1000', '0', '2015-06-19 09:36:06');
INSERT INTO `fm_user_bank_card` VALUES (21, 6155, NULL, '6212260200060930027', '0102', 'BJ', '1000', '0', '2015-06-19 10:33:11');
INSERT INTO `fm_user_bank_card` VALUES (22, 6176, NULL, '6222020200970055991', '0102', 'BJ', '1000', '0', '2015-06-23 09:33:49');
INSERT INTO `fm_user_bank_card` VALUES (23, 6182, NULL, '6212260200060930028', '0102', 'BJ', '1000', '0', '2015-06-23 18:42:59');
INSERT INTO `fm_user_bank_card` VALUES (24, 6156, NULL, '6222020200000788888', '0102', 'GD', '1000', '0', '2015-06-25 17:53:48');
INSERT INTO `fm_user_bank_card` VALUES (25, 6157, NULL, '6222020220555555555', '0102', 'BJ', '1000', '0', '2015-06-26 10:30:08');
INSERT INTO `fm_user_bank_card` VALUES (26, 6192, NULL, '6222020200090788888', '0102', 'BJ', '1000', '0', '2015-06-26 10:33:15');
INSERT INTO `fm_user_bank_card` VALUES (27, 6193, NULL, '6212261001031034819', '0102', 'BJ', '1000', '0', '2015-06-26 14:33:25');
INSERT INTO `fm_user_bank_card` VALUES (28, 6219, NULL, '6222020200090819109', '0102', 'BJ', '1000', '0', '2015-07-01 16:23:55');
INSERT INTO `fm_user_bank_card` VALUES (29, 6224, NULL, '6222020200970068568', '0102', 'BJ', '1000', '0', '2015-07-03 09:33:21');
INSERT INTO `fm_user_bank_card` VALUES (30, 6211, NULL, '6225210606358399', '0310', 'BJ', '1000', '0', '2015-07-04 10:15:29');
INSERT INTO `fm_user_bank_card` VALUES (31, 6195, NULL, '6225882502160168', '0308', 'BJ', '1000', '0', '2015-07-06 14:43:32');
INSERT INTO `fm_user_bank_card` VALUES (32, 6217, NULL, '6214850216796349', '0308', 'GD', '1000', '0', '2015-07-06 14:44:29');
INSERT INTO `fm_user_bank_card` VALUES (33, 6229, NULL, '6222024301053565980', '0102', 'GD', '1000', '0', '2015-07-06 14:47:11');
INSERT INTO `fm_user_bank_card` VALUES (34, 6230, NULL, '6228480399466048374', '0103', 'BJ', '1000', '0', '2015-07-06 14:50:25');
INSERT INTO `fm_user_bank_card` VALUES (35, 6218, NULL, '6227001376640110215', '0105', 'BJ', '1000', '0', '2015-07-06 15:04:04');
INSERT INTO `fm_user_bank_card` VALUES (36, 6220, NULL, '6217920400489980', '0310', 'BJ', '1000', '0', '2015-07-06 15:12:25');
INSERT INTO `fm_user_bank_card` VALUES (37, 6231, NULL, '6214830100031011', '0308', 'BJ', '1000', '0', '2015-07-06 15:15:04');
INSERT INTO `fm_user_bank_card` VALUES (38, 6212, NULL, '6013822000111101740', '0104', 'GD', '1000', '0', '2015-07-06 15:33:26');
INSERT INTO `fm_user_bank_card` VALUES (39, 6200, NULL, '6222020200090700024', '0102', '204', '1430', '0', '2015-07-06 16:17:38');
INSERT INTO `fm_user_bank_card` VALUES (40, 6201, NULL, '6222020200090700025', '0102', '204', '1430', '0', '2015-07-06 16:35:56');
INSERT INTO `fm_user_bank_card` VALUES (41, 6222, NULL, '6222020200090700030', '0102', '200', '1000', '0', '2015-07-07 09:59:08');
INSERT INTO `fm_user_bank_card` VALUES (42, 6202, NULL, '6222020200090700026', '0102', '200', '1000', '0', '2015-07-07 10:04:42');
INSERT INTO `fm_user_bank_card` VALUES (43, 6183, NULL, '6217001210021219306', '0105', '688', '2900', '0', '2015-07-07 13:02:06');
INSERT INTO `fm_user_bank_card` VALUES (44, 6151, NULL, '6217920600414598', '0310', '200', '1000', '0', '2015-07-07 16:16:50');
INSERT INTO `fm_user_bank_card` VALUES (45, 6197, NULL, '6222024301068392172', '0102', '690', '3010', '0', '2015-07-09 13:00:42');
INSERT INTO `fm_user_bank_card` VALUES (46, 6234, NULL, '6222020200090700031', '0102', '200', '1000', '0', '2015-07-10 09:14:57');
INSERT INTO `fm_user_bank_card` VALUES (47, 6175, NULL, '6222020200970065896', '0102', '200', '1000', '0', '2015-07-10 10:05:44');
INSERT INTO `fm_user_bank_card` VALUES (48, 6198, NULL, '6222020200090700022', '0102', '200', '1000', '0', '2015-07-10 10:45:07');
INSERT INTO `fm_user_bank_card` VALUES (49, 6199, NULL, '6222020200090700023', '0102', '200', '1000', '0', '2015-07-10 10:52:21');
INSERT INTO `fm_user_bank_card` VALUES (50, 6246, NULL, '6222020200970085698', '0102', '200', '1000', '0', '2015-07-10 14:07:53');
INSERT INTO `fm_user_bank_card` VALUES (51, 6164, NULL, '6222020200090700017', '0102', '200', '1000', '0', '2015-07-10 14:38:15');
INSERT INTO `fm_user_bank_card` VALUES (52, 6194, NULL, '4682030210441469', '0308', '688', '2900', '0', '2015-07-13 13:58:29');
INSERT INTO `fm_user_bank_card` VALUES (53, 6251, NULL, '6222020200090700067', '0102', '200', '1000', '0', '2015-07-14 21:38:06');

-- ----------------------------
-- Table structure for fm_user_wechat
-- ----------------------------
DROP TABLE IF EXISTS `fm_user_wechat`;
CREATE TABLE `fm_user_wechat`  (
  `fm_user_id` bigint(20) NULL DEFAULT NULL,
  `fm_wechat_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `userid_index`(`fm_user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_user_wechat
-- ----------------------------
INSERT INTO `fm_user_wechat` VALUES (5996, 'oh8Hnt44tyWcxiNCSOp8jtah9yt0');
INSERT INTO `fm_user_wechat` VALUES (6179, 'oh8HntxEJpCk0qpAWnn03-GstsDU');
INSERT INTO `fm_user_wechat` VALUES (6193, 'oh8Hnt4GBPn5tbZoffW_aZiG7xWQ');
INSERT INTO `fm_user_wechat` VALUES (6192, 'oh8Hnt0aUCQutfWdSUzQzpRpb5NQ');
INSERT INTO `fm_user_wechat` VALUES (6214, 'oh8Hnt0c_5PChucv2wdfAmyb2byI');
INSERT INTO `fm_user_wechat` VALUES (6191, 'oh8Hnty9iDgDnFWgMbzo6_9xD3KY');
INSERT INTO `fm_user_wechat` VALUES (6181, 'oh8Hnt38EB9qqFOXErBGkDn9qTlM');
INSERT INTO `fm_user_wechat` VALUES (6226, 'oh8Hnt0YOw77L_BCCRrIAIuj3_Nw');
INSERT INTO `fm_user_wechat` VALUES (6227, 'oh8Hnt2GffM1roy3draRA6EQAelY');
INSERT INTO `fm_user_wechat` VALUES (6211, 'oh8Hnt-c31FEImv_IiCxVNljEwG4');
INSERT INTO `fm_user_wechat` VALUES (6160, 'oh8Hnt1MYggWo3EmSEw9bAEfuc1I');
INSERT INTO `fm_user_wechat` VALUES (6195, 'oh8Hnt6-bAvs2sA6GZejAu_gYo4g');
INSERT INTO `fm_user_wechat` VALUES (6220, 'oh8Hnt_yyRyF2STslMFuLU2kf2mE');
INSERT INTO `fm_user_wechat` VALUES (6229, 'oh8Hnt0XTiRh41al_MgcrFSMNQqY');
INSERT INTO `fm_user_wechat` VALUES (6188, 'oh8Hntxdm1eqUHUHVsDds4lVt7qQ');
INSERT INTO `fm_user_wechat` VALUES (6194, 'oh8Hnt23N8kQ32Gv04iDPi-ZuSL8');
INSERT INTO `fm_user_wechat` VALUES (6189, 'oh8Hntze-pxzduUPM2-hxTEe4Ew8');
INSERT INTO `fm_user_wechat` VALUES (6183, 'oh8HntzxlSwBpQA_VSN5eDKeKBn4');
INSERT INTO `fm_user_wechat` VALUES (6180, 'oh8Hntzndpe5z-pVQpgDsPx7XF8E');
INSERT INTO `fm_user_wechat` VALUES (6157, 'o6NmTuHRr9QUL4WhBk2RkROLYXo8');
INSERT INTO `fm_user_wechat` VALUES (6175, 'oh8HntxLzoPL6s30GGtTMwivJ5lM');
INSERT INTO `fm_user_wechat` VALUES (6152, 'o6NmTuLoofdQBOqgAkjBWdatB8UY');
INSERT INTO `fm_user_wechat` VALUES (6156, 'o6NmTuCPW-PAkTPNxlpsGVkvKne4');
INSERT INTO `fm_user_wechat` VALUES (6151, 'o6NmTuBR5G0wjEQ2fQ2xeZ1SUwkg');
INSERT INTO `fm_user_wechat` VALUES (6200, 'oh8Hnt1k1pzKa38CVW0_5Qm1b37g');

-- ----------------------------
-- Table structure for fm_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `fm_withdraw`;
CREATE TABLE `fm_withdraw`  (
  `withdraw_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `withdraw_f_user_id` bigint(20) NULL DEFAULT NULL COMMENT '�û���ID',
  `withdraw_f_ubc_id` bigint(20) NULL DEFAULT NULL COMMENT '�û����п�ID',
  `withdraw_seq` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '��ˮ��',
  `withdraw_create_time` datetime(0) NULL DEFAULT NULL COMMENT '����ʱ��',
  `withdraw_channel` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�������� 1 ���� 2 ���� 3 ͨ�� 4 �Ƹ�ͨ',
  `withdraw_money` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '���ֽ��',
  `withdraw_state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '����״̬   1����ɹ� 0 ����ʧ�� 2 ���ֳɹ� 3 ����ʧ��',
  `withdraw_resp_time` datetime(0) NULL DEFAULT NULL,
  `withdraw_resp_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `withdraw_resp_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `withdraw_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '��ע',
  `is_upload_success` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `withdraw_upload_time` datetime(0) NULL DEFAULT NULL,
  `withdraw_fuiou_login_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`withdraw_id`) USING BTREE,
  UNIQUE INDEX `withdraw_seq`(`withdraw_seq`) USING BTREE,
  INDEX `Index_withdraw_f_user_id`(`withdraw_f_user_id`) USING BTREE,
  INDEX `Index_withdraw_f_ubc_id`(`withdraw_f_ubc_id`) USING BTREE,
  INDEX `Index_withdraw_channel`(`withdraw_channel`) USING BTREE,
  INDEX `Index_withdraw_state`(`withdraw_state`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fm_withdraw
-- ----------------------------
INSERT INTO `fm_withdraw` VALUES (7, 6150, NULL, 'M85150617213411526000009', '2015-06-17 21:32:45', '1', '540', '1', '2015-06-17 22:01:44', '0000', NULL, '', '2', '2015-06-17 22:00:58', '18310550014');
INSERT INTO `fm_withdraw` VALUES (8, 6150, NULL, 'M85150618120520105000002', '2015-06-18 12:03:57', '1', '200', '1', '2015-06-25 15:45:55', NULL, NULL, '', '2', '2015-06-25 16:20:53', '18310550014');
INSERT INTO `fm_withdraw` VALUES (9, 6150, NULL, 'M85150618121234442000010', '2015-06-18 12:11:16', '1', '100', '1', '2015-06-25 15:45:55', NULL, NULL, '', '2', '2015-06-25 16:21:42', '18310550014');
INSERT INTO `fm_withdraw` VALUES (10, 6150, NULL, 'M85150618121409260000011', '2015-06-18 12:12:47', '1', '23.32', '0', NULL, NULL, NULL, '', '0', NULL, '18310550014');
INSERT INTO `fm_withdraw` VALUES (11, 6150, NULL, 'M85150618121514701000013', '2015-06-18 12:14:13', '1', '23.32', '0', NULL, NULL, NULL, '', '0', NULL, '18310550014');
INSERT INTO `fm_withdraw` VALUES (12, 6172, NULL, 'M85150618184357486000003', '2015-06-18 18:42:30', '1', '2000', '1', '2015-06-18 18:45:22', '0000', NULL, '', '2', '2015-06-18 18:43:57', '18310550019');
INSERT INTO `fm_withdraw` VALUES (13, 6141, NULL, 'M85150618185605306000004', '2015-06-18 18:56:05', '1', '100', '1', '2015-06-18 18:56:50', '0000', NULL, '', '2', '2015-06-18 18:56:54', '13651099898');
INSERT INTO `fm_withdraw` VALUES (14, 6141, NULL, 'M85150618190150274000012', '2015-06-18 19:01:50', '1', '800', '1', '2015-06-18 19:02:19', '0000', NULL, '', '1', '2015-06-18 19:02:19', '13651099898');
INSERT INTO `fm_withdraw` VALUES (15, 6150, NULL, 'M85150618210951441000002', '2015-06-18 21:08:24', '1', '5000', '1', '2015-06-18 21:10:08', '0000', NULL, '', '1', '2015-06-18 21:08:42', '18310550014');
INSERT INTO `fm_withdraw` VALUES (16, 6150, NULL, 'M85150618211113998000004', '2015-06-18 21:09:47', '1', '500', '0', NULL, NULL, NULL, '', '0', NULL, '18310550014');
INSERT INTO `fm_withdraw` VALUES (17, 6150, NULL, 'M85150618211138667000005', '2015-06-18 21:10:11', '1', '500', '1', '2015-06-18 21:11:51', '0000', NULL, '', '1', '2015-06-18 21:10:25', '18310550014');
INSERT INTO `fm_withdraw` VALUES (18, 6150, NULL, 'M85150618211249354000008', '2015-06-18 21:11:22', '1', '11.99', '1', '2015-06-18 21:13:05', '0000', NULL, '', '2', '2015-06-18 21:11:38', '18310550014');
INSERT INTO `fm_withdraw` VALUES (19, 6141, NULL, 'M85150619142112708000031', '2015-06-19 14:21:12', '1', '300', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (20, 6141, NULL, 'M85150619142449297000033', '2015-06-19 14:24:49', '1', '3000', '1', '2015-06-19 14:25:08', '0000', NULL, '', '2', '2015-06-19 14:25:08', '13651099898');
INSERT INTO `fm_withdraw` VALUES (21, 6141, NULL, 'M85150619163134479000064', '2015-06-19 16:31:34', '1', '100', '1', '2015-06-19 16:31:56', '0000', NULL, '', '1', '2015-06-19 16:31:56', '13651099898');
INSERT INTO `fm_withdraw` VALUES (22, 6155, NULL, 'M85150619165616159000098', '2015-06-19 16:56:16', '1', '1000', '1', '2015-06-19 16:57:35', '0000', NULL, '', '2', '2015-06-19 16:57:35', '15010575938');
INSERT INTO `fm_withdraw` VALUES (23, 6141, NULL, 'M85150619172234757000132', '2015-06-19 17:22:34', '1', '2000', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (24, 6141, NULL, 'M85150619172948283000143', '2015-06-19 17:29:48', '1', '2000', '1', '2015-06-19 17:52:46', '0000', NULL, '', '2', '2015-06-19 17:52:46', '13651099898');
INSERT INTO `fm_withdraw` VALUES (25, 6141, NULL, 'M85150619191812550000003', '2015-06-19 19:16:44', '1', '1000', '1', '2015-06-19 19:18:35', '0000', NULL, '', '1', '2015-06-19 19:17:07', '13651099898');
INSERT INTO `fm_withdraw` VALUES (26, 6155, NULL, 'M85150619191840191000002', '2015-06-19 19:18:40', '1', '10', '1', '2015-06-19 19:40:40', '0000', NULL, '', '1', '2015-06-19 19:40:40', '15010575938');
INSERT INTO `fm_withdraw` VALUES (27, 6155, NULL, 'M85150619192020483000006', '2015-06-19 19:20:20', '1', '10', '2', '2015-06-19 19:42:40', '0000', NULL, '', '1', '2015-06-19 19:42:40', '15010575938');
INSERT INTO `fm_withdraw` VALUES (28, 6150, NULL, 'M85150619224138291000007', '2015-06-19 22:41:38', '1', '5', '1', '2015-06-19 22:42:03', '0000', NULL, '', '1', '2015-06-19 22:42:03', '18310550014');
INSERT INTO `fm_withdraw` VALUES (29, 6150, NULL, 'M85150622152811486000022', '2015-06-22 15:28:11', '1', '8000', '1', '2015-06-22 15:28:35', '0000', NULL, '', '1', '2015-06-22 15:28:35', '18310550014');
INSERT INTO `fm_withdraw` VALUES (30, 6176, NULL, 'M85150623103828221000040', '2015-06-23 10:38:28', '1', '300', '1', '2015-06-23 10:40:41', '0000', NULL, '', '1', '2015-06-23 10:40:44', '15652866160');
INSERT INTO `fm_withdraw` VALUES (31, 6141, NULL, 'M85150624144303075000120', '2015-06-24 14:43:03', '1', '400.1', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (32, 6141, NULL, 'M85150624144304685000121', '2015-06-24 14:43:04', '1', '40010', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (33, 6141, NULL, 'M85150624144420211000124', '2015-06-24 14:44:20', '1', '400.1', '1', '2015-06-24 14:45:01', '0000', NULL, '', '1', '2015-06-24 14:45:01', '13651099898');
INSERT INTO `fm_withdraw` VALUES (34, 6156, NULL, 'M85150626095517157000017', '2015-06-26 09:55:17', '1', '100', '0', NULL, NULL, NULL, '', '0', NULL, '18002206359');
INSERT INTO `fm_withdraw` VALUES (35, 6156, NULL, 'M85150626095651649000020', '2015-06-26 09:56:51', '1', '10000', '1', '2015-06-26 09:57:20', '0000', NULL, '', '1', '2015-06-26 09:57:20', '18002206359');
INSERT INTO `fm_withdraw` VALUES (36, 6156, NULL, 'M85150626105158231000069', '2015-06-26 10:51:58', '1', '100', '1', '2015-06-26 10:52:19', '0000', NULL, '', '1', '2015-06-26 10:52:20', '18002206359');
INSERT INTO `fm_withdraw` VALUES (37, 6150, NULL, 'M85150626113944840000003', '2015-06-26 11:38:08', '1', '10', '0', '2015-06-26 11:40:21', '5345', NULL, '', '0', NULL, '18310550014');
INSERT INTO `fm_withdraw` VALUES (38, 6150, NULL, 'M85150626134634506000015', '2015-06-26 13:46:34', '1', '4', '1', '2015-06-26 13:48:23', '0000', NULL, '', '1', '2015-06-26 13:48:24', '18310550014');
INSERT INTO `fm_withdraw` VALUES (39, 6156, NULL, 'M85150626134702043000019', '2015-06-26 13:47:02', '1', '100', '1', '2015-06-26 13:47:36', '0000', NULL, '', '1', '2015-06-26 13:48:19', '18002206359');
INSERT INTO `fm_withdraw` VALUES (40, 6156, NULL, 'M85150626134809867000021', '2015-06-26 13:48:09', '1', '100', '1', '2015-06-26 13:48:36', '0000', NULL, '', '1', '2015-06-26 13:48:37', '18002206359');
INSERT INTO `fm_withdraw` VALUES (41, 6156, NULL, 'M85150626135429272000030', '2015-06-26 13:54:29', '1', '1500', '1', '2015-06-26 13:55:33', '0000', NULL, '', '1', '2015-06-26 13:55:33', '18002206359');
INSERT INTO `fm_withdraw` VALUES (42, 6157, NULL, 'M85150629135950701000005', '2015-06-29 13:59:50', '1', '10', '0', NULL, NULL, NULL, '', '0', NULL, '18002206358');
INSERT INTO `fm_withdraw` VALUES (43, 6141, NULL, 'M85150701180223332000009', '2015-07-01 18:02:23', '1', '1000', '1', '2015-07-01 18:02:42', '0000', NULL, '', '1', '2015-07-01 18:02:42', '13651099898');
INSERT INTO `fm_withdraw` VALUES (44, 6150, NULL, 'M85150702111540894000003', '2015-07-02 11:14:12', '1', '100', '1', '2015-07-02 11:16:20', '0000', NULL, '', '1', '2015-07-02 11:15:58', '18310550014');
INSERT INTO `fm_withdraw` VALUES (45, 6150, NULL, 'M85150702111907576000003', '2015-07-02 11:17:39', '1', '10.00', '1', '2015-07-02 12:50:01', '0000', NULL, '', '1', '2015-07-02 12:48:44', '18310550014');
INSERT INTO `fm_withdraw` VALUES (46, 6141, NULL, 'M85150702115509016000041', '2015-07-02 11:55:09', '1', '1000', '1', '2015-07-02 11:56:03', '0000', NULL, '', '1', '2015-07-02 11:56:03', '13651099898');
INSERT INTO `fm_withdraw` VALUES (47, 6150, NULL, 'M85150702131306121000004', '2015-07-02 13:13:06', '1', '94', '1', '2015-07-02 13:13:20', '0000', NULL, '', '1', '2015-07-02 13:13:48', '18310550014');
INSERT INTO `fm_withdraw` VALUES (48, 6150, NULL, 'M85150702131455612000007', '2015-07-02 13:14:55', '1', '0.1', '1', '2015-07-02 13:15:20', '0000', NULL, '', '1', '2015-07-02 13:15:21', '18310550014');
INSERT INTO `fm_withdraw` VALUES (49, 6150, NULL, 'M85150702135639779000004', '2015-07-02 13:55:11', '1', '97', '0', NULL, NULL, NULL, '', '0', NULL, '18310550014');
INSERT INTO `fm_withdraw` VALUES (50, 6141, NULL, 'M85150702171225601000007', '2015-07-02 17:12:25', '1', '1000', '1', '2015-07-02 17:13:17', '0000', NULL, '', '1', '2015-07-02 17:13:18', '13651099898');
INSERT INTO `fm_withdraw` VALUES (51, 6141, NULL, 'M85150702171330112000010', '2015-07-02 17:13:30', '1', '1000', '1', '2015-07-02 17:13:46', '0000', NULL, '', '1', '2015-07-02 17:13:47', '13651099898');
INSERT INTO `fm_withdraw` VALUES (52, 6150, NULL, 'M85150702183050881000025', '2015-07-02 18:30:50', '1', '2000', '0', NULL, NULL, NULL, '', '0', NULL, '18310550014');
INSERT INTO `fm_withdraw` VALUES (53, 6141, NULL, 'M85150703110227165000040', '2015-07-03 11:02:27', '1', '1000', '1', '2015-07-03 11:02:46', '0000', NULL, '', '1', '2015-07-03 11:02:48', '13651099898');
INSERT INTO `fm_withdraw` VALUES (54, 6150, NULL, 'M85150703114610084000011', '2015-07-03 11:46:10', '1', '100', '1', '2015-07-03 11:47:00', '0000', NULL, '', '1', '2015-07-03 11:47:10', '18310550014');
INSERT INTO `fm_withdraw` VALUES (55, 6160, NULL, 'M85150703143701426000005', '2015-07-03 14:37:38', '1', '1000', '1', '2015-07-03 14:38:18', '0000', NULL, '', '1', '2015-07-03 14:38:18', '18813130608');
INSERT INTO `fm_withdraw` VALUES (56, 6150, NULL, 'M85150703160846078000009', '2015-07-03 16:07:18', '1', '100', '0', NULL, NULL, NULL, '', '0', NULL, '18310550014');
INSERT INTO `fm_withdraw` VALUES (57, 6150, NULL, 'M85150703160902929000010', '2015-07-03 16:07:35', '1', '100.66', '1', '2015-07-03 16:09:40', '0000', NULL, '', '1', '2015-07-03 16:08:19', '18310550014');
INSERT INTO `fm_withdraw` VALUES (58, 6141, NULL, 'M85150703164633502000016', '2015-07-03 16:46:33', '1', '1', '1', '2015-07-03 16:47:13', '0000', NULL, '', '1', '2015-07-03 16:47:14', '13651099898');
INSERT INTO `fm_withdraw` VALUES (59, 6141, NULL, 'M85150703164746036000018', '2015-07-03 16:47:46', '1', '100', '1', '2015-07-03 16:48:10', '0000', NULL, '', '1', '2015-07-03 16:48:10', '13651099898');
INSERT INTO `fm_withdraw` VALUES (60, 6150, NULL, 'M85150703171203671000002', '2015-07-03 17:12:03', '1', '1', '1', '2015-07-03 17:12:51', '0000', NULL, '', '1', '2015-07-03 17:12:52', '18310550014');
INSERT INTO `fm_withdraw` VALUES (61, 6141, NULL, 'M85150703172243059000006', '2015-07-03 17:22:43', '1', '1', '1', '2015-07-03 17:22:56', '0000', NULL, '', '1', '2015-07-03 17:22:57', '13651099898');
INSERT INTO `fm_withdraw` VALUES (62, 6156, NULL, 'M85150705152728043000018', '2015-07-05 15:27:28', '1', '100', '1', '2015-07-05 15:27:53', '0000', NULL, '', '1', '2015-07-05 15:27:54', '18002206359');
INSERT INTO `fm_withdraw` VALUES (63, 6141, NULL, 'M85150706105518572000072', '2015-07-06 10:55:18', '1', '2000', '1', '2015-07-06 10:55:38', '0000', NULL, '', '1', '2015-07-06 10:55:39', '13651099898');
INSERT INTO `fm_withdraw` VALUES (64, 6156, NULL, 'M85150706232043224000090', '2015-07-06 23:20:43', '1', '100', '1', '2015-07-06 23:21:21', '0000', NULL, '', '1', '2015-07-06 23:21:21', '18002206359');
INSERT INTO `fm_withdraw` VALUES (65, 6141, NULL, 'M85150707171930083000300', '2015-07-07 17:19:30', '1', '2800', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (66, 6141, NULL, 'M85150707181503292000115', '2015-07-07 18:15:03', '1', '100', '0', '2015-07-07 18:15:55', '3018', NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (67, 6141, NULL, 'M85150707181625238000120', '2015-07-07 18:16:25', '1', '1', '1', '2015-07-07 18:16:47', '0000', NULL, '', '2', '2015-07-07 18:16:48', '13651099898');
INSERT INTO `fm_withdraw` VALUES (68, 6222, NULL, 'M85150707193825073000034', '2015-07-07 19:38:25', '1', '1000', '1', '2015-07-07 19:40:07', '0000', NULL, '', '1', '2015-07-07 19:40:08', '18310550030');
INSERT INTO `fm_withdraw` VALUES (69, 6141, NULL, 'M85150708114725533000445', '2015-07-08 11:47:25', '1', '200', '1', '2015-07-08 11:47:45', '0000', NULL, '', '1', '2015-07-08 11:47:46', '13651099898');
INSERT INTO `fm_withdraw` VALUES (70, 6127, NULL, 'M85150708145846201000017', '2015-07-08 14:59:17', '1', '2000', '0', NULL, NULL, NULL, '', '0', NULL, '13581900000');
INSERT INTO `fm_withdraw` VALUES (71, 6127, NULL, 'M85150708150105995000019', '2015-07-08 15:01:37', '1', '3685', '0', NULL, NULL, NULL, '', '0', NULL, '13581900000');
INSERT INTO `fm_withdraw` VALUES (72, 6127, NULL, 'M85150708150149820000020', '2015-07-08 15:02:21', '1', '5963.25', '0', NULL, NULL, NULL, '', '0', NULL, '13581900000');
INSERT INTO `fm_withdraw` VALUES (73, 6151, NULL, 'M85150708150731419000488', '2015-07-08 15:07:31', '1', '100', '1', '2015-07-08 15:08:02', '0000', NULL, '', '1', '2015-07-08 15:08:02', '18601979931');
INSERT INTO `fm_withdraw` VALUES (74, 6141, NULL, 'M85150708151610282000495', '2015-07-08 15:16:10', '1', '2222', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (75, 6141, NULL, 'M85150708151941952000499', '2015-07-08 15:19:41', '1', '1000', '1', '2015-07-08 15:20:01', '0000', NULL, '', '2', '2015-07-08 15:20:02', '13651099898');
INSERT INTO `fm_withdraw` VALUES (76, 6141, NULL, 'M85150708151942619000500', '2015-07-08 15:19:42', '1', '1000', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (77, 6141, NULL, 'M85150708172755853000015', '2015-07-08 17:27:55', '1', '12', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (78, 6155, NULL, 'M85150708172843562000021', '2015-07-08 17:28:43', '1', '1000', '0', NULL, NULL, NULL, '', '0', NULL, '15010575938');
INSERT INTO `fm_withdraw` VALUES (79, 6156, NULL, 'M85150708174650081000029', '2015-07-08 17:46:50', '1', '100', '0', NULL, NULL, NULL, '', '0', NULL, '18002206359');
INSERT INTO `fm_withdraw` VALUES (80, 6155, NULL, 'M85150708191409748000015', '2015-07-08 19:14:09', '1', '1000', '0', NULL, NULL, NULL, '', '0', NULL, '15010575938');
INSERT INTO `fm_withdraw` VALUES (81, 6192, NULL, 'M85150709135052838000182', '2015-07-09 13:50:52', '1', '100', '1', '2015-07-09 13:51:11', '0000', NULL, '', '1', '2015-07-09 13:51:12', '18201773918');
INSERT INTO `fm_withdraw` VALUES (82, 6192, NULL, 'M85150709135130498000185', '2015-07-09 13:51:30', '1', '100', '1', '2015-07-09 13:51:50', '0000', NULL, '', '1', '2015-07-09 13:51:51', '18201773918');
INSERT INTO `fm_withdraw` VALUES (83, 6160, NULL, 'M85150709155838872000311', '2015-07-09 15:58:38', '1', '111', '0', NULL, NULL, NULL, '', '0', NULL, '1');
INSERT INTO `fm_withdraw` VALUES (84, 6160, NULL, 'M85150709155859246000312', '2015-07-09 15:58:59', '1', '111', '0', NULL, NULL, NULL, '', '0', NULL, '1');
INSERT INTO `fm_withdraw` VALUES (85, 6160, NULL, 'M85150709155925141000313', '2015-07-09 15:59:25', '1', '111', '0', NULL, NULL, NULL, '', '0', NULL, '1');
INSERT INTO `fm_withdraw` VALUES (86, 6160, NULL, 'M85150709155945560000315', '2015-07-09 15:59:45', '1', '111', '0', NULL, NULL, NULL, '', '0', NULL, '1');
INSERT INTO `fm_withdraw` VALUES (87, 6127, NULL, 'M85150709195228983000413', '2015-07-09 19:52:28', '1', '10000', '0', NULL, NULL, NULL, '', '0', NULL, '13581900000');
INSERT INTO `fm_withdraw` VALUES (88, 6198, NULL, 'M85150710115846305000004', '2015-07-10 11:57:16', '1', '100', '1', '2015-07-10 11:59:03', '0000', '成功', '', '2', '2015-07-10 11:57:34', '18310550022');
INSERT INTO `fm_withdraw` VALUES (89, 6246, NULL, 'M85150710142828473000028', '2015-07-10 14:28:28', '1', '100', '1', '2015-07-10 14:28:49', '0000', '成功', '', '2', '2015-07-10 14:28:50', '18310550032');
INSERT INTO `fm_withdraw` VALUES (90, 6246, NULL, 'M85150710143402280000031', '2015-07-10 14:34:02', '1', '1', '1', '2015-07-10 14:34:18', '0000', '成功', '', '1', '2015-07-10 14:34:19', '18310550032');
INSERT INTO `fm_withdraw` VALUES (91, 6164, NULL, 'M85150710144125960000009', '2015-07-10 14:39:56', '1', '188.35', '1', '2015-07-10 14:40:07', '0000', '成功', '', '1', '2015-07-10 14:40:07', '18310550017');
INSERT INTO `fm_withdraw` VALUES (92, 6246, NULL, 'M85150710152139866000018', '2015-07-10 15:21:39', '1', '99', '1', '2015-07-10 15:21:56', '0000', '成功', '', '1', '2015-07-10 15:21:56', '18310550032');
INSERT INTO `fm_withdraw` VALUES (93, 6246, NULL, 'M85150710163620200000016', '2015-07-10 16:36:20', '1', '0.1', '0', NULL, NULL, NULL, '', '0', NULL, '18310550032');
INSERT INTO `fm_withdraw` VALUES (94, 6246, NULL, 'M85150710163652194000018', '2015-07-10 16:36:52', '1', '0.01', '0', NULL, NULL, NULL, '', '0', NULL, '18310550032');
INSERT INTO `fm_withdraw` VALUES (95, 6246, NULL, 'M85150710163723335000020', '2015-07-10 16:37:23', '1', '200.1', '0', NULL, NULL, NULL, '', '0', NULL, '18310550032');
INSERT INTO `fm_withdraw` VALUES (96, 6246, NULL, 'M85150710163804409000023', '2015-07-10 16:38:04', '1', '-1', '0', '2015-07-10 16:38:05', '5019', '交易金额格式错', '', '0', NULL, '18310550032');
INSERT INTO `fm_withdraw` VALUES (97, 6246, NULL, 'M85150710163829544000026', '2015-07-10 16:38:29', '1', '-1', '0', '2015-07-10 16:38:30', '5019', '交易金额格式错', '', '0', NULL, '18310550032');
INSERT INTO `fm_withdraw` VALUES (98, 6246, NULL, 'M85150710163950971000029', '2015-07-10 16:39:50', '1', '-1', '0', '2015-07-10 16:39:51', '5019', '交易金额格式错', '', '0', NULL, '18310550032');
INSERT INTO `fm_withdraw` VALUES (99, 6246, NULL, 'M85150710164134238000031', '2015-07-10 16:41:34', '1', '-1', '0', '2015-07-10 16:41:35', '5019', '交易金额格式错', '', '0', NULL, '18310550032');
INSERT INTO `fm_withdraw` VALUES (100, 6246, NULL, 'M85150710164228540000036', '2015-07-10 16:42:28', '1', '+1', '0', NULL, NULL, NULL, '', '0', NULL, '18310550032');
INSERT INTO `fm_withdraw` VALUES (101, 6246, NULL, 'M85150710164327516000038', '2015-07-10 16:43:27', '1', '+100', '0', NULL, NULL, NULL, '', '0', NULL, '18310550032');
INSERT INTO `fm_withdraw` VALUES (102, 6160, NULL, 'M85150710165252625000011', '2015-07-10 16:53:23', '1', '1', '0', NULL, NULL, NULL, '', '0', NULL, '18813130608');
INSERT INTO `fm_withdraw` VALUES (103, 6160, NULL, 'M85150710165254252000012', '2015-07-10 16:53:24', '1', '1', '0', NULL, NULL, NULL, '', '0', NULL, '18813130608');
INSERT INTO `fm_withdraw` VALUES (104, 6160, NULL, 'M85150710165318496000013', '2015-07-10 16:53:48', '1', '1', '0', NULL, NULL, NULL, '', '0', NULL, '18813130608');
INSERT INTO `fm_withdraw` VALUES (105, 6160, NULL, 'M85150710165508949000016', '2015-07-10 16:55:39', '1', '4000', '0', NULL, NULL, NULL, '', '0', NULL, '18813130608');
INSERT INTO `fm_withdraw` VALUES (106, 6160, NULL, 'M85150710165644409000019', '2015-07-10 16:57:14', '1', '4000', '0', NULL, NULL, NULL, '', '0', NULL, '18813130608');
INSERT INTO `fm_withdraw` VALUES (107, 6160, NULL, 'M85150710171833971000004', '2015-07-10 17:19:04', '1', '4000', '0', NULL, NULL, NULL, '', '0', NULL, '18813130608');
INSERT INTO `fm_withdraw` VALUES (108, 6160, NULL, 'M85150710171835909000005', '2015-07-10 17:19:05', '1', '4000', '0', NULL, NULL, NULL, '', '0', NULL, '18813130608');
INSERT INTO `fm_withdraw` VALUES (109, 6160, NULL, 'M85150710171922221000008', '2015-07-10 17:19:52', '1', '4000', '0', NULL, NULL, NULL, '', '0', NULL, '18813130608');
INSERT INTO `fm_withdraw` VALUES (110, 6160, NULL, 'M85150710172003168000011', '2015-07-10 17:20:33', '1', '4000', '0', NULL, NULL, NULL, '', '0', NULL, '18813130608');
INSERT INTO `fm_withdraw` VALUES (111, 6156, NULL, 'M85150710173235447000062', '2015-07-10 17:32:35', '1', '1000', '0', NULL, NULL, NULL, '', '0', NULL, '18002206359');
INSERT INTO `fm_withdraw` VALUES (112, 6198, NULL, 'M85150710173301008000065', '2015-07-10 17:33:01', '1', '1000', '0', NULL, NULL, NULL, '', '0', NULL, '18310550022');
INSERT INTO `fm_withdraw` VALUES (113, 6141, NULL, 'M85150714171119129000048', '2015-07-14 17:11:19', '1', '50', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (114, 6200, NULL, 'M85150715103432335000014', '2015-07-15 10:33:03', '1', '1000', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (115, 6200, NULL, 'M85150715103542378000021', '2015-07-15 10:34:13', '1', '2000', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (116, 6200, NULL, 'M85150715103547667000022', '2015-07-15 10:34:19', '1', '3000', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (117, 6200, NULL, 'M85150715103551267000023', '2015-07-15 10:34:22', '1', '4000', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (118, 6200, NULL, 'M85150715103707087000025', '2015-07-15 10:35:38', '1', '700', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (119, 6200, NULL, 'M85150715103758698000029', '2015-07-15 10:36:30', '1', '5000', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (120, 6200, NULL, 'M85150715103804128000030', '2015-07-15 10:36:35', '1', '4200', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (121, 6141, NULL, 'M85150715103813210000031', '2015-07-15 10:36:44', '1', '1000', '1', '2015-07-15 10:38:32', '0000', '成功', '', '1', '2015-07-15 10:37:04', '13651099898');
INSERT INTO `fm_withdraw` VALUES (122, 6200, NULL, 'M85150715103912604000032', '2015-07-15 10:37:44', '1', '40998.00', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (123, 6141, NULL, 'M85150715104434168000006', '2015-07-15 10:43:05', '1', '2000', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (124, 6200, NULL, 'M85150715105540906000015', '2015-07-15 10:54:12', '1', '5000', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (125, 6141, NULL, 'M85150715105612094000018', '2015-07-15 10:54:43', '1', '3000', '1', '2015-07-15 10:56:29', '0000', '成功', '', '1', '2015-07-15 10:55:03', '13651099898');
INSERT INTO `fm_withdraw` VALUES (126, 6200, NULL, 'M85150715105644502000021', '2015-07-15 10:55:16', '1', '5000', '1', '2015-07-15 10:57:20', '0000', '成功', '', '1', '2015-07-15 10:55:52', '18310550024');
INSERT INTO `fm_withdraw` VALUES (127, 6141, NULL, 'M85150715105858606000026', '2015-07-15 10:57:30', '1', '1000', '1', '2015-07-15 10:59:16', '0000', '成功', '', '1', '2015-07-15 10:57:49', '13651099898');
INSERT INTO `fm_withdraw` VALUES (128, 6141, NULL, 'M85150715105956634000029', '2015-07-15 10:58:28', '1', '4000', '1', '2015-07-15 11:00:12', '0000', '成功', '', '1', '2015-07-15 10:58:45', '13651099898');
INSERT INTO `fm_withdraw` VALUES (129, 6200, NULL, 'M85150715110018006000034', '2015-07-15 10:58:49', '1', '1500', '1', '2015-07-15 11:00:39', '0000', '成功', '', '1', '2015-07-15 10:59:11', '18310550024');
INSERT INTO `fm_withdraw` VALUES (130, 6200, NULL, 'M85150715110156934000037', '2015-07-15 11:00:28', '1', '1000', '1', '2015-07-15 11:02:14', '0000', '成功', '', '1', '2015-07-15 11:00:49', '18310550024');
INSERT INTO `fm_withdraw` VALUES (131, 6141, NULL, 'M85150715110205599000040', '2015-07-15 11:00:37', '1', '500', '1', '2015-07-15 11:02:23', '0000', '成功', '', '1', '2015-07-15 11:00:58', '13651099898');
INSERT INTO `fm_withdraw` VALUES (132, 6141, NULL, 'M85150715110412095000043', '2015-07-15 11:02:43', '1', '1', '1', '2015-07-15 11:04:54', '0000', '成功', '', '1', '2015-07-15 11:03:40', '13651099898');
INSERT INTO `fm_withdraw` VALUES (133, 6200, NULL, 'M85150715110611196000047', '2015-07-15 11:04:42', '1', '1', '1', '2015-07-15 11:06:36', '0000', '成功', '', '1', '2015-07-15 11:30:00', '18310550024');
INSERT INTO `fm_withdraw` VALUES (134, 6141, NULL, 'M85150715110851379000003', '2015-07-15 11:07:23', '1', '2', '1', '2015-07-15 11:09:08', '0000', '成功', '', '1', '2015-07-15 11:07:41', '13651099898');
INSERT INTO `fm_withdraw` VALUES (135, 6200, NULL, 'M85150715110947541000006', '2015-07-15 11:08:19', '1', '1000', '1', '2015-07-15 11:10:01', '0000', '成功', '', '1', '2015-07-15 11:08:34', '18310550024');
INSERT INTO `fm_withdraw` VALUES (136, 6141, NULL, 'M85150715111211577000003', '2015-07-15 11:10:43', '1', '3', '1', '2015-07-15 11:12:44', '0000', '成功', '', '1', '2015-07-15 11:11:17', '13651099898');
INSERT INTO `fm_withdraw` VALUES (137, 6141, NULL, 'M85150715111543430000011', '2015-07-15 11:14:15', '1', '4', '1', '2015-07-15 11:16:01', '0000', '成功', '', '1', '2015-07-15 11:14:33', '13651099898');
INSERT INTO `fm_withdraw` VALUES (138, 6156, NULL, 'M85150715121806391000013', '2015-07-15 12:16:38', '1', '10000', '1', '2015-07-15 12:18:51', '0000', '成功', '', '1', '2015-07-15 12:17:23', '18002206359');
INSERT INTO `fm_withdraw` VALUES (139, 6156, NULL, 'M85150715144159274000013', '2015-07-15 14:40:31', '1', '1000', '1', '2015-07-15 14:42:48', '0000', '成功', '', '1', '2015-07-15 14:41:20', '18002206359');
INSERT INTO `fm_withdraw` VALUES (140, 6156, NULL, 'M85150715144549662000016', '2015-07-15 14:44:21', '1', '100', '0', NULL, NULL, NULL, '', '0', NULL, '18002206359');
INSERT INTO `fm_withdraw` VALUES (141, 6141, NULL, 'M85150715153040420000021', '2015-07-15 15:29:12', '1', '200', '1', '2015-07-15 15:31:05', '0000', '成功', '', '1', '2015-07-15 15:29:37', '13651099898');
INSERT INTO `fm_withdraw` VALUES (142, 6141, NULL, 'M85150715161258441000004', '2015-07-15 16:11:30', '1', '5', '1', '2015-07-15 16:13:17', '0000', '成功', '', '1', '2015-07-15 16:11:53', '13651099898');
INSERT INTO `fm_withdraw` VALUES (143, 6141, NULL, 'M85150715161413986000007', '2015-07-15 16:12:45', '1', '6', '0', NULL, NULL, NULL, '', '0', NULL, '13651099898');
INSERT INTO `fm_withdraw` VALUES (144, 6141, NULL, 'M85150715161526665000010', '2015-07-15 16:13:58', '1', '6', '1', '2015-07-15 16:15:42', '0000', '成功', '', '1', '2015-07-15 16:14:20', '13651099898');
INSERT INTO `fm_withdraw` VALUES (145, 6200, NULL, 'M85150716172804551000007', '2015-07-16 17:26:36', '1', '32400', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (146, 6200, NULL, 'M85150716172837387000009', '2015-07-16 17:27:09', '1', '32497.01', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (147, 6200, NULL, 'M85150716173036042000012', '2015-07-16 17:29:07', '1', '2.1', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (148, 6200, NULL, 'M85150716173513242000015', '2015-07-16 17:33:45', '1', '32599', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (149, 6200, NULL, 'M85150716173607488000017', '2015-07-16 17:34:39', '1', '3', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');
INSERT INTO `fm_withdraw` VALUES (150, 6200, NULL, 'M85150717145358855000010', '2015-07-17 14:53:58', '1', '10002', '0', NULL, NULL, NULL, '', '0', NULL, '18310550024');

-- ----------------------------
-- Table structure for operation
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation_seq` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_enable` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `operation_no`(`operation_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation
-- ----------------------------
INSERT INTO `operation` VALUES (1, '01', '业务管理', '', '001', '1', '0', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `operation` VALUES (2, '0101', 'OB列表', 'fundingController.do?queryObList', '001001', '1', '01', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `operation` VALUES (3, '02', '系统管理', '', '999', '1', '0', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `operation` VALUES (4, '0102', '出资列表', 'fundingController.do?queryFundingList', '001002', '1', '01', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `operation` VALUES (5, '0202', '角色管理', 'pc_SystemController.do?getActorList', '999002', '1', '02', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `operation` VALUES (6, '0201', '用户管理', 'pc_SystemController.do?getUserList', '999001', '1', '02', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `operation` VALUES (7, '0203', '菜单管理', 'pc_SystemController.do?getOperationList', '999003', '1', '02', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `operation` VALUES (8, '0204', '维度管理', 'pc_SystemController.do?dimMain', '999004', '1', '02', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `operation` VALUES (10, '0103', '开户列表', 'accountController.do?queryAccountList', '001003', '1', '01', 'wanghao', '2015-05-11 11:45:34');
INSERT INTO `operation` VALUES (12, '0205', '在线用户', 'pc_SystemController.do?getOnlineUserList', '999005', '1', '02', 'wanghao', '2015-05-26 14:22:11');
INSERT INTO `operation` VALUES (15, '0104', '充值记录', 'rechargeController.do?queryRechargeList', '001004', '1', '01', 'wanghao', '2015-07-16 18:00:50');
INSERT INTO `operation` VALUES (16, '0105', '提现记录', 'withdrawController.do?queryWithdrawList', '001005', '1', '01', 'wanghao', '2015-07-16 18:01:28');
INSERT INTO `operation` VALUES (17, '03', '运维管理', '', '003', '1', '0', 'wanghao', '2015-07-16 18:05:37');
INSERT INTO `operation` VALUES (18, '0301', '产品列表', 'productController.do?queryProductList', '003001', '1', '03', 'wanghao', '2015-07-16 18:06:03');
INSERT INTO `operation` VALUES (19, '0302', '富友日志', 'settlementController.do?querySettlementList', '003002', '1', '03', 'wanghao', '2015-07-16 18:10:27');
INSERT INTO `operation` VALUES (20, '0303', '核心日志', '', '003003', '0', '03', 'wanghao', '2015-07-16 18:10:48');
INSERT INTO `operation` VALUES (21, '0106', ' 考核1', 'withdrawController.do?query', '001006', '1', '01', 'wanghao', '2017-06-07 14:58:29');
INSERT INTO `operation` VALUES (23, '0107', '考核2', 'withdrawController.do?query', '001007', '1', '01', 'wanghao', '2021-12-22 11:04:55');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_enable` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'wanghao', '111111', '王浩', '438434336@qq.com', '13904616901', '1', '1', 'wanghao', '2015-05-11 11:45:34', '2022-09-01 09:10:36', '0:0:0:0:0:0:0:1');
INSERT INTO `user` VALUES (2, 'nsf', '111111', '牛牛牛', '**********', '***********', '1', NULL, 'wanghao', '2015-05-11 11:45:34', '2015-07-08 11:27:00', '192.168.10.251');
INSERT INTO `user` VALUES (3, 'fengjing', '111111', '封景', '***', '***', '0', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (4, 'ttttt', 'ttttt', 'tt', 'tt', 'tt', '0', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (5, 'lyh', '111111', '雷艳红', '****', '****', '1', NULL, 'wanghao', '2015-05-11 11:45:34', '2015-07-08 11:28:16', '119.2.6.24');
INSERT INTO `user` VALUES (6, 'zhangmo', '111111', '张默', '**@,**', '135****0317', '1', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (7, 'licai', '111111', '李彩', '@', '135****0000', '1', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (8, 'wangyuxin', '111111', '王玉新', '@', '135****0000', '1', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (9, 'yanmuhua', '111111', '严慕华', '@', '135****0000', '1', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (10, 'chenzong', '111111', '陈总', '@', '135****0000', '1', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (11, 'zhngyan', '111111', '郑岩', '123@qq.com', '13536300000', '0', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (12, 'zhangdaihao', '111111', '张代浩', 'yangVioletIII@163.com', '13904616901', '1', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (13, 'yufaxiu', '1    1', '于法修', 'fuck@crfchina.com', '13904616901', '1', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (18, 'cuisongjie', '111111', '崔松杰', '11@qq.com', '13904616901', '1', NULL, 'wanghao', '2015-05-11 11:45:34', NULL, NULL);
INSERT INTO `user` VALUES (19, 'wangwei', '111111', '王伟', '136@139.com', '13613613616', '1', NULL, 'wanghao', '2021-12-08 07:50:47', NULL, NULL);
INSERT INTO `user` VALUES (20, '111111', '111111', '壹亿壹', '111@qq.com', '13613676191', '1', NULL, 'wanghao', '2021-12-08 08:50:32', NULL, NULL);
INSERT INTO `user` VALUES (21, 'ceshi123', '123456', '张三', '123456@qq.com', '13904616901', '1', NULL, 'wanghao', '2021-12-08 14:59:30', '2012-05-11 11:45:34', '0:0:0:0:0:0:0:1');
INSERT INTO `user` VALUES (22, 'abcdefg', '111111', '安保处啊', '4384343366@qq.com', '13613676191', '0', NULL, 'wanghao', '2022-07-07 14:58:57', NULL, NULL);
INSERT INTO `user` VALUES (23, 'pppppp', '111111', '匹配', '4384343366@qq.com', '13613676191', '1', NULL, 'wanghao', '2022-07-20 11:23:11', NULL, NULL);
INSERT INTO `user` VALUES (24, 'aaaaaa', '111111', '请问', '1212143366@qq.com', '12121212121', '1', NULL, 'wanghao', '2022-07-20 11:24:44', NULL, NULL);
INSERT INTO `user` VALUES (25, 'asd123', 'asd123', '哈哈哈', '2214223266@qq.com', '13102391844', '1', NULL, 'wanghao', '2022-09-02 21:16:18', NULL, NULL);

-- ----------------------------
-- Table structure for user_actor
-- ----------------------------
DROP TABLE IF EXISTS `user_actor`;
CREATE TABLE `user_actor`  (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `actor_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_actor
-- ----------------------------
INSERT INTO `user_actor` VALUES ('fengjing', 'admin');
INSERT INTO `user_actor` VALUES ('fengjing', 'normal');
INSERT INTO `user_actor` VALUES ('zhangmo', 'normal');
INSERT INTO `user_actor` VALUES ('wanghao', 'admin');
INSERT INTO `user_actor` VALUES ('wanghao', 'normal');
INSERT INTO `user_actor` VALUES ('nsf', 'admin');
INSERT INTO `user_actor` VALUES ('nsf', 'normal');
INSERT INTO `user_actor` VALUES ('lyh', 'admin');
INSERT INTO `user_actor` VALUES ('111111', 'admin');
INSERT INTO `user_actor` VALUES ('111111', 'he');
INSERT INTO `user_actor` VALUES ('wangwei', 'admin');
INSERT INTO `user_actor` VALUES ('wangwei', 'normal');
INSERT INTO `user_actor` VALUES ('wangwei', 'he');
INSERT INTO `user_actor` VALUES ('abcdefg', 'admin');
INSERT INTO `user_actor` VALUES ('abcdefg', 'normal');
INSERT INTO `user_actor` VALUES ('ttttt', 'admin');
INSERT INTO `user_actor` VALUES ('ttttt', 'he');
INSERT INTO `user_actor` VALUES ('chenzong', 'normal');
INSERT INTO `user_actor` VALUES ('chenzong', 'he');
INSERT INTO `user_actor` VALUES ('chenzong', 'jjjj');
INSERT INTO `user_actor` VALUES ('chenzong', '马思凡');
INSERT INTO `user_actor` VALUES ('chenzong', '软件192');

-- ----------------------------
-- Table structure for wechat_article
-- ----------------------------
DROP TABLE IF EXISTS `wechat_article`;
CREATE TABLE `wechat_article`  (
  `art_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `art_tmi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图文消息缩略图的media_id',
  `art_autor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图文消息的作者',
  `art_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图文消息的标题',
  `art_csu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '在图文消息页面点击“阅读原文”后的页面',
  `art_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图文消息页面的内容，支持HTML标签',
  `art_digest` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图文消息的描述',
  `art_scp` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否显示封面，1为显示，0为不显示',
  `art_gs_record_id` bigint(20) NOT NULL COMMENT '外键id',
  PRIMARY KEY (`art_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wechat_article
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_attention
-- ----------------------------
DROP TABLE IF EXISTS `wechat_attention`;
CREATE TABLE `wechat_attention`  (
  `attention_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attention_openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_nickname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_language` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_country` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_headimgurl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_subscribe_time` bigint(20) NOT NULL DEFAULT 0,
  `attention_unionid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_groupid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attention_subscribe_timedate` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`attention_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wechat_attention
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_gs_record
-- ----------------------------
DROP TABLE IF EXISTS `wechat_gs_record`;
CREATE TABLE `wechat_gs_record`  (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `record_media_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `record_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `record_creat_at` bigint(20) NOT NULL DEFAULT 0,
  `record_create_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_create_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `record_msg_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wechat_gs_record
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_kf
-- ----------------------------
DROP TABLE IF EXISTS `wechat_kf`;
CREATE TABLE `wechat_kf`  (
  `kf_p_id` bigint(30) NOT NULL AUTO_INCREMENT,
  `kf_account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `kf_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `kf_password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `kf_creat_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `kf_create_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`kf_p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wechat_kf
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_material
-- ----------------------------
DROP TABLE IF EXISTS `wechat_material`;
CREATE TABLE `wechat_material`  (
  `material_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `material_media_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `material_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `material_create_at` bigint(20) NOT NULL DEFAULT 0,
  `material_create_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `material_create_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `material_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `material_desc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`material_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wechat_material
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_record
-- ----------------------------
DROP TABLE IF EXISTS `wechat_record`;
CREATE TABLE `wechat_record`  (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `record_openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `record_opercode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `record_opercode_desc` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `record_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `record_time` bigint(20) NOT NULL DEFAULT 0,
  `record_time_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `record_worker` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `record_import_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wechat_record
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
