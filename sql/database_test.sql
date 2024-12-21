/*
 Navicat Premium Dump SQL

 Source Server         : connect1
 Source Server Type    : MySQL
 Source Server Version : 90100 (9.1.0)
 Source Host           : localhost:3306
 Source Schema         : database_test

 Target Server Type    : MySQL
 Target Server Version : 90100 (9.1.0)
 File Encoding         : 65001

 Date: 20/12/2024 19:13:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `num` int NOT NULL DEFAULT 0,
  `max_num` int NOT NULL,
  `class_plan_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `class_plan_id`(`class_plan_id` ASC) USING BTREE,
  INDEX `teacher_id`(`teacher_id` ASC) USING BTREE,
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`class_plan_id`) REFERENCES `class_plan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `class_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 295 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (130, 18, 40, 22, 1);
INSERT INTO `class` VALUES (131, 37, 80, 22, 2);
INSERT INTO `class` VALUES (132, 20, 20, 22, 3);
INSERT INTO `class` VALUES (133, 36, 40, 22, 4);
INSERT INTO `class` VALUES (134, 26, 60, 22, 5);
INSERT INTO `class` VALUES (135, 17, 40, 22, 6);
INSERT INTO `class` VALUES (136, 20, 20, 22, 7);
INSERT INTO `class` VALUES (137, 26, 80, 22, 8);
INSERT INTO `class` VALUES (138, 33, 60, 23, 9);
INSERT INTO `class` VALUES (139, 38, 60, 23, 10);
INSERT INTO `class` VALUES (140, 40, 60, 23, 11);
INSERT INTO `class` VALUES (141, 20, 20, 23, 12);
INSERT INTO `class` VALUES (142, 29, 80, 23, 13);
INSERT INTO `class` VALUES (143, 40, 40, 23, 14);
INSERT INTO `class` VALUES (144, 38, 60, 24, 15);
INSERT INTO `class` VALUES (145, 20, 20, 24, 16);
INSERT INTO `class` VALUES (146, 41, 80, 24, 17);
INSERT INTO `class` VALUES (147, 40, 40, 24, 18);
INSERT INTO `class` VALUES (148, 41, 60, 24, 19);
INSERT INTO `class` VALUES (149, 20, 20, 24, 20);
INSERT INTO `class` VALUES (150, 30, 60, 25, 21);
INSERT INTO `class` VALUES (151, 42, 80, 25, 22);
INSERT INTO `class` VALUES (152, 39, 80, 25, 23);
INSERT INTO `class` VALUES (153, 34, 80, 25, 24);
INSERT INTO `class` VALUES (154, 20, 20, 25, 25);
INSERT INTO `class` VALUES (155, 35, 80, 25, 26);
INSERT INTO `class` VALUES (156, 40, 40, 26, 27);
INSERT INTO `class` VALUES (157, 20, 20, 26, 28);
INSERT INTO `class` VALUES (158, 20, 20, 26, 29);
INSERT INTO `class` VALUES (159, 40, 40, 26, 30);
INSERT INTO `class` VALUES (160, 40, 40, 26, 31);
INSERT INTO `class` VALUES (161, 20, 20, 26, 32);
INSERT INTO `class` VALUES (162, 27, 80, 27, 33);
INSERT INTO `class` VALUES (163, 20, 20, 27, 34);
INSERT INTO `class` VALUES (164, 24, 60, 27, 35);
INSERT INTO `class` VALUES (165, 27, 40, 27, 36);
INSERT INTO `class` VALUES (166, 25, 60, 27, 37);
INSERT INTO `class` VALUES (167, 29, 40, 27, 38);
INSERT INTO `class` VALUES (168, 28, 60, 27, 39);
INSERT INTO `class` VALUES (169, 20, 20, 27, 40);
INSERT INTO `class` VALUES (170, 27, 80, 28, 41);
INSERT INTO `class` VALUES (171, 14, 60, 28, 42);
INSERT INTO `class` VALUES (172, 27, 80, 28, 43);
INSERT INTO `class` VALUES (173, 31, 60, 28, 44);
INSERT INTO `class` VALUES (174, 23, 40, 28, 45);
INSERT INTO `class` VALUES (175, 16, 80, 28, 46);
INSERT INTO `class` VALUES (176, 35, 40, 28, 47);
INSERT INTO `class` VALUES (177, 27, 60, 28, 48);
INSERT INTO `class` VALUES (178, 16, 40, 29, 49);
INSERT INTO `class` VALUES (179, 20, 20, 29, 50);
INSERT INTO `class` VALUES (180, 19, 80, 29, 51);
INSERT INTO `class` VALUES (181, 17, 60, 29, 52);
INSERT INTO `class` VALUES (182, 24, 40, 29, 53);
INSERT INTO `class` VALUES (183, 20, 20, 29, 54);
INSERT INTO `class` VALUES (184, 1, 40, 30, 55);
INSERT INTO `class` VALUES (185, 1, 60, 30, 56);
INSERT INTO `class` VALUES (186, 0, 80, 30, 57);
INSERT INTO `class` VALUES (187, 2, 20, 30, 58);
INSERT INTO `class` VALUES (188, 1, 20, 30, 59);
INSERT INTO `class` VALUES (189, 1, 60, 30, 60);
INSERT INTO `class` VALUES (190, 1, 60, 30, 61);
INSERT INTO `class` VALUES (191, 2, 60, 30, 62);
INSERT INTO `class` VALUES (192, 0, 40, 31, 63);
INSERT INTO `class` VALUES (193, 0, 40, 31, 64);
INSERT INTO `class` VALUES (194, 0, 60, 31, 65);
INSERT INTO `class` VALUES (195, 0, 60, 31, 66);
INSERT INTO `class` VALUES (196, 0, 40, 31, 67);
INSERT INTO `class` VALUES (197, 0, 20, 31, 68);
INSERT INTO `class` VALUES (198, 0, 40, 31, 69);
INSERT INTO `class` VALUES (199, 0, 20, 31, 70);
INSERT INTO `class` VALUES (200, 0, 80, 32, 71);
INSERT INTO `class` VALUES (201, 0, 60, 32, 72);
INSERT INTO `class` VALUES (202, 0, 40, 32, 73);
INSERT INTO `class` VALUES (203, 0, 80, 32, 74);
INSERT INTO `class` VALUES (204, 0, 60, 32, 75);
INSERT INTO `class` VALUES (205, 0, 80, 32, 76);
INSERT INTO `class` VALUES (206, 0, 60, 32, 77);
INSERT INTO `class` VALUES (207, 0, 20, 32, 78);
INSERT INTO `class` VALUES (208, 0, 80, 33, 79);
INSERT INTO `class` VALUES (209, 0, 40, 33, 80);
INSERT INTO `class` VALUES (210, 0, 40, 33, 81);
INSERT INTO `class` VALUES (211, 0, 80, 33, 82);
INSERT INTO `class` VALUES (212, 0, 60, 33, 83);
INSERT INTO `class` VALUES (213, 0, 60, 33, 84);
INSERT INTO `class` VALUES (214, 0, 80, 33, 85);
INSERT INTO `class` VALUES (215, 0, 40, 34, 86);
INSERT INTO `class` VALUES (216, 0, 60, 34, 87);
INSERT INTO `class` VALUES (217, 0, 80, 34, 88);
INSERT INTO `class` VALUES (218, 0, 60, 34, 89);
INSERT INTO `class` VALUES (219, 0, 20, 34, 90);
INSERT INTO `class` VALUES (220, 0, 20, 34, 91);
INSERT INTO `class` VALUES (221, 0, 20, 35, 92);
INSERT INTO `class` VALUES (222, 0, 80, 35, 93);
INSERT INTO `class` VALUES (223, 0, 60, 35, 94);
INSERT INTO `class` VALUES (224, 0, 60, 35, 95);
INSERT INTO `class` VALUES (225, 0, 60, 35, 96);
INSERT INTO `class` VALUES (226, 0, 20, 35, 97);
INSERT INTO `class` VALUES (227, 0, 40, 35, 98);
INSERT INTO `class` VALUES (228, 0, 20, 35, 99);
INSERT INTO `class` VALUES (229, 0, 60, 36, 100);
INSERT INTO `class` VALUES (230, 0, 40, 36, 101);
INSERT INTO `class` VALUES (231, 0, 20, 36, 102);
INSERT INTO `class` VALUES (232, 0, 40, 36, 103);
INSERT INTO `class` VALUES (233, 0, 20, 36, 104);
INSERT INTO `class` VALUES (234, 0, 60, 36, 105);
INSERT INTO `class` VALUES (235, 0, 20, 37, 106);
INSERT INTO `class` VALUES (236, 0, 40, 37, 107);
INSERT INTO `class` VALUES (237, 0, 20, 37, 108);
INSERT INTO `class` VALUES (238, 0, 40, 37, 109);
INSERT INTO `class` VALUES (239, 0, 80, 37, 110);
INSERT INTO `class` VALUES (240, 0, 40, 37, 111);
INSERT INTO `class` VALUES (241, 0, 60, 38, 112);
INSERT INTO `class` VALUES (242, 0, 40, 38, 113);
INSERT INTO `class` VALUES (243, 0, 20, 38, 114);
INSERT INTO `class` VALUES (244, 0, 20, 38, 115);
INSERT INTO `class` VALUES (245, 0, 40, 38, 116);
INSERT INTO `class` VALUES (246, 0, 80, 38, 117);
INSERT INTO `class` VALUES (247, 0, 80, 38, 118);
INSERT INTO `class` VALUES (248, 0, 60, 38, 119);
INSERT INTO `class` VALUES (249, 0, 40, 39, 120);
INSERT INTO `class` VALUES (250, 0, 80, 39, 121);
INSERT INTO `class` VALUES (251, 0, 60, 39, 122);
INSERT INTO `class` VALUES (252, 0, 80, 39, 123);
INSERT INTO `class` VALUES (253, 0, 40, 39, 124);
INSERT INTO `class` VALUES (254, 0, 40, 39, 125);
INSERT INTO `class` VALUES (255, 0, 20, 39, 126);
INSERT INTO `class` VALUES (256, 0, 40, 39, 127);
INSERT INTO `class` VALUES (257, 0, 20, 40, 128);
INSERT INTO `class` VALUES (258, 0, 40, 40, 129);
INSERT INTO `class` VALUES (259, 0, 20, 40, 130);
INSERT INTO `class` VALUES (260, 0, 40, 40, 131);
INSERT INTO `class` VALUES (261, 0, 60, 40, 132);
INSERT INTO `class` VALUES (262, 0, 40, 40, 133);
INSERT INTO `class` VALUES (263, 0, 20, 40, 134);
INSERT INTO `class` VALUES (264, 0, 40, 41, 135);
INSERT INTO `class` VALUES (265, 0, 60, 41, 136);
INSERT INTO `class` VALUES (266, 0, 80, 41, 137);
INSERT INTO `class` VALUES (267, 0, 80, 41, 138);
INSERT INTO `class` VALUES (268, 0, 20, 41, 139);
INSERT INTO `class` VALUES (269, 0, 60, 41, 140);
INSERT INTO `class` VALUES (270, 0, 80, 42, 141);
INSERT INTO `class` VALUES (271, 0, 20, 42, 142);
INSERT INTO `class` VALUES (272, 0, 80, 42, 143);
INSERT INTO `class` VALUES (273, 0, 80, 42, 144);
INSERT INTO `class` VALUES (274, 0, 40, 42, 145);
INSERT INTO `class` VALUES (275, 0, 20, 42, 146);
INSERT INTO `class` VALUES (276, 0, 80, 43, 147);
INSERT INTO `class` VALUES (277, 0, 60, 43, 148);
INSERT INTO `class` VALUES (278, 0, 80, 43, 149);
INSERT INTO `class` VALUES (279, 0, 20, 43, 150);
INSERT INTO `class` VALUES (280, 0, 60, 43, 151);
INSERT INTO `class` VALUES (281, 0, 40, 43, 152);
INSERT INTO `class` VALUES (282, 0, 80, 44, 153);
INSERT INTO `class` VALUES (283, 0, 20, 44, 154);
INSERT INTO `class` VALUES (284, 0, 20, 44, 155);
INSERT INTO `class` VALUES (285, 0, 80, 44, 156);
INSERT INTO `class` VALUES (286, 0, 60, 44, 157);
INSERT INTO `class` VALUES (287, 0, 40, 44, 158);
INSERT INTO `class` VALUES (288, 0, 60, 44, 159);
INSERT INTO `class` VALUES (289, 0, 40, 45, 160);
INSERT INTO `class` VALUES (290, 0, 40, 45, 161);
INSERT INTO `class` VALUES (291, 0, 40, 45, 162);
INSERT INTO `class` VALUES (292, 0, 20, 45, 163);
INSERT INTO `class` VALUES (293, 0, 80, 45, 164);
INSERT INTO `class` VALUES (294, 0, 80, 45, 165);

-- ----------------------------
-- Table structure for class_plan
-- ----------------------------
DROP TABLE IF EXISTS `class_plan`;
CREATE TABLE `class_plan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `profession` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `college` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `credit` int NOT NULL,
  `type` enum('B','X','G','S') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_plan
-- ----------------------------
INSERT INTO `class_plan` VALUES (22, '操作系统概论', '操作系统基础知识课程', '计算机科学', '信息学院', 4, 'B');
INSERT INTO `class_plan` VALUES (23, '数据库系统原理', '数据库系统的基本概念与技术', '计算机科学', '信息学院', 4, 'B');
INSERT INTO `class_plan` VALUES (24, '数据结构与算法', '数据结构与算法基础课程', '计算机科学', '信息学院', 3, 'B');
INSERT INTO `class_plan` VALUES (25, '计算机网络', '计算机网络基本原理与应用', '计算机科学', '信息学院', 3, 'X');
INSERT INTO `class_plan` VALUES (26, '人工智能导论', '介绍人工智能的基本概念及应用', '人工智能', '信息学院', 3, 'X');
INSERT INTO `class_plan` VALUES (27, '大数据分析', '大数据处理与分析技术', '数据科学', '信息学院', 3, 'X');
INSERT INTO `class_plan` VALUES (28, '软件工程导论', '软件开发的基本方法与技术', '软件工程', '信息学院', 4, 'B');
INSERT INTO `class_plan` VALUES (29, '计算机图形学', '计算机图形学的基本理论与应用', '计算机科学', '信息学院', 4, 'X');
INSERT INTO `class_plan` VALUES (30, '编译原理', '编译器的工作原理与实现技术', '计算机科学', '信息学院', 3, 'B');
INSERT INTO `class_plan` VALUES (31, '人工神经网络', '神经网络及其在人工智能中的应用', '人工智能', '信息学院', 3, 'X');
INSERT INTO `class_plan` VALUES (32, '中国传统文化', '介绍中国传统文化与其现代意义', NULL, '文学院', 2, 'G');
INSERT INTO `class_plan` VALUES (33, '艺术欣赏', '涵盖音乐、绘画、舞蹈等艺术领域的基本知识', NULL, '艺术学院', 2, 'G');
INSERT INTO `class_plan` VALUES (34, '创新创业基础', '教授基本的创业理论与创新方法', NULL, '管理学院', 2, 'G');
INSERT INTO `class_plan` VALUES (35, '心理学基础', '心理学基本概念与应用', NULL, '心理学院', 3, 'G');
INSERT INTO `class_plan` VALUES (36, '环保与可持续发展', '介绍环境保护和可持续发展的基本知识', NULL, '生态学院', 2, 'G');
INSERT INTO `class_plan` VALUES (37, '现代管理学', '介绍现代管理理论与方法', NULL, '管理学院', 2, 'G');
INSERT INTO `class_plan` VALUES (38, '全球化与文化交流', '全球化背景下的文化交流与理解', NULL, '国际学院', 2, 'G');
INSERT INTO `class_plan` VALUES (39, '趣味英语', '提高英语语言能力，进行国际交流', NULL, '外国语学院', 2, 'G');
INSERT INTO `class_plan` VALUES (40, '大学物理', '学习物理学基础知识，理解自然规律', NULL, '理学院', 3, 'G');
INSERT INTO `class_plan` VALUES (41, '健康与生活', '介绍健康生活方式，预防疾病', NULL, '公共卫生学院', 2, 'G');
INSERT INTO `class_plan` VALUES (42, '旅游与文化', '探讨旅游行业与文化交流的关系', NULL, '旅游学院', 2, 'G');
INSERT INTO `class_plan` VALUES (43, '计算机网络实验', '学习和实践计算机网络的基础理论与技术', '计算机科学', '信息学院', 3, 'S');
INSERT INTO `class_plan` VALUES (44, '嵌入式系统实验', '掌握嵌入式系统的设计与开发', '电子工程', '信息学院', 3, 'S');
INSERT INTO `class_plan` VALUES (45, '数据科学实验', '数据分析与可视化的实验课程', '数据科学', '信息学院', 2, 'S');

-- ----------------------------
-- Table structure for class_schedule
-- ----------------------------
DROP TABLE IF EXISTS `class_schedule`;
CREATE TABLE `class_schedule`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `classroom_id` int NOT NULL,
  `class_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `class_id`(`class_id` ASC) USING BTREE,
  INDEX `classroom_id`(`classroom_id` ASC) USING BTREE,
  CONSTRAINT `class_schedule_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `class_schedule_ibfk_2` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38673 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_schedule
-- ----------------------------
INSERT INTO `class_schedule` VALUES (38508, '2025-01-01 08:00:00', '2025-01-01 10:00:00', 7, 130);
INSERT INTO `class_schedule` VALUES (38509, '2025-01-01 10:00:00', '2025-01-01 12:00:00', 1, 131);
INSERT INTO `class_schedule` VALUES (38510, '2025-01-01 14:00:00', '2025-01-01 16:00:00', 3, 132);
INSERT INTO `class_schedule` VALUES (38511, '2025-01-01 16:00:00', '2025-01-01 18:00:00', 10, 133);
INSERT INTO `class_schedule` VALUES (38512, '2025-01-01 19:00:00', '2025-01-01 21:00:00', 10, 134);
INSERT INTO `class_schedule` VALUES (38513, '2025-01-02 08:00:00', '2025-01-02 10:00:00', 9, 135);
INSERT INTO `class_schedule` VALUES (38514, '2025-01-02 10:00:00', '2025-01-02 12:00:00', 4, 136);
INSERT INTO `class_schedule` VALUES (38515, '2025-01-02 14:00:00', '2025-01-02 16:00:00', 4, 137);
INSERT INTO `class_schedule` VALUES (38516, '2025-01-02 16:00:00', '2025-01-02 18:00:00', 5, 138);
INSERT INTO `class_schedule` VALUES (38517, '2025-01-02 19:00:00', '2025-01-02 21:00:00', 5, 139);
INSERT INTO `class_schedule` VALUES (38518, '2025-01-03 08:00:00', '2025-01-03 10:00:00', 7, 140);
INSERT INTO `class_schedule` VALUES (38519, '2025-01-03 10:00:00', '2025-01-03 12:00:00', 2, 141);
INSERT INTO `class_schedule` VALUES (38520, '2025-01-03 14:00:00', '2025-01-03 16:00:00', 6, 142);
INSERT INTO `class_schedule` VALUES (38521, '2025-01-03 16:00:00', '2025-01-03 18:00:00', 6, 143);
INSERT INTO `class_schedule` VALUES (38522, '2025-01-03 19:00:00', '2025-01-03 21:00:00', 10, 144);
INSERT INTO `class_schedule` VALUES (38523, '2025-01-04 08:00:00', '2025-01-04 10:00:00', 2, 145);
INSERT INTO `class_schedule` VALUES (38524, '2025-01-04 10:00:00', '2025-01-04 12:00:00', 10, 146);
INSERT INTO `class_schedule` VALUES (38525, '2025-01-04 14:00:00', '2025-01-04 16:00:00', 1, 147);
INSERT INTO `class_schedule` VALUES (38526, '2025-01-04 16:00:00', '2025-01-04 18:00:00', 8, 148);
INSERT INTO `class_schedule` VALUES (38527, '2025-01-04 19:00:00', '2025-01-04 21:00:00', 5, 149);
INSERT INTO `class_schedule` VALUES (38528, '2025-01-05 08:00:00', '2025-01-05 10:00:00', 9, 150);
INSERT INTO `class_schedule` VALUES (38529, '2025-01-05 10:00:00', '2025-01-05 12:00:00', 10, 151);
INSERT INTO `class_schedule` VALUES (38530, '2025-01-05 14:00:00', '2025-01-05 16:00:00', 2, 152);
INSERT INTO `class_schedule` VALUES (38531, '2025-01-05 16:00:00', '2025-01-05 18:00:00', 9, 153);
INSERT INTO `class_schedule` VALUES (38532, '2025-01-05 19:00:00', '2025-01-05 21:00:00', 1, 154);
INSERT INTO `class_schedule` VALUES (38533, '2025-01-06 08:00:00', '2025-01-06 10:00:00', 6, 155);
INSERT INTO `class_schedule` VALUES (38534, '2025-01-06 10:00:00', '2025-01-06 12:00:00', 7, 156);
INSERT INTO `class_schedule` VALUES (38535, '2025-01-06 14:00:00', '2025-01-06 16:00:00', 6, 157);
INSERT INTO `class_schedule` VALUES (38536, '2025-01-06 16:00:00', '2025-01-06 18:00:00', 10, 158);
INSERT INTO `class_schedule` VALUES (38537, '2025-01-06 19:00:00', '2025-01-06 21:00:00', 8, 159);
INSERT INTO `class_schedule` VALUES (38538, '2025-01-07 08:00:00', '2025-01-07 10:00:00', 3, 160);
INSERT INTO `class_schedule` VALUES (38539, '2025-01-07 10:00:00', '2025-01-07 12:00:00', 1, 161);
INSERT INTO `class_schedule` VALUES (38540, '2025-01-07 14:00:00', '2025-01-07 16:00:00', 4, 162);
INSERT INTO `class_schedule` VALUES (38541, '2025-01-07 16:00:00', '2025-01-07 18:00:00', 8, 163);
INSERT INTO `class_schedule` VALUES (38542, '2025-01-07 19:00:00', '2025-01-07 21:00:00', 5, 164);
INSERT INTO `class_schedule` VALUES (38543, '2025-01-08 08:00:00', '2025-01-08 10:00:00', 2, 165);
INSERT INTO `class_schedule` VALUES (38544, '2025-01-08 10:00:00', '2025-01-08 12:00:00', 3, 166);
INSERT INTO `class_schedule` VALUES (38545, '2025-01-08 14:00:00', '2025-01-08 16:00:00', 1, 167);
INSERT INTO `class_schedule` VALUES (38546, '2025-01-08 16:00:00', '2025-01-08 18:00:00', 3, 168);
INSERT INTO `class_schedule` VALUES (38547, '2025-01-08 19:00:00', '2025-01-08 21:00:00', 4, 169);
INSERT INTO `class_schedule` VALUES (38548, '2025-01-09 08:00:00', '2025-01-09 10:00:00', 9, 170);
INSERT INTO `class_schedule` VALUES (38549, '2025-01-09 10:00:00', '2025-01-09 12:00:00', 2, 171);
INSERT INTO `class_schedule` VALUES (38550, '2025-01-09 14:00:00', '2025-01-09 16:00:00', 1, 172);
INSERT INTO `class_schedule` VALUES (38551, '2025-01-09 16:00:00', '2025-01-09 18:00:00', 2, 173);
INSERT INTO `class_schedule` VALUES (38552, '2025-01-09 19:00:00', '2025-01-09 21:00:00', 4, 174);
INSERT INTO `class_schedule` VALUES (38553, '2025-01-10 08:00:00', '2025-01-10 10:00:00', 3, 175);
INSERT INTO `class_schedule` VALUES (38554, '2025-01-10 10:00:00', '2025-01-10 12:00:00', 4, 176);
INSERT INTO `class_schedule` VALUES (38555, '2025-01-10 14:00:00', '2025-01-10 16:00:00', 2, 177);
INSERT INTO `class_schedule` VALUES (38556, '2025-01-10 16:00:00', '2025-01-10 18:00:00', 7, 178);
INSERT INTO `class_schedule` VALUES (38557, '2025-01-10 19:00:00', '2025-01-10 21:00:00', 7, 179);
INSERT INTO `class_schedule` VALUES (38558, '2025-01-11 08:00:00', '2025-01-11 10:00:00', 5, 180);
INSERT INTO `class_schedule` VALUES (38559, '2025-01-11 10:00:00', '2025-01-11 12:00:00', 2, 181);
INSERT INTO `class_schedule` VALUES (38560, '2025-01-11 14:00:00', '2025-01-11 16:00:00', 4, 182);
INSERT INTO `class_schedule` VALUES (38561, '2025-01-11 16:00:00', '2025-01-11 18:00:00', 2, 183);
INSERT INTO `class_schedule` VALUES (38562, '2025-01-11 19:00:00', '2025-01-11 21:00:00', 10, 184);
INSERT INTO `class_schedule` VALUES (38563, '2025-01-12 08:00:00', '2025-01-12 10:00:00', 4, 185);
INSERT INTO `class_schedule` VALUES (38564, '2025-01-12 10:00:00', '2025-01-12 12:00:00', 7, 186);
INSERT INTO `class_schedule` VALUES (38565, '2025-01-12 14:00:00', '2025-01-12 16:00:00', 4, 187);
INSERT INTO `class_schedule` VALUES (38566, '2025-01-12 16:00:00', '2025-01-12 18:00:00', 9, 188);
INSERT INTO `class_schedule` VALUES (38567, '2025-01-12 19:00:00', '2025-01-12 21:00:00', 4, 189);
INSERT INTO `class_schedule` VALUES (38568, '2025-01-13 08:00:00', '2025-01-13 10:00:00', 10, 190);
INSERT INTO `class_schedule` VALUES (38569, '2025-01-13 10:00:00', '2025-01-13 12:00:00', 6, 191);
INSERT INTO `class_schedule` VALUES (38570, '2025-01-13 14:00:00', '2025-01-13 16:00:00', 2, 192);
INSERT INTO `class_schedule` VALUES (38571, '2025-01-13 16:00:00', '2025-01-13 18:00:00', 1, 193);
INSERT INTO `class_schedule` VALUES (38572, '2025-01-13 19:00:00', '2025-01-13 21:00:00', 8, 194);
INSERT INTO `class_schedule` VALUES (38573, '2025-01-14 08:00:00', '2025-01-14 10:00:00', 5, 195);
INSERT INTO `class_schedule` VALUES (38574, '2025-01-14 10:00:00', '2025-01-14 12:00:00', 3, 196);
INSERT INTO `class_schedule` VALUES (38575, '2025-01-14 14:00:00', '2025-01-14 16:00:00', 9, 197);
INSERT INTO `class_schedule` VALUES (38576, '2025-01-14 16:00:00', '2025-01-14 18:00:00', 4, 198);
INSERT INTO `class_schedule` VALUES (38577, '2025-01-14 19:00:00', '2025-01-14 21:00:00', 2, 199);
INSERT INTO `class_schedule` VALUES (38578, '2025-01-15 08:00:00', '2025-01-15 10:00:00', 7, 200);
INSERT INTO `class_schedule` VALUES (38579, '2025-01-15 10:00:00', '2025-01-15 12:00:00', 1, 201);
INSERT INTO `class_schedule` VALUES (38580, '2025-01-15 14:00:00', '2025-01-15 16:00:00', 2, 202);
INSERT INTO `class_schedule` VALUES (38581, '2025-01-15 16:00:00', '2025-01-15 18:00:00', 5, 203);
INSERT INTO `class_schedule` VALUES (38582, '2025-01-15 19:00:00', '2025-01-15 21:00:00', 9, 204);
INSERT INTO `class_schedule` VALUES (38583, '2025-01-16 08:00:00', '2025-01-16 10:00:00', 1, 205);
INSERT INTO `class_schedule` VALUES (38584, '2025-01-16 10:00:00', '2025-01-16 12:00:00', 6, 206);
INSERT INTO `class_schedule` VALUES (38585, '2025-01-16 14:00:00', '2025-01-16 16:00:00', 9, 207);
INSERT INTO `class_schedule` VALUES (38586, '2025-01-16 16:00:00', '2025-01-16 18:00:00', 4, 208);
INSERT INTO `class_schedule` VALUES (38587, '2025-01-16 19:00:00', '2025-01-16 21:00:00', 3, 209);
INSERT INTO `class_schedule` VALUES (38588, '2025-01-17 08:00:00', '2025-01-17 10:00:00', 4, 210);
INSERT INTO `class_schedule` VALUES (38589, '2025-01-17 10:00:00', '2025-01-17 12:00:00', 1, 211);
INSERT INTO `class_schedule` VALUES (38590, '2025-01-17 14:00:00', '2025-01-17 16:00:00', 3, 212);
INSERT INTO `class_schedule` VALUES (38591, '2025-01-17 16:00:00', '2025-01-17 18:00:00', 2, 213);
INSERT INTO `class_schedule` VALUES (38592, '2025-01-17 19:00:00', '2025-01-17 21:00:00', 10, 214);
INSERT INTO `class_schedule` VALUES (38593, '2025-01-18 08:00:00', '2025-01-18 10:00:00', 2, 215);
INSERT INTO `class_schedule` VALUES (38594, '2025-01-18 10:00:00', '2025-01-18 12:00:00', 2, 216);
INSERT INTO `class_schedule` VALUES (38595, '2025-01-18 14:00:00', '2025-01-18 16:00:00', 2, 217);
INSERT INTO `class_schedule` VALUES (38596, '2025-01-18 16:00:00', '2025-01-18 18:00:00', 3, 218);
INSERT INTO `class_schedule` VALUES (38597, '2025-01-18 19:00:00', '2025-01-18 21:00:00', 8, 219);
INSERT INTO `class_schedule` VALUES (38598, '2025-01-19 08:00:00', '2025-01-19 10:00:00', 2, 220);
INSERT INTO `class_schedule` VALUES (38599, '2025-01-19 10:00:00', '2025-01-19 12:00:00', 7, 221);
INSERT INTO `class_schedule` VALUES (38600, '2025-01-19 14:00:00', '2025-01-19 16:00:00', 7, 222);
INSERT INTO `class_schedule` VALUES (38601, '2025-01-19 16:00:00', '2025-01-19 18:00:00', 3, 223);
INSERT INTO `class_schedule` VALUES (38602, '2025-01-19 19:00:00', '2025-01-19 21:00:00', 2, 224);
INSERT INTO `class_schedule` VALUES (38603, '2025-01-20 08:00:00', '2025-01-20 10:00:00', 1, 225);
INSERT INTO `class_schedule` VALUES (38604, '2025-01-20 10:00:00', '2025-01-20 12:00:00', 8, 226);
INSERT INTO `class_schedule` VALUES (38605, '2025-01-20 14:00:00', '2025-01-20 16:00:00', 6, 227);
INSERT INTO `class_schedule` VALUES (38606, '2025-01-20 16:00:00', '2025-01-20 18:00:00', 6, 228);
INSERT INTO `class_schedule` VALUES (38607, '2025-01-20 19:00:00', '2025-01-20 21:00:00', 4, 229);
INSERT INTO `class_schedule` VALUES (38608, '2025-01-21 08:00:00', '2025-01-21 10:00:00', 9, 230);
INSERT INTO `class_schedule` VALUES (38609, '2025-01-21 10:00:00', '2025-01-21 12:00:00', 2, 231);
INSERT INTO `class_schedule` VALUES (38610, '2025-01-21 14:00:00', '2025-01-21 16:00:00', 2, 232);
INSERT INTO `class_schedule` VALUES (38611, '2025-01-21 16:00:00', '2025-01-21 18:00:00', 3, 233);
INSERT INTO `class_schedule` VALUES (38612, '2025-01-21 19:00:00', '2025-01-21 21:00:00', 8, 234);
INSERT INTO `class_schedule` VALUES (38613, '2025-01-22 08:00:00', '2025-01-22 10:00:00', 2, 235);
INSERT INTO `class_schedule` VALUES (38614, '2025-01-22 10:00:00', '2025-01-22 12:00:00', 4, 236);
INSERT INTO `class_schedule` VALUES (38615, '2025-01-22 14:00:00', '2025-01-22 16:00:00', 4, 237);
INSERT INTO `class_schedule` VALUES (38616, '2025-01-22 16:00:00', '2025-01-22 18:00:00', 9, 238);
INSERT INTO `class_schedule` VALUES (38617, '2025-01-22 19:00:00', '2025-01-22 21:00:00', 2, 239);
INSERT INTO `class_schedule` VALUES (38618, '2025-01-23 08:00:00', '2025-01-23 10:00:00', 10, 240);
INSERT INTO `class_schedule` VALUES (38619, '2025-01-23 10:00:00', '2025-01-23 12:00:00', 6, 241);
INSERT INTO `class_schedule` VALUES (38620, '2025-01-23 14:00:00', '2025-01-23 16:00:00', 9, 242);
INSERT INTO `class_schedule` VALUES (38621, '2025-01-23 16:00:00', '2025-01-23 18:00:00', 7, 243);
INSERT INTO `class_schedule` VALUES (38622, '2025-01-23 19:00:00', '2025-01-23 21:00:00', 5, 244);
INSERT INTO `class_schedule` VALUES (38623, '2025-01-24 08:00:00', '2025-01-24 10:00:00', 6, 245);
INSERT INTO `class_schedule` VALUES (38624, '2025-01-24 10:00:00', '2025-01-24 12:00:00', 5, 246);
INSERT INTO `class_schedule` VALUES (38625, '2025-01-24 14:00:00', '2025-01-24 16:00:00', 5, 247);
INSERT INTO `class_schedule` VALUES (38626, '2025-01-24 16:00:00', '2025-01-24 18:00:00', 8, 248);
INSERT INTO `class_schedule` VALUES (38627, '2025-01-24 19:00:00', '2025-01-24 21:00:00', 7, 249);
INSERT INTO `class_schedule` VALUES (38628, '2025-01-25 08:00:00', '2025-01-25 10:00:00', 9, 250);
INSERT INTO `class_schedule` VALUES (38629, '2025-01-25 10:00:00', '2025-01-25 12:00:00', 4, 251);
INSERT INTO `class_schedule` VALUES (38630, '2025-01-25 14:00:00', '2025-01-25 16:00:00', 4, 252);
INSERT INTO `class_schedule` VALUES (38631, '2025-01-25 16:00:00', '2025-01-25 18:00:00', 6, 253);
INSERT INTO `class_schedule` VALUES (38632, '2025-01-25 19:00:00', '2025-01-25 21:00:00', 9, 254);
INSERT INTO `class_schedule` VALUES (38633, '2025-01-26 08:00:00', '2025-01-26 10:00:00', 7, 255);
INSERT INTO `class_schedule` VALUES (38634, '2025-01-26 10:00:00', '2025-01-26 12:00:00', 9, 256);
INSERT INTO `class_schedule` VALUES (38635, '2025-01-26 14:00:00', '2025-01-26 16:00:00', 1, 257);
INSERT INTO `class_schedule` VALUES (38636, '2025-01-26 16:00:00', '2025-01-26 18:00:00', 6, 258);
INSERT INTO `class_schedule` VALUES (38637, '2025-01-26 19:00:00', '2025-01-26 21:00:00', 9, 259);
INSERT INTO `class_schedule` VALUES (38638, '2025-01-27 08:00:00', '2025-01-27 10:00:00', 6, 260);
INSERT INTO `class_schedule` VALUES (38639, '2025-01-27 10:00:00', '2025-01-27 12:00:00', 1, 261);
INSERT INTO `class_schedule` VALUES (38640, '2025-01-27 14:00:00', '2025-01-27 16:00:00', 7, 262);
INSERT INTO `class_schedule` VALUES (38641, '2025-01-27 16:00:00', '2025-01-27 18:00:00', 3, 263);
INSERT INTO `class_schedule` VALUES (38642, '2025-01-27 19:00:00', '2025-01-27 21:00:00', 1, 264);
INSERT INTO `class_schedule` VALUES (38643, '2025-01-28 08:00:00', '2025-01-28 10:00:00', 6, 265);
INSERT INTO `class_schedule` VALUES (38644, '2025-01-28 10:00:00', '2025-01-28 12:00:00', 8, 266);
INSERT INTO `class_schedule` VALUES (38645, '2025-01-28 14:00:00', '2025-01-28 16:00:00', 9, 267);
INSERT INTO `class_schedule` VALUES (38646, '2025-01-28 16:00:00', '2025-01-28 18:00:00', 2, 268);
INSERT INTO `class_schedule` VALUES (38647, '2025-01-28 19:00:00', '2025-01-28 21:00:00', 4, 269);
INSERT INTO `class_schedule` VALUES (38648, '2025-01-29 08:00:00', '2025-01-29 10:00:00', 4, 270);
INSERT INTO `class_schedule` VALUES (38649, '2025-01-29 10:00:00', '2025-01-29 12:00:00', 5, 271);
INSERT INTO `class_schedule` VALUES (38650, '2025-01-29 14:00:00', '2025-01-29 16:00:00', 1, 272);
INSERT INTO `class_schedule` VALUES (38651, '2025-01-29 16:00:00', '2025-01-29 18:00:00', 3, 273);
INSERT INTO `class_schedule` VALUES (38652, '2025-01-29 19:00:00', '2025-01-29 21:00:00', 2, 274);
INSERT INTO `class_schedule` VALUES (38653, '2025-01-30 08:00:00', '2025-01-30 10:00:00', 8, 275);
INSERT INTO `class_schedule` VALUES (38654, '2025-01-30 10:00:00', '2025-01-30 12:00:00', 4, 276);
INSERT INTO `class_schedule` VALUES (38655, '2025-01-30 14:00:00', '2025-01-30 16:00:00', 7, 277);
INSERT INTO `class_schedule` VALUES (38656, '2025-01-30 16:00:00', '2025-01-30 18:00:00', 3, 278);
INSERT INTO `class_schedule` VALUES (38657, '2025-01-30 19:00:00', '2025-01-30 21:00:00', 1, 279);
INSERT INTO `class_schedule` VALUES (38658, '2025-01-31 08:00:00', '2025-01-31 10:00:00', 8, 280);
INSERT INTO `class_schedule` VALUES (38659, '2025-01-31 10:00:00', '2025-01-31 12:00:00', 6, 281);
INSERT INTO `class_schedule` VALUES (38660, '2025-01-31 14:00:00', '2025-01-31 16:00:00', 5, 282);
INSERT INTO `class_schedule` VALUES (38661, '2025-01-31 16:00:00', '2025-01-31 18:00:00', 8, 283);
INSERT INTO `class_schedule` VALUES (38662, '2025-01-31 19:00:00', '2025-01-31 21:00:00', 2, 284);
INSERT INTO `class_schedule` VALUES (38663, '2025-02-01 08:00:00', '2025-02-01 10:00:00', 7, 285);
INSERT INTO `class_schedule` VALUES (38664, '2025-02-01 10:00:00', '2025-02-01 12:00:00', 6, 286);
INSERT INTO `class_schedule` VALUES (38665, '2025-02-01 14:00:00', '2025-02-01 16:00:00', 10, 287);
INSERT INTO `class_schedule` VALUES (38666, '2025-02-01 16:00:00', '2025-02-01 18:00:00', 4, 288);
INSERT INTO `class_schedule` VALUES (38667, '2025-02-01 19:00:00', '2025-02-01 21:00:00', 6, 289);
INSERT INTO `class_schedule` VALUES (38668, '2025-02-02 08:00:00', '2025-02-02 10:00:00', 8, 290);
INSERT INTO `class_schedule` VALUES (38669, '2025-02-02 10:00:00', '2025-02-02 12:00:00', 1, 291);
INSERT INTO `class_schedule` VALUES (38670, '2025-02-02 14:00:00', '2025-02-02 16:00:00', 10, 292);
INSERT INTO `class_schedule` VALUES (38671, '2025-02-02 16:00:00', '2025-02-02 18:00:00', 9, 293);
INSERT INTO `class_schedule` VALUES (38672, '2025-02-02 19:00:00', '2025-02-02 21:00:00', 3, 294);

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `capacity` int NOT NULL,
  `type` enum('C','S') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES (1, 'Room1', 80, 'C', 'Building A, Floor 1');
INSERT INTO `classroom` VALUES (2, 'Room2', 80, 'C', 'Building A, Floor 1');
INSERT INTO `classroom` VALUES (3, 'Room3', 80, 'C', 'Building A, Floor 1');
INSERT INTO `classroom` VALUES (4, 'Room4', 80, 'C', 'Building A, Floor 1');
INSERT INTO `classroom` VALUES (5, 'Room5', 80, 'C', 'Building A, Floor 1');
INSERT INTO `classroom` VALUES (6, 'Room6', 80, 'C', 'Building A, Floor 2');
INSERT INTO `classroom` VALUES (7, 'Room7', 80, 'C', 'Building A, Floor 2');
INSERT INTO `classroom` VALUES (8, 'Room8', 80, 'C', 'Building A, Floor 2');
INSERT INTO `classroom` VALUES (9, 'Room9', 80, 'C', 'Building A, Floor 2');
INSERT INTO `classroom` VALUES (10, 'Room10', 80, 'C', 'Building A, Floor 2');
INSERT INTO `classroom` VALUES (11, 'Lab1', 80, 'S', 'Building B, Floor 1');
INSERT INTO `classroom` VALUES (12, 'Lab2', 80, 'S', 'Building B, Floor 1');
INSERT INTO `classroom` VALUES (13, 'Lab3', 80, 'S', 'Building B, Floor 1');
INSERT INTO `classroom` VALUES (14, 'Lab4', 80, 'S', 'Building B, Floor 1');

-- ----------------------------
-- Table structure for enrollment_history
-- ----------------------------
DROP TABLE IF EXISTS `enrollment_history`;
CREATE TABLE `enrollment_history`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `class_id` int NOT NULL,
  `action_type` enum('Enroll','Drop') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_id`(`student_id` ASC) USING BTREE,
  INDEX `class_id`(`class_id` ASC) USING BTREE,
  CONSTRAINT `enrollment_history_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `enrollment_history_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12093 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enrollment_history
-- ----------------------------
INSERT INTO `enrollment_history` VALUES (10588, 39, 131, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10589, 39, 139, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10590, 39, 146, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10591, 39, 151, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10592, 39, 160, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10593, 39, 168, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10594, 39, 170, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10595, 40, 135, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10596, 40, 143, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10597, 40, 147, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10598, 40, 151, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10599, 40, 157, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10600, 40, 162, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10601, 40, 176, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10602, 40, 183, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10603, 41, 136, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10604, 41, 141, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10605, 41, 145, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10606, 41, 152, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10607, 41, 159, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10608, 41, 164, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10609, 41, 176, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10610, 42, 133, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10611, 42, 140, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10612, 42, 149, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10613, 42, 154, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10614, 42, 159, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10615, 42, 168, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10616, 42, 172, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10617, 43, 130, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10618, 43, 141, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10619, 43, 149, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10620, 43, 151, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10621, 43, 157, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10622, 43, 165, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10623, 43, 170, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10624, 43, 180, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10625, 44, 135, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10626, 44, 141, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10627, 44, 148, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10628, 44, 151, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10629, 44, 157, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10630, 44, 163, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10631, 44, 177, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10632, 44, 183, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10633, 45, 132, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10634, 45, 138, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10635, 45, 144, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10636, 45, 151, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10637, 45, 156, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10638, 45, 164, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10639, 45, 176, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10640, 45, 183, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10641, 46, 130, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10642, 46, 141, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10643, 46, 145, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10644, 46, 154, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10645, 46, 157, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10646, 46, 162, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10647, 46, 170, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10648, 46, 178, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10649, 47, 132, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10650, 47, 143, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10651, 47, 149, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10652, 47, 150, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10653, 47, 157, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10654, 47, 162, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10655, 47, 171, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10656, 48, 131, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10657, 48, 140, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10658, 48, 145, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10659, 48, 154, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10660, 48, 157, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10661, 48, 165, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10662, 48, 174, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10663, 48, 183, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10664, 49, 137, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10665, 49, 138, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10666, 49, 147, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10667, 49, 153, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10668, 49, 156, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10669, 49, 164, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10670, 49, 172, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10671, 50, 132, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10672, 50, 140, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10673, 50, 149, 'Enroll', '2024-12-20 19:08:35');
INSERT INTO `enrollment_history` VALUES (10674, 50, 152, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10675, 50, 158, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10676, 50, 163, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10677, 50, 170, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10678, 50, 178, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10679, 51, 134, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10680, 51, 140, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10681, 51, 145, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10682, 51, 151, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10683, 51, 158, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10684, 51, 166, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10685, 51, 177, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10686, 51, 179, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10687, 52, 136, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10688, 52, 140, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10689, 52, 148, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10690, 52, 154, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10691, 52, 161, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10692, 52, 165, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10693, 52, 173, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10694, 52, 180, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10695, 53, 131, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10696, 53, 138, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10697, 53, 149, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10698, 53, 150, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10699, 53, 158, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10700, 53, 165, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10701, 53, 170, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10702, 54, 135, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10703, 54, 140, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10704, 54, 149, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10705, 54, 151, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10706, 54, 159, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10707, 54, 168, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10708, 54, 171, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10709, 54, 179, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10710, 55, 133, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10711, 55, 143, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10712, 55, 146, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10713, 55, 154, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10714, 55, 157, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10715, 55, 164, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10716, 55, 171, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10717, 55, 178, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10718, 56, 135, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10719, 56, 139, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10720, 56, 145, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10721, 56, 155, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10722, 56, 161, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10723, 56, 167, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10724, 56, 175, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10725, 56, 179, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10726, 57, 136, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10727, 57, 143, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10728, 57, 147, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10729, 57, 153, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10730, 57, 156, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10731, 57, 167, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10732, 57, 172, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10733, 58, 135, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10734, 58, 143, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10735, 58, 147, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10736, 58, 154, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10737, 58, 156, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10738, 58, 163, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10739, 58, 174, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10740, 58, 182, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10741, 59, 137, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10742, 59, 138, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10743, 59, 147, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10744, 59, 150, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10745, 59, 156, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10746, 59, 166, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10747, 59, 177, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10748, 59, 178, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10749, 60, 136, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10750, 60, 140, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10751, 60, 146, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10752, 60, 155, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10753, 60, 157, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10754, 60, 169, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10755, 60, 177, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10756, 60, 183, 'Enroll', '2024-12-20 19:08:36');
INSERT INTO `enrollment_history` VALUES (10757, 61, 134, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10758, 61, 141, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10759, 61, 149, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10760, 61, 154, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10761, 61, 157, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10762, 61, 164, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10763, 61, 173, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10764, 61, 182, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10765, 62, 137, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10766, 62, 142, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10767, 62, 147, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10768, 62, 151, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10769, 62, 160, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10770, 62, 163, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10771, 62, 170, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10772, 63, 133, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10773, 63, 143, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10774, 63, 148, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10775, 63, 152, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10776, 63, 158, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10777, 63, 165, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10778, 63, 174, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10779, 63, 182, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10780, 64, 131, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10781, 64, 143, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10782, 64, 149, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10783, 64, 154, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10784, 64, 161, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10785, 64, 163, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10786, 64, 170, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10787, 65, 135, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10788, 65, 141, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10789, 65, 148, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10790, 65, 154, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10791, 65, 161, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10792, 65, 166, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10793, 65, 177, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10794, 65, 178, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10795, 66, 134, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10796, 66, 142, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10797, 66, 147, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10798, 66, 150, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10799, 66, 156, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10800, 66, 168, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10801, 66, 177, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10802, 66, 182, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10803, 67, 135, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10804, 67, 138, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10805, 67, 147, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10806, 67, 155, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10807, 67, 161, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10808, 67, 166, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10809, 67, 174, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10810, 67, 182, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10811, 68, 131, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10812, 68, 138, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10813, 68, 146, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10814, 68, 150, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10815, 68, 158, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10816, 68, 166, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10817, 68, 172, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10818, 68, 179, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10819, 69, 131, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10820, 69, 139, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10821, 69, 146, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10822, 69, 155, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10823, 69, 157, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10824, 69, 162, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10825, 69, 171, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10826, 70, 131, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10827, 70, 140, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10828, 70, 147, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10829, 70, 151, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10830, 70, 157, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10831, 70, 169, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10832, 70, 175, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10833, 70, 181, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10834, 71, 137, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10835, 71, 140, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10836, 71, 146, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10837, 71, 154, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10838, 71, 159, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10839, 71, 168, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10840, 71, 174, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10841, 72, 133, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10842, 72, 139, 'Enroll', '2024-12-20 19:08:37');
INSERT INTO `enrollment_history` VALUES (10843, 72, 145, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10844, 72, 154, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10845, 72, 157, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10846, 72, 167, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10847, 72, 176, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10848, 72, 181, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10849, 73, 130, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10850, 73, 139, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10851, 73, 148, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10852, 73, 155, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10853, 73, 157, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10854, 73, 163, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10855, 73, 173, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10856, 74, 137, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10857, 74, 139, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10858, 74, 147, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10859, 74, 153, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10860, 74, 156, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10861, 74, 165, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10862, 74, 171, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10863, 75, 130, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10864, 75, 141, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10865, 75, 149, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10866, 75, 150, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10867, 75, 161, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10868, 75, 168, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10869, 75, 172, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10870, 75, 180, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10871, 76, 133, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10872, 76, 138, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10873, 76, 145, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10874, 76, 151, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10875, 76, 157, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10876, 76, 167, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10877, 76, 174, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10878, 77, 136, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10879, 77, 139, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10880, 77, 148, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10881, 77, 153, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10882, 77, 161, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10883, 77, 169, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10884, 77, 176, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10885, 78, 137, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10886, 78, 141, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10887, 78, 144, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10888, 78, 152, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10889, 78, 159, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10890, 78, 168, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10891, 78, 176, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10892, 78, 183, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10893, 79, 135, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10894, 79, 139, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10895, 79, 144, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10896, 79, 154, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10897, 79, 161, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10898, 79, 162, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10899, 79, 173, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10900, 80, 133, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10901, 80, 139, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10902, 80, 148, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10903, 80, 151, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10904, 80, 156, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10905, 80, 168, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10906, 80, 177, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10907, 81, 130, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10908, 81, 143, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10909, 81, 148, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10910, 81, 153, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10911, 81, 161, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10912, 81, 162, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10913, 81, 171, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10914, 82, 136, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10915, 82, 141, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10916, 82, 146, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10917, 82, 150, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10918, 82, 157, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10919, 82, 163, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10920, 82, 170, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10921, 83, 136, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10922, 83, 141, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10923, 83, 146, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10924, 83, 153, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10925, 83, 156, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10926, 83, 167, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10927, 83, 176, 'Enroll', '2024-12-20 19:08:38');
INSERT INTO `enrollment_history` VALUES (10928, 83, 179, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10929, 84, 133, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10930, 84, 143, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10931, 84, 147, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10932, 84, 150, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10933, 84, 161, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10934, 84, 169, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10935, 84, 170, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10936, 85, 134, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10937, 85, 138, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10938, 85, 147, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10939, 85, 155, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10940, 85, 161, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10941, 85, 167, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10942, 85, 177, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10943, 85, 182, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10944, 86, 132, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10945, 86, 142, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10946, 86, 144, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10947, 86, 152, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10948, 86, 158, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10949, 86, 167, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10950, 86, 176, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10951, 87, 132, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10952, 87, 139, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10953, 87, 149, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10954, 87, 152, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10955, 87, 159, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10956, 87, 166, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10957, 87, 176, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10958, 88, 134, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10959, 88, 143, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10960, 88, 149, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10961, 88, 151, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10962, 88, 158, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10963, 88, 163, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10964, 88, 173, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10965, 89, 134, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10966, 89, 143, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10967, 89, 149, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10968, 89, 152, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10969, 89, 156, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10970, 89, 168, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10971, 89, 177, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10972, 89, 182, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10973, 90, 133, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10974, 90, 143, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10975, 90, 149, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10976, 90, 155, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10977, 90, 157, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10978, 90, 165, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10979, 90, 172, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10980, 91, 137, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10981, 91, 138, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10982, 91, 147, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10983, 91, 154, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10984, 91, 161, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10985, 91, 162, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10986, 91, 174, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10987, 92, 135, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10988, 92, 141, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10989, 92, 147, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10990, 92, 150, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10991, 92, 161, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10992, 92, 169, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10993, 92, 174, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10994, 92, 178, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10995, 93, 131, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10996, 93, 138, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10997, 93, 149, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10998, 93, 153, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (10999, 93, 160, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11000, 93, 169, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11001, 93, 173, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11002, 93, 183, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11003, 94, 131, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11004, 94, 141, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11005, 94, 144, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11006, 94, 152, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11007, 94, 157, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11008, 94, 163, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11009, 94, 176, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11010, 95, 134, 'Enroll', '2024-12-20 19:08:39');
INSERT INTO `enrollment_history` VALUES (11011, 95, 139, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11012, 95, 148, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11013, 95, 152, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11014, 95, 157, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11015, 95, 167, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11016, 95, 173, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11017, 95, 182, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11018, 96, 137, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11019, 96, 143, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11020, 96, 144, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11021, 96, 152, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11022, 96, 160, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11023, 96, 163, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11024, 96, 170, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11025, 97, 132, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11026, 97, 142, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11027, 97, 147, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11028, 97, 151, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11029, 97, 161, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11030, 97, 164, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11031, 97, 173, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11032, 97, 179, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11033, 98, 134, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11034, 98, 142, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11035, 98, 146, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11036, 98, 153, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11037, 98, 161, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11038, 98, 162, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11039, 98, 174, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11040, 99, 131, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11041, 99, 140, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11042, 99, 147, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11043, 99, 151, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11044, 99, 159, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11045, 99, 169, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11046, 99, 176, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11047, 100, 133, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11048, 100, 143, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11049, 100, 146, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11050, 100, 151, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11051, 100, 160, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11052, 100, 168, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11053, 100, 177, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11054, 101, 131, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11055, 101, 140, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11056, 101, 145, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11057, 101, 154, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11058, 101, 159, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11059, 101, 168, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11060, 101, 172, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11061, 101, 181, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11062, 102, 134, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11063, 102, 142, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11064, 102, 148, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11065, 102, 152, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11066, 102, 161, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11067, 102, 166, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11068, 102, 174, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11069, 102, 180, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11070, 103, 137, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11071, 103, 139, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11072, 103, 149, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11073, 103, 153, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11074, 103, 160, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11075, 103, 163, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11076, 103, 175, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11077, 104, 136, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11078, 104, 143, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11079, 104, 147, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11080, 104, 153, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11081, 104, 157, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11082, 104, 166, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11083, 104, 170, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11084, 104, 179, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11085, 105, 132, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11086, 105, 139, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11087, 105, 144, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11088, 105, 150, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11089, 105, 160, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11090, 105, 169, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11091, 105, 171, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11092, 105, 183, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11093, 106, 135, 'Enroll', '2024-12-20 19:08:40');
INSERT INTO `enrollment_history` VALUES (11094, 106, 141, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11095, 106, 149, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11096, 106, 153, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11097, 106, 158, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11098, 106, 168, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11099, 106, 170, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11100, 107, 132, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11101, 107, 142, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11102, 107, 149, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11103, 107, 155, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11104, 107, 159, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11105, 107, 167, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11106, 107, 172, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11107, 108, 136, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11108, 108, 143, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11109, 108, 147, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11110, 108, 154, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11111, 108, 159, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11112, 108, 165, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11113, 108, 175, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11114, 108, 178, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11115, 109, 132, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11116, 109, 139, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11117, 109, 146, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11118, 109, 152, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11119, 109, 157, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11120, 109, 167, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11121, 109, 174, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11122, 110, 137, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11123, 110, 142, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11124, 110, 146, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11125, 110, 151, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11126, 110, 156, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11127, 110, 167, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11128, 110, 175, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11129, 110, 181, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11130, 111, 134, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11131, 111, 140, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11132, 111, 146, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11133, 111, 150, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11134, 111, 161, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11135, 111, 168, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11136, 111, 173, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11137, 111, 181, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11138, 112, 132, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11139, 112, 139, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11140, 112, 145, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11141, 112, 152, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11142, 112, 158, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11143, 112, 163, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11144, 112, 173, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11145, 113, 136, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11146, 113, 140, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11147, 113, 148, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11148, 113, 152, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11149, 113, 156, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11150, 113, 166, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11151, 113, 171, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11152, 113, 182, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11153, 114, 136, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11154, 114, 141, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11155, 114, 146, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11156, 114, 154, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11157, 114, 161, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11158, 114, 168, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11159, 114, 175, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11160, 114, 179, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11161, 115, 131, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11162, 115, 141, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11163, 115, 146, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11164, 115, 152, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11165, 115, 160, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11166, 115, 162, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11167, 115, 176, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11168, 116, 132, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11169, 116, 140, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11170, 116, 144, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11171, 116, 151, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11172, 116, 158, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11173, 116, 169, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11174, 116, 173, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11175, 117, 131, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11176, 117, 141, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11177, 117, 144, 'Enroll', '2024-12-20 19:08:41');
INSERT INTO `enrollment_history` VALUES (11178, 117, 152, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11179, 117, 156, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11180, 117, 163, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11181, 117, 173, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11182, 118, 131, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11183, 118, 142, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11184, 118, 149, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11185, 118, 150, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11186, 118, 156, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11187, 118, 163, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11188, 118, 173, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11189, 119, 130, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11190, 119, 139, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11191, 119, 148, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11192, 119, 155, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11193, 119, 159, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11194, 119, 165, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11195, 119, 176, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11196, 120, 134, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11197, 120, 143, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11198, 120, 144, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11199, 120, 153, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11200, 120, 156, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11201, 120, 164, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11202, 120, 174, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11203, 120, 179, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11204, 121, 136, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11205, 121, 141, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11206, 121, 145, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11207, 121, 153, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11208, 121, 160, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11209, 121, 169, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11210, 121, 172, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11211, 121, 181, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11212, 122, 131, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11213, 122, 143, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11214, 122, 148, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11215, 122, 152, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11216, 122, 158, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11217, 122, 162, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11218, 122, 173, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11219, 123, 131, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11220, 123, 142, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11221, 123, 144, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11222, 123, 150, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11223, 123, 160, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11224, 123, 163, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11225, 123, 170, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11226, 123, 180, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11227, 124, 134, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11228, 124, 141, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11229, 124, 149, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11230, 124, 155, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11231, 124, 160, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11232, 124, 169, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11233, 124, 170, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11234, 124, 183, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11235, 125, 131, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11236, 125, 143, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11237, 125, 147, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11238, 125, 151, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11239, 125, 158, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11240, 125, 167, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11241, 125, 171, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11242, 126, 135, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11243, 126, 142, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11244, 126, 149, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11245, 126, 155, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11246, 126, 161, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11247, 126, 167, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11248, 126, 172, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11249, 126, 183, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11250, 127, 133, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11251, 127, 140, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11252, 127, 144, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11253, 127, 155, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11254, 127, 159, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11255, 127, 166, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11256, 127, 172, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11257, 128, 137, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11258, 128, 142, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11259, 128, 148, 'Enroll', '2024-12-20 19:08:42');
INSERT INTO `enrollment_history` VALUES (11260, 128, 154, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11261, 128, 160, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11262, 128, 163, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11263, 128, 170, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11264, 129, 131, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11265, 129, 143, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11266, 129, 147, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11267, 129, 153, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11268, 129, 159, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11269, 129, 165, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11270, 129, 173, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11271, 129, 182, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11272, 130, 131, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11273, 130, 143, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11274, 130, 148, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11275, 130, 153, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11276, 130, 156, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11277, 130, 167, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11278, 130, 173, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11279, 130, 180, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11280, 131, 131, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11281, 131, 141, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11282, 131, 145, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11283, 131, 151, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11284, 131, 158, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11285, 131, 168, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11286, 131, 177, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11287, 132, 134, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11288, 132, 139, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11289, 132, 148, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11290, 132, 150, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11291, 132, 158, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11292, 132, 168, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11293, 132, 174, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11294, 132, 179, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11295, 133, 133, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11296, 133, 141, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11297, 133, 146, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11298, 133, 150, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11299, 133, 161, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11300, 133, 164, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11301, 133, 172, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11302, 133, 180, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11303, 134, 137, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11304, 134, 138, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11305, 134, 144, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11306, 134, 155, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11307, 134, 160, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11308, 134, 168, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11309, 134, 175, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11310, 134, 182, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11311, 135, 133, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11312, 135, 139, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11313, 135, 145, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11314, 135, 152, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11315, 135, 156, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11316, 135, 162, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11317, 135, 174, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11318, 135, 179, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11319, 136, 131, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11320, 136, 143, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11321, 136, 148, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11322, 136, 151, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11323, 136, 160, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11324, 136, 166, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11325, 136, 174, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11326, 137, 131, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11327, 137, 140, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11328, 137, 146, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11329, 137, 153, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11330, 137, 160, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11331, 137, 163, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11332, 137, 173, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11333, 137, 178, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11334, 138, 131, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11335, 138, 143, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11336, 138, 145, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11337, 138, 150, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11338, 138, 159, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11339, 138, 169, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11340, 138, 172, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11341, 139, 134, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11342, 139, 138, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11343, 139, 146, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11344, 139, 152, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11345, 139, 158, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11346, 139, 165, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11347, 139, 177, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11348, 140, 133, 'Enroll', '2024-12-20 19:08:43');
INSERT INTO `enrollment_history` VALUES (11349, 140, 140, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11350, 140, 146, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11351, 140, 152, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11352, 140, 156, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11353, 140, 168, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11354, 140, 174, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11355, 140, 182, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11356, 141, 132, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11357, 141, 139, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11358, 141, 144, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11359, 141, 150, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11360, 141, 158, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11361, 141, 167, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11362, 141, 177, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11363, 141, 181, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11364, 142, 133, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11365, 142, 143, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11366, 142, 145, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11367, 142, 154, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11368, 142, 160, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11369, 142, 162, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11370, 142, 176, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11371, 143, 136, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11372, 143, 140, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11373, 143, 148, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11374, 143, 152, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11375, 143, 158, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11376, 143, 165, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11377, 143, 172, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11378, 143, 181, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11379, 144, 133, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11380, 144, 140, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11381, 144, 145, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11382, 144, 155, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11383, 144, 159, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11384, 144, 168, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11385, 144, 172, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11386, 145, 131, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11387, 145, 139, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11388, 145, 148, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11389, 145, 151, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11390, 145, 159, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11391, 145, 167, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11392, 145, 173, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11393, 146, 136, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11394, 146, 142, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11395, 146, 148, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11396, 146, 150, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11397, 146, 156, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11398, 146, 165, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11399, 146, 175, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11400, 147, 130, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11401, 147, 138, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11402, 147, 145, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11403, 147, 151, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11404, 147, 160, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11405, 147, 164, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11406, 147, 173, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11407, 147, 183, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11408, 148, 133, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11409, 148, 140, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11410, 148, 146, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11411, 148, 151, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11412, 148, 160, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11413, 148, 169, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11414, 148, 176, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11415, 149, 132, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11416, 149, 140, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11417, 149, 147, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11418, 149, 154, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11419, 149, 158, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11420, 149, 165, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11421, 149, 172, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11422, 149, 180, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11423, 150, 136, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11424, 150, 138, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11425, 150, 145, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11426, 150, 151, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11427, 150, 160, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11428, 150, 168, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11429, 150, 173, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11430, 151, 134, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11431, 151, 142, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11432, 151, 147, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11433, 151, 152, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11434, 151, 156, 'Enroll', '2024-12-20 19:08:44');
INSERT INTO `enrollment_history` VALUES (11435, 151, 164, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11436, 151, 174, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11437, 152, 136, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11438, 152, 143, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11439, 152, 148, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11440, 152, 153, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11441, 152, 158, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11442, 152, 167, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11443, 152, 176, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11444, 152, 179, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11445, 153, 133, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11446, 153, 142, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11447, 153, 146, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11448, 153, 155, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11449, 153, 156, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11450, 153, 167, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11451, 153, 170, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11452, 153, 180, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11453, 154, 137, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11454, 154, 142, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11455, 154, 144, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11456, 154, 152, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11457, 154, 160, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11458, 154, 162, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11459, 154, 176, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11460, 155, 135, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11461, 155, 138, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11462, 155, 146, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11463, 155, 153, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11464, 155, 159, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11465, 155, 168, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11466, 155, 177, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11467, 155, 178, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11468, 156, 134, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11469, 156, 143, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11470, 156, 147, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11471, 156, 155, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11472, 156, 159, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11473, 156, 165, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11474, 156, 171, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11475, 156, 180, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11476, 157, 136, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11477, 157, 140, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11478, 157, 145, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11479, 157, 153, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11480, 157, 159, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11481, 157, 162, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11482, 157, 174, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11483, 158, 132, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11484, 158, 139, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11485, 158, 145, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11486, 158, 152, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11487, 158, 158, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11488, 158, 163, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11489, 158, 177, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11490, 159, 133, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11491, 159, 143, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11492, 159, 145, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11493, 159, 155, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11494, 159, 159, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11495, 159, 162, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11496, 159, 172, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11497, 159, 180, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11498, 160, 133, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11499, 160, 143, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11500, 160, 147, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11501, 160, 153, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11502, 160, 156, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11503, 160, 168, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11504, 160, 175, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11505, 160, 178, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11506, 161, 130, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11507, 161, 138, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11508, 161, 144, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11509, 161, 154, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11510, 161, 159, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11511, 161, 166, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11512, 161, 172, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11513, 162, 133, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11514, 162, 138, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11515, 162, 144, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11516, 162, 151, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11517, 162, 160, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11518, 162, 163, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11519, 162, 173, 'Enroll', '2024-12-20 19:08:45');
INSERT INTO `enrollment_history` VALUES (11520, 162, 179, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11521, 163, 131, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11522, 163, 138, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11523, 163, 144, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11524, 163, 155, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11525, 163, 156, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11526, 163, 163, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11527, 163, 177, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11528, 164, 132, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11529, 164, 140, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11530, 164, 147, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11531, 164, 155, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11532, 164, 160, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11533, 164, 162, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11534, 164, 173, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11535, 164, 183, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11536, 165, 133, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11537, 165, 142, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11538, 165, 148, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11539, 165, 155, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11540, 165, 159, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11541, 165, 165, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11542, 165, 175, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11543, 165, 178, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11544, 166, 130, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11545, 166, 139, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11546, 166, 146, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11547, 166, 151, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11548, 166, 159, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11549, 166, 164, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11550, 166, 173, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11551, 166, 180, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11552, 167, 132, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11553, 167, 140, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11554, 167, 146, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11555, 167, 155, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11556, 167, 156, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11557, 167, 167, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11558, 167, 171, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11559, 168, 136, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11560, 168, 138, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11561, 168, 148, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11562, 168, 150, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11563, 168, 160, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11564, 168, 166, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11565, 168, 177, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11566, 168, 180, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11567, 169, 133, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11568, 169, 142, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11569, 169, 148, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11570, 169, 155, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11571, 169, 156, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11572, 169, 169, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11573, 169, 176, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11574, 169, 183, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11575, 170, 133, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11576, 170, 139, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11577, 170, 148, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11578, 170, 155, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11579, 170, 156, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11580, 170, 164, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11581, 170, 176, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11582, 170, 181, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11583, 171, 135, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11584, 171, 140, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11585, 171, 146, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11586, 171, 155, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11587, 171, 156, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11588, 171, 167, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11589, 171, 176, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11590, 172, 133, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11591, 172, 139, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11592, 172, 146, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11593, 172, 152, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11594, 172, 156, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11595, 172, 162, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11596, 172, 177, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11597, 172, 182, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11598, 173, 136, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11599, 173, 140, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11600, 173, 147, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11601, 173, 152, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11602, 173, 160, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11603, 173, 167, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11604, 173, 173, 'Enroll', '2024-12-20 19:08:46');
INSERT INTO `enrollment_history` VALUES (11605, 173, 182, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11606, 174, 134, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11607, 174, 143, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11608, 174, 146, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11609, 174, 150, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11610, 174, 160, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11611, 174, 168, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11612, 174, 170, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11613, 175, 137, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11614, 175, 140, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11615, 175, 147, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11616, 175, 153, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11617, 175, 160, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11618, 175, 169, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11619, 175, 172, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11620, 176, 137, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11621, 176, 142, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11622, 176, 147, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11623, 176, 155, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11624, 176, 159, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11625, 176, 165, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11626, 176, 173, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11627, 176, 181, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11628, 177, 134, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11629, 177, 138, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11630, 177, 144, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11631, 177, 153, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11632, 177, 159, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11633, 177, 164, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11634, 177, 172, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11635, 177, 182, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11636, 178, 131, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11637, 178, 143, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11638, 178, 144, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11639, 178, 155, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11640, 178, 159, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11641, 178, 166, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11642, 178, 173, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11643, 178, 181, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11644, 179, 131, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11645, 179, 143, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11646, 179, 148, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11647, 179, 151, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11648, 179, 156, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11649, 179, 162, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11650, 179, 172, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11651, 179, 182, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11652, 180, 136, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11653, 180, 142, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11654, 180, 144, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11655, 180, 152, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11656, 180, 156, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11657, 180, 162, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11658, 180, 170, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11659, 180, 182, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11660, 181, 132, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11661, 181, 140, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11662, 181, 144, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11663, 181, 151, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11664, 181, 156, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11665, 181, 162, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11666, 181, 177, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11667, 181, 183, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11668, 182, 132, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11669, 182, 139, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11670, 182, 146, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11671, 182, 151, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11672, 182, 159, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11673, 182, 162, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11674, 182, 176, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11675, 183, 133, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11676, 183, 139, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11677, 183, 144, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11678, 183, 151, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11679, 183, 156, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11680, 183, 169, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11681, 183, 176, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11682, 183, 183, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11683, 184, 130, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11684, 184, 140, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11685, 184, 144, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11686, 184, 155, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11687, 184, 160, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11688, 184, 169, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11689, 184, 175, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11690, 184, 182, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11691, 185, 137, 'Enroll', '2024-12-20 19:08:47');
INSERT INTO `enrollment_history` VALUES (11692, 185, 142, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11693, 185, 144, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11694, 185, 150, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11695, 185, 159, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11696, 185, 169, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11697, 185, 173, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11698, 186, 130, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11699, 186, 138, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11700, 186, 144, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11701, 186, 151, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11702, 186, 159, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11703, 186, 165, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11704, 186, 170, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11705, 187, 133, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11706, 187, 142, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11707, 187, 144, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11708, 187, 150, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11709, 187, 160, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11710, 187, 166, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11711, 187, 176, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11712, 188, 135, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11713, 188, 142, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11714, 188, 147, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11715, 188, 150, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11716, 188, 160, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11717, 188, 169, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11718, 188, 177, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11719, 189, 134, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11720, 189, 143, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11721, 189, 146, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11722, 189, 150, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11723, 189, 159, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11724, 189, 166, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11725, 189, 176, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11726, 189, 182, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11727, 190, 132, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11728, 190, 138, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11729, 190, 144, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11730, 190, 150, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11731, 190, 156, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11732, 190, 167, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11733, 190, 173, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11734, 191, 132, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11735, 191, 139, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11736, 191, 148, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11737, 191, 151, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11738, 191, 159, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11739, 191, 169, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11740, 191, 170, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11741, 192, 130, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11742, 192, 143, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11743, 192, 148, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11744, 192, 153, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11745, 192, 160, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11746, 192, 162, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11747, 192, 175, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11748, 193, 130, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11749, 193, 140, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11750, 193, 147, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11751, 193, 151, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11752, 193, 156, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11753, 193, 168, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11754, 193, 177, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11755, 193, 183, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11756, 194, 131, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11757, 194, 138, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11758, 194, 146, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11759, 194, 150, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11760, 194, 160, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11761, 194, 166, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11762, 194, 170, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11763, 194, 182, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11764, 195, 133, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11765, 195, 139, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11766, 195, 147, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11767, 195, 151, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11768, 195, 159, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11769, 195, 164, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11770, 195, 176, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11771, 196, 137, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11772, 196, 139, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11773, 196, 146, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11774, 196, 153, 'Enroll', '2024-12-20 19:08:48');
INSERT INTO `enrollment_history` VALUES (11775, 196, 156, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11776, 196, 164, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11777, 196, 172, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11778, 197, 137, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11779, 197, 139, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11780, 197, 146, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11781, 197, 155, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11782, 197, 156, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11783, 197, 167, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11784, 197, 176, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11785, 198, 133, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11786, 198, 138, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11787, 198, 148, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11788, 198, 152, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11789, 198, 159, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11790, 198, 167, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11791, 198, 175, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11792, 198, 178, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11793, 199, 134, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11794, 199, 140, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11795, 199, 146, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11796, 199, 153, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11797, 199, 160, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11798, 199, 168, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11799, 199, 176, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11800, 200, 134, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11801, 200, 138, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11802, 200, 147, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11803, 200, 152, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11804, 200, 159, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11805, 200, 166, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11806, 200, 174, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11807, 201, 135, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11808, 201, 139, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11809, 201, 147, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11810, 201, 152, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11811, 201, 159, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11812, 201, 165, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11813, 201, 174, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11814, 201, 181, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11815, 202, 137, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11816, 202, 143, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11817, 202, 147, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11818, 202, 155, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11819, 202, 156, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11820, 202, 165, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11821, 202, 175, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11822, 203, 137, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11823, 203, 142, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11824, 203, 146, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11825, 203, 151, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11826, 203, 159, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11827, 203, 164, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11828, 203, 170, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11829, 204, 133, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11830, 204, 139, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11831, 204, 144, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11832, 204, 152, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11833, 204, 156, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11834, 204, 164, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11835, 204, 177, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11836, 205, 131, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11837, 205, 142, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11838, 205, 147, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11839, 205, 152, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11840, 205, 156, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11841, 205, 165, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11842, 205, 177, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11843, 206, 130, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11844, 206, 143, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11845, 206, 146, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11846, 206, 152, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11847, 206, 156, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11848, 206, 164, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11849, 206, 177, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11850, 206, 179, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11851, 207, 134, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11852, 207, 138, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11853, 207, 146, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11854, 207, 151, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11855, 207, 160, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11856, 207, 166, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11857, 207, 176, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11858, 207, 180, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11859, 208, 131, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11860, 208, 143, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11861, 208, 148, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11862, 208, 153, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11863, 208, 159, 'Enroll', '2024-12-20 19:08:49');
INSERT INTO `enrollment_history` VALUES (11864, 208, 168, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11865, 208, 174, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11866, 208, 183, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11867, 209, 134, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11868, 209, 139, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11869, 209, 146, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11870, 209, 151, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11871, 209, 160, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11872, 209, 167, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11873, 209, 173, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11874, 209, 180, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11875, 210, 137, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11876, 210, 138, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11877, 210, 148, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11878, 210, 153, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11879, 210, 159, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11880, 210, 164, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11881, 210, 174, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11882, 210, 178, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11883, 211, 137, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11884, 211, 138, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11885, 211, 148, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11886, 211, 151, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11887, 211, 159, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11888, 211, 168, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11889, 211, 171, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11890, 211, 183, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11891, 212, 137, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11892, 212, 138, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11893, 212, 144, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11894, 212, 150, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11895, 212, 159, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11896, 212, 164, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11897, 212, 172, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11898, 213, 135, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11899, 213, 142, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11900, 213, 147, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11901, 213, 153, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11902, 213, 160, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11903, 213, 166, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11904, 213, 176, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11905, 213, 180, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11906, 214, 131, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11907, 214, 138, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11908, 214, 147, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11909, 214, 152, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11910, 214, 160, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11911, 214, 166, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11912, 214, 170, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11913, 214, 182, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11914, 215, 137, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11915, 215, 140, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11916, 215, 148, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11917, 215, 153, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11918, 215, 160, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11919, 215, 167, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11920, 215, 176, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11921, 216, 131, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11922, 216, 143, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11923, 216, 148, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11924, 216, 152, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11925, 216, 160, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11926, 216, 166, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11927, 216, 174, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11928, 216, 181, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11929, 217, 131, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11930, 217, 143, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11931, 217, 147, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11932, 217, 150, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11933, 217, 160, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11934, 217, 165, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11935, 217, 176, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11936, 218, 133, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11937, 218, 139, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11938, 218, 144, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11939, 218, 152, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11940, 218, 160, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11941, 218, 167, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11942, 218, 175, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11943, 218, 178, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11944, 219, 131, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11945, 219, 142, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11946, 219, 146, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11947, 219, 151, 'Enroll', '2024-12-20 19:08:50');
INSERT INTO `enrollment_history` VALUES (11948, 219, 162, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11949, 219, 172, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11950, 219, 179, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11951, 220, 137, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11952, 220, 138, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11953, 220, 148, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11954, 220, 151, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11955, 220, 164, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11956, 220, 173, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11957, 220, 183, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11958, 221, 131, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11959, 221, 143, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11960, 221, 147, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11961, 221, 153, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11962, 221, 165, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11963, 221, 172, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11964, 221, 181, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11965, 222, 130, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11966, 222, 138, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11967, 222, 146, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11968, 222, 150, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11969, 222, 164, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11970, 222, 175, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11971, 222, 179, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11972, 223, 133, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11973, 223, 140, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11974, 223, 147, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11975, 223, 153, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11976, 223, 167, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11977, 223, 176, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11978, 223, 183, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11979, 224, 133, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11980, 224, 139, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11981, 224, 146, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11982, 224, 152, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11983, 224, 166, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11984, 224, 170, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11985, 224, 180, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11986, 224, 191, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11987, 225, 133, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11988, 225, 140, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11989, 225, 148, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11990, 225, 152, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11991, 225, 164, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11992, 225, 176, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11993, 225, 180, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11994, 225, 187, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11995, 226, 137, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11996, 226, 139, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11997, 226, 144, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11998, 226, 153, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (11999, 226, 165, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12000, 226, 177, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12001, 226, 181, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12002, 226, 184, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12003, 227, 134, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12004, 227, 139, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12005, 227, 144, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12006, 227, 155, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12007, 227, 167, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12008, 227, 172, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12009, 227, 180, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12010, 227, 190, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12011, 228, 130, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12012, 228, 143, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12013, 228, 144, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12014, 228, 155, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12015, 228, 168, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12016, 228, 171, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12017, 228, 182, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12018, 228, 185, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12019, 229, 135, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12020, 229, 140, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12021, 229, 144, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12022, 229, 155, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12023, 229, 162, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12024, 229, 176, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12025, 229, 181, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12026, 229, 188, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12027, 230, 134, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12028, 230, 142, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12029, 230, 144, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12030, 230, 151, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12031, 230, 165, 'Enroll', '2024-12-20 19:08:51');
INSERT INTO `enrollment_history` VALUES (12032, 230, 173, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12033, 230, 178, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12034, 230, 187, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12035, 231, 133, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12036, 231, 138, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12037, 231, 146, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12038, 231, 155, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12039, 231, 162, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12040, 231, 170, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12041, 231, 178, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12042, 232, 134, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12043, 232, 140, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12044, 232, 148, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12045, 232, 153, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12046, 232, 165, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12047, 232, 176, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12048, 232, 179, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12049, 233, 130, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12050, 233, 140, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12051, 233, 148, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12052, 233, 150, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12053, 233, 164, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12054, 233, 170, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12055, 233, 179, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12056, 233, 189, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12057, 234, 130, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12058, 234, 142, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12059, 234, 144, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12060, 234, 155, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12061, 234, 165, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12062, 234, 172, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12063, 234, 179, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12064, 235, 131, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12065, 235, 140, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12066, 235, 144, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12067, 235, 155, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12068, 235, 166, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12069, 235, 170, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12070, 235, 181, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12071, 236, 133, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12072, 236, 139, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12073, 236, 148, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12074, 236, 153, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12075, 236, 162, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12076, 236, 177, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12077, 236, 179, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12078, 237, 133, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12079, 237, 140, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12080, 237, 148, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12081, 237, 151, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12082, 237, 166, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12083, 237, 171, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12084, 237, 182, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12085, 238, 131, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12086, 238, 140, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12087, 238, 148, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12088, 238, 152, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12089, 238, 162, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12090, 238, 177, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12091, 238, 182, 'Enroll', '2024-12-20 19:08:52');
INSERT INTO `enrollment_history` VALUES (12092, 238, 191, 'Enroll', '2024-12-20 19:08:52');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `created` int NOT NULL,
  `is_read` int NOT NULL,
  PRIMARY KEY (`feedback_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idcard` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` enum('M','F','U') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `age` int NULL DEFAULT NULL,
  `classer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `profession` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `college` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 239 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (39, '1111', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1111@whut.edu.cn', 1);
INSERT INTO `student` VALUES (40, '1112', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1112@whut.edu.cn', 1);
INSERT INTO `student` VALUES (41, '1113', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1113@whut.edu.cn', 1);
INSERT INTO `student` VALUES (42, '1114', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1114@whut.edu.cn', 1);
INSERT INTO `student` VALUES (43, '1115', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1115@whut.edu.cn', 1);
INSERT INTO `student` VALUES (44, '1116', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1116@whut.edu.cn', 1);
INSERT INTO `student` VALUES (45, '1117', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1117@whut.edu.cn', 1);
INSERT INTO `student` VALUES (46, '1118', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1118@whut.edu.cn', 1);
INSERT INTO `student` VALUES (47, '1119', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1119@whut.edu.cn', 1);
INSERT INTO `student` VALUES (48, '1120', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1120@whut.edu.cn', 1);
INSERT INTO `student` VALUES (49, '1121', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1121@whut.edu.cn', 1);
INSERT INTO `student` VALUES (50, '1122', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '计算机科学与技术2班', '计算机科学与技术', '计算机与人工智能学院', '1122@whut.edu.cn', 1);
INSERT INTO `student` VALUES (51, '1123', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1123@whut.edu.cn', 1);
INSERT INTO `student` VALUES (52, '1124', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1124@whut.edu.cn', 1);
INSERT INTO `student` VALUES (53, '1125', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1125@whut.edu.cn', 1);
INSERT INTO `student` VALUES (54, '1126', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1126@whut.edu.cn', 1);
INSERT INTO `student` VALUES (55, '1127', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1127@whut.edu.cn', 1);
INSERT INTO `student` VALUES (56, '1128', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1128@whut.edu.cn', 1);
INSERT INTO `student` VALUES (57, '1129', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1129@whut.edu.cn', 1);
INSERT INTO `student` VALUES (58, '1130', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1130@whut.edu.cn', 1);
INSERT INTO `student` VALUES (59, '1131', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1131@whut.edu.cn', 1);
INSERT INTO `student` VALUES (60, '1132', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1132@whut.edu.cn', 1);
INSERT INTO `student` VALUES (61, '1133', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1133@whut.edu.cn', 1);
INSERT INTO `student` VALUES (62, '1134', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1134@whut.edu.cn', 1);
INSERT INTO `student` VALUES (63, '1135', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1135@whut.edu.cn', 1);
INSERT INTO `student` VALUES (64, '1136', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1136@whut.edu.cn', 1);
INSERT INTO `student` VALUES (65, '1137', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1137@whut.edu.cn', 1);
INSERT INTO `student` VALUES (66, '1138', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1138@whut.edu.cn', 1);
INSERT INTO `student` VALUES (67, '1139', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1139@whut.edu.cn', 1);
INSERT INTO `student` VALUES (68, '1140', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1140@whut.edu.cn', 1);
INSERT INTO `student` VALUES (69, '1141', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1141@whut.edu.cn', 1);
INSERT INTO `student` VALUES (70, '1142', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1142@whut.edu.cn', 1);
INSERT INTO `student` VALUES (71, '1143', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1143@whut.edu.cn', 1);
INSERT INTO `student` VALUES (72, '1144', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1144@whut.edu.cn', 1);
INSERT INTO `student` VALUES (73, '1145', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1145@whut.edu.cn', 1);
INSERT INTO `student` VALUES (74, '1146', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1146@whut.edu.cn', 1);
INSERT INTO `student` VALUES (75, '1147', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '计算机科学与技术3班', '计算机科学与技术', '计算机与人工智能学院', '1147@whut.edu.cn', 1);
INSERT INTO `student` VALUES (76, '1148', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程1班', '软件工程', '计算机与人工智能学院', '1148@whut.edu.cn', 1);
INSERT INTO `student` VALUES (77, '1149', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程1班', '软件工程', '计算机与人工智能学院', '1149@whut.edu.cn', 1);
INSERT INTO `student` VALUES (78, '1150', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程1班', '软件工程', '计算机与人工智能学院', '1150@whut.edu.cn', 1);
INSERT INTO `student` VALUES (79, '1151', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程1班', '软件工程', '计算机与人工智能学院', '1151@whut.edu.cn', 1);
INSERT INTO `student` VALUES (80, '1152', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程1班', '软件工程', '计算机与人工智能学院', '1152@whut.edu.cn', 1);
INSERT INTO `student` VALUES (81, '1153', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程1班', '软件工程', '计算机与人工智能学院', '1153@whut.edu.cn', 1);
INSERT INTO `student` VALUES (82, '1154', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程1班', '软件工程', '计算机与人工智能学院', '1154@whut.edu.cn', 1);
INSERT INTO `student` VALUES (83, '1155', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程1班', '软件工程', '计算机与人工智能学院', '1155@whut.edu.cn', 1);
INSERT INTO `student` VALUES (84, '1156', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程1班', '软件工程', '计算机与人工智能学院', '1156@whut.edu.cn', 1);
INSERT INTO `student` VALUES (85, '1157', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程1班', '软件工程', '计算机与人工智能学院', '1157@whut.edu.cn', 1);
INSERT INTO `student` VALUES (86, '1158', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程1班', '软件工程', '计算机与人工智能学院', '1158@whut.edu.cn', 1);
INSERT INTO `student` VALUES (87, '1159', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程1班', '软件工程', '计算机与人工智能学院', '1159@whut.edu.cn', 1);
INSERT INTO `student` VALUES (88, '1160', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程1班', '软件工程', '计算机与人工智能学院', '1160@whut.edu.cn', 1);
INSERT INTO `student` VALUES (89, '1161', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程1班', '软件工程', '计算机与人工智能学院', '1161@whut.edu.cn', 1);
INSERT INTO `student` VALUES (90, '1162', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程1班', '软件工程', '计算机与人工智能学院', '1162@whut.edu.cn', 1);
INSERT INTO `student` VALUES (91, '1163', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程1班', '软件工程', '计算机与人工智能学院', '1163@whut.edu.cn', 1);
INSERT INTO `student` VALUES (92, '1164', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程1班', '软件工程', '计算机与人工智能学院', '1164@whut.edu.cn', 1);
INSERT INTO `student` VALUES (93, '1165', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程1班', '软件工程', '计算机与人工智能学院', '1165@whut.edu.cn', 1);
INSERT INTO `student` VALUES (94, '1166', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程1班', '软件工程', '计算机与人工智能学院', '1166@whut.edu.cn', 1);
INSERT INTO `student` VALUES (95, '1167', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程1班', '软件工程', '计算机与人工智能学院', '1167@whut.edu.cn', 1);
INSERT INTO `student` VALUES (96, '1168', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程1班', '软件工程', '计算机与人工智能学院', '1168@whut.edu.cn', 1);
INSERT INTO `student` VALUES (97, '1169', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程1班', '软件工程', '计算机与人工智能学院', '1169@whut.edu.cn', 1);
INSERT INTO `student` VALUES (98, '1170', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程1班', '软件工程', '计算机与人工智能学院', '1170@whut.edu.cn', 1);
INSERT INTO `student` VALUES (99, '1171', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程1班', '软件工程', '计算机与人工智能学院', '1171@whut.edu.cn', 1);
INSERT INTO `student` VALUES (100, '1172', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程1班', '软件工程', '计算机与人工智能学院', '1172@whut.edu.cn', 1);
INSERT INTO `student` VALUES (101, '1173', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程2班', '软件工程', '计算机与人工智能学院', '1173@whut.edu.cn', 1);
INSERT INTO `student` VALUES (102, '1174', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程2班', '软件工程', '计算机与人工智能学院', '1174@whut.edu.cn', 1);
INSERT INTO `student` VALUES (103, '1175', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程2班', '软件工程', '计算机与人工智能学院', '1175@whut.edu.cn', 1);
INSERT INTO `student` VALUES (104, '1176', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程2班', '软件工程', '计算机与人工智能学院', '1176@whut.edu.cn', 1);
INSERT INTO `student` VALUES (105, '1177', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程2班', '软件工程', '计算机与人工智能学院', '1177@whut.edu.cn', 1);
INSERT INTO `student` VALUES (106, '1178', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程2班', '软件工程', '计算机与人工智能学院', '1178@whut.edu.cn', 1);
INSERT INTO `student` VALUES (107, '1179', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程2班', '软件工程', '计算机与人工智能学院', '1179@whut.edu.cn', 1);
INSERT INTO `student` VALUES (108, '1180', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程2班', '软件工程', '计算机与人工智能学院', '1180@whut.edu.cn', 1);
INSERT INTO `student` VALUES (109, '1181', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程2班', '软件工程', '计算机与人工智能学院', '1181@whut.edu.cn', 1);
INSERT INTO `student` VALUES (110, '1182', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程2班', '软件工程', '计算机与人工智能学院', '1182@whut.edu.cn', 1);
INSERT INTO `student` VALUES (111, '1183', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程2班', '软件工程', '计算机与人工智能学院', '1183@whut.edu.cn', 1);
INSERT INTO `student` VALUES (112, '1184', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程2班', '软件工程', '计算机与人工智能学院', '1184@whut.edu.cn', 1);
INSERT INTO `student` VALUES (113, '1185', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程2班', '软件工程', '计算机与人工智能学院', '1185@whut.edu.cn', 1);
INSERT INTO `student` VALUES (114, '1186', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程2班', '软件工程', '计算机与人工智能学院', '1186@whut.edu.cn', 1);
INSERT INTO `student` VALUES (115, '1187', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程2班', '软件工程', '计算机与人工智能学院', '1187@whut.edu.cn', 1);
INSERT INTO `student` VALUES (116, '1188', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程2班', '软件工程', '计算机与人工智能学院', '1188@whut.edu.cn', 1);
INSERT INTO `student` VALUES (117, '1189', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程2班', '软件工程', '计算机与人工智能学院', '1189@whut.edu.cn', 1);
INSERT INTO `student` VALUES (118, '1190', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程2班', '软件工程', '计算机与人工智能学院', '1190@whut.edu.cn', 1);
INSERT INTO `student` VALUES (119, '1191', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程2班', '软件工程', '计算机与人工智能学院', '1191@whut.edu.cn', 1);
INSERT INTO `student` VALUES (120, '1192', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程2班', '软件工程', '计算机与人工智能学院', '1192@whut.edu.cn', 1);
INSERT INTO `student` VALUES (121, '1193', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程2班', '软件工程', '计算机与人工智能学院', '1193@whut.edu.cn', 1);
INSERT INTO `student` VALUES (122, '1194', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程2班', '软件工程', '计算机与人工智能学院', '1194@whut.edu.cn', 1);
INSERT INTO `student` VALUES (123, '1195', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程2班', '软件工程', '计算机与人工智能学院', '1195@whut.edu.cn', 1);
INSERT INTO `student` VALUES (124, '1196', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程2班', '软件工程', '计算机与人工智能学院', '1196@whut.edu.cn', 1);
INSERT INTO `student` VALUES (125, '1197', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程2班', '软件工程', '计算机与人工智能学院', '1197@whut.edu.cn', 1);
INSERT INTO `student` VALUES (126, '1198', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程3班', '软件工程', '计算机与人工智能学院', '1198@whut.edu.cn', 1);
INSERT INTO `student` VALUES (127, '1199', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程3班', '软件工程', '计算机与人工智能学院', '1199@whut.edu.cn', 1);
INSERT INTO `student` VALUES (128, '1200', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程3班', '软件工程', '计算机与人工智能学院', '1200@whut.edu.cn', 1);
INSERT INTO `student` VALUES (129, '1201', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程3班', '软件工程', '计算机与人工智能学院', '1201@whut.edu.cn', 1);
INSERT INTO `student` VALUES (130, '1202', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程3班', '软件工程', '计算机与人工智能学院', '1202@whut.edu.cn', 1);
INSERT INTO `student` VALUES (131, '1203', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程3班', '软件工程', '计算机与人工智能学院', '1203@whut.edu.cn', 1);
INSERT INTO `student` VALUES (132, '1204', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程3班', '软件工程', '计算机与人工智能学院', '1204@whut.edu.cn', 1);
INSERT INTO `student` VALUES (133, '1205', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程3班', '软件工程', '计算机与人工智能学院', '1205@whut.edu.cn', 1);
INSERT INTO `student` VALUES (134, '1206', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程3班', '软件工程', '计算机与人工智能学院', '1206@whut.edu.cn', 1);
INSERT INTO `student` VALUES (135, '1207', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程3班', '软件工程', '计算机与人工智能学院', '1207@whut.edu.cn', 1);
INSERT INTO `student` VALUES (136, '1208', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程3班', '软件工程', '计算机与人工智能学院', '1208@whut.edu.cn', 1);
INSERT INTO `student` VALUES (137, '1209', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程3班', '软件工程', '计算机与人工智能学院', '1209@whut.edu.cn', 1);
INSERT INTO `student` VALUES (138, '1210', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程3班', '软件工程', '计算机与人工智能学院', '1210@whut.edu.cn', 1);
INSERT INTO `student` VALUES (139, '1211', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程3班', '软件工程', '计算机与人工智能学院', '1211@whut.edu.cn', 1);
INSERT INTO `student` VALUES (140, '1212', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程3班', '软件工程', '计算机与人工智能学院', '1212@whut.edu.cn', 1);
INSERT INTO `student` VALUES (141, '1213', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程3班', '软件工程', '计算机与人工智能学院', '1213@whut.edu.cn', 1);
INSERT INTO `student` VALUES (142, '1214', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程3班', '软件工程', '计算机与人工智能学院', '1214@whut.edu.cn', 1);
INSERT INTO `student` VALUES (143, '1215', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程3班', '软件工程', '计算机与人工智能学院', '1215@whut.edu.cn', 1);
INSERT INTO `student` VALUES (144, '1216', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程3班', '软件工程', '计算机与人工智能学院', '1216@whut.edu.cn', 1);
INSERT INTO `student` VALUES (145, '1217', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程3班', '软件工程', '计算机与人工智能学院', '1217@whut.edu.cn', 1);
INSERT INTO `student` VALUES (146, '1218', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '软件工程3班', '软件工程', '计算机与人工智能学院', '1218@whut.edu.cn', 1);
INSERT INTO `student` VALUES (147, '1219', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '软件工程3班', '软件工程', '计算机与人工智能学院', '1219@whut.edu.cn', 1);
INSERT INTO `student` VALUES (148, '1220', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程3班', '软件工程', '计算机与人工智能学院', '1220@whut.edu.cn', 1);
INSERT INTO `student` VALUES (149, '1221', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '软件工程3班', '软件工程', '计算机与人工智能学院', '1221@whut.edu.cn', 1);
INSERT INTO `student` VALUES (150, '1222', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '软件工程3班', '软件工程', '计算机与人工智能学院', '1222@whut.edu.cn', 1);
INSERT INTO `student` VALUES (151, '1223', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程1班', '土木工程', '土木工程与建筑学院', '1223@whut.edu.cn', 1);
INSERT INTO `student` VALUES (152, '1224', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程1班', '土木工程', '土木工程与建筑学院', '1224@whut.edu.cn', 1);
INSERT INTO `student` VALUES (153, '1225', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程1班', '土木工程', '土木工程与建筑学院', '1225@whut.edu.cn', 1);
INSERT INTO `student` VALUES (154, '1226', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程1班', '土木工程', '土木工程与建筑学院', '1226@whut.edu.cn', 1);
INSERT INTO `student` VALUES (155, '1227', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程1班', '土木工程', '土木工程与建筑学院', '1227@whut.edu.cn', 1);
INSERT INTO `student` VALUES (156, '1228', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程1班', '土木工程', '土木工程与建筑学院', '1228@whut.edu.cn', 1);
INSERT INTO `student` VALUES (157, '1229', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程1班', '土木工程', '土木工程与建筑学院', '1229@whut.edu.cn', 1);
INSERT INTO `student` VALUES (158, '1230', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '土木工程1班', '土木工程', '土木工程与建筑学院', '1230@whut.edu.cn', 1);
INSERT INTO `student` VALUES (159, '1231', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程1班', '土木工程', '土木工程与建筑学院', '1231@whut.edu.cn', 1);
INSERT INTO `student` VALUES (160, '1232', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '土木工程1班', '土木工程', '土木工程与建筑学院', '1232@whut.edu.cn', 1);
INSERT INTO `student` VALUES (161, '1233', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程1班', '土木工程', '土木工程与建筑学院', '1233@whut.edu.cn', 1);
INSERT INTO `student` VALUES (162, '1234', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程1班', '土木工程', '土木工程与建筑学院', '1234@whut.edu.cn', 1);
INSERT INTO `student` VALUES (163, '1235', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程1班', '土木工程', '土木工程与建筑学院', '1235@whut.edu.cn', 1);
INSERT INTO `student` VALUES (164, '1236', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程1班', '土木工程', '土木工程与建筑学院', '1236@whut.edu.cn', 1);
INSERT INTO `student` VALUES (165, '1237', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程1班', '土木工程', '土木工程与建筑学院', '1237@whut.edu.cn', 1);
INSERT INTO `student` VALUES (166, '1238', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程1班', '土木工程', '土木工程与建筑学院', '1238@whut.edu.cn', 1);
INSERT INTO `student` VALUES (167, '1239', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '土木工程1班', '土木工程', '土木工程与建筑学院', '1239@whut.edu.cn', 1);
INSERT INTO `student` VALUES (168, '1240', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '土木工程1班', '土木工程', '土木工程与建筑学院', '1240@whut.edu.cn', 1);
INSERT INTO `student` VALUES (169, '1241', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程1班', '土木工程', '土木工程与建筑学院', '1241@whut.edu.cn', 1);
INSERT INTO `student` VALUES (170, '1242', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '土木工程1班', '土木工程', '土木工程与建筑学院', '1242@whut.edu.cn', 1);
INSERT INTO `student` VALUES (171, '1243', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程1班', '土木工程', '土木工程与建筑学院', '1243@whut.edu.cn', 1);
INSERT INTO `student` VALUES (172, '1244', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程1班', '土木工程', '土木工程与建筑学院', '1244@whut.edu.cn', 1);
INSERT INTO `student` VALUES (173, '1245', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程1班', '土木工程', '土木工程与建筑学院', '1245@whut.edu.cn', 1);
INSERT INTO `student` VALUES (174, '1246', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程1班', '土木工程', '土木工程与建筑学院', '1246@whut.edu.cn', 1);
INSERT INTO `student` VALUES (175, '1247', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程1班', '土木工程', '土木工程与建筑学院', '1247@whut.edu.cn', 1);
INSERT INTO `student` VALUES (176, '1248', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程2班', '土木工程', '土木工程与建筑学院', '1248@whut.edu.cn', 1);
INSERT INTO `student` VALUES (177, '1249', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程2班', '土木工程', '土木工程与建筑学院', '1249@whut.edu.cn', 1);
INSERT INTO `student` VALUES (178, '1250', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程2班', '土木工程', '土木工程与建筑学院', '1250@whut.edu.cn', 1);
INSERT INTO `student` VALUES (179, '1251', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程2班', '土木工程', '土木工程与建筑学院', '1251@whut.edu.cn', 1);
INSERT INTO `student` VALUES (180, '1252', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '土木工程2班', '土木工程', '土木工程与建筑学院', '1252@whut.edu.cn', 1);
INSERT INTO `student` VALUES (181, '1253', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程2班', '土木工程', '土木工程与建筑学院', '1253@whut.edu.cn', 1);
INSERT INTO `student` VALUES (182, '1254', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程2班', '土木工程', '土木工程与建筑学院', '1254@whut.edu.cn', 1);
INSERT INTO `student` VALUES (183, '1255', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程2班', '土木工程', '土木工程与建筑学院', '1255@whut.edu.cn', 1);
INSERT INTO `student` VALUES (184, '1256', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程2班', '土木工程', '土木工程与建筑学院', '1256@whut.edu.cn', 1);
INSERT INTO `student` VALUES (185, '1257', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程2班', '土木工程', '土木工程与建筑学院', '1257@whut.edu.cn', 1);
INSERT INTO `student` VALUES (186, '1258', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程2班', '土木工程', '土木工程与建筑学院', '1258@whut.edu.cn', 1);
INSERT INTO `student` VALUES (187, '1259', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程2班', '土木工程', '土木工程与建筑学院', '1259@whut.edu.cn', 1);
INSERT INTO `student` VALUES (188, '1260', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程2班', '土木工程', '土木工程与建筑学院', '1260@whut.edu.cn', 1);
INSERT INTO `student` VALUES (189, '1261', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程2班', '土木工程', '土木工程与建筑学院', '1261@whut.edu.cn', 1);
INSERT INTO `student` VALUES (190, '1262', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '土木工程2班', '土木工程', '土木工程与建筑学院', '1262@whut.edu.cn', 1);
INSERT INTO `student` VALUES (191, '1263', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程2班', '土木工程', '土木工程与建筑学院', '1263@whut.edu.cn', 1);
INSERT INTO `student` VALUES (192, '1264', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '土木工程2班', '土木工程', '土木工程与建筑学院', '1264@whut.edu.cn', 1);
INSERT INTO `student` VALUES (193, '1265', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '土木工程2班', '土木工程', '土木工程与建筑学院', '1265@whut.edu.cn', 1);
INSERT INTO `student` VALUES (194, '1266', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程2班', '土木工程', '土木工程与建筑学院', '1266@whut.edu.cn', 1);
INSERT INTO `student` VALUES (195, '1267', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程2班', '土木工程', '土木工程与建筑学院', '1267@whut.edu.cn', 1);
INSERT INTO `student` VALUES (196, '1268', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程2班', '土木工程', '土木工程与建筑学院', '1268@whut.edu.cn', 1);
INSERT INTO `student` VALUES (197, '1269', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '土木工程2班', '土木工程', '土木工程与建筑学院', '1269@whut.edu.cn', 1);
INSERT INTO `student` VALUES (198, '1270', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '土木工程2班', '土木工程', '土木工程与建筑学院', '1270@whut.edu.cn', 1);
INSERT INTO `student` VALUES (199, '1271', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '土木工程2班', '土木工程', '土木工程与建筑学院', '1271@whut.edu.cn', 1);
INSERT INTO `student` VALUES (200, '1272', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '土木工程2班', '土木工程', '土木工程与建筑学院', '1272@whut.edu.cn', 1);
INSERT INTO `student` VALUES (201, '1273', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1273@whut.edu.cn', 1);
INSERT INTO `student` VALUES (202, '1274', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1274@whut.edu.cn', 1);
INSERT INTO `student` VALUES (203, '1275', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '', '', '', '1275@whut.edu.cn', 1);
INSERT INTO `student` VALUES (204, '1276', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '', '', '', '1276@whut.edu.cn', 1);
INSERT INTO `student` VALUES (205, '1277', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1277@whut.edu.cn', 1);
INSERT INTO `student` VALUES (206, '1278', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '', '', '', '1278@whut.edu.cn', 1);
INSERT INTO `student` VALUES (207, '1279', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '', '', '', '1279@whut.edu.cn', 1);
INSERT INTO `student` VALUES (208, '1280', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1280@whut.edu.cn', 1);
INSERT INTO `student` VALUES (209, '1281', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1281@whut.edu.cn', 1);
INSERT INTO `student` VALUES (210, '1282', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '', '', '', '1282@whut.edu.cn', 1);
INSERT INTO `student` VALUES (211, '1283', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '', '', '', '1283@whut.edu.cn', 1);
INSERT INTO `student` VALUES (212, '1284', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1284@whut.edu.cn', 1);
INSERT INTO `student` VALUES (213, '1285', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1285@whut.edu.cn', 1);
INSERT INTO `student` VALUES (214, '1286', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1286@whut.edu.cn', 1);
INSERT INTO `student` VALUES (215, '1287', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '', '', '', '1287@whut.edu.cn', 1);
INSERT INTO `student` VALUES (216, '1288', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '', '', '', '1288@whut.edu.cn', 1);
INSERT INTO `student` VALUES (217, '1289', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1289@whut.edu.cn', 1);
INSERT INTO `student` VALUES (218, '1290', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1290@whut.edu.cn', 1);
INSERT INTO `student` VALUES (219, '1291', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '', '', '', '1291@whut.edu.cn', 1);
INSERT INTO `student` VALUES (220, '1292', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '', '', '', '1292@whut.edu.cn', 1);
INSERT INTO `student` VALUES (221, '1293', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '', '', '', '1293@whut.edu.cn', 1);
INSERT INTO `student` VALUES (222, '1294', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1294@whut.edu.cn', 1);
INSERT INTO `student` VALUES (223, '1295', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '', '', '', '1295@whut.edu.cn', 1);
INSERT INTO `student` VALUES (224, '1296', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '', '', '', '1296@whut.edu.cn', 1);
INSERT INTO `student` VALUES (225, '1297', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '', '', '', '1297@whut.edu.cn', 1);
INSERT INTO `student` VALUES (226, '1298', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1298@whut.edu.cn', 1);
INSERT INTO `student` VALUES (227, '1299', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '', '', '', '1299@whut.edu.cn', 1);
INSERT INTO `student` VALUES (228, '1300', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1300@whut.edu.cn', 1);
INSERT INTO `student` VALUES (229, '1301', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '', '', '', '1301@whut.edu.cn', 1);
INSERT INTO `student` VALUES (230, '1302', NULL, 'U', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '', '', '', '1302@whut.edu.cn', 1);
INSERT INTO `student` VALUES (231, '1303', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 21, '', '', '', '1303@whut.edu.cn', 1);
INSERT INTO `student` VALUES (232, '1304', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '', '', '', '1304@whut.edu.cn', 1);
INSERT INTO `student` VALUES (233, '1305', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '', '', '', '1305@whut.edu.cn', 1);
INSERT INTO `student` VALUES (234, '1306', NULL, 'M', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '', '', '', '1306@whut.edu.cn', 1);
INSERT INTO `student` VALUES (235, '1307', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '', '', '', '1307@whut.edu.cn', 1);
INSERT INTO `student` VALUES (236, '1308', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 19, '', '', '', '1308@whut.edu.cn', 1);
INSERT INTO `student` VALUES (237, '1309', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, '', '', '', '1309@whut.edu.cn', 1);
INSERT INTO `student` VALUES (238, '1310', NULL, 'F', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, '', '', '', '1310@whut.edu.cn', 1);

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course`  (
  `student_id` int NOT NULL,
  `class_id` int NOT NULL,
  `grade` float NULL DEFAULT NULL,
  `enrolled_date` datetime NOT NULL,
  PRIMARY KEY (`student_id`, `class_id`) USING BTREE,
  INDEX `class_id`(`class_id` ASC) USING BTREE,
  CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES (39, 131, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (39, 139, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (39, 146, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (39, 151, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (39, 160, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (39, 168, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (39, 170, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (40, 135, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (40, 143, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (40, 147, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (40, 151, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (40, 157, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (40, 162, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (40, 176, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (40, 183, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (41, 136, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (41, 141, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (41, 145, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (41, 152, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (41, 159, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (41, 164, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (41, 176, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (42, 133, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (42, 140, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (42, 149, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (42, 154, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (42, 159, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (42, 168, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (42, 172, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (43, 130, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (43, 141, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (43, 149, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (43, 151, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (43, 157, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (43, 165, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (43, 170, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (43, 180, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (44, 135, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (44, 141, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (44, 148, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (44, 151, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (44, 157, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (44, 163, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (44, 177, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (44, 183, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (45, 132, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (45, 138, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (45, 144, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (45, 151, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (45, 156, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (45, 164, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (45, 176, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (45, 183, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (46, 130, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (46, 141, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (46, 145, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (46, 154, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (46, 157, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (46, 162, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (46, 170, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (46, 178, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (47, 132, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (47, 143, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (47, 149, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (47, 150, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (47, 157, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (47, 162, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (47, 171, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (48, 131, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (48, 140, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (48, 145, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (48, 154, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (48, 157, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (48, 165, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (48, 174, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (48, 183, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (49, 137, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (49, 138, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (49, 147, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (49, 153, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (49, 156, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (49, 164, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (49, 172, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (50, 132, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (50, 140, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (50, 149, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (50, 152, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (50, 158, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (50, 163, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (50, 170, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (50, 178, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (51, 134, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (51, 140, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (51, 145, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (51, 151, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (51, 158, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (51, 166, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (51, 177, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (51, 179, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (52, 136, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (52, 140, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (52, 148, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (52, 154, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (52, 161, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (52, 165, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (52, 173, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (52, 180, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (53, 131, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (53, 138, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (53, 149, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (53, 150, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (53, 158, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (53, 165, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (53, 170, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (54, 135, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (54, 140, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (54, 149, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (54, 151, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (54, 159, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (54, 168, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (54, 171, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (54, 179, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (55, 133, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (55, 143, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (55, 146, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (55, 154, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (55, 157, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (55, 164, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (55, 171, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (55, 178, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (56, 135, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (56, 139, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (56, 145, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (56, 155, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (56, 161, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (56, 167, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (56, 175, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (56, 179, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (57, 136, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (57, 143, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (57, 147, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (57, 153, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (57, 156, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (57, 167, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (57, 172, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (58, 135, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (58, 143, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (58, 147, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (58, 154, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (58, 156, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (58, 163, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (58, 174, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (58, 182, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (59, 137, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (59, 138, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (59, 147, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (59, 150, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (59, 156, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (59, 166, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (59, 177, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (59, 178, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (60, 136, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (60, 140, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (60, 146, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (60, 155, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (60, 157, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (60, 169, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (60, 177, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (60, 183, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (61, 134, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (61, 141, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (61, 149, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (61, 154, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (61, 157, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (61, 164, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (61, 173, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (61, 182, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (62, 137, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (62, 142, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (62, 147, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (62, 151, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (62, 160, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (62, 163, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (62, 170, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (63, 133, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (63, 143, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (63, 148, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (63, 152, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (63, 158, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (63, 165, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (63, 174, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (63, 182, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (64, 131, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (64, 143, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (64, 149, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (64, 154, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (64, 161, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (64, 163, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (64, 170, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (65, 135, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (65, 141, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (65, 148, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (65, 154, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (65, 161, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (65, 166, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (65, 177, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (65, 178, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (66, 134, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (66, 142, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (66, 147, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (66, 150, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (66, 156, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (66, 168, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (66, 177, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (66, 182, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (67, 135, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (67, 138, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (67, 147, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (67, 155, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (67, 161, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (67, 166, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (67, 174, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (67, 182, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (68, 131, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (68, 138, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (68, 146, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (68, 150, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (68, 158, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (68, 166, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (68, 172, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (68, 179, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (69, 131, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (69, 139, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (69, 146, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (69, 155, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (69, 157, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (69, 162, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (69, 171, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (70, 131, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (70, 140, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (70, 147, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (70, 151, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (70, 157, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (70, 169, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (70, 175, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (70, 181, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (71, 137, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (71, 140, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (71, 146, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (71, 154, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (71, 159, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (71, 168, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (71, 174, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (72, 133, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (72, 139, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (72, 145, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (72, 154, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (72, 157, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (72, 167, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (72, 176, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (72, 181, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (73, 130, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (73, 139, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (73, 148, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (73, 155, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (73, 157, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (73, 163, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (73, 173, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (74, 137, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (74, 139, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (74, 147, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (74, 153, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (74, 156, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (74, 165, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (74, 171, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (75, 130, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (75, 141, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (75, 149, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (75, 150, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (75, 161, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (75, 168, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (75, 172, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (75, 180, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (76, 133, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (76, 138, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (76, 145, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (76, 151, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (76, 157, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (76, 167, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (76, 174, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (77, 136, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (77, 139, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (77, 148, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (77, 153, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (77, 161, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (77, 169, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (77, 176, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (78, 137, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (78, 141, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (78, 144, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (78, 152, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (78, 159, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (78, 168, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (78, 176, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (78, 183, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (79, 135, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (79, 139, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (79, 144, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (79, 154, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (79, 161, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (79, 162, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (79, 173, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (80, 133, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (80, 139, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (80, 148, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (80, 151, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (80, 156, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (80, 168, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (80, 177, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (81, 130, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (81, 143, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (81, 148, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (81, 153, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (81, 161, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (81, 162, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (81, 171, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (82, 136, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (82, 141, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (82, 146, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (82, 150, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (82, 157, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (82, 163, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (82, 170, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (83, 136, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (83, 141, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (83, 146, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (83, 153, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (83, 156, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (83, 167, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (83, 176, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (83, 179, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (84, 133, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (84, 143, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (84, 147, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (84, 150, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (84, 161, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (84, 169, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (84, 170, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (85, 134, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (85, 138, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (85, 147, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (85, 155, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (85, 161, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (85, 167, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (85, 177, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (85, 182, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (86, 132, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (86, 142, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (86, 144, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (86, 152, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (86, 158, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (86, 167, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (86, 176, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (87, 132, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (87, 139, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (87, 149, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (87, 152, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (87, 159, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (87, 166, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (87, 176, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (88, 134, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (88, 143, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (88, 149, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (88, 151, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (88, 158, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (88, 163, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (88, 173, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (89, 134, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (89, 143, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (89, 149, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (89, 152, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (89, 156, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (89, 168, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (89, 177, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (89, 182, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (90, 133, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (90, 143, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (90, 149, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (90, 155, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (90, 157, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (90, 165, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (90, 172, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (91, 137, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (91, 138, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (91, 147, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (91, 154, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (91, 161, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (91, 162, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (91, 174, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (92, 135, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (92, 141, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (92, 147, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (92, 150, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (92, 161, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (92, 169, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (92, 174, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (92, 178, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (93, 131, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (93, 138, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (93, 149, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (93, 153, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (93, 160, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (93, 169, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (93, 173, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (93, 183, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (94, 131, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (94, 141, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (94, 144, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (94, 152, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (94, 157, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (94, 163, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (94, 176, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (95, 134, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (95, 139, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (95, 148, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (95, 152, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (95, 157, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (95, 167, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (95, 173, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (95, 182, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (96, 137, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (96, 143, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (96, 144, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (96, 152, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (96, 160, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (96, 163, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (96, 170, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (97, 132, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (97, 142, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (97, 147, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (97, 151, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (97, 161, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (97, 164, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (97, 173, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (97, 179, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (98, 134, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (98, 142, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (98, 146, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (98, 153, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (98, 161, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (98, 162, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (98, 174, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (99, 131, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (99, 140, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (99, 147, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (99, 151, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (99, 159, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (99, 169, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (99, 176, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (100, 133, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (100, 143, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (100, 146, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (100, 151, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (100, 160, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (100, 168, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (100, 177, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (101, 131, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (101, 140, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (101, 145, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (101, 154, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (101, 159, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (101, 168, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (101, 172, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (101, 181, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (102, 134, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (102, 142, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (102, 148, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (102, 152, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (102, 161, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (102, 166, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (102, 174, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (102, 180, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (103, 137, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (103, 139, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (103, 149, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (103, 153, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (103, 160, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (103, 163, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (103, 175, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (104, 136, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (104, 143, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (104, 147, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (104, 153, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (104, 157, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (104, 166, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (104, 170, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (104, 179, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (105, 132, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (105, 139, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (105, 144, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (105, 150, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (105, 160, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (105, 169, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (105, 171, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (105, 183, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (106, 135, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (106, 141, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (106, 149, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (106, 153, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (106, 158, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (106, 168, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (106, 170, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (107, 132, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (107, 142, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (107, 149, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (107, 155, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (107, 159, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (107, 167, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (107, 172, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (108, 136, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (108, 143, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (108, 147, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (108, 154, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (108, 159, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (108, 165, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (108, 175, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (108, 178, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (109, 132, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (109, 139, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (109, 146, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (109, 152, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (109, 157, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (109, 167, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (109, 174, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (110, 137, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (110, 142, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (110, 146, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (110, 151, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (110, 156, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (110, 167, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (110, 175, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (110, 181, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (111, 134, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (111, 140, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (111, 146, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (111, 150, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (111, 161, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (111, 168, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (111, 173, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (111, 181, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (112, 132, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (112, 139, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (112, 145, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (112, 152, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (112, 158, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (112, 163, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (112, 173, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (113, 136, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (113, 140, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (113, 148, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (113, 152, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (113, 156, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (113, 166, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (113, 171, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (113, 182, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (114, 136, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (114, 141, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (114, 146, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (114, 154, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (114, 161, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (114, 168, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (114, 175, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (114, 179, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (115, 131, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (115, 141, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (115, 146, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (115, 152, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (115, 160, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (115, 162, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (115, 176, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (116, 132, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (116, 140, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (116, 144, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (116, 151, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (116, 158, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (116, 169, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (116, 173, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (117, 131, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (117, 141, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (117, 144, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (117, 152, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (117, 156, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (117, 163, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (117, 173, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (118, 131, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (118, 142, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (118, 149, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (118, 150, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (118, 156, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (118, 163, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (118, 173, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (119, 130, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (119, 139, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (119, 148, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (119, 155, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (119, 159, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (119, 165, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (119, 176, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (120, 134, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (120, 143, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (120, 144, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (120, 153, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (120, 156, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (120, 164, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (120, 174, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (120, 179, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (121, 136, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (121, 141, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (121, 145, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (121, 153, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (121, 160, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (121, 169, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (121, 172, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (121, 181, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (122, 131, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (122, 143, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (122, 148, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (122, 152, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (122, 158, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (122, 162, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (122, 173, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (123, 131, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (123, 142, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (123, 144, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (123, 150, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (123, 160, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (123, 163, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (123, 170, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (123, 180, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (124, 134, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (124, 141, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (124, 149, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (124, 155, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (124, 160, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (124, 169, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (124, 170, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (124, 183, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (125, 131, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (125, 143, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (125, 147, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (125, 151, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (125, 158, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (125, 167, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (125, 171, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (126, 135, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (126, 142, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (126, 149, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (126, 155, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (126, 161, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (126, 167, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (126, 172, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (126, 183, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (127, 133, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (127, 140, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (127, 144, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (127, 155, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (127, 159, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (127, 166, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (127, 172, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (128, 137, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (128, 142, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (128, 148, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (128, 154, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (128, 160, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (128, 163, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (128, 170, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (129, 131, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (129, 143, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (129, 147, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (129, 153, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (129, 159, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (129, 165, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (129, 173, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (129, 182, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (130, 131, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (130, 143, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (130, 148, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (130, 153, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (130, 156, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (130, 167, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (130, 173, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (130, 180, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (131, 131, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (131, 141, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (131, 145, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (131, 151, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (131, 158, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (131, 168, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (131, 177, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (132, 134, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (132, 139, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (132, 148, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (132, 150, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (132, 158, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (132, 168, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (132, 174, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (132, 179, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (133, 133, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (133, 141, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (133, 146, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (133, 150, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (133, 161, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (133, 164, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (133, 172, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (133, 180, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (134, 137, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (134, 138, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (134, 144, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (134, 155, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (134, 160, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (134, 168, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (134, 175, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (134, 182, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (135, 133, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (135, 139, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (135, 145, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (135, 152, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (135, 156, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (135, 162, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (135, 174, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (135, 179, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (136, 131, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (136, 143, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (136, 148, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (136, 151, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (136, 160, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (136, 166, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (136, 174, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (137, 131, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (137, 140, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (137, 146, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (137, 153, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (137, 160, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (137, 163, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (137, 173, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (137, 178, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (138, 131, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (138, 143, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (138, 145, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (138, 150, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (138, 159, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (138, 169, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (138, 172, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (139, 134, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (139, 138, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (139, 146, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (139, 152, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (139, 158, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (139, 165, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (139, 177, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (140, 133, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (140, 140, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (140, 146, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (140, 152, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (140, 156, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (140, 168, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (140, 174, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (140, 182, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (141, 132, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (141, 139, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (141, 144, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (141, 150, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (141, 158, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (141, 167, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (141, 177, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (141, 181, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (142, 133, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (142, 143, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (142, 145, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (142, 154, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (142, 160, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (142, 162, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (142, 176, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (143, 136, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (143, 140, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (143, 148, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (143, 152, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (143, 158, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (143, 165, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (143, 172, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (143, 181, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (144, 133, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (144, 140, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (144, 145, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (144, 155, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (144, 159, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (144, 168, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (144, 172, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (145, 131, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (145, 139, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (145, 148, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (145, 151, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (145, 159, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (145, 167, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (145, 173, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (146, 136, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (146, 142, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (146, 148, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (146, 150, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (146, 156, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (146, 165, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (146, 175, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (147, 130, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (147, 138, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (147, 145, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (147, 151, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (147, 160, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (147, 164, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (147, 173, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (147, 183, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (148, 133, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (148, 140, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (148, 146, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (148, 151, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (148, 160, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (148, 169, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (148, 176, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (149, 132, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (149, 140, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (149, 147, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (149, 154, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (149, 158, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (149, 165, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (149, 172, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (149, 180, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (150, 136, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (150, 138, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (150, 145, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (150, 151, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (150, 160, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (150, 168, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (150, 173, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (151, 134, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (151, 142, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (151, 147, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (151, 152, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (151, 156, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (151, 164, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (151, 174, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (152, 136, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (152, 143, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (152, 148, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (152, 153, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (152, 158, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (152, 167, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (152, 176, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (152, 179, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (153, 133, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (153, 142, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (153, 146, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (153, 155, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (153, 156, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (153, 167, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (153, 170, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (153, 180, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (154, 137, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (154, 142, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (154, 144, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (154, 152, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (154, 160, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (154, 162, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (154, 176, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (155, 135, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (155, 138, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (155, 146, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (155, 153, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (155, 159, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (155, 168, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (155, 177, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (155, 178, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (156, 134, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (156, 143, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (156, 147, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (156, 155, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (156, 159, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (156, 165, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (156, 171, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (156, 180, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (157, 136, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (157, 140, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (157, 145, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (157, 153, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (157, 159, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (157, 162, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (157, 174, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (158, 132, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (158, 139, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (158, 145, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (158, 152, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (158, 158, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (158, 163, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (158, 177, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (159, 133, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (159, 143, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (159, 145, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (159, 155, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (159, 159, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (159, 162, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (159, 172, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (159, 180, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (160, 133, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (160, 143, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (160, 147, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (160, 153, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (160, 156, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (160, 168, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (160, 175, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (160, 178, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (161, 130, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (161, 138, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (161, 144, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (161, 154, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (161, 159, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (161, 166, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (161, 172, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (162, 133, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (162, 138, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (162, 144, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (162, 151, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (162, 160, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (162, 163, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (162, 173, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (162, 179, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (163, 131, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (163, 138, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (163, 144, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (163, 155, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (163, 156, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (163, 163, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (163, 177, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (164, 132, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (164, 140, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (164, 147, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (164, 155, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (164, 160, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (164, 162, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (164, 173, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (164, 183, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (165, 133, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (165, 142, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (165, 148, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (165, 155, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (165, 159, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (165, 165, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (165, 175, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (165, 178, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (166, 130, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (166, 139, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (166, 146, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (166, 151, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (166, 159, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (166, 164, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (166, 173, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (166, 180, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (167, 132, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (167, 140, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (167, 146, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (167, 155, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (167, 156, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (167, 167, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (167, 171, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (168, 136, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (168, 138, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (168, 148, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (168, 150, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (168, 160, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (168, 166, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (168, 177, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (168, 180, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (169, 133, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (169, 142, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (169, 148, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (169, 155, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (169, 156, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (169, 169, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (169, 176, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (169, 183, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (170, 133, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (170, 139, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (170, 148, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (170, 155, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (170, 156, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (170, 164, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (170, 176, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (170, 181, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (171, 135, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (171, 140, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (171, 146, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (171, 155, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (171, 156, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (171, 167, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (171, 176, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (172, 133, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (172, 139, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (172, 146, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (172, 152, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (172, 156, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (172, 162, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (172, 177, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (172, 182, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (173, 136, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (173, 140, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (173, 147, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (173, 152, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (173, 160, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (173, 167, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (173, 173, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (173, 182, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (174, 134, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (174, 143, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (174, 146, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (174, 150, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (174, 160, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (174, 168, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (174, 170, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (175, 137, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (175, 140, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (175, 147, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (175, 153, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (175, 160, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (175, 169, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (175, 172, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (176, 137, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (176, 142, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (176, 147, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (176, 155, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (176, 159, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (176, 165, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (176, 173, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (176, 181, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (177, 134, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (177, 138, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (177, 144, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (177, 153, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (177, 159, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (177, 164, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (177, 172, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (177, 182, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (178, 131, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (178, 143, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (178, 144, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (178, 155, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (178, 159, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (178, 166, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (178, 173, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (178, 181, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (179, 131, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (179, 143, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (179, 148, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (179, 151, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (179, 156, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (179, 162, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (179, 172, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (179, 182, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (180, 136, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (180, 142, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (180, 144, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (180, 152, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (180, 156, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (180, 162, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (180, 170, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (180, 182, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (181, 132, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (181, 140, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (181, 144, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (181, 151, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (181, 156, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (181, 162, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (181, 177, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (181, 183, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (182, 132, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (182, 139, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (182, 146, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (182, 151, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (182, 159, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (182, 162, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (182, 176, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (183, 133, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (183, 139, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (183, 144, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (183, 151, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (183, 156, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (183, 169, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (183, 176, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (183, 183, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (184, 130, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (184, 140, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (184, 144, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (184, 155, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (184, 160, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (184, 169, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (184, 175, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (184, 182, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (185, 137, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (185, 142, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (185, 144, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (185, 150, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (185, 159, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (185, 169, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (185, 173, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (186, 130, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (186, 138, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (186, 144, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (186, 151, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (186, 159, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (186, 165, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (186, 170, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (187, 133, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (187, 142, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (187, 144, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (187, 150, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (187, 160, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (187, 166, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (187, 176, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (188, 135, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (188, 142, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (188, 147, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (188, 150, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (188, 160, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (188, 169, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (188, 177, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (189, 134, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (189, 143, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (189, 146, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (189, 150, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (189, 159, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (189, 166, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (189, 176, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (189, 182, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (190, 132, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (190, 138, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (190, 144, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (190, 150, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (190, 156, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (190, 167, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (190, 173, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (191, 132, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (191, 139, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (191, 148, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (191, 151, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (191, 159, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (191, 169, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (191, 170, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (192, 130, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (192, 143, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (192, 148, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (192, 153, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (192, 160, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (192, 162, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (192, 175, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (193, 130, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (193, 140, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (193, 147, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (193, 151, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (193, 156, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (193, 168, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (193, 177, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (193, 183, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (194, 131, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (194, 138, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (194, 146, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (194, 150, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (194, 160, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (194, 166, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (194, 170, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (194, 182, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (195, 133, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (195, 139, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (195, 147, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (195, 151, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (195, 159, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (195, 164, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (195, 176, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (196, 137, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (196, 139, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (196, 146, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (196, 153, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (196, 156, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (196, 164, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (196, 172, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (197, 137, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (197, 139, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (197, 146, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (197, 155, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (197, 156, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (197, 167, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (197, 176, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (198, 133, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (198, 138, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (198, 148, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (198, 152, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (198, 159, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (198, 167, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (198, 175, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (198, 178, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (199, 134, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (199, 140, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (199, 146, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (199, 153, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (199, 160, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (199, 168, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (199, 176, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (200, 134, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (200, 138, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (200, 147, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (200, 152, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (200, 159, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (200, 166, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (200, 174, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (201, 135, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (201, 139, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (201, 147, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (201, 152, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (201, 159, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (201, 165, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (201, 174, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (201, 181, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (202, 137, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (202, 143, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (202, 147, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (202, 155, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (202, 156, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (202, 165, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (202, 175, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (203, 137, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (203, 142, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (203, 146, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (203, 151, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (203, 159, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (203, 164, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (203, 170, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (204, 133, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (204, 139, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (204, 144, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (204, 152, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (204, 156, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (204, 164, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (204, 177, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (205, 131, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (205, 142, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (205, 147, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (205, 152, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (205, 156, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (205, 165, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (205, 177, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (206, 130, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (206, 143, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (206, 146, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (206, 152, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (206, 156, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (206, 164, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (206, 177, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (206, 179, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (207, 134, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (207, 138, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (207, 146, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (207, 151, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (207, 160, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (207, 166, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (207, 176, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (207, 180, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (208, 131, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (208, 143, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (208, 148, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (208, 153, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (208, 159, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (208, 168, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (208, 174, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (208, 183, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (209, 134, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (209, 139, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (209, 146, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (209, 151, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (209, 160, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (209, 167, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (209, 173, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (209, 180, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (210, 137, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (210, 138, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (210, 148, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (210, 153, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (210, 159, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (210, 164, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (210, 174, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (210, 178, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (211, 137, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (211, 138, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (211, 148, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (211, 151, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (211, 159, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (211, 168, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (211, 171, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (211, 183, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (212, 137, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (212, 138, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (212, 144, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (212, 150, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (212, 159, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (212, 164, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (212, 172, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (213, 135, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (213, 142, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (213, 147, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (213, 153, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (213, 160, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (213, 166, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (213, 176, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (213, 180, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (214, 131, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (214, 138, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (214, 147, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (214, 152, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (214, 160, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (214, 166, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (214, 170, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (214, 182, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (215, 137, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (215, 140, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (215, 148, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (215, 153, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (215, 160, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (215, 167, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (215, 176, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (216, 131, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (216, 143, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (216, 148, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (216, 152, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (216, 160, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (216, 166, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (216, 174, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (216, 181, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (217, 131, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (217, 143, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (217, 147, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (217, 150, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (217, 160, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (217, 165, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (217, 176, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (218, 133, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (218, 139, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (218, 144, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (218, 152, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (218, 160, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (218, 167, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (218, 175, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (218, 178, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (219, 131, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (219, 142, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (219, 146, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (219, 151, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (219, 162, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (219, 172, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (219, 179, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (220, 137, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (220, 138, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (220, 148, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (220, 151, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (220, 164, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (220, 173, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (220, 183, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (221, 131, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (221, 143, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (221, 147, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (221, 153, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (221, 165, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (221, 172, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (221, 181, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (222, 130, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (222, 138, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (222, 146, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (222, 150, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (222, 164, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (222, 175, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (222, 179, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (223, 133, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (223, 140, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (223, 147, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (223, 153, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (223, 167, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (223, 176, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (223, 183, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (224, 133, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (224, 139, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (224, 146, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (224, 152, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (224, 166, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (224, 170, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (224, 180, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (224, 191, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (225, 133, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (225, 140, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (225, 148, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (225, 152, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (225, 164, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (225, 176, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (225, 180, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (225, 187, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (226, 137, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (226, 139, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (226, 144, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (226, 153, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (226, 165, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (226, 177, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (226, 181, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (226, 184, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (227, 134, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (227, 139, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (227, 144, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (227, 155, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (227, 167, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (227, 172, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (227, 180, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (227, 190, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (228, 130, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (228, 143, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (228, 144, NULL, '2025-01-27 00:00:00');
INSERT INTO `student_course` VALUES (228, 155, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (228, 168, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (228, 171, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (228, 182, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (228, 185, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (229, 135, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (229, 140, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (229, 144, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (229, 155, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (229, 162, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (229, 176, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (229, 181, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (229, 188, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (230, 134, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (230, 142, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (230, 144, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (230, 151, NULL, '2025-01-07 00:00:00');
INSERT INTO `student_course` VALUES (230, 165, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (230, 173, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (230, 178, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (230, 187, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (231, 133, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (231, 138, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (231, 146, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (231, 155, NULL, '2025-01-28 00:00:00');
INSERT INTO `student_course` VALUES (231, 162, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (231, 170, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (231, 178, NULL, '2025-01-31 00:00:00');
INSERT INTO `student_course` VALUES (232, 134, NULL, '2025-01-09 00:00:00');
INSERT INTO `student_course` VALUES (232, 140, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (232, 148, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (232, 153, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (232, 165, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (232, 176, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (232, 179, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (233, 130, NULL, '2025-01-06 00:00:00');
INSERT INTO `student_course` VALUES (233, 140, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (233, 148, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (233, 150, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (233, 164, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (233, 170, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (233, 179, NULL, '2025-01-19 00:00:00');
INSERT INTO `student_course` VALUES (233, 189, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (234, 130, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (234, 142, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (234, 144, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (234, 155, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (234, 165, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (234, 172, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (234, 179, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (235, 131, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (235, 140, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (235, 144, NULL, '2025-01-25 00:00:00');
INSERT INTO `student_course` VALUES (235, 155, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (235, 166, NULL, '2025-01-12 00:00:00');
INSERT INTO `student_course` VALUES (235, 170, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (235, 181, NULL, '2025-01-18 00:00:00');
INSERT INTO `student_course` VALUES (236, 133, NULL, '2025-01-08 00:00:00');
INSERT INTO `student_course` VALUES (236, 139, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (236, 148, NULL, '2025-01-30 00:00:00');
INSERT INTO `student_course` VALUES (236, 153, NULL, '2025-01-17 00:00:00');
INSERT INTO `student_course` VALUES (236, 162, NULL, '2025-01-23 00:00:00');
INSERT INTO `student_course` VALUES (236, 177, NULL, '2025-01-11 00:00:00');
INSERT INTO `student_course` VALUES (236, 179, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (237, 133, NULL, '2025-01-24 00:00:00');
INSERT INTO `student_course` VALUES (237, 140, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (237, 148, NULL, '2025-01-14 00:00:00');
INSERT INTO `student_course` VALUES (237, 151, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (237, 166, NULL, '2025-01-10 00:00:00');
INSERT INTO `student_course` VALUES (237, 171, NULL, '2025-01-15 00:00:00');
INSERT INTO `student_course` VALUES (237, 182, NULL, '2025-01-16 00:00:00');
INSERT INTO `student_course` VALUES (238, 131, NULL, '2025-01-20 00:00:00');
INSERT INTO `student_course` VALUES (238, 140, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (238, 148, NULL, '2025-01-29 00:00:00');
INSERT INTO `student_course` VALUES (238, 152, NULL, '2025-01-26 00:00:00');
INSERT INTO `student_course` VALUES (238, 162, NULL, '2025-01-22 00:00:00');
INSERT INTO `student_course` VALUES (238, 177, NULL, '2025-01-13 00:00:00');
INSERT INTO `student_course` VALUES (238, 182, NULL, '2025-01-21 00:00:00');
INSERT INTO `student_course` VALUES (238, 191, NULL, '2025-01-18 00:00:00');

-- ----------------------------
-- Table structure for system_status
-- ----------------------------
DROP TABLE IF EXISTS `system_status`;
CREATE TABLE `system_status`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `selection_start_time` datetime NOT NULL,
  `selection_end_time` datetime NOT NULL,
  `scheduling_start_time` datetime NOT NULL,
  `scheduling_end_time` datetime NOT NULL,
  `selection_status` enum('Pending','Ongoing','Finished') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Pending',
  `scheduling_status` enum('Pending','Ongoing','Finished') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Pending',
  `last_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_status
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idcard` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sex` enum('M','F','U') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `profession` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `college` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '2222', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2222@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (2, '2223', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2223@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (3, '2224', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2224@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (4, '2225', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2225@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (5, '2226', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2226@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (6, '2227', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2227@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (7, '2228', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2228@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (8, '2229', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2229@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (9, '2230', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2230@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (10, '2231', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2231@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (11, '2232', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2232@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (12, '2233', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2233@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (13, '2234', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2234@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (14, '2235', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2235@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (15, '2236', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2236@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (16, '2237', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2237@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (17, '2238', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2238@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (18, '2239', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2239@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (19, '2240', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2240@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (20, '2241', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2241@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (21, '2242', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2242@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (22, '2243', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2243@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (23, '2244', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2244@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (24, '2245', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2245@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (25, '2246', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2246@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (26, '2247', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2247@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (27, '2248', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2248@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (28, '2249', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2249@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (29, '2250', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2250@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (30, '2251', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2251@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (31, '2252', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2252@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (32, '2253', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2253@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (33, '2254', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2254@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (34, '2255', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2255@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (35, '2256', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2256@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (36, '2257', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2257@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (37, '2258', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2258@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (38, '2259', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2259@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (39, '2260', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2260@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (40, '2261', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2261@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (41, '2262', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2262@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (42, '2263', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2263@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (43, '2264', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2264@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (44, '2265', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2265@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (45, '2266', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2266@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (46, '2267', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2267@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (47, '2268', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2268@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (48, '2269', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2269@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (49, '2270', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2270@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (50, '2271', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2271@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (51, '2272', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2272@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (52, '2273', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2273@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (53, '2274', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2274@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (54, '2275', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2275@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (55, '2276', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2276@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (56, '2277', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2277@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (57, '2278', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2278@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (58, '2279', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2279@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (59, '2280', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2280@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (60, '2281', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2281@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (61, '2282', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2282@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (62, '2283', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2283@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (63, '2284', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2284@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (64, '2285', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2285@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (65, '2286', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2286@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (66, '2287', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2287@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (67, '2288', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2288@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (68, '2289', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2289@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (69, '2290', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2290@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (70, '2291', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2291@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (71, '2292', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2292@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (72, '2293', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2293@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (73, '2294', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2294@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (74, '2295', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2295@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (75, '2296', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2296@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (76, '2297', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2297@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (77, '2298', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2298@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (78, '2299', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2299@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (79, '2300', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2300@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (80, '2301', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2301@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (81, '2302', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2302@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (82, '2303', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2303@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (83, '2304', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2304@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (84, '2305', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2305@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (85, '2306', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2306@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (86, '2307', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2307@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (87, '2308', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2308@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (88, '2309', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2309@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (89, '2310', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2310@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (90, '2311', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2311@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (91, '2312', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2312@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (92, '2313', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2313@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (93, '2314', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2314@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (94, '2315', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2315@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (95, '2316', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2316@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (96, '2317', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2317@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (97, '2318', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2318@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (98, '2319', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2319@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (99, '2320', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2320@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (100, '2321', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2321@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (101, '2322', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2322@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (102, '2323', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2323@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (103, '2324', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2324@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (104, '2325', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2325@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (105, '2326', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2326@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (106, '2327', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2327@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (107, '2328', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2328@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (108, '2329', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2329@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (109, '2330', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2330@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (110, '2331', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2331@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (111, '2332', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2332@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (112, '2333', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2333@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (113, '2334', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2334@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (114, '2335', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2335@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (115, '2336', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2336@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (116, '2337', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2337@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (117, '2338', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2338@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (118, '2339', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2339@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (119, '2340', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2340@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (120, '2341', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2341@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (121, '2342', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2342@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (122, '2343', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2343@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (123, '2344', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2344@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (124, '2345', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2345@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (125, '2346', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2346@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (126, '2347', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2347@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (127, '2348', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2348@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (128, '2349', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2349@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (129, '2350', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2350@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (130, '2351', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2351@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (131, '2352', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2352@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (132, '2353', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2353@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (133, '2354', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2354@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (134, '2355', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2355@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (135, '2356', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2356@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (136, '2357', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2357@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (137, '2358', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2358@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (138, '2359', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2359@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (139, '2360', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2360@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (140, '2361', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2361@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (141, '2362', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2362@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (142, '2363', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2363@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (143, '2364', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2364@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (144, '2365', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2365@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (145, '2366', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2366@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (146, '2367', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2367@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (147, '2368', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2368@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (148, '2369', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2369@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (149, '2370', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2370@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (150, '2371', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2371@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (151, '2372', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2372@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (152, '2373', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2373@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (153, '2374', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2374@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (154, '2375', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2375@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (155, '2376', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2376@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (156, '2377', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2377@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (157, '2378', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2378@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (158, '2379', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2379@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (159, '2380', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2380@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (160, '2381', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2381@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (161, '2382', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2382@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (162, '2383', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2383@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (163, '2384', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2384@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (164, '2385', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2385@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (165, '2386', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2386@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (166, '2387', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2387@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (167, '2388', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2388@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (168, '2389', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2389@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (169, '2390', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2390@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (170, '2391', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2391@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (171, '2392', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2392@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (172, '2393', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2393@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (173, '2394', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2394@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (174, '2395', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2395@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (175, '2396', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2396@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (176, '2397', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2397@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (177, '2398', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2398@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (178, '2399', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2399@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (179, '2400', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2400@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (180, '2401', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2401@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (181, '2402', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2402@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (182, '2403', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2403@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (183, '2404', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2404@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (184, '2405', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2405@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (185, '2406', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2406@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (186, '2407', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2407@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (187, '2408', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2408@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (188, '2409', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2409@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (189, '2410', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2410@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (190, '2411', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2411@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (191, '2412', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2412@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (192, '2413', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2413@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (193, '2414', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2414@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (194, '2415', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2415@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (195, '2416', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2416@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (196, '2417', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2417@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (197, '2418', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'M', NULL, NULL, NULL, '2418@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (198, '2419', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2419@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (199, '2420', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'F', NULL, NULL, NULL, '2420@whut.edu.cn', 1);
INSERT INTO `teacher` VALUES (200, '2421', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'U', NULL, NULL, NULL, '2421@whut.edu.cn', 1);

-- ----------------------------
-- Procedure structure for assign_classes_to_students
-- ----------------------------
DROP PROCEDURE IF EXISTS `assign_classes_to_students`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `assign_classes_to_students`()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE class_number INT;
    DECLARE major VARCHAR(100);
    DECLARE college VARCHAR(100);
    DECLARE class_name VARCHAR(50);
    
    -- 循环为每个学生分配班级
    WHILE i <= 200 DO
        -- 每25个学生为一个班级
        SET class_number = FLOOR((i - 1) / 25) + 1;

        -- 确定班级名称、专业和学院
        IF class_number <= 3 THEN
            SET class_name = CONCAT('计算机科学与技术', class_number, '班');
            SET major = '计算机科学与技术';
            SET college = '计算机与人工智能学院';
        ELSEIF class_number <= 6 THEN
            SET class_name = CONCAT('软件工程', class_number - 3, '班');
            SET major = '软件工程';
            SET college = '计算机与人工智能学院';
        ELSE
            SET class_name = CONCAT('土木工程', class_number - 6, '班');
            SET major = '土木工程';
            SET college = '土木工程与建筑学院';
        END IF;
        
        -- 更新student表中的classer、profession和college字段
        UPDATE student 
        SET classer = class_name, 
            profession = major, 
            college = college 
        WHERE id = i;
        
        SET i = i + 1; -- 增加学生编号
    END WHILE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for generate_classes_for_plans
-- ----------------------------
DROP PROCEDURE IF EXISTS `generate_classes_for_plans`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_classes_for_plans`()
BEGIN
    DECLARE class_plan_id INT;
    DECLARE teacher_id INT;
    DECLARE max_num INT;
    DECLARE num_classes INT;
    DECLARE i INT;
    DECLARE done INT DEFAULT 0;
    
    -- 定义游标
    DECLARE available_teachers CURSOR FOR 
        SELECT id FROM teacher WHERE id NOT IN (SELECT teacher_id FROM class);

    DECLARE class_plan_cursor CURSOR FOR 
        SELECT id FROM class_plan;

    -- 定义异常处理程序
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- 初始化游标
    OPEN available_teachers;
    OPEN class_plan_cursor;

    -- 循环遍历 class_plan
    FETCH class_plan_cursor INTO class_plan_id;

    WHILE NOT done DO
        -- 随机选择 6 - 8 个 class
        SET num_classes = FLOOR(6 + (RAND() * 3));  -- 随机选择6到8
        SET i = 0;
        
        -- 为每个 class_plan 插入 class
        WHILE i < num_classes DO
            -- 随机选择 max_num
            SET max_num = ELT(FLOOR(1 + (RAND() * 4)), 20, 40, 60, 80);
            
            -- 获取一个尚未分配的 teacher_id
            FETCH available_teachers INTO teacher_id;
            
            -- 插入 class 记录
            INSERT INTO class (num, max_num, class_plan_id, teacher_id)
            VALUES (0, max_num, class_plan_id, teacher_id);
            
            -- 增加计数
            SET i = i + 1;
        END WHILE;
        
        -- 继续遍历下一个 class_plan
        FETCH class_plan_cursor INTO class_plan_id;
    END WHILE;

    -- 关闭游标
    CLOSE class_plan_cursor;
    CLOSE available_teachers;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for generate_class_schedule
-- ----------------------------
DROP PROCEDURE IF EXISTS `generate_class_schedule`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_class_schedule`()
BEGIN
    DECLARE v_class_id INT; -- 当前class_id
    DECLARE v_classroom_id INT; -- 随机分配的教室ID
    DECLARE v_date DATE DEFAULT '2025-01-01'; -- 初始日期
    DECLARE v_start_time DATETIME; -- 开始时间
    DECLARE v_end_time DATETIME; -- 结束时间
    DECLARE v_time_slot INT DEFAULT 1; -- 时间段编号（1-5）
    DECLARE done INT DEFAULT 0; -- 游标结束标志

    -- 定义游标，获取class_id列表
    DECLARE class_cursor CURSOR FOR 
        SELECT id FROM class WHERE id BETWEEN 130 AND 294;

    -- 游标结束的异常处理
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- 打开游标
    OPEN class_cursor;

    read_loop: LOOP
        FETCH class_cursor INTO v_class_id;
        IF done THEN
            LEAVE read_loop; -- 如果游标结束，退出循环
        END IF;

        -- 设置当前class_id的时间段和教室
        CASE v_time_slot
            WHEN 1 THEN
                SET v_start_time = STR_TO_DATE(CONCAT(v_date, ' 08:00:00'), '%Y-%m-%d %H:%i:%s');
                SET v_end_time = STR_TO_DATE(CONCAT(v_date, ' 10:00:00'), '%Y-%m-%d %H:%i:%s');
            WHEN 2 THEN
                SET v_start_time = STR_TO_DATE(CONCAT(v_date, ' 10:00:00'), '%Y-%m-%d %H:%i:%s');
                SET v_end_time = STR_TO_DATE(CONCAT(v_date, ' 12:00:00'), '%Y-%m-%d %H:%i:%s');
            WHEN 3 THEN
                SET v_start_time = STR_TO_DATE(CONCAT(v_date, ' 14:00:00'), '%Y-%m-%d %H:%i:%s');
                SET v_end_time = STR_TO_DATE(CONCAT(v_date, ' 16:00:00'), '%Y-%m-%d %H:%i:%s');
            WHEN 4 THEN
                SET v_start_time = STR_TO_DATE(CONCAT(v_date, ' 16:00:00'), '%Y-%m-%d %H:%i:%s');
                SET v_end_time = STR_TO_DATE(CONCAT(v_date, ' 18:00:00'), '%Y-%m-%d %H:%i:%s');
            WHEN 5 THEN
                SET v_start_time = STR_TO_DATE(CONCAT(v_date, ' 19:00:00'), '%Y-%m-%d %H:%i:%s');
                SET v_end_time = STR_TO_DATE(CONCAT(v_date, ' 21:00:00'), '%Y-%m-%d %H:%i:%s');
        END CASE;

        -- 随机选择一个教室ID（1到10）
        SET v_classroom_id = FLOOR(1 + (RAND() * 10));

        -- 插入一条记录到class_schedule表
        INSERT INTO class_schedule (start_time, end_time, classroom_id, class_id)
        VALUES (v_start_time, v_end_time, v_classroom_id, v_class_id);

        -- 移动到下一个时间段
        SET v_time_slot = v_time_slot + 1;

        -- 如果超过5个时间段，重置时间段编号并移动到下一个日期
        IF v_time_slot > 5 THEN
            SET v_time_slot = 1; -- 重置时间段编号
            SET v_date = DATE_ADD(v_date, INTERVAL 1 DAY); -- 日期加1
        END IF;
    END LOOP;

    -- 关闭游标
    CLOSE class_cursor;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for generate_teachers
-- ----------------------------
DROP PROCEDURE IF EXISTS `generate_teachers`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_teachers`(IN total INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE name_suffix INT DEFAULT 2222;
    DECLARE sex ENUM('M', 'F', 'U');
    DECLARE email VARCHAR(100);
    DECLARE password VARCHAR(255) DEFAULT '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92';
    
    WHILE i < total DO
        -- 随机生成性别
        SET sex = ELT(FLOOR(1 + (RAND() * 3)), 'M', 'F', 'U');
        
        -- 随机生成邮箱
        SET email = CONCAT(name_suffix, '@whut.edu.cn');
        
        -- 插入教师数据
        INSERT INTO teacher (name, idcard, password, sex, introduction, profession, college, email, verify)
        VALUES (CONCAT(name_suffix), NULL, password, sex, NULL, NULL, NULL, email, 1);
        
        -- 更新姓名后缀
        SET name_suffix = name_suffix + 1;
        
        -- 增加循环计数
        SET i = i + 1;
    END WHILE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_students
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_students`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_students`()
BEGIN
    DECLARE i INT DEFAULT 1111;
    DECLARE sex ENUM('M', 'F', 'U');
    DECLARE age INT;
    DECLARE email VARCHAR(100);
    
    -- 循环插入200条学生数据
    WHILE i <= 1310 DO
        SET sex = ELT(1 + FLOOR(RAND() * 3), 'M', 'F', 'U'); -- 随机选择性别
        SET age = 19 + FLOOR(RAND() * 4); -- 随机选择年龄：19 到 22
        SET email = CONCAT(i, '@whut.edu.cn'); -- 设置邮箱
        
        INSERT INTO student (name, idcard, sex, password, age, classer, profession, college, email, verify)
        VALUES (CAST(i AS CHAR), NULL, sex, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', age, '', '', '', email, 1);
        
        SET i = i + 1; -- 增加姓名的编号
    END WHILE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_student_course
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_student_course`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_student_course`()
BEGIN
    DECLARE rand_student_id INT;         -- 当前学生ID
    DECLARE rand_class_plan_id INT;      -- 当前课程计划ID
    DECLARE rand_class_id INT;           -- 当前class_id
    DECLARE enrolled_date DATE;          -- 随机选课日期
    DECLARE max_courses INT;             -- 每个学生最大选课数量
    DECLARE selected_class_count INT;    -- 当前学生已选课程数
    DECLARE done_students BOOLEAN DEFAULT FALSE; -- 学生游标结束标志
    DECLARE done_class_plan BOOLEAN DEFAULT FALSE; -- 课程计划游标结束标志

    -- 游标：遍历所有学生
    DECLARE student_cursor CURSOR FOR 
        SELECT id FROM student WHERE id BETWEEN 39 AND 238;

    -- 游标：遍历所有课程计划
    DECLARE class_plan_cursor CURSOR FOR 
        SELECT DISTINCT class_plan_id FROM class WHERE class_plan_id IS NOT NULL;

    -- 异常处理：游标中没有更多数据时，设置结束标志
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done_students = TRUE;

    -- 临时表：记录每个学生已经选的课程计划
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_selected_plans (
        student_id INT,
        class_plan_id INT,
        PRIMARY KEY (student_id, class_plan_id)
    );

    -- 打开学生游标
    OPEN student_cursor;

    student_loop: LOOP
        FETCH student_cursor INTO rand_student_id;

        IF done_students THEN
            LEAVE student_loop;
        END IF;

        -- 随机设置每个学生选课数量为 7 或 8 门
        SET max_courses = 7 + FLOOR(RAND() * 2);
        SET selected_class_count = 0;

        -- 重置课程计划游标结束标志
        SET done_class_plan = FALSE;

        -- 打开课程计划游标
        OPEN class_plan_cursor;

        class_plan_loop: LOOP
            FETCH class_plan_cursor INTO rand_class_plan_id;

            IF done_class_plan OR selected_class_count >= max_courses THEN
                LEAVE class_plan_loop;
            END IF;

            -- 检查是否已经选择过该课程计划
            IF EXISTS (
                SELECT 1 
                FROM temp_selected_plans 
                WHERE student_id = rand_student_id 
                  AND class_plan_id = rand_class_plan_id
            ) THEN
                ITERATE class_plan_loop; -- 跳过该课程计划
            END IF;

            -- 随机选择一个class_id属于该课程计划，确保课程容量未满，且未被当前学生选过
            SET rand_class_id = (SELECT id 
                                 FROM class 
                                 WHERE class_plan_id = rand_class_plan_id 
                                   AND num < max_num 
                                   AND id NOT IN (
                                       SELECT class_id 
                                       FROM student_course 
                                       WHERE student_id = rand_student_id
                                   )
                                 ORDER BY RAND() 
                                 LIMIT 1);

            -- 如果没有可选课程，则跳过
            IF rand_class_id IS NULL THEN
                ITERATE class_plan_loop;
            END IF;

            -- 随机生成选课日期
            SET enrolled_date = DATE(CONCAT('2025-01-', LPAD(FLOOR(6 + RAND() * 26), 2, '0')));

            -- 插入选课记录到 student_course 表
            INSERT INTO student_course (student_id, class_id, enrolled_date, grade)
            VALUES (rand_student_id, rand_class_id, enrolled_date, NULL);

            -- 更新 class 表中的 num 字段
            UPDATE class 
            SET num = num + 1 
            WHERE id = rand_class_id;

            -- 插入操作记录到 enrollment_history 表
            INSERT INTO enrollment_history (student_id, class_id, action_type, action_date)
            VALUES (rand_student_id, rand_class_id, 'Enroll', NOW());

            -- 将选中的课程计划记录到临时表
            INSERT INTO temp_selected_plans (student_id, class_plan_id)
            VALUES (rand_student_id, rand_class_plan_id);

            -- 增加已选课程计数
            SET selected_class_count = selected_class_count + 1;
        END LOOP;

        -- 关闭课程计划游标
        CLOSE class_plan_cursor;
    END LOOP;

    -- 关闭学生游标
    CLOSE student_cursor;

    -- 删除临时表
    DROP TEMPORARY TABLE temp_selected_plans;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
