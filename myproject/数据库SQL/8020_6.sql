



SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo`  (
  `adminid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `adminname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户用户名',
  `adminpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户角色',
  `headimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `admincreatetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `islock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户状态',
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES (1, 'admin', '123456', '系统管理员', 'http://www.javalm.cn/file/head.jpg', '2022-02-28 09:54:44', '可用');
INSERT INTO `admininfo` VALUES (2, 'teacher', '123456', '教师', 'http://www.javalm.cn/file/head.jpg', '2022-02-28 09:54:44', '可用');
INSERT INTO `admininfo` VALUES (4, 'teacher2', '123456', '教师', 'https://www.javalm.cn/file/head.jpg', '2022-02-28 09:54:44', '禁用');

-- ----------------------------
-- Table structure for byyqinfo
-- ----------------------------
DROP TABLE IF EXISTS `byyqinfo`;
CREATE TABLE `byyqinfo`  (
  `yqid` int(11) NOT NULL AUTO_INCREMENT COMMENT '要求编号',
  `mname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `m1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标1',
  `m2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标2',
  `m3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标3',
  `mcontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标点',
  `mintro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '要求备注',
  PRIMARY KEY (`yqid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 169 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '毕业要求' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of byyqinfo
-- ----------------------------
INSERT INTO `byyqinfo` VALUES (1, '高等数学', '0.3', '0.0', '0.0', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (2, '高等数学', '0.3', '0.0', '0.1', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (3, '高等数学', '0.0', '0.3', '0.', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (4, '高等数学', '0.0', '0.0', '0.', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (5, '高等数学', '0.3', '0.0', '0.0', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (6, '高等数学', '0.1', '0.0', '0.1', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (7, '高等数学', '0.2', '0.0', '0.3', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (8, '高等数学', '0.0', '0.0', '0.3', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (9, '高等数学', '0.0', '0.0', '0.2', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (10, '高等数学', '0.0', '0.0', '0.2', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (11, '高等数学', '0.0', '0.1', '0.2', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (12, '高等数学', '0.3', '0.0', '0.0', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (13, '线性代数', '0.0', '0.0', '0.0', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (14, '线性代数', '0.0', '0.0', '0.0', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (15, '线性代数', '0.2', '0.0', '0.3', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (16, '线性代数', '0.2', '0.0', '0.3', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (17, '线性代数', '0.0', '0.0', '0.2', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (18, '线性代数', '0.0', '0.0', '0.0', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (19, '线性代数', '0.0', '0.3', '0.0', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (20, '线性代数', '0.0', '0.2', '0.0', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (21, '线性代数', '0.0', '0.2', '0.0', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (22, '线性代数', '0.0', '0.0', '0.3', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (23, '线性代数', '0.0', '0.0', '0.0', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (24, '线性代数', '0.0', '0.0', '0.1', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (25, '大学物理', '0.0', '0.0', '0.0', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (26, '大学物理', '0.0', '0.2', '0.2', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (27, '大学物理', '0.0', '0.0', '0.0', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (28, '大学物理', '0.0', '0.3', '0.0', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (29, '大学物理', '0.0', '0.2', '0.0', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (30, '大学物理', '0.0', '0.2', '0.0', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (31, '大学物理', '0.0', '0.0', '0.0', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (32, '大学物理', '0.4', '0.0', '0.0', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (33, '大学物理', '0.3', '0.0', '0.0', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (34, '大学物理', '0.2', '0.3', '0.0', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (35, '大学物理', '0.3', '0.0', '0.1', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (36, '大学物理', '0.0', '0.2', '0.0', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (37, '程序设计基础', '0.3', '0.3', '0.2', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (38, '程序设计基础', '0.0', '0.0', '0.0', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (39, '程序设计基础', '0.0', '0.0', '0.2', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (40, '程序设计基础', '0.0', '0.0', '0.2', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (41, '程序设计基础', '0.0', '0.0', '0.0', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (42, '程序设计基础', '0.0', '0.0', '0.0', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (43, '程序设计基础', '0.3', '0.0', '0.3', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (44, '程序设计基础', '0.0', '0.0', '0.2', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (45, '程序设计基础', '0.0', '0.0', '0.3', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (46, '程序设计基础', '0.0', '0.0', '0.0', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (47, '程序设计基础', '0.0', '0.4', '0.0', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (48, '程序设计基础', '0.0', '0.0', '0.0', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (49, '概率论与数理统计', '0.2', '0.0', '0.1', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (50, '概率论与数理统计', '0.0', '0.0', '0.0', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (51, '概率论与数理统计', '0.1', '0.0', '0.0', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (52, '概率论与数理统计', '0.0', '0.0', '0.2', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (53, '概率论与数理统计', '0.0', '0.3', '0.0', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (54, '概率论与数理统计', '0.0', '0.0', '0.2', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (55, '概率论与数理统计', '0.0', '0.0', '0.2', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (56, '概率论与数理统计', '0.0', '0.2', '0.0', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (57, '概率论与数理统计', '0.0', '0.0', '0.0', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (58, '概率论与数理统计', '0.0', '0.0', '0.0', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (59, '概率论与数理统计', '0.4', '0.0', '0.0', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (60, '概率论与数理统计', '0.0', '0.0', '0.0', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (61, '离散数学', '0.0', '0.2', '0.0', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (62, '离散数学', '0.0', '0.0', '0.2', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (63, '离散数学', '0.2', '0.0', '0.0', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (64, '离散数学', '0.0', '0.0', '0.0', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (65, '离散数学', '0.3', '0.0', '0.0', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (66, '离散数学', '0.2', '0.0', '0.3', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (67, '离散数学', '0.0', '0.0', '0.0', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (68, '离散数学', '0.0', '0.0', '0.0', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (69, '离散数学', '0.2', '0.0', '0.0', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (70, '离散数学', '0.3', '0.0', '0.2', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (71, '离散数学', '0.0', '0.0', '0.3', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (72, '离散数学', '0.0', '0.0', '0.3', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (73, '数字电子技术B', '0.0', '0.0', '0.0', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (74, '数字电子技术B', '0.3', '0.2', '0.0', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (75, '数字电子技术B', '0.0', '0.0', '0.0', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (76, '数字电子技术B', '0.3', '0.2', '0.0', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (77, '数字电子技术B', '0.0', '0.0', '0.4', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (78, '数字电子技术B', '0.3', '0.0', '0.0', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (79, '数字电子技术B', '0.0', '0.2', '0.0', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (80, '数字电子技术B', '0.0', '0.0', '0.0', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (81, '数字电子技术B', '0.0', '0.2', '0.0', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (82, '数字电子技术B', '0.0', '0.0', '0.0', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (83, '数字电子技术B', '0.0', '0.0', '0.0', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (84, '数字电子技术B', '0.0', '0.3', '0.0', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (85, '操作系统', '0.2', '0.0', '0.3', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (86, '操作系统', '0.0', '0.0', '0.0', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (87, '操作系统', '0.0', '0.2', '0.0', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (88, '操作系统', '0.0', '0.0', '0.0', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (89, '操作系统', '0.0', '0.0', '0.0', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (90, '操作系统', '0.0', '0.0', '0.0', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (91, '操作系统', '0.3', '0.0', '0.0', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (92, '操作系统', '0.1', '0.1', '0.2', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (93, '操作系统', '0.0', '0.0', '0.3', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (94, '操作系统', '0.0', '0.2', '0.0', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (95, '操作系统', '0.0', '0.0', '0.4', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (96, '操作系统', '0.0', '0.0', '0.0', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (97, '数据结构', '0.0', '0.0', '0.0', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (98, '数据结构', '0.0', '0.0', '0.3', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (99, '数据结构', '0.0', '0.0', '0.3', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (100, '数据结构', '0.0', '0.0', '0.2', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (101, '数据结构', '0.0', '0.2', '0.2', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (102, '数据结构', '0.0', '0.3', '0.2', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (103, '数据结构', '0.0', '0.0', '0.2', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (104, '数据结构', '0.0', '0.3', '0.0', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (105, '数据结构', '0.2', '0.0', '0.0', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (106, '数据结构', '0.0', '0.0', '0.0', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (107, '数据结构', '0.2', '0.3', '0.0', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (108, '数据结构', '0.2', '0.0', '0.2', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (109, '计算机组成原理', '0.0', '0.3', '0.0', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (110, '计算机组成原理', '0.0', '0.3', '0.0', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (111, '计算机组成原理', '0.0', '0.2', '0.0', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (112, '计算机组成原理', '0.3', '0.0', '0.0', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (113, '计算机组成原理', '0.0', '0.3', '0.0', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (114, '计算机组成原理', '0.0', '0.0', '0.0', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (115, '计算机组成原理', '0.0', '0.0', '0.0', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (116, '计算机组成原理', '0.0', '0.0', '0.0', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (117, '计算机组成原理', '0.3', '0.3', '0.2', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (118, '计算机组成原理', '0.0', '0.0', '0.4', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (119, '计算机组成原理', '0.0', '0.0', '0.0', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (120, '计算机组成原理', '0.0', '0.3', '0.0', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (121, '计算机网络', '0.0', '0.0', '0.2', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (122, '计算机网络', '0.0', '0.0', '0.0', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (123, '计算机网络', '0.2', '0.0', '0.0', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (124, '计算机网络', '0.0', '0.3', '0.0', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (125, '计算机网络', '0.0', '0.0', '0.0', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (126, '计算机网络', '0.0', '0.2', '0.0', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (127, '计算机网络', '0.2', '0.2', '0.0', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (128, '计算机网络', '0.3', '0.0', '0.0', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (129, '计算机网络', '0.0', '0.0', '0.0', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (130, '计算机网络', '0.0', '0.3', '0.0', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (131, '计算机网络', '0.0', '0.2', '0.0', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (132, '计算机网络', '0.0', '0.0', '0.0', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (133, '大学英语', '0.0', '0.0', '0.0', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (134, '大学英语', '0.0', '0.0', '0.2', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (135, '大学英语', '0.0', '0.3', '0.0', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (136, '大学英语', '0.2', '0.0', '0.1', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (137, '大学英语', '0.0', '0.0', '0.2', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (138, '大学英语', '0.0', '0.0', '0.0', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (139, '大学英语', '0.0', '0.0', '0.0', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (140, '大学英语', '0.0', '0.0', '0.0', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (141, '大学英语', '0.0', '0.0', '0.0', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (142, '大学英语', '0.4', '0.0', '0.1', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (143, '大学英语', '0.1', '0.0', '0.0', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (144, '大学英语', '0.2', '0.0', '0.2', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (145, '数据库原理', '0.0', '0.2', '0.2', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (146, '数据库原理', '0.0', '0.3', '0.0', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (147, '数据库原理', '0.0', '0.0', '0.0', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (148, '数据库原理', '0.0', '0.2', '0.0', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (149, '数据库原理', '0.2', '0.0', '0.0', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (150, '数据库原理', '0.0', '0.0', '0.2', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (151, '数据库原理', '0.0', '0.0', '0.0', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (152, '数据库原理', '0.2', '0.3', '0.3', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (153, '数据库原理', '0.0', '0.0', '0.0', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (154, '数据库原理', '0.0', '0.0', '0.0', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (155, '数据库原理', '0.0', '0.0', '0.2', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (156, '数据库原理', '0.0', '0.2', '0.0', '毕业要求12', '无');
INSERT INTO `byyqinfo` VALUES (157, '算法分析', '0.0', '0.0', '0.0', '毕业要求1', '无');
INSERT INTO `byyqinfo` VALUES (158, '算法分析', '0.4', '0.0', '0.0', '毕业要求2', '无');
INSERT INTO `byyqinfo` VALUES (159, '算法分析', '0.3', '0.0', '0.2', '毕业要求3', '无');
INSERT INTO `byyqinfo` VALUES (160, '算法分析', '0.0', '0.0', '0.0', '毕业要求4', '无');
INSERT INTO `byyqinfo` VALUES (161, '算法分析', '0.0', '0.2', '0.0', '毕业要求5', '无');
INSERT INTO `byyqinfo` VALUES (162, '算法分析', '0.4', '0.3', '0.0', '毕业要求6', '无');
INSERT INTO `byyqinfo` VALUES (163, '算法分析', '0.0', '0.3', '0.0', '毕业要求7', '无');
INSERT INTO `byyqinfo` VALUES (164, '算法分析', '0.0', '0.0', '0.0', '毕业要求8', '无');
INSERT INTO `byyqinfo` VALUES (165, '算法分析', '0.0', '0.3', '0.0', '毕业要求9', '无');
INSERT INTO `byyqinfo` VALUES (166, '算法分析', '0.1', '0.2', '0.0', '毕业要求10', '无');
INSERT INTO `byyqinfo` VALUES (167, '算法分析', '0.0', '0.0', '0.0', '毕业要求11', '无');
INSERT INTO `byyqinfo` VALUES (168, '算法分析', '0.3', '0.0', '0.2', '毕业要求12', '无');

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '轮播图' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES (1, '轮播图01', '/myproject/uploads/1654229871181_7.jpeg');
INSERT INTO `carousel` VALUES (2, '轮播图02', '/myproject/uploads/1654229876291_7.jpeg');

-- ----------------------------
-- Table structure for commentinfo
-- ----------------------------
DROP TABLE IF EXISTS `commentinfo`;
CREATE TABLE `commentinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论数据',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论用户',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `addtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论时间',
  `likenum` int(11) NULL DEFAULT NULL COMMENT '点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of commentinfo
-- ----------------------------
INSERT INTO `commentinfo` VALUES (1, '1', 'test', '非常优秀，666', 'http://www.javalm.cn/file/head.jpg', '2022-02-28 14:16:35', 3);
INSERT INTO `commentinfo` VALUES (2, '1', 'test', '非常优秀，很负责', 'http://www.javalm.cn/file/head.jpg', '2022-02-28 14:17:05', 9);
INSERT INTO `commentinfo` VALUES (3, '1', 'test', '非常优秀，讲的很好', 'http://www.javalm.cn/file/head.jpg', '2022-02-28 14:17:45', 6);

-- ----------------------------
-- Table structure for datainfo
-- ----------------------------
DROP TABLE IF EXISTS `datainfo`;
CREATE TABLE `datainfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程内容',
  `picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程图片',
  `nums` int(11) NULL DEFAULT NULL COMMENT '浏览量',
  `sorttype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程分类',
  `adduser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加用户',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程备注',
  `addtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加时间',
  `kcnr` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程内容',
  `kcyq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程要求',
  `mb1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程目标1',
  `mb2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程目标2',
  `mb3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程目标3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of datainfo
-- ----------------------------
INSERT INTO `datainfo` VALUES (1, '高等数学', '高等数学是指相对于初等数学和中等数学而言，数学的对象及方法较为繁杂的一部分，中学的代数、几何以及简单的集合论初步、逻辑初步称为中等数学，将其作为中小学阶段的初等数学与大学阶段的高等数学的过渡。\r\n通常认为，高等数学是由微积分学，较深入的代数学、几何学以及它们之间的交叉内容所形成的一门基础学科。主要内容包括：数列、极限、微积分、空间解析几何与线性代数、级数、常微分方程。工科、理科、财经类研究生考试的基础科目。\r\n      通常认为，高等数学是由17世纪后微积分学，较深入的代数学、几何学以及它们之间的交叉内容所形成的一门基础学科。相对于初等数学和中等数学而言，学的数学较难，属于大学教程，因此常称“高等数学”，在课本常称“微积分”，理工科的不同专业。文史科各类专业的学生，学的数学稍微浅一些，文史科的不同专业，深浅程度又各不相同。研究变量的是高等数学，可高等数学并不只研究变量。至于与“高等数学”相伴的课程通常有：线性代数（数学专业学高等代数），概率论与数理统计（有些数学专业分开学）。', '4234', 16, '专业必修', 'admin', '64', '2022-03-07 20:48:13', '', '', '嘻嘻嘻嘻嘻寻寻', '', '');
INSERT INTO `datainfo` VALUES (2, '线性代数', 'Java从入门到精通 第6版 软件开发视频大讲堂 java语言程序设计电脑编程序员计算机教程书 清华', '', 4, '专业必修', 'admin', '32', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (3, '大学物理', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '', 5, '专业必修', 'admin', '64', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (4, '程序设计基础', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '', 3, '专业必修', 'admin', '32', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (5, '概率论与数理统计', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '', 5, '专业必修', 'admin', '48', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (6, '离散数学', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '', 2, '专业必修', 'admin', '64', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (7, '数字电子技术B', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '', 1, '专业选修', 'admin', '64', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (8, '操作系统', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '', 1, '专业选修', 'admin', '64', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (9, '数据结构', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '234', 1, '公共选修', 'admin', '64', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (10, '计算机组成原理', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '2342', 1, '公共必修', 'admin', '64', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (11, '计算机网络', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '2342', 1, '公共必修', 'admin', '64', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (12, '大学英语', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '2342', 1, '公共必修', 'admin', '64', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (13, '数据库原理', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '2342', 1, '公共必修', 'admin', '64', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `datainfo` VALUES (14, '算法分析', '数据结构 严蔚敏 C语言版+数据结构题集 吴伟民 大学计算机考研教材教程 数据结构与算法', '2342', 1, '公共必修', 'admin', '64', '2022-03-07 20:48:13', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for kcmbinfo
-- ----------------------------
DROP TABLE IF EXISTS `kcmbinfo`;
CREATE TABLE `kcmbinfo`  (
  `wwid` int(11) NOT NULL AUTO_INCREMENT COMMENT '信息编号',
  `wkname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `mbname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标名称',
  `cq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出勤',
  `zy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业',
  `sj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上机',
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报告',
  `ks1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识1',
  `ks2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识2',
  `ks3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识3',
  `ks4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识4',
  `ks5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识5',
  `ks6` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识6',
  PRIMARY KEY (`wwid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程目标' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kcmbinfo
-- ----------------------------
INSERT INTO `kcmbinfo` VALUES (1, '高等数学', '目标1', '0.058', '0.139', '0.198', '0.058', '0.048', '0.122', '0.187', '0.13', '0.0', '0.06');
INSERT INTO `kcmbinfo` VALUES (2, '高等数学', '目标2', '0.023', '0.137', '0.169', '0.009', '0.004', '0.147', '0.082', '0.105', '0.054', '0.27');
INSERT INTO `kcmbinfo` VALUES (3, '高等数学', '目标3', '0.111', '0.094', '0.076', '0.096', '0.049', '0.118', '0.003', '0.076', '0.038', '0.339');
INSERT INTO `kcmbinfo` VALUES (4, '线性代数', '目标1', '0.184', '0.081', '0.163', '0.083', '0.044', '0.095', '0.102', '0.098', '0.15', '0.074');
INSERT INTO `kcmbinfo` VALUES (5, '线性代数', '目标2', '0.181', '0.187', '0.02', '0.047', '0.139', '0.157', '0.106', '0.098', '0.065', '0.079');
INSERT INTO `kcmbinfo` VALUES (6, '线性代数', '目标3', '0.078', '0.104', '0.133', '0.171', '0.002', '0.091', '0.086', '0.086', '0.092', '0.157');
INSERT INTO `kcmbinfo` VALUES (7, '大学物理', '目标1', '0.007', '0.0', '0.017', '0.149', '0.082', '0.19', '0.135', '0.146', '0.083', '0.191');
INSERT INTO `kcmbinfo` VALUES (8, '大学物理', '目标2', '0.085', '0.199', '0.019', '0.17', '0.007', '0.146', '0.125', '0.056', '0.158', '0.035');
INSERT INTO `kcmbinfo` VALUES (9, '大学物理', '目标3', '0.084', '0.157', '0.16', '0.191', '0.045', '0.06', '0.177', '0.106', '0.020', '0.153');
INSERT INTO `kcmbinfo` VALUES (10, '程序设计基础', '目标1', '0.03', '0.163', '0.011', '0.159', '0.027', '0.048', '0.009', '0.033', '0.198', '0.322');
INSERT INTO `kcmbinfo` VALUES (11, '程序设计基础', '目标2', '0.006', '0.057', '0.147', '0.097', '0.168', '0.034', '0.091', '0.178', '0.041', '0.181');
INSERT INTO `kcmbinfo` VALUES (12, '程序设计基础', '目标3', '0.042', '0.075', '0.132', '0.134', '0.168', '0.047', '0.005', '0.17', '0.095', '0.132');
INSERT INTO `kcmbinfo` VALUES (13, '概率论与数理统计', '目标1', '0.149', '0.077', '0.004', '0.017', '0.031', '0.003', '0.16', '0.041', '0.08', '0.438');
INSERT INTO `kcmbinfo` VALUES (14, '概率论与数理统计', '目标2', '0.147', '0.081', '0.074', '0.073', '0.125', '0.055', '0.032', '0.054', '0.068', '0.291');
INSERT INTO `kcmbinfo` VALUES (15, '概率论与数理统计', '目标3', '0.011', '0.18', '0.086', '0.039', '0.059', '0.012', '0.1', '0.046', '0.037', '0.43');
INSERT INTO `kcmbinfo` VALUES (16, '离散数学', '目标1', '0.146', '0.001', '0.088', '0.183', '0.138', '0.124', '0.156', '0.079', '0.085', '0.099');
INSERT INTO `kcmbinfo` VALUES (17, '离散数学', '目标2', '0.197', '0.019', '0.155', '0.18', '0.051', '0.047', '0.14', '0.053', '0.158', '0.139');
INSERT INTO `kcmbinfo` VALUES (18, '离散数学', '目标3', '0.05', '0.151', '0.071', '0.1', '0.146', '0.145', '0.035', '0.153', '0.1', '0.049');
INSERT INTO `kcmbinfo` VALUES (19, '数字电子技术B', '目标1', '0.167', '0.146', '0.096', '0.141', '0.131', '0.087', '0.053', '0.078', '0.101', '0.045');
INSERT INTO `kcmbinfo` VALUES (20, '数字电子技术B', '目标2', '0.005', '0.186', '0.114', '0.173', '0.066', '0.074', '0.052', '0.051', '0.049', '0.23');
INSERT INTO `kcmbinfo` VALUES (21, '数字电子技术B', '目标3', '0.136', '0.131', '0.054', '0.078', '0.124', '0.164', '0.13', '0.124', '0.059', '0.139');
INSERT INTO `kcmbinfo` VALUES (22, '操作系统', '目标1', '0.184', '0.064', '0.101', '0.137', '0.078', '0.02', '0.015', '0.084', '0.046', '0.271');
INSERT INTO `kcmbinfo` VALUES (23, '操作系统', '目标2', '0.01', '0.194', '0.198', '0.006', '0.092', '0.158', '0.121', '0.021', '0.005', '0.195');
INSERT INTO `kcmbinfo` VALUES (24, '操作系统', '目标3', '0.148', '0.08', '0.098', '0.102', '0.171', '0.163', '0.118', '0.04', '0.080', '0.068');
INSERT INTO `kcmbinfo` VALUES (25, '数据结构', '目标1', '0.101', '0.137', '0.142', '0.134', '0.143', '0.191', '0.09', '0.027', '0.035', '0.001');
INSERT INTO `kcmbinfo` VALUES (26, '数据结构', '目标2', '0.03', '0.009', '0.03', '0.134', '0.038', '0.03', '0.165', '0.036', '0.112', '0.416');
INSERT INTO `kcmbinfo` VALUES (27, '数据结构', '目标3', '0.172', '0.133', '0.129', '0.087', '0.074', '0.183', '0.05', '0.058', '0.073', '0.041');
INSERT INTO `kcmbinfo` VALUES (28, '计算机组成原理', '目标1', '0.108', '0.148', '0.055', '0.077', '0.163', '0.144', '0.148', '0.142', '0.006', '0.009');
INSERT INTO `kcmbinfo` VALUES (29, '计算机组成原理', '目标2', '0.15', '0.196', '0.034', '0.101', '0.02', '0.191', '0.158', '0.175', '0.075', '0.120');
INSERT INTO `kcmbinfo` VALUES (30, '计算机组成原理', '目标3', '0.101', '0.057', '0.117', '0.194', '0.06', '0.062', '0.087', '0.158', '0.06', '0.104');
INSERT INTO `kcmbinfo` VALUES (31, '计算机网络', '目标1', '0.003', '0.091', '0.176', '0.115', '0.072', '0.089', '0.078', '0.169', '0.157', '0.05');
INSERT INTO `kcmbinfo` VALUES (32, '计算机网络', '目标2', '0.005', '0.12', '0.023', '0.134', '0.157', '0.069', '0.139', '0.14', '0.182', '0.031');
INSERT INTO `kcmbinfo` VALUES (33, '计算机网络', '目标3', '0.12', '0.022', '0.0', '0.126', '0.07', '0.146', '0.123', '0.076', '0.052', '0.265');
INSERT INTO `kcmbinfo` VALUES (34, '大学英语', '目标1', '0.187', '0.071', '0.039', '0.088', '0.08', '0.195', '0.192', '0.048', '0.05', '0.05');
INSERT INTO `kcmbinfo` VALUES (35, '大学英语', '目标2', '0.098', '0.056', '0.119', '0.102', '0.002', '0.178', '0.013', '0.156', '0.089', '0.187');
INSERT INTO `kcmbinfo` VALUES (36, '大学英语', '目标3', '0.038', '0.061', '0.057', '0.041', '0.168', '0.023', '0.081', '0.175', '0.028', '0.328');
INSERT INTO `kcmbinfo` VALUES (37, '数据库原理', '目标1', '0.008', '0.097', '0.069', '0.015', '0.05', '0.133', '0.176', '0.146', '0.13', '0.176');
INSERT INTO `kcmbinfo` VALUES (38, '数据库原理', '目标2', '0.09', '0.127', '0.052', '0.191', '0.118', '0.03', '0.126', '0.167', '0.065', '0.034');
INSERT INTO `kcmbinfo` VALUES (39, '数据库原理', '目标3', '0.161', '0.04', '0.184', '0.107', '0.138', '0.139', '0.085', '0.013', '0.1', '0.033');
INSERT INTO `kcmbinfo` VALUES (40, '算法分析', '目标1', '0.021', '0.011', '0.069', '0.108', '0.076', '0.105', '0.097', '0.118', '0.139', '0.256');
INSERT INTO `kcmbinfo` VALUES (41, '算法分析', '目标2', '0.062', '0.132', '0.106', '0.124', '0.19', '0.188', '0.07', '0.043', '0.085', '-0.091');
INSERT INTO `kcmbinfo` VALUES (42, '算法分析', '目标3', '0.104', '0.182', '0.1', '0.125', '0.086', '0.18', '0.153', '0.041', '0.029', '0.117');

-- ----------------------------
-- Table structure for noticeinfo
-- ----------------------------
DROP TABLE IF EXISTS `noticeinfo`;
CREATE TABLE `noticeinfo`  (
  `noticeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '要求编号',
  `noticetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '要求标题',
  `noticecontent` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '要求内容',
  `noticeaddtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  `noticeremarker` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '要求备注',
  PRIMARY KEY (`noticeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '要求信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of noticeinfo
-- ----------------------------
INSERT INTO `noticeinfo` VALUES (1, '设计/开发毕业生要求', '能够运用计算机科学原理、技术和方法，针对计算机应用领域复杂工程问题设计解决方案，开发满足特定需求的计算机应用系统或模块，并能够在设计/开发环节中体现创新意识，考虑社会、健康、安全、法律、文化以及环境等因素。', '2022-02-28 09:54:44', '无');
INSERT INTO `noticeinfo` VALUES (2, '计算机科学与技术专业毕 业要求', '培养⼈⽂素养、⼯程素质及业务能⼒协调发展，具有社会责任感、公共道德与职业道德，以及较扎实的数理科学与计算机科学与技术基础理 论知识和专业技能，具有创新意识、较强的⼯程实践能⼒和⼀定的科学研究能⼒，具有国际化视野、并能跟踪计算机前沿领域发展，具有团 队合作精神、组织管理能⼒并具有终⾝学习能⼒的⾼素质应⽤型⼯程技术⼈才。本专业学⽣毕业5年左右，能够具备IT⼯程师的专业技能和 职业素养，胜任计算机软硬件应⽤及Linux嵌⼊式系统的分析设计、开发实现、系统测试、和数据分析及项⽬管理等⼯作，成为本单位的技 术研发或管理⾻⼲。', '2022-02-28 09:54:44', '');

-- ----------------------------
-- Table structure for scoreinfo
-- ----------------------------
DROP TABLE IF EXISTS `scoreinfo`;
CREATE TABLE `scoreinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `tid` int(11) NULL DEFAULT NULL COMMENT '课程编号',
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `score` int(11) NULL DEFAULT NULL COMMENT '总成绩',
  `pscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '平时成绩',
  `yscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验成绩',
  `qscore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期末成绩',
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `cq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出勤成绩',
  `zy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业成绩',
  `sj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上机成绩',
  `bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报告成绩',
  `ks1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识1',
  `ks2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识2',
  `ks3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识3',
  `ks4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识4',
  `ks5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识5',
  `ks6` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '知识6',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程成绩' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of scoreinfo
-- ----------------------------
INSERT INTO `scoreinfo` VALUES (1, 'test', 1, '高等数学', 79, '15.0', '13.0', '51.0', '2022-06-09 10:51:13', '5', '10', '3', '10', '4', '8', '9', '10', '10', '10');
INSERT INTO `scoreinfo` VALUES (2, 'test', 2, '线性代数', 91, '20.0', '20.0', '51.0', '2022-06-09 10:51:13', '10', '10', '10', '10', '9', '6', '10', '10', '7', '9');
INSERT INTO `scoreinfo` VALUES (3, 'test', 3, '大学物理', 74, '16.0', '20.0', '38.0', '2022-06-09 10:51:13', '10', '6', '10', '10', '10', '6', '3', '6', '4', '9');
INSERT INTO `scoreinfo` VALUES (4, 'test', 4, '程序设计基础', 80, '16.0', '16.0', '48.0', '2022-06-09 10:51:13', '10', '6', '6', '10', '10', '10', '5', '10', '5', '8');
INSERT INTO `scoreinfo` VALUES (5, 'test', 5, '概率论与数理统计', 69, '19.0', '16.0', '34.0', '2022-06-09 10:51:13', '9', '10', '9', '7', '4', '3', '5', '6', '10', '6');
INSERT INTO `scoreinfo` VALUES (6, 'test', 6, '离散数学', 70, '9.0', '15.0', '46.0', '2022-06-09 10:51:13', '3', '6', '5', '10', '5', '10', '6', '7', '8', '10');
INSERT INTO `scoreinfo` VALUES (7, 'test', 7, '数字电子技术B', 81, '14.0', '16.0', '51.0', '2022-06-09 10:51:13', '5', '9', '8', '8', '5', '7', '9', '10', '10', '10');
INSERT INTO `scoreinfo` VALUES (8, 'test', 8, '操作系统', 78, '14.0', '20.0', '44.0', '2022-06-09 10:51:13', '4', '10', '10', '10', '7', '10', '8', '6', '3', '10');
INSERT INTO `scoreinfo` VALUES (9, 'test', 9, '数据结构', 81, '16.0', '19.0', '46.0', '2022-06-09 10:51:13', '6', '10', '10', '9', '8', '8', '10', '3', '7', '10');
INSERT INTO `scoreinfo` VALUES (10, 'test', 10, '计算机组成原理', 70, '17.0', '16.0', '37.0', '2022-06-09 10:51:13', '10', '7', '10', '6', '10', '5', '7', '3', '9', '3');
INSERT INTO `scoreinfo` VALUES (11, 'test', 11, '计算机网络', 76, '11.0', '19.0', '46.0', '2022-06-09 10:51:13', '7', '4', '10', '9', '7', '3', '9', '10', '7', '10');
INSERT INTO `scoreinfo` VALUES (12, 'test', 12, '大学英语', 68, '16.0', '10.0', '42.0', '2022-06-09 10:51:13', '10', '6', '6', '4', '10', '3', '8', '10', '4', '7');
INSERT INTO `scoreinfo` VALUES (13, 'test', 13, '数据库原理', 69, '10.0', '13.0', '46.0', '2022-06-09 10:51:13', '6', '4', '10', '3', '3', '10', '4', '9', '10', '10');
INSERT INTO `scoreinfo` VALUES (14, 'test', 14, '算法分析', 83, '19.0', '16.0', '48.0', '2022-06-09 10:51:13', '10', '9', '8', '8', '10', '10', '10', '10', '4', '4');
INSERT INTO `scoreinfo` VALUES (15, '王琪', 1, '高等数学', 79, '14.0', '15.0', '50.0', '2022-06-09 10:51:13', '10', '4', '9', '6', '6', '10', '9', '10', '10', '5');
INSERT INTO `scoreinfo` VALUES (16, '王琪', 2, '线性代数', 61, '18.0', '10.0', '33.0', '2022-06-09 10:51:13', '8', '10', '5', '5', '3', '10', '4', '3', '8', '5');
INSERT INTO `scoreinfo` VALUES (17, '王琪', 3, '大学物理', 65, '9.0', '15.0', '41.0', '2022-06-09 10:51:13', '6', '3', '8', '7', '3', '3', '8', '10', '10', '7');
INSERT INTO `scoreinfo` VALUES (18, '王琪', 4, '程序设计基础', 61, '7.0', '15.0', '39.0', '2022-06-09 10:51:13', '4', '3', '5', '10', '4', '8', '9', '8', '5', '5');
INSERT INTO `scoreinfo` VALUES (19, '王琪', 5, '概率论与数理统计', 76, '17.0', '16.0', '43.0', '2022-06-09 10:51:13', '9', '8', '6', '10', '10', '7', '7', '10', '6', '3');
INSERT INTO `scoreinfo` VALUES (20, '王琪', 6, '离散数学', 70, '16.0', '13.0', '41.0', '2022-06-09 10:51:13', '6', '10', '3', '10', '3', '10', '9', '10', '5', '4');
INSERT INTO `scoreinfo` VALUES (21, '王琪', 7, '数字电子技术B', 76, '13.0', '17.0', '46.0', '2022-06-09 10:51:13', '3', '10', '7', '10', '8', '8', '6', '8', '6', '10');
INSERT INTO `scoreinfo` VALUES (22, '王琪', 8, '操作系统', 74, '16.0', '17.0', '41.0', '2022-06-09 10:51:13', '9', '7', '7', '10', '4', '5', '10', '8', '10', '4');
INSERT INTO `scoreinfo` VALUES (23, '王琪', 9, '数据结构', 76, '14.0', '20.0', '42.0', '2022-06-09 10:51:13', '10', '4', '10', '10', '7', '4', '4', '8', '10', '9');
INSERT INTO `scoreinfo` VALUES (24, '王琪', 10, '计算机组成原理', 75, '13.0', '14.0', '48.0', '2022-06-09 10:51:13', '5', '8', '5', '9', '10', '10', '9', '7', '5', '7');
INSERT INTO `scoreinfo` VALUES (25, '王琪', 11, '计算机网络', 72, '12.0', '13.0', '47.0', '2022-06-09 10:51:13', '8', '4', '4', '9', '10', '3', '10', '4', '10', '10');
INSERT INTO `scoreinfo` VALUES (26, '王琪', 12, '大学英语', 61, '13.0', '13.0', '35.0', '2022-06-09 10:51:13', '10', '3', '10', '3', '3', '7', '3', '10', '5', '7');
INSERT INTO `scoreinfo` VALUES (27, '王琪', 13, '数据库原理', 75, '15.0', '16.0', '44.0', '2022-06-09 10:51:13', '5', '10', '10', '6', '8', '4', '10', '8', '10', '4');
INSERT INTO `scoreinfo` VALUES (28, '王琪', 14, '算法分析', 85, '19.0', '20.0', '46.0', '2022-06-09 10:51:13', '9', '10', '10', '10', '10', '10', '3', '10', '6', '7');
INSERT INTO `scoreinfo` VALUES (29, '张飞', 1, '高等数学', 71, '10.0', '11.0', '50.0', '2022-06-09 10:51:13', '4', '6', '6', '5', '4', '8', '8', '10', '10', '10');
INSERT INTO `scoreinfo` VALUES (30, '张飞', 2, '线性代数', 79, '20.0', '17.0', '42.0', '2022-06-09 10:51:13', '10', '10', '7', '10', '3', '8', '8', '10', '4', '9');
INSERT INTO `scoreinfo` VALUES (31, '张飞', 3, '大学物理', 77, '15.0', '14.0', '48.0', '2022-06-09 10:51:13', '9', '6', '4', '10', '6', '5', '7', '10', '10', '10');
INSERT INTO `scoreinfo` VALUES (32, '张飞', 4, '程序设计基础', 71, '14.0', '13.0', '44.0', '2022-06-09 10:51:13', '4', '10', '3', '10', '4', '10', '7', '10', '9', '4');
INSERT INTO `scoreinfo` VALUES (33, '张飞', 5, '概率论与数理统计', 81, '20.0', '15.0', '46.0', '2022-06-09 10:51:13', '10', '10', '10', '5', '10', '10', '5', '9', '8', '4');
INSERT INTO `scoreinfo` VALUES (34, '张飞', 6, '离散数学', 84, '16.0', '20.0', '48.0', '2022-06-09 10:51:13', '10', '6', '10', '10', '10', '10', '7', '9', '3', '9');
INSERT INTO `scoreinfo` VALUES (35, '张飞', 7, '数字电子技术B', 73, '7.0', '16.0', '50.0', '2022-06-09 10:51:13', '4', '3', '8', '8', '5', '7', '10', '9', '10', '9');
INSERT INTO `scoreinfo` VALUES (36, '张飞', 8, '操作系统', 76, '11.0', '11.0', '54.0', '2022-06-09 10:51:13', '3', '8', '7', '4', '9', '10', '9', '10', '6', '10');
INSERT INTO `scoreinfo` VALUES (37, '张飞', 9, '数据结构', 67, '11.0', '13.0', '43.0', '2022-06-09 10:51:13', '7', '4', '7', '6', '5', '6', '10', '7', '7', '8');
INSERT INTO `scoreinfo` VALUES (38, '张飞', 10, '计算机组成原理', 61, '14.0', '11.0', '36.0', '2022-06-09 10:51:13', '4', '10', '4', '7', '7', '7', '8', '3', '6', '5');
INSERT INTO `scoreinfo` VALUES (39, '张飞', 11, '计算机网络', 78, '17.0', '9.0', '52.0', '2022-06-09 10:51:13', '10', '7', '6', '3', '8', '10', '6', '9', '9', '10');
INSERT INTO `scoreinfo` VALUES (40, '张飞', 12, '大学英语', 66, '14.0', '20.0', '32.0', '2022-06-09 10:51:13', '6', '8', '10', '10', '5', '8', '5', '7', '4', '3');
INSERT INTO `scoreinfo` VALUES (41, '张飞', 13, '数据库原理', 72, '12.0', '18.0', '42.0', '2022-06-09 10:51:13', '4', '8', '10', '8', '10', '8', '8', '5', '4', '7');
INSERT INTO `scoreinfo` VALUES (42, '张飞', 14, '算法分析', 64, '10.0', '14.0', '40.0', '2022-06-09 10:51:13', '5', '5', '10', '4', '4', '10', '7', '3', '10', '6');
INSERT INTO `scoreinfo` VALUES (43, '小明', 1, '高等数学', 80, '9.0', '15.0', '56.0', '2022-06-09 10:51:13', '3', '6', '10', '5', '10', '10', '10', '10', '10', '6');
INSERT INTO `scoreinfo` VALUES (44, '小明', 2, '线性代数', 75, '19.0', '14.0', '42.0', '2022-06-09 10:51:13', '9', '10', '4', '10', '6', '10', '10', '10', '3', '3');
INSERT INTO `scoreinfo` VALUES (45, '小明', 3, '大学物理', 67, '9.0', '13.0', '45.0', '2022-06-09 10:51:13', '6', '3', '3', '10', '10', '3', '9', '4', '9', '10');
INSERT INTO `scoreinfo` VALUES (46, '小明', 4, '程序设计基础', 79, '15.0', '16.0', '48.0', '2022-06-09 10:51:13', '5', '10', '10', '6', '3', '10', '10', '6', '10', '9');
INSERT INTO `scoreinfo` VALUES (47, '小明', 5, '概率论与数理统计', 71, '15.0', '18.0', '38.0', '2022-06-09 10:51:13', '5', '10', '10', '8', '8', '6', '4', '10', '4', '6');
INSERT INTO `scoreinfo` VALUES (48, '小明', 6, '离散数学', 65, '15.0', '12.0', '38.0', '2022-06-09 10:51:13', '5', '10', '6', '6', '3', '10', '10', '5', '3', '7');
INSERT INTO `scoreinfo` VALUES (49, '小明', 7, '数字电子技术B', 86, '16.0', '20.0', '50.0', '2022-06-09 10:51:13', '10', '6', '10', '10', '7', '5', '10', '9', '9', '10');
INSERT INTO `scoreinfo` VALUES (50, '小明', 8, '操作系统', 64, '20.0', '9.0', '35.0', '2022-06-09 10:51:13', '10', '10', '4', '5', '4', '4', '6', '10', '7', '4');
INSERT INTO `scoreinfo` VALUES (51, '小明', 9, '数据结构', 71, '10.0', '20.0', '41.0', '2022-06-09 10:51:13', '6', '4', '10', '10', '10', '4', '10', '3', '4', '10');
INSERT INTO `scoreinfo` VALUES (52, '小明', 10, '计算机组成原理', 69, '8.0', '16.0', '45.0', '2022-06-09 10:51:13', '5', '3', '7', '9', '10', '5', '7', '10', '4', '9');
INSERT INTO `scoreinfo` VALUES (53, '小明', 11, '计算机网络', 81, '19.0', '15.0', '47.0', '2022-06-09 10:51:13', '10', '9', '5', '10', '10', '6', '10', '5', '10', '6');
INSERT INTO `scoreinfo` VALUES (54, '小明', 12, '大学英语', 65, '10.0', '14.0', '41.0', '2022-06-09 10:51:13', '4', '6', '10', '4', '5', '6', '4', '7', '10', '9');
INSERT INTO `scoreinfo` VALUES (55, '小明', 13, '数据库原理', 69, '7.0', '20.0', '42.0', '2022-06-09 10:51:13', '3', '4', '10', '10', '7', '3', '5', '8', '10', '9');
INSERT INTO `scoreinfo` VALUES (56, '小明', 14, '算法分析', 68, '16.0', '13.0', '39.0', '2022-06-09 10:51:13', '9', '7', '10', '3', '3', '4', '7', '10', '9', '6');

-- ----------------------------
-- Table structure for sorttype
-- ----------------------------
DROP TABLE IF EXISTS `sorttype`;
CREATE TABLE `sorttype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `sortname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `sortcontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sorttype
-- ----------------------------
INSERT INTO `sorttype` VALUES (1, '专业选修', '无');
INSERT INTO `sorttype` VALUES (2, '专业必修', '无');
INSERT INTO `sorttype` VALUES (3, '公共选修', '无');
INSERT INTO `sorttype` VALUES (4, '公共必修', '无');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'test', '18314463515', 'http://www.javalm.cn/file/head.jpg', 'test555@qq.com', '爱好编程\n234234\n234234\n23\n4324', '男', '123456', '2022123451');
INSERT INTO `userinfo` VALUES (2, '王琪', '18314463788', 'http://www.javalm.cn/file/head.jpg', 'zhagnsan@qq.com', '学生', '女', '123456', '2022123452');
INSERT INTO `userinfo` VALUES (3, '张飞', '18314469999', 'http://www.javalm.cn/file/head.jpg', '123456@qq.com', '学生', '男', '123456', '2022123453');
INSERT INTO `userinfo` VALUES (4, '小明', '18314463886', 'http://www.javalm.cn/file/head.jpg', 'xiaoming@qq.com', '学生', '男', '123456', '2022123454');

SET FOREIGN_KEY_CHECKS = 1;
