/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t170`;
CREATE DATABASE IF NOT EXISTS `t170` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t170`;

DROP TABLE IF EXISTS `bingfang`;
CREATE TABLE IF NOT EXISTS `bingfang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingfang_name` varchar(200) DEFAULT NULL COMMENT '病房名称 Search111 ',
  `bingfang_address` varchar(200) DEFAULT NULL COMMENT '病房位置 Search111 ',
  `chuangwei_types` int DEFAULT NULL COMMENT '床位',
  `bingfang_content` text COMMENT '病房介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='病房';

DELETE FROM `bingfang`;
INSERT INTO `bingfang` (`id`, `bingfang_name`, `bingfang_address`, `chuangwei_types`, `bingfang_content`, `insert_time`, `create_time`) VALUES
	(1, '病房名称1', '病房位置1', 4, '病房介绍1', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(2, '病房名称2', '病房位置2', 4, '病房介绍2', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(3, '病房名称3', '病房位置3', 2, '病房介绍3', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(4, '病房名称4', '病房位置4', 1, '病房介绍4', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(5, '病房名称5', '病房位置5', 2, '病房介绍5', '2022-02-26 11:39:49', '2022-02-26 11:39:49');

DROP TABLE IF EXISTS `bingli`;
CREATE TABLE IF NOT EXISTS `bingli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huanzhe_id` int DEFAULT NULL COMMENT '患者',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `ruyuantujing_types` int DEFAULT NULL COMMENT '入院途径',
  `zhusu_content` text COMMENT '主诉',
  `zhenduan_content` text COMMENT '诊断',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='病例';

DELETE FROM `bingli`;
INSERT INTO `bingli` (`id`, `huanzhe_id`, `yisheng_id`, `ruyuantujing_types`, `zhusu_content`, `zhenduan_content`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 3, '主诉1', '诊断1', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(2, 2, 1, 3, '主诉2', '诊断2', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(3, 3, 2, 1, '主诉3', '诊断3', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(4, 3, 3, 1, '主诉4', '诊断4', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(5, 2, 2, 2, '主诉5', '诊断5', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(6, 3, 2, 1, '主诉6', '诊断3', '2022-02-25 11:39:49', '2022-02-25 11:39:49'),
	(7, 3, 3, 1, '主诉7', '诊断4', '2022-02-25 11:39:49', '2022-02-25 11:39:49'),
	(8, 2, 2, 2, '主诉8', '诊断5', '2022-02-25 11:39:49', '2022-02-25 11:39:49');

DROP TABLE IF EXISTS `chufang`;
CREATE TABLE IF NOT EXISTS `chufang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huanzhe_id` int DEFAULT NULL COMMENT '患者',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `zhenduan_content` text COMMENT '处方内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '开方时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='处方';

DELETE FROM `chufang`;
INSERT INTO `chufang` (`id`, `huanzhe_id`, `yisheng_id`, `zhenduan_content`, `insert_time`, `create_time`) VALUES
	(1, 3, 2, '处方内容1', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(2, 3, 2, '处方内容2', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(3, 3, 1, '处方内容3', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(4, 3, 3, '处方内容4', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(5, 3, 2, '处方内容5', '2022-02-26 11:39:49', '2022-02-26 11:39:49');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'upload/picture1.jpg'),
	(2, 'picture2', 'upload/picture2.jpg'),
	(3, 'picture3', 'upload/picture3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-02-26 11:39:36'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-02-26 11:39:36'),
	(3, 'keshi_types', '科室', 1, '骨科', NULL, NULL, '2022-02-26 11:39:36'),
	(4, 'keshi_types', '科室', 2, '肛肠科', NULL, NULL, '2022-02-26 11:39:36'),
	(5, 'keshi_types', '科室', 3, '眼科', NULL, NULL, '2022-02-26 11:39:36'),
	(6, 'keshi_types', '科室', 4, '内科', NULL, NULL, '2022-02-26 11:39:36'),
	(7, 'zhiwei_types', '职位', 1, '普通医师', NULL, NULL, '2022-02-26 11:39:36'),
	(8, 'zhiwei_types', '职位', 2, '主治医师', NULL, NULL, '2022-02-26 11:39:36'),
	(9, 'chuangwei_types', '床位', 1, '床位1', NULL, NULL, '2022-02-26 11:39:36'),
	(10, 'chuangwei_types', '床位', 2, '床位2', NULL, NULL, '2022-02-26 11:39:36'),
	(11, 'chuangwei_types', '床位', 3, '床位3', NULL, NULL, '2022-02-26 11:39:36'),
	(12, 'chuangwei_types', '床位', 4, '床位4', NULL, NULL, '2022-02-26 11:39:36'),
	(13, 'yaopin_types', '药品类型', 1, '药品类型1', NULL, NULL, '2022-02-26 11:39:36'),
	(14, 'yaopin_types', '药品类型', 2, '药品类型2', NULL, NULL, '2022-02-26 11:39:36'),
	(15, 'yaopin_types', '药品类型', 3, '药品类型3', NULL, NULL, '2022-02-26 11:39:36'),
	(16, 'yaopin_types', '药品类型', 4, '药品类型4', NULL, NULL, '2022-02-26 11:39:36'),
	(17, 'shijidian_types', '时间段', 1, '8点-10点', NULL, NULL, '2022-02-26 11:39:37'),
	(18, 'shijidian_types', '时间段', 2, '10点-12点', NULL, NULL, '2022-02-26 11:39:37'),
	(19, 'shijidian_types', '时间段', 3, '14点-16点', NULL, NULL, '2022-02-26 11:39:37'),
	(20, 'shijidian_types', '时间段', 4, '16点-18点', NULL, NULL, '2022-02-26 11:39:37'),
	(21, 'ruyuantujing_types', '入院途径', 1, '其他医疗机构转入', NULL, NULL, '2022-02-26 11:39:37'),
	(22, 'ruyuantujing_types', '入院途径', 2, '急诊', NULL, NULL, '2022-02-26 11:39:37'),
	(23, 'ruyuantujing_types', '入院途径', 3, '门诊', NULL, NULL, '2022-02-26 11:39:37'),
	(24, 'zhuyuantujing_types', '住院途径', 1, '其他医疗机构转入', NULL, NULL, '2022-02-26 11:39:37'),
	(25, 'zhuyuantujing_types', '住院途径', 2, '急诊', NULL, NULL, '2022-02-26 11:39:37'),
	(26, 'zhuyuantujing_types', '住院途径', 3, '门诊', NULL, NULL, '2022-02-26 11:39:37'),
	(27, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-02-26 11:39:37'),
	(28, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-02-26 11:39:37'),
	(29, 'yaopin_types', '药品类型', 5, '药品类型5', NULL, '', '2022-02-26 12:13:31');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/yiyuanhoutaiguanli/upload/gonggao1.jpg', 2, '2022-02-26 11:39:49', '公告详情1', '2022-02-26 11:39:49'),
	(2, '公告名称2', 'http://localhost:8080/yiyuanhoutaiguanli/upload/gonggao2.jpg', 1, '2022-02-26 11:39:49', '公告详情2', '2022-02-26 11:39:49'),
	(3, '公告名称3', 'http://localhost:8080/yiyuanhoutaiguanli/upload/gonggao3.jpg', 2, '2022-02-26 11:39:49', '公告详情3', '2022-02-26 11:39:49'),
	(4, '公告名称4', 'http://localhost:8080/yiyuanhoutaiguanli/upload/gonggao4.jpg', 1, '2022-02-26 11:39:49', '公告详情4', '2022-02-26 11:39:49'),
	(5, '公告名称5', 'http://localhost:8080/yiyuanhoutaiguanli/upload/gonggao5.jpg', 2, '2022-02-26 11:39:49', '公告详情5', '2022-02-26 11:39:49');

DROP TABLE IF EXISTS `huanzhe`;
CREATE TABLE IF NOT EXISTS `huanzhe` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `huanzhe_name` varchar(200) DEFAULT NULL COMMENT '患者姓名 Search111 ',
  `huanzhe_phone` varchar(200) DEFAULT NULL COMMENT '患者手机号',
  `huanzhe_id_number` varchar(200) DEFAULT NULL COMMENT '患者身份证号',
  `huanzhe_photo` varchar(200) DEFAULT NULL COMMENT '患者头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `huanzhe_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='患者';

DELETE FROM `huanzhe`;
INSERT INTO `huanzhe` (`id`, `username`, `password`, `huanzhe_name`, `huanzhe_phone`, `huanzhe_id_number`, `huanzhe_photo`, `sex_types`, `huanzhe_email`, `create_time`) VALUES
	(1, '患者1', '123456', '患者姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/yiyuanhoutaiguanli/upload/huanzhe1.jpg', 1, '1@qq.com', '2022-02-26 11:39:49'),
	(2, '患者2', '123456', '患者姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/yiyuanhoutaiguanli/upload/huanzhe2.jpg', 1, '2@qq.com', '2022-02-26 11:39:49'),
	(3, '患者3', '123456', '患者姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/yiyuanhoutaiguanli/upload/huanzhe3.jpg', 2, '3@qq.com', '2022-02-26 11:39:49');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', '5sb2s4zz94br7y3m93t4kyo19lpd7hj3', '2022-02-26 11:43:59', '2024-04-29 14:06:49'),
	(2, 1, 'a1', 'huanzhe', '患者', 'ppee7oengko2n21tj8jcj8oysuvmt2bv', '2022-02-26 12:09:32', '2024-04-29 14:08:19'),
	(3, 1, 'a1', 'yisheng', '医生', 'vgco64xvesd0b7d9bshkuil0a0n1m4te', '2022-02-26 12:15:40', '2024-04-29 14:08:06');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE IF NOT EXISTS `yaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品照片',
  `yaopin_types` int DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_content` text COMMENT '药品详细介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='药品';

DELETE FROM `yaopin`;
INSERT INTO `yaopin` (`id`, `yaopin_name`, `yaopin_photo`, `yaopin_types`, `yaopin_content`, `create_time`) VALUES
	(1, '药品名称1', 'http://localhost:8080/yiyuanhoutaiguanli/upload/yaopin1.jpg', 2, '药品详细介绍1', '2022-02-26 11:39:49'),
	(2, '药品名称2', 'http://localhost:8080/yiyuanhoutaiguanli/upload/yaopin2.jpg', 1, '药品详细介绍2', '2022-02-26 11:39:49'),
	(3, '药品名称3', 'http://localhost:8080/yiyuanhoutaiguanli/upload/yaopin3.jpg', 1, '药品详细介绍3', '2022-02-26 11:39:49'),
	(4, '药品名称4', 'http://localhost:8080/yiyuanhoutaiguanli/upload/yaopin4.jpg', 4, '药品详细介绍4', '2022-02-26 11:39:49'),
	(5, '药品名称5', 'http://localhost:8080/yiyuanhoutaiguanli/upload/yaopin5.jpg', 4, '药品详细介绍5', '2022-02-26 11:39:49');

DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE IF NOT EXISTS `yisheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `keshi_types` int DEFAULT NULL COMMENT '科室',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='医生';

DELETE FROM `yisheng`;
INSERT INTO `yisheng` (`id`, `username`, `password`, `yisheng_name`, `yisheng_phone`, `yisheng_id_number`, `yisheng_photo`, `keshi_types`, `zhiwei_types`, `sex_types`, `yisheng_email`, `create_time`) VALUES
	(1, '医生1', '123456', '医生姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/yiyuanhoutaiguanli/upload/yisheng1.jpg', 2, 2, 1, '1@qq.com', '2022-02-26 11:39:49'),
	(2, '医生2', '123456', '医生姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/yiyuanhoutaiguanli/upload/yisheng2.jpg', 1, 1, 2, '2@qq.com', '2022-02-26 11:39:49'),
	(3, '医生3', '123456', '医生姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/yiyuanhoutaiguanli/upload/yisheng3.jpg', 2, 1, 2, '3@qq.com', '2022-02-26 11:39:49');

DROP TABLE IF EXISTS `yuyueyisheng`;
CREATE TABLE IF NOT EXISTS `yuyueyisheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huanzhe_id` int DEFAULT NULL COMMENT '患者',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `yuyueyisheng_content` text COMMENT '主诉',
  `yuyue_time` date DEFAULT NULL COMMENT '预约日期',
  `shijidian_types` int DEFAULT NULL COMMENT '时间段',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='预约医生';

DELETE FROM `yuyueyisheng`;
INSERT INTO `yuyueyisheng` (`id`, `huanzhe_id`, `yisheng_id`, `yuyueyisheng_content`, `yuyue_time`, `shijidian_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, '主诉1', '2022-02-26', 4, '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(2, 1, 1, '主诉2', '2022-02-26', 4, '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(3, 1, 2, '主诉3', '2022-02-26', 1, '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(4, 3, 2, '主诉4', '2022-02-26', 4, '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(5, 2, 3, '主诉5', '2022-02-26', 3, '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(6, 1, 3, '<p>头疼</p>', '2022-02-27', 1, '2022-02-26 12:09:59', '2022-02-26 12:09:59'),
	(7, NULL, 2, '<p>主诉内容</p>', '2022-02-28', 2, '2022-02-26 12:18:54', '2022-02-26 12:18:54');

DROP TABLE IF EXISTS `zhuyuanguanli`;
CREATE TABLE IF NOT EXISTS `zhuyuanguanli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huanzhe_id` int DEFAULT NULL COMMENT '患者',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `bingfang_id` int DEFAULT NULL COMMENT '病房',
  `zhuyuantujing_types` int DEFAULT NULL COMMENT '住院途径',
  `zhuyuanguanli_content` text COMMENT '住院详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '住院时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='住院';

DELETE FROM `zhuyuanguanli`;
INSERT INTO `zhuyuanguanli` (`id`, `huanzhe_id`, `yisheng_id`, `bingfang_id`, `zhuyuantujing_types`, `zhuyuanguanli_content`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, 3, '住院详情1', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(3, 2, 3, 3, 1, '住院详情3', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(4, 3, 2, 4, 1, '住院详情4', '2022-02-26 11:39:49', '2022-02-26 11:39:49'),
	(6, 3, 1, 3, 1, '<p>住院详情</p>', '2022-02-26 12:18:04', '2022-02-26 12:18:04'),
	(8, 2, 3, 3, 1, '住院详情5', '2022-02-25 11:39:49', '2022-02-25 11:39:49'),
	(9, 3, 2, 4, 1, '住院详情9', '2022-02-25 11:39:49', '2022-02-25 11:39:49'),
	(10, 3, 1, 3, 1, '<p>住院详情</p>', '2022-02-25 11:39:49', '2022-02-25 11:39:49');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
