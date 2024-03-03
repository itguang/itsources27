/*
============================================================================  ============================================================================  ============================================================================

关注微信公众号 【ITSource每日分享】,免费获取一万个IT资源：项目源码，软件工具，面试面经，学习视频 应有尽有！！！

点击链接扫码关注微信公众号:  https://mmbiz.qpic.cn/sz_mmbiz_jpg/JfvqwvA8e1vfT6fJAGV0hibeQY1Sia4iaCZ6iaicDl1joUxPsicXoiaeyWuAl8Vhmfiah9j0bjNYVuske8G3ZGopia92RyQ/640
  =============================================================================
============================================================================  ============================================================================  */
/*
 Navicat Premium Data Transfer

 Source Server         : Mysql8-Docker
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:13306
 Source Schema         : itsource_27

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 03/03/2024 15:43:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
                            `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                            `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `userid` bigint NOT NULL COMMENT '用户id',
                            `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
                            `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
                            `phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
                            `isdefault` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709380013387 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2021-04-04 23:32:56', 1, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2021-04-04 23:32:56', 2, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2021-04-04 23:32:56', 3, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2021-04-04 23:32:56', 4, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2021-04-04 23:32:56', 5, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2021-04-04 23:32:56', 6, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (1709380013386, '2024-03-02 19:46:53', 1709361211646, '上海闵行', 'itsource', '17638176637', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
                         `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                         `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                         `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'shangpinxinxi' COMMENT '商品表名',
                         `userid` bigint NOT NULL COMMENT '用户id',
                         `goodid` bigint NOT NULL COMMENT '商品id',
                         `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
                         `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
                         `buynumber` int NOT NULL COMMENT '购买数量',
                         `price` float NULL DEFAULT NULL COMMENT '单价',
                         `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709385915967 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1709361399659, '2024-03-02 14:36:38', 'shangpinxinxi', 1709361351840, 36, '商品名称6', 'http://localhost:8080/springbootyf10w/upload/shangpinxinxi_tupian6.jpg', 1, 99.9, 0);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
                           `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                           `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
                           `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/springbootyf10w/upload/1709370563283.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/springbootyf10w/upload/1709370586642.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/springbootyf10w/upload/1709370689313.jpg');
INSERT INTO `config` VALUES (6, 'homepage', 'http://localhost:8080/springbootyf10w/upload/1709370646721.jpg');
INSERT INTO `config` VALUES (7, '美女', 'http://localhost:8080/springbootyf10w/upload/1709370723294.jpg');

-- ----------------------------
-- Table structure for dingdanxinxi
-- ----------------------------
DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE `dingdanxinxi`  (
                                 `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                 `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `dingdanhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单号',
                                 `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
                                 `shangpinleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类型',
                                 `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
                                 `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家账号',
                                 `shangjiamingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家名称',
                                 `yuezujiage` int NULL DEFAULT NULL COMMENT '月租价格',
                                 `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
                                 `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
                                 `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
                                 `dizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
                                 `zulinyuezhang` int NULL DEFAULT NULL COMMENT '租赁月长',
                                 `jine` float NULL DEFAULT NULL COMMENT '金额',
                                 `dingdanzhuangtai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单状态',
                                 `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '否' COMMENT '是否审核',
                                 `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
                                 `ispay` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
                                 PRIMARY KEY (`id`) USING BTREE,
                                 UNIQUE INDEX `dingdanhao`(`dingdanhao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709386066087 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dingdanxinxi
-- ----------------------------
INSERT INTO `dingdanxinxi` VALUES (1709384824785, '2024-03-02 21:07:04', '202432217423489550', '【驾校理论课考试系统】SpringBoot+Vue', '程序源码', 'http://localhost:8080/springbootyf10w/upload/1709370121667.png,http://localhost:8080/springbootyf10w/upload/1709370281576.png,http://localhost:8080/springbootyf10w/upload/1709370287650.png', 'itsourceShop', '阳光小卖部', 99, 'itsourceShop', '阳光小卖部', '17638176637', '上海闵行', NULL, 88, '已完成', '否', NULL, '未支付');
INSERT INTO `dingdanxinxi` VALUES (1709385782968, '2024-03-02 21:23:02', '2024322123261212810', '小向日葵仿真花迷你摆设花束盆栽客厅餐桌装饰假花摆件摆放桌面', '拍照摄影', 'http://localhost:8080/springbootyf10w/upload/1709368754151.png', 'itsourceShop', '蔷薇之光绿植', 2, 'itsourceShop', '蔷薇之光绿植', '17638176637', '上海闵行', NULL, 78, '已发货', '否', NULL, '未支付');
INSERT INTO `dingdanxinxi` VALUES (1709385974885, '2024-03-02 21:26:14', '20243221261446227372', '【驾校理论课考试系统】SpringBoot+Vue', '程序源码', 'http://localhost:8080/springbootyf10w/upload/1709370121667.png,http://localhost:8080/springbootyf10w/upload/1709370281576.png,http://localhost:8080/springbootyf10w/upload/1709370287650.png', 'itsourceShop', '阳光小卖部', 99, 'itsourceShop', '阳光小卖部', '17638176637', '上海闵行', NULL, 88, '已支付', '否', NULL, '未支付');
INSERT INTO `dingdanxinxi` VALUES (1709385975491, '2024-03-02 21:26:14', '20243221261446057295', 'Apple/苹果 iPhone 15 新品5G手机全新原装正品全网通国行', '数码电子', 'http://localhost:8080/springbootyf10w/upload/1709368569273.png,http://localhost:8080/springbootyf10w/upload/1709368575010.png', 'itsourceShop', '阳光小卖部', 3, 'itsourceShop', '阳光小卖部', '17638176637', '上海闵行', NULL, 99.9, '未支付', '否', NULL, '未支付');
INSERT INTO `dingdanxinxi` VALUES (1709386065827, '2024-03-02 21:27:45', '20243221274568700467', '【驾校理论课考试系统】SpringBoot+Vue', '程序源码', 'http://localhost:8080/springbootyf10w/upload/1709370121667.png,http://localhost:8080/springbootyf10w/upload/1709370281576.png,http://localhost:8080/springbootyf10w/upload/1709370287650.png', 'itsourceShop', '阳光小卖部', 99, 'itsourceShop', '阳光小卖部', '17638176637', '上海闵行', NULL, 88, '已支付', '否', NULL, '未支付');
INSERT INTO `dingdanxinxi` VALUES (1709386066086, '2024-03-02 21:27:45', '20243221274568588131', 'Apple/苹果 iPhone 15 新品5G手机全新原装正品全网通国行', '数码电子', 'http://localhost:8080/springbootyf10w/upload/1709368569273.png,http://localhost:8080/springbootyf10w/upload/1709368575010.png', 'itsourceShop', '阳光小卖部', 3, 'itsourceShop', '阳光小卖部', '17638176637', '上海闵行', NULL, 99.9, '已支付', '否', NULL, '未支付');

-- ----------------------------
-- Table structure for discussshangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE `discussshangpinxinxi`  (
                                         `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                         `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                         `refid` bigint NOT NULL COMMENT '关联表id',
                                         `userid` bigint NOT NULL COMMENT '用户id',
                                         `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
                                         `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
                                         `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
                                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709385730400 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussshangpinxinxi
-- ----------------------------
INSERT INTO `discussshangpinxinxi` VALUES (141, '2021-04-04 23:32:56', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussshangpinxinxi` VALUES (142, '2021-04-04 23:32:56', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussshangpinxinxi` VALUES (143, '2021-04-04 23:32:56', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussshangpinxinxi` VALUES (144, '2021-04-04 23:32:56', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussshangpinxinxi` VALUES (145, '2021-04-04 23:32:56', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussshangpinxinxi` VALUES (146, '2021-04-04 23:32:56', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discussshangpinxinxi` VALUES (1709385730399, '2024-03-02 21:22:10', 32, 1709361211646, 'itsource', '好好看哦', NULL);

-- ----------------------------
-- Table structure for fahuodingdan
-- ----------------------------
DROP TABLE IF EXISTS `fahuodingdan`;
CREATE TABLE `fahuodingdan`  (
                                 `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                 `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `dingdanhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单号',
                                 `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
                                 `shangpinleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类型',
                                 `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
                                 `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家账号',
                                 `shangjiamingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家名称',
                                 `yuezujiage` int NULL DEFAULT NULL COMMENT '月租价格',
                                 `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
                                 `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
                                 `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
                                 `dizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
                                 `zulinyuezhang` int NULL DEFAULT NULL COMMENT '租赁月长',
                                 `jine` int NULL DEFAULT NULL COMMENT '金额',
                                 `dingdanzhuangtai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单状态',
                                 `reversetime` datetime NULL DEFAULT NULL COMMENT '倒计结束时间',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709382831272 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '发货订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fahuodingdan
-- ----------------------------
INSERT INTO `fahuodingdan` VALUES (1709382831271, '2024-03-02 20:33:50', '2024322029498980729', 'Apple/苹果 iPhone 15 新品5G手机全新原装正品全网通国行', '数码电子', 'http://localhost:8080/springbootyf10w/upload/1709368569273.png,http://localhost:8080/springbootyf10w/upload/1709368575010.png', 'itsourceShop', '阳光小卖部', 3, 'itsourceShop', '阳光小卖部', '17638176637', '上海闵行', NULL, 0, '发货中', NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
                           `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                           `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                           `orderid` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
                           `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'shangpinxinxi' COMMENT '商品表名',
                           `userid` bigint NOT NULL COMMENT '用户id',
                           `goodid` bigint NOT NULL COMMENT '商品id',
                           `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
                           `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品图片',
                           `buynumber` int NOT NULL COMMENT '购买数量',
                           `price` float NOT NULL DEFAULT 0 COMMENT '价格/积分',
                           `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
                           `total` float NOT NULL DEFAULT 0 COMMENT '总价格/总积分',
                           `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
                           `type` int NULL DEFAULT 1 COMMENT '支付类型',
                           `status` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
                           `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
                           `tel` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电话',
                           `consignee` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人',
                           `shangjiazhanghao` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家账号',
                           PRIMARY KEY (`id`) USING BTREE,
                           UNIQUE INDEX `orderid`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709386066087 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1709384824785, '2024-03-02 21:07:04', '202432217423489550', 'shangpinxinxi', 1709361211646, 1709370203889, '【驾校理论课考试系统】SpringBoot+Vue', 'http://localhost:8080/springbootyf10w/upload/1709370121667.png', 1, 88, 88, 88, 88, 1, '已完成', '上海闵行', '17638176637', 'itsource', 'itsourceShop');
INSERT INTO `orders` VALUES (1709385782968, '2024-03-02 21:23:02', '2024322123261212810', 'shangpinxinxi', 1709361211646, 32, '小向日葵仿真花迷你摆设花束盆栽客厅餐桌装饰假花摆件摆放桌面', 'http://localhost:8080/springbootyf10w/upload/1709368754151.png', 1, 78, 78, 78, 78, 1, '已发货', '上海闵行', '17638176637', 'itsource', 'itsourceShop');
INSERT INTO `orders` VALUES (1709385974885, '2024-03-02 21:26:14', '20243221261446227372', 'shangpinxinxi', 1709361211646, 1709370203889, '【驾校理论课考试系统】SpringBoot+Vue', 'http://localhost:8080/springbootyf10w/upload/1709370121667.png', 1, 88, 88, 187.9, 88, 1, '已支付', '上海闵行', '17638176637', 'itsource', 'itsourceShop');
INSERT INTO `orders` VALUES (1709385975491, '2024-03-02 21:26:14', '20243221261446057295', 'shangpinxinxi', 1709361211646, 33, 'Apple/苹果 iPhone 15 新品5G手机全新原装正品全网通国行', 'http://localhost:8080/springbootyf10w/upload/1709368569273.png', 1, 99.9, 99.9, 187.9, 99.9, 1, '未支付', '上海闵行', '17638176637', 'itsource', 'itsourceShop');
INSERT INTO `orders` VALUES (1709386065827, '2024-03-02 21:27:45', '20243221274568700467', 'shangpinxinxi', 1709361211646, 1709370203889, '【驾校理论课考试系统】SpringBoot+Vue', 'http://localhost:8080/springbootyf10w/upload/1709370121667.png', 1, 88, 88, 187.9, 88, 1, '已支付', '上海闵行', '17638176637', 'itsource', 'itsourceShop');
INSERT INTO `orders` VALUES (1709386066086, '2024-03-02 21:27:45', '20243221274568588131', 'shangpinxinxi', 1709361211646, 33, 'Apple/苹果 iPhone 15 新品5G手机全新原装正品全网通国行', 'http://localhost:8080/springbootyf10w/upload/1709368569273.png', 1, 99.9, 99.9, 187.9, 99.9, 1, '已支付', '上海闵行', '17638176637', 'itsource', 'itsourceShop');

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia`  (
                             `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                             `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                             `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商家账号',
                             `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
                             `shangjiamingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商家名称',
                             `jingyingfanwei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '经营范围',
                             `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
                             `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '联系电话',
                             `shangjiajieshao` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商家介绍',
                             `money` float NULL DEFAULT 0 COMMENT '余额',
                             PRIMARY KEY (`id`) USING BTREE,
                             UNIQUE INDEX `shangjiazhanghao`(`shangjiazhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709384938003 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商家' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES (1709384938002, '2024-03-02 21:08:58', 'itsourceShop', 'itsource', '阳光小店', '啥都卖', NULL, '17638166237', NULL, 0);

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
                                   `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                   `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                   `shangpinfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品分类',
                                   PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709370077397 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (41, '2021-04-04 23:32:56', '数码电子');
INSERT INTO `shangpinfenlei` VALUES (42, '2021-04-04 23:32:56', '图书');
INSERT INTO `shangpinfenlei` VALUES (43, '2021-04-04 23:32:56', '服饰');
INSERT INTO `shangpinfenlei` VALUES (44, '2021-04-04 23:32:56', '化妆品');
INSERT INTO `shangpinfenlei` VALUES (45, '2021-04-04 23:32:56', '拍照摄影');
INSERT INTO `shangpinfenlei` VALUES (46, '2021-04-04 23:32:56', '宠物');
INSERT INTO `shangpinfenlei` VALUES (1709370077396, '2024-03-02 17:01:16', '程序源码');

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi`  (
                                  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
                                  `shangpinleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类型',
                                  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
                                  `shangpinjianjie` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品简介',
                                  `shangpinxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品详情',
                                  `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家账号',
                                  `shangjiamingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家名称',
                                  `xinyuzhi` int NULL DEFAULT NULL COMMENT '信誉值',
                                  `yuezujiage` int NULL DEFAULT NULL COMMENT '月租价格',
                                  `thumbsupnum` int NULL DEFAULT 0 COMMENT '赞',
                                  `crazilynum` int NULL DEFAULT 0 COMMENT '踩',
                                  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
                                  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
                                  `price` float NOT NULL COMMENT '价格',
                                  `onelimittimes` int NULL DEFAULT -1 COMMENT '单限',
                                  `alllimittimes` int NULL DEFAULT -1 COMMENT '库存',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709370203890 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES (31, '2021-04-04 23:32:56', 'Apple/苹果2020款 13英寸 MacBook Air M1 芯片笔记本电脑', '数码电子', 'http://localhost:8080/springbootyf10w/upload/1709368413452.png', '【24期免息】Apple/苹果2020款 13英寸 MacBook Air M1 芯片笔记本电脑 7核/8核图形处理器学习笔记本[2059]', '<p>品牌：Apple/苹果系列：央处理器和 7 核图形处理器 256GB 存储容量型号：13 英寸 MacBook Air</p><p>内存容量：8GB硬盘容量：256G固态硬盘 512G固态硬盘CPU：Apple M1</p><p>显存容量：4G厚度：10.0mm(含)-15.0mm(不含)颜色分类：深空灰色 金色 银色</p><p>商品条形码：194252058459生产企业：Apple能效等级：一级</p><p>显卡类型：AMD M530适用场景：移动工作站 炒股理财 设计制图CPU品牌：苹果</p><p>屏幕分辨率：2560x1600像素屏幕尺寸：13英寸屏幕刷新率：60Hz</p><p>保修期：1年3C证书编号：2019010902164458</p><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709368473751.png\"></p>', 'itsourceShop', '胖东来', 100, 100, 1, 1, '2024-03-02 13:25:08', 13, 8999, 1, 98);
INSERT INTO `shangpinxinxi` VALUES (32, '2021-04-04 23:32:56', '小向日葵仿真花迷你摆设花束盆栽客厅餐桌装饰假花摆件摆放桌面', '拍照摄影', 'http://localhost:8080/springbootyf10w/upload/1709368754151.png', '小向日葵仿真花迷你摆设花束盆栽客厅餐桌装饰假花摆件摆放桌面', '<p>品牌：素依绣材质：毛绒适用空间：桌面</p><p>颜色分类：4款混装 向日葵1个 白色铃兰1个 粉色铃兰1个 蓝色铃兰1个 向日葵2个 向日葵+白色铃兰 向日葵+粉色铃兰 向日葵+蓝色铃兰 白色铃兰+粉色铃兰 白色铃兰+蓝色铃兰 粉色铃兰+蓝色铃兰 向日葵3个 白色铃兰3个 粉色铃兰3个 蓝色铃兰3个 随机1个装组合形式：花+底座摆放空间：摆放花卉</p><p>货号：122917花草种类：向日葵仿真花类型：向日葵</p>', 'itsourceShop', '蔷薇之光绿植', 66, 2, 2, 2, '2024-03-02 13:23:02', 11, 78, 2, 997);
INSERT INTO `shangpinxinxi` VALUES (33, '2021-04-04 23:32:56', 'Apple/苹果 iPhone 15 新品5G手机全新原装正品全网通国行', '数码电子', 'http://localhost:8080/springbootyf10w/upload/1709368569273.png,http://localhost:8080/springbootyf10w/upload/1709368575010.png', 'Apple/苹果 iPhone 15 新品5G手机全新原装正品全网通国行', '<p><strong>宝贝参数：</strong></p><p>网络类型：无需合约版品牌：Apple/苹果Apple型号：iPhone 15</p><p>售后服务：全国联保接口类型：Type-C分辨率：2556x1179</p><p>蓝牙版本：5.3机身颜色：黑色 蓝色 绿色 黄色 粉色套餐类型：官方标配</p><p>后置摄像头：4800万存储容量：128GB 256GB 512GB屏幕材质：超视网膜 XDR 显示屏</p><p>手机类型：拍照手机摄像头类型：三摄像头网络模式：5G</p><p>电信设备进网许可证编号：00-8573-217557屏幕刷新率：60Hz操作系统：iOS</p><p>CPU品牌：Apple/苹果上市时间：2023-09屏幕尺寸：6.1英寸</p><p>电池容量：3279mAh机身厚度：7.80mmCPU型号：A16 仿生芯片</p><p>是否支持无线充电：是充电功率：20W前置摄像头像素：1200万像素</p><p>商品系列：153C证书编号：2022011606490410</p><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709368660855.png\"></p>', 'itsourceShop', '阳光小卖部', 12, 3, 3, 3, '2024-03-02 13:27:45', 19, 99.9, 3, 92);
INSERT INTO `shangpinxinxi` VALUES (34, '2021-04-04 23:32:56', '三福吊带连衣裙女2024新款夏季宽边挂脖式收腰显瘦早春长裙子女装', '服饰', 'http://localhost:8080/springbootyf10w/upload/1709368858063.png', '三福吊带连衣裙女2024新款夏季宽边挂脖式收腰显瘦早春长裙子女装', '<p>品牌：三福适用年龄：18-24周岁尺码：160/84A/S 165/88A/M 170/92A/L</p><p>图案：纯色风格：休闲风领型：挂脖领</p><p>腰型：自然腰衣门襟：套头颜色分类：黑色 花灰 深花灰</p><p>袖型：无袖货号：483506裙型：包臀裙</p><p>年份季节：2024年春季袖长：无袖<span style=\"color: rgb(0, 0, 0);\">裙长：长裙</span></p><p>流行元素/工艺：纯色款式：包臀裙销售渠道类型：商场同款(线上线下都销售)</p><p>廓形：H型材质成分：棉46% 粘胶纤维(粘纤)46% 聚氨酯弹性纤维(氨纶)8%吊牌价：199元</p><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709368934359.webp\"></p>', 'itsourceShop', '海外美妆1号店', 80, 4, 4, 4, '2024-03-02 13:32:51', 9, 99.9, 4, 99);
INSERT INTO `shangpinxinxi` VALUES (35, '2021-04-04 23:32:56', 'SK神仙乳正品官方旗舰店爽肤水补水保湿抗皱紧致嫩白水乳护肤套装', '化妆品', 'http://localhost:8080/springbootyf10w/upload/1709369041046.png', 'SK神仙乳正品官方旗舰店爽肤水补水保湿抗皱紧致嫩白水乳护肤套装', '<p>品牌：SK品名：神仙水产地：中国</p><p>化妆品品类：化妆水/爽肤水化妆品备案编号/注册证号：粤G妆网备字2020266475功效：提亮肤色,保湿,控油,抗皱</p><p>规格类型：正常规格是否为特殊用途化妆品：否净含量：130ml,110ml,240ml,260ml,220ml,280ml,305ml,340ml,445ml</p><p>生产厂家名称：广东雅胜化妆品有限公司产品名称：女神之美活酵母臻萃神仙水质地：水液</p><p>生产企业生产许可证号：粤妆20200152保质期：3年核心功效：补水,保湿</p><p><br></p><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709369033499.jpg\"></p>', 'itsourceShop', '海外美妆1号店', 80, 5, 5, 5, '2024-03-02 08:42:28', 6, 99.9, 5, 99);
INSERT INTO `shangpinxinxi` VALUES (36, '2021-04-04 23:32:56', '当当正版朝花夕拾语文阅读丛书', '图书', 'http://localhost:8080/springbootyf10w/upload/1709370025753.png', '当当正版朝花夕拾语文阅读丛书部编教材七年级bi读书上册阅读人民文学出版社畅销书籍语文图书寒暑假课外读物鲁迅原著正版团购优惠', '<p><img src=\"https://assets.alicdn.com/kissy/1.0.0/build/imglazyload/spaceball.gif\">编辑</p><p>本书收入“统编《语文》阅读丛书”，是专为中学生朋友们课内外阅读准备的，版本完善，校勘精良，注释详尽确当：</p><p>&nbsp;</p><p>1.《朝花夕拾》为鲁迅先生的经典散文集，收录《从百草园到三味书屋》《藤野先生》《阿长与〈山海经〉》等散文十篇，初版诞生九十多年来畅销不衰，影响深远。</p><p>&nbsp;</p><p>2.鲁迅先生的作品虽已进入公版，但由于其作品整理繁难，出错率较高，因此许多版本并不可靠。尤其他的作品中有很多典故，不看注释是比较难理解的。人民文学出版社成立之初，即在国家有关部门委托下，将整理注释本《鲁迅全集》作为自己*主要的任务之一。全集几十年来内容不断修订，版本不断更新，形成了鲁迅作品的善本。可以说，版本完善可信赖是人文版《朝花夕拾》的一个重要特点。</p><p>&nbsp;</p><p>3.如上条所述，鲁迅作品需要借助注释才能更好理解。而注释详尽确当是人文社版《朝花夕拾》的另一个重要特点。这些注释是在国家提供大量人力、物力支持下，一代代专家和学者集体劳动的结晶。在节奏越来越快的，已经很难再集中如此众多的专家学者来做这样的工作。因此鲁迅作品的注释才更显得弥足珍贵，也是许多其他出版社版的鲁迅作品很难比肩的。需要说明的是，我社对这些注释享有专有出版权。</p><p>&nbsp;</p><p>4.《朝花夕拾》日前被统编语文教科书七年级上册指定为书目。无论是该册教科书第三单元收入的课文《从百草园到三味书屋》，还是三单元“名著导读”栏目所选的《朝花夕拾》精彩篇章《五猖会》，均来自人民文学出版社2005年《鲁迅全集》，而本版《朝花夕拾》的文本与2005年全集一模一样，别无二致。</p><p>&nbsp;</p><p>5.《朝花夕拾》被列为语文课外读物，对青少年语文学习及价值观培育具有重要作用。我们主张，学生语文课外读物的选择一定要考虑版本问题，我社为出版社，是国内文学、语文读物出版的重镇，编校质量上乘，品牌号召力强，在业界素享盛誉，我社版本，是读者朋友们可以放心选择的。</p><p>&nbsp;<img src=\"http://localhost:8080/springbootyf10w/upload/1709369212957.jpg\"></p>', 'itsourceShop', '胖胖超市', 79, 6, 6, 6, '2024-03-02 08:59:45', 14, 99.9, 6, 99);
INSERT INTO `shangpinxinxi` VALUES (1709366186667, '2024-03-02 15:56:26', '出售一直大猫', '宠物', 'http://localhost:8080/springbootyf10w/upload/1709366075023.jpg', '可以带回家玩,不咬人', '<p><span style=\"color: rgb(32, 33, 36);\">老虎（学名：Panthera tigris），俗称虎，</span><span style=\"color: rgb(4, 12, 40); background-color: rgb(211, 227, 253);\">是哺乳纲大型猫科动物</span><span style=\"color: rgb(32, 33, 36);\">。 是亚洲的特有种类，原产地主要是东北亚和东南亚。 虎是种高度进化的猎食动物，也是自然界生态中不可或缺的一环。 成年虎的身长可达2-2.5米，尾长1米，重达90-220公斤。</span></p>', 'itsourceShop', '小李宠物店', 11, 100, 0, 0, '2024-03-02 07:56:39', 1, 999, 2, 100);
INSERT INTO `shangpinxinxi` VALUES (1709369395077, '2024-03-02 16:49:54', '条纹流苏针织连衣裙女早春新款背心裙海边度假长裙', '服饰', 'http://localhost:8080/springbootyf10w/upload/1709369376324.png,http://localhost:8080/springbootyf10w/upload/1709369382572.png', '【香影彩虹裙】条纹流苏针织连衣裙女早春新款背心裙海边度假长裙', '<p><br></p><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709369356155.jpg\"></p>', 'itsourceShop', '胖东来', 100, 24, 1, 0, '2024-03-02 13:33:13', 4, 243, 2, 244);
INSERT INTO `shangpinxinxi` VALUES (1709369790869, '2024-03-02 16:56:30', '人像摄影书籍入门自学构图取景用光技法人像写真', '拍照摄影', 'http://localhost:8080/springbootyf10w/upload/1709369756968.png,http://localhost:8080/springbootyf10w/upload/1709369763020.png', '成为专业人像摄影师 人像摄影书籍入门自学构图取景用光技法人像写真美姿摆姿拍照技巧实战技法摄影的艺术', '<p>品牌：POSTS &amp; TELECOM PRESS/人民邮电出版社ISBN编号：9787115614667书名：成为专业人像摄影师</p><p>作者：高振杰定价：99.00元是否是套装：否</p><p>出版社名称：人民邮电出版社出版时间：2023-06</p><p><br></p><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709369924635.jpg\"></p><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709369891748.jpg\"></p><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709369875137.jpg\"></p><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709369859068.webp\"></p><p><br></p><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709369848884.jpg\"><img src=\"http://localhost:8080/springbootyf10w/upload/1709369817307.jpg\"></p>', 'itsourceShop', '胖东来', 100, 123, 0, 0, '2024-03-02 08:59:10', 3, 434, 1, 123);
INSERT INTO `shangpinxinxi` VALUES (1709370203889, '2024-03-02 17:03:23', '【驾校理论课考试系统】SpringBoot+Vue', '程序源码', 'http://localhost:8080/springbootyf10w/upload/1709370121667.png,http://localhost:8080/springbootyf10w/upload/1709370281576.png,http://localhost:8080/springbootyf10w/upload/1709370287650.png', '本系统是一个电脑端模拟驾考试中科目一和科目四的考试系统。包含了小车，货车和客车的考试题库。\n可以在线联系，模拟考试等功能。还能记录错题，针对性的联系。技术栈采用 SpringBoot+Vue+Mysql+Mybatis。目前只有电脑端，没有移动端。有开发能力的小伙伴吗们，可以自己写一套移动端的页面使用，后端接口都是现成的。对于新手或者学生练手也是非常不错的。', '<p><span style=\"color: var(--bold-color);\">更多资源推荐:</span></p><ul><li><a href=\"https://mp.weixin.qq.com/s/KE7jOCpvbLVddVnu81fg9A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第1期【问卷调查系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/So2Nb20hotB3S0aQtqf1mQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第2期【在线考试系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/HeSGWxxU-bGoeONjyR6qsw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第4期【简洁的问卷调查系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/oA0Mbz3c4q1ziQbHvr72dg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第5期【校园信息墙系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/NddwJn9h2f5n6dY-spCFhQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource 分享 第6期【网址云收藏系统】】</a></li><li><a href=\"https://mp.weixin.qq.com/s/kRigevtP_EjpOS_Bw2UdZQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第7期【小程序记账软件系统】springboot+小程序</a></li><li><a href=\"https://mp.weixin.qq.com/s/oJ-PEahVwQkwRwE8sINyZg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第8期【班级学生管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/euvjxBX3bVG71IF8yV_zJQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource 分享 第9期【学知识在线考试系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/j5O3oi0Yc28v8ROomyR9_g\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource 分享 第10期【个人博客系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/5AEgWPW1v0Y5Z77LGoMm1Q\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource 分享 第11期【简单的教务管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/YpJXaGC5338ydeLCMBiLtg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第12期【驾校理论课考试系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/7FYxlXoKrb5r-nckcPlAWw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第13期【班级信息管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/oRU1VtvB68Z1qJbuGIGrGw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第14期【电影院售票管理系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/rgixOXuJyJyZlL8Ny0AE8A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第15期【图书管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/5aOJ9EHIqcVqtYWdKn3ONw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第16期【连锁门店管理系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/S_mDclr4BKOzGZHG6etnoA\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第17期【宠物管理系统(带论文)springboot+vue】</a></li><li><a href=\"https://mp.weixin.qq.com/s/_LlrbVBq_6nhGp3BY7F38A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第18期【二手交易(电商,商城)系统(带论文和PPT)springboot+vue】</a></li><li><a href=\"https://mp.weixin.qq.com/s/b8qTt-XT9SZNzQTKOJQqSw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第19期【学生选课管理系统springboot+vue】</a></li><li><a href=\"https://mp.weixin.qq.com/s/xqmR6R96yFSZeQOmkCQcmQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第20期-Java SpringBoot 微信点餐系统视频</a></li><li><a href=\"https://mp.weixin.qq.com/s/7F7EhKv_CG81LEDS1XEJHw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第21期【房屋租赁管理系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/ygvHpQeg_frDWD2f1F-R_A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\"># ITSource分享第22期【景区旅游管理系统】springboot</a></li><li><a href=\"https://mp.weixin.qq.com/s/b1-prJSZdQcEBy0M6JOnDg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第23期【图书管理系统】springboot+layui前后端分离</a></li><li><a href=\"https://mp.weixin.qq.com/s/VGKHG_ZPER3VA5rTdbXFiQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">第24期【在线拍卖系统】springboot+vue前后端分离+论文+PPT</a></li><li><a href=\"https://mp.weixin.qq.com/s/CB6xxXJkvK1GAhAVFUgHZw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">第25期【汽车票网上预定系统】springboot+vue前后端分离+论文</a></li></ul><p><img src=\"http://localhost:8080/springbootyf10w/upload/1709370418193.jpg\"><img src=\"http://localhost:8080/springbootyf10w/upload/1709370425757.jpg\"><img src=\"http://localhost:8080/springbootyf10w/upload/1709370439653.webp\"><img src=\"http://localhost:8080/springbootyf10w/upload/1709370454831.webp\"><img src=\"http://localhost:8080/springbootyf10w/upload/1709370492530.jpg\"></p><p><br></p><p><br></p><p><br></p>', 'itsourceShop', '阳光小卖部', 12, 99, 0, 0, '2024-03-02 13:28:22', 18, 88, 1, 995);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
                            `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                            `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `userid` bigint NOT NULL COMMENT '用户id',
                            `refid` bigint NULL DEFAULT NULL COMMENT '收藏id',
                            `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
                            `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏名称',
                            `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏图片',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709386386959 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1709380317633, '2024-03-02 19:51:57', 1709361211646, 1709370203889, 'shangpinxinxi', '【驾校理论课考试系统】SpringBoot+Vue', 'http://localhost:8080/springbootyf10w/upload/1709370121667.png');
INSERT INTO `storeup` VALUES (1709386386958, '2024-03-02 21:33:06', 1709361211646, 1709369395077, 'shangpinxinxi', '条纹流苏针织连衣裙女早春新款背心裙海边度假长裙', 'http://localhost:8080/springbootyf10w/upload/1709369376324.png');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
                          `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                          `userid` bigint NOT NULL COMMENT '用户id',
                          `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
                          `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
                          `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
                          `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
                          `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
                          `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 11, '用户1', 'yonghu', '用户', 'j594s0fodjibj10itdx8uesvfup40et4', '2021-04-04 23:33:47', '2021-04-05 00:33:48');
INSERT INTO `token` VALUES (2, 1, 'admin', 'users', '管理员', 'h0uwsg56jkxckfbrviaziqy9f4sgq88h', '2024-03-02 14:21:00', '2024-03-02 14:11:36');
INSERT INTO `token` VALUES (3, 1709361211646, 'itsource', 'yonghu', '用户', 'h2j14nulh01h6ew0f73lvp1mdyl8khvk', '2024-03-02 14:34:23', '2024-03-02 14:20:02');
INSERT INTO `token` VALUES (4, 1709361351840, 'itsourceShop', 'shangjia', '管理员', 'jtiy99rnop90u9yazz77b2144xsm1nka', '2024-03-02 14:36:04', '2024-03-02 07:43:42');
INSERT INTO `token` VALUES (5, 1709361351840, 'itsourceShop', 'shangjia', '商家', 'kr83mqni7xj08qx0n4pie69tlxytitw9', '2024-03-02 15:06:44', '2024-03-02 13:52:03');
INSERT INTO `token` VALUES (6, 1, 'admin', 'users', '商家', '6goqhnz8hoitc6mwup7lyvn4mkf3u2p5', '2024-03-02 15:08:01', '2024-03-02 08:19:18');
INSERT INTO `token` VALUES (7, 1709384938002, 'itsourceShop', 'shangjia', '商家', '71doarrs13hzg4jf3ta60d597cb0lgfw', '2024-03-02 21:09:06', '2024-03-02 14:31:01');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
                          `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                          `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
                          `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
                          `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
                          `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2021-04-04 23:32:56');

-- ----------------------------
-- Table structure for wanchengdingdan
-- ----------------------------
DROP TABLE IF EXISTS `wanchengdingdan`;
CREATE TABLE `wanchengdingdan`  (
                                    `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                    `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                    `dingdanhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单号',
                                    `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
                                    `shangpinleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类型',
                                    `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
                                    `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家账号',
                                    `shangjiamingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家名称',
                                    `yuezujiage` int NULL DEFAULT NULL COMMENT '月租价格',
                                    `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
                                    `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
                                    `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
                                    `dizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
                                    `zulinyuezhang` int NULL DEFAULT NULL COMMENT '租赁月长',
                                    `jine` int NULL DEFAULT NULL COMMENT '金额',
                                    `dingdanzhuangtai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单状态',
                                    `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '否' COMMENT '是否审核',
                                    `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
                                    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '完成订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wanchengdingdan
-- ----------------------------

-- ----------------------------
-- Table structure for xinyuzhi
-- ----------------------------
DROP TABLE IF EXISTS `xinyuzhi`;
CREATE TABLE `xinyuzhi`  (
                             `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                             `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                             `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商家账号',
                             `shangjiamingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商家名称',
                             `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '联系电话',
                             `xinyuzhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '信誉值',
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709368248688 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '信誉值' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xinyuzhi
-- ----------------------------
INSERT INTO `xinyuzhi` VALUES (91, '2021-04-04 23:32:56', 'itsourceShop', '阳光小卖部', '17638177655', '12');
INSERT INTO `xinyuzhi` VALUES (1709368122224, '2024-03-02 16:28:41', 'duoduo1', '蔷薇之光绿植', '13823888881', '66');
INSERT INTO `xinyuzhi` VALUES (1709368131712, '2024-03-02 16:28:51', 'huazhuangpin', '海外美妆1号店', '13823888882', '80');
INSERT INTO `xinyuzhi` VALUES (1709368239188, '2024-03-02 16:30:39', '胖东来', '胖东来', '13823888883', '100');
INSERT INTO `xinyuzhi` VALUES (1709368248687, '2024-03-02 16:30:48', '胖胖超市', '胖胖超市', '13823888884', '79');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
                           `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                           `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                           `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
                           `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
                           `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
                           `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
                           `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
                           `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
                           `zhaopian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '照片',
                           `money` float NULL DEFAULT 0 COMMENT '余额',
                           PRIMARY KEY (`id`) USING BTREE,
                           UNIQUE INDEX `zhanghao`(`zhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1709361211647 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2021-04-04 23:32:56', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian1.jpg', 100);
INSERT INTO `yonghu` VALUES (12, '2021-04-04 23:32:56', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian2.jpg', 100);
INSERT INTO `yonghu` VALUES (13, '2021-04-04 23:32:56', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian3.jpg', 100);
INSERT INTO `yonghu` VALUES (14, '2021-04-04 23:32:56', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian4.jpg', 100);
INSERT INTO `yonghu` VALUES (15, '2021-04-04 23:32:56', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian5.jpg', 100);
INSERT INTO `yonghu` VALUES (16, '2021-04-04 23:32:56', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springbootyf10w/upload/yonghu_zhaopian6.jpg', 100);
INSERT INTO `yonghu` VALUES (1709361211646, '2024-03-02 14:33:31', 'itsource', 'itsource', '穷鬼', NULL, '17638177665', 'itsources@qq.com', 'http://localhost:8080/springbootyf10w/upload/1709380038454.jpg', 9705.7);

-- ----------------------------
-- Table structure for zujiedingdan
-- ----------------------------
DROP TABLE IF EXISTS `zujiedingdan`;
CREATE TABLE `zujiedingdan`  (
                                 `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                 `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `dingdanhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单号',
                                 `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
                                 `shangpinleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类型',
                                 `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
                                 `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家账号',
                                 `shangjiamingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家名称',
                                 `yuezujiage` int NULL DEFAULT NULL COMMENT '月租价格',
                                 `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
                                 `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
                                 `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
                                 `dizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
                                 `zulinyuezhang` int NULL DEFAULT NULL COMMENT '租赁月长',
                                 `jine` int NULL DEFAULT NULL COMMENT '金额',
                                 `dingdanzhuangtai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单状态',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '租借订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zujiedingdan
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
