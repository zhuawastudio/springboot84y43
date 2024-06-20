-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot84y43
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springboot84y43`
--

/*!40000 DROP DATABASE IF EXISTS `springboot84y43`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot84y43` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot84y43`;

--
-- Table structure for table `banjixinxi`
--

DROP TABLE IF EXISTS `banjixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjihao` varchar(200) DEFAULT NULL COMMENT '班级号',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `banjitupian` varchar(200) DEFAULT NULL COMMENT '班级图片',
  `suoshuyuanxi` varchar(200) DEFAULT NULL COMMENT '所属院系',
  `suoshuzhuanye` varchar(200) DEFAULT NULL COMMENT '所属专业',
  `banzhuren` varchar(200) DEFAULT NULL COMMENT '班主任',
  `banjirenshu` int(11) DEFAULT NULL COMMENT '班级人数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banjihao` (`banjihao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='班级信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banjixinxi`
--

LOCK TABLES `banjixinxi` WRITE;
/*!40000 ALTER TABLE `banjixinxi` DISABLE KEYS */;
INSERT INTO `banjixinxi` VALUES (31,'2022-03-28 08:41:28','1111111111','班级名称1','upload/banjixinxi_banjitupian1.jpg','所属院系1','所属专业1','班主任1',1),(32,'2022-03-28 08:41:28','2222222222','班级名称2','upload/banjixinxi_banjitupian2.jpg','所属院系2','所属专业2','班主任2',2),(33,'2022-03-28 08:41:28','3333333333','班级名称3','upload/banjixinxi_banjitupian3.jpg','所属院系3','所属专业3','班主任3',3),(34,'2022-03-28 08:41:28','4444444444','班级名称4','upload/banjixinxi_banjitupian4.jpg','所属院系4','所属专业4','班主任4',4),(35,'2022-03-28 08:41:28','5555555555','班级名称5','upload/banjixinxi_banjitupian5.jpg','所属院系5','所属专业5','班主任5',5),(36,'2022-03-28 08:41:28','6666666666','班级名称6','upload/banjixinxi_banjitupian6.jpg','所属院系6','所属专业6','班主任6',6);
/*!40000 ALTER TABLE `banjixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2022-03-28 08:41:28','教师工号1','123456','教师姓名1','男','职称1','13823888881','773890001@qq.com','upload/jiaoshi_zhaopian1.jpg'),(22,'2022-03-28 08:41:28','教师工号2','123456','教师姓名2','男','职称2','13823888882','773890002@qq.com','upload/jiaoshi_zhaopian2.jpg'),(23,'2022-03-28 08:41:28','教师工号3','123456','教师姓名3','男','职称3','13823888883','773890003@qq.com','upload/jiaoshi_zhaopian3.jpg'),(24,'2022-03-28 08:41:28','教师工号4','123456','教师姓名4','男','职称4','13823888884','773890004@qq.com','upload/jiaoshi_zhaopian4.jpg'),(25,'2022-03-28 08:41:28','教师工号5','123456','教师姓名5','男','职称5','13823888885','773890005@qq.com','upload/jiaoshi_zhaopian5.jpg'),(26,'2022-03-28 08:41:28','教师工号6','123456','教师姓名6','男','职称6','13823888886','773890006@qq.com','upload/jiaoshi_zhaopian6.jpg');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoqintongji`
--

DROP TABLE IF EXISTS `kaoqintongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoqintongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhouci` int(11) DEFAULT NULL COMMENT '周次',
  `kaoqinleixing` varchar(200) DEFAULT NULL COMMENT '考勤类型',
  `cishu` int(11) DEFAULT NULL COMMENT '次数',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='考勤统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoqintongji`
--

LOCK TABLES `kaoqintongji` WRITE;
/*!40000 ALTER TABLE `kaoqintongji` DISABLE KEYS */;
INSERT INTO `kaoqintongji` VALUES (81,'2022-03-28 08:41:28','学号1','姓名1','年级1','专业1','班级1',1,'签到',1,'教师工号1','教师姓名1','备注1'),(82,'2022-03-28 08:41:28','学号2','姓名2','年级2','专业2','班级2',2,'签到',2,'教师工号2','教师姓名2','备注2'),(83,'2022-03-28 08:41:28','学号3','姓名3','年级3','专业3','班级3',3,'签到',3,'教师工号3','教师姓名3','备注3'),(84,'2022-03-28 08:41:28','学号4','姓名4','年级4','专业4','班级4',4,'签到',4,'教师工号4','教师姓名4','备注4'),(85,'2022-03-28 08:41:28','学号5','姓名5','年级5','专业5','班级5',5,'签到',5,'教师工号5','教师姓名5','备注5'),(86,'2022-03-28 08:41:28','学号6','姓名6','年级6','专业6','班级6',6,'签到',6,'教师工号6','教师姓名6','备注6');
/*!40000 ALTER TABLE `kaoqintongji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoqinxinxi`
--

DROP TABLE IF EXISTS `kaoqinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoqinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `kechenghao` varchar(200) DEFAULT NULL COMMENT '课程号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleibie` varchar(200) DEFAULT NULL COMMENT '课程类别',
  `zhouci` varchar(200) DEFAULT NULL COMMENT '周次',
  `shangkeri` varchar(200) DEFAULT NULL COMMENT '上课日',
  `jieci` varchar(200) DEFAULT NULL COMMENT '节次',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `qiandaozhuangtai` varchar(200) DEFAULT NULL COMMENT '签到状态',
  `jiezhishijian` datetime DEFAULT NULL COMMENT '截止时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechenghao` (`kechenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='考勤信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoqinxinxi`
--

LOCK TABLES `kaoqinxinxi` WRITE;
/*!40000 ALTER TABLE `kaoqinxinxi` DISABLE KEYS */;
INSERT INTO `kaoqinxinxi` VALUES (61,'2022-03-28 08:41:28','班级名称1','1111111111','课程名称1','课程类别1','周次1','星期一','第一节','教师工号1','教师姓名1','签到','2022-03-28 16:41:28','学号1','姓名1','2022-03-28 16:41:28'),(62,'2022-03-28 08:41:28','班级名称2','2222222222','课程名称2','课程类别2','周次2','星期一','第一节','教师工号2','教师姓名2','签到','2022-03-28 16:41:28','学号2','姓名2','2022-03-28 16:41:28'),(63,'2022-03-28 08:41:28','班级名称3','3333333333','课程名称3','课程类别3','周次3','星期一','第一节','教师工号3','教师姓名3','签到','2022-03-28 16:41:28','学号3','姓名3','2022-03-28 16:41:28'),(64,'2022-03-28 08:41:28','班级名称4','4444444444','课程名称4','课程类别4','周次4','星期一','第一节','教师工号4','教师姓名4','签到','2022-03-28 16:41:28','学号4','姓名4','2022-03-28 16:41:28'),(65,'2022-03-28 08:41:28','班级名称5','5555555555','课程名称5','课程类别5','周次5','星期一','第一节','教师工号5','教师姓名5','签到','2022-03-28 16:41:28','学号5','姓名5','2022-03-28 16:41:28'),(66,'2022-03-28 08:41:28','班级名称6','6666666666','课程名称6','课程类别6','周次6','星期一','第一节','教师工号6','教师姓名6','签到','2022-03-28 16:41:28','学号6','姓名6','2022-03-28 16:41:28');
/*!40000 ALTER TABLE `kaoqinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `kechenghao` varchar(200) DEFAULT NULL COMMENT '课程号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleibie` varchar(200) DEFAULT NULL COMMENT '课程类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhouci` varchar(200) DEFAULT NULL COMMENT '周次',
  `shangkeri` varchar(200) DEFAULT NULL COMMENT '上课日',
  `jieci` varchar(200) DEFAULT NULL COMMENT '节次',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechenghao` (`kechenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (41,'2022-03-28 08:41:28','班级名称1','1111111111','课程名称1','课程类别1','upload/kechengxinxi_tupian1.jpg','周次1','星期一','第一节'),(42,'2022-03-28 08:41:28','班级名称2','2222222222','课程名称2','课程类别2','upload/kechengxinxi_tupian2.jpg','周次2','星期一','第一节'),(43,'2022-03-28 08:41:28','班级名称3','3333333333','课程名称3','课程类别3','upload/kechengxinxi_tupian3.jpg','周次3','星期一','第一节'),(44,'2022-03-28 08:41:28','班级名称4','4444444444','课程名称4','课程类别4','upload/kechengxinxi_tupian4.jpg','周次4','星期一','第一节'),(45,'2022-03-28 08:41:28','班级名称5','5555555555','课程名称5','课程类别5','upload/kechengxinxi_tupian5.jpg','周次5','星期一','第一节'),(46,'2022-03-28 08:41:28','班级名称6','6666666666','课程名称6','课程类别6','upload/kechengxinxi_tupian6.jpg','周次6','星期一','第一节');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiandaoxinxi`
--

DROP TABLE IF EXISTS `qiandaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiandaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `kechenghao` varchar(200) DEFAULT NULL COMMENT '课程号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleibie` varchar(200) DEFAULT NULL COMMENT '课程类别',
  `zhouci` varchar(200) DEFAULT NULL COMMENT '周次',
  `shangkeri` varchar(200) DEFAULT NULL COMMENT '上课日',
  `jieci` varchar(200) DEFAULT NULL COMMENT '节次',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiezhishijian` datetime DEFAULT NULL COMMENT '截止时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechenghao` (`kechenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='签到信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiandaoxinxi`
--

LOCK TABLES `qiandaoxinxi` WRITE;
/*!40000 ALTER TABLE `qiandaoxinxi` DISABLE KEYS */;
INSERT INTO `qiandaoxinxi` VALUES (51,'2022-03-28 08:41:28','班级名称1','1111111111','课程名称1','课程类别1','周次1','星期一','第一节','教师工号1','教师姓名1','2022-03-28 16:41:28'),(52,'2022-03-28 08:41:28','班级名称2','2222222222','课程名称2','课程类别2','周次2','星期一','第一节','教师工号2','教师姓名2','2022-03-28 16:41:28'),(53,'2022-03-28 08:41:28','班级名称3','3333333333','课程名称3','课程类别3','周次3','星期一','第一节','教师工号3','教师姓名3','2022-03-28 16:41:28'),(54,'2022-03-28 08:41:28','班级名称4','4444444444','课程名称4','课程类别4','周次4','星期一','第一节','教师工号4','教师姓名4','2022-03-28 16:41:28'),(55,'2022-03-28 08:41:28','班级名称5','5555555555','课程名称5','课程类别5','周次5','星期一','第一节','教师工号5','教师姓名5','2022-03-28 16:41:28'),(56,'2022-03-28 08:41:28','班级名称6','6666666666','课程名称6','课程类别6','周次6','星期一','第一节','教师工号6','教师姓名6','2022-03-28 16:41:28');
/*!40000 ALTER TABLE `qiandaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiaxinxi`
--

DROP TABLE IF EXISTS `qingjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `kechenghao` varchar(200) DEFAULT NULL COMMENT '课程号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleibie` varchar(200) DEFAULT NULL COMMENT '课程类别',
  `zhouci` varchar(200) DEFAULT NULL COMMENT '周次',
  `shangkeri` varchar(200) DEFAULT NULL COMMENT '上课日',
  `jieci` varchar(200) DEFAULT NULL COMMENT '节次',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `qingjiayuanyin` varchar(200) DEFAULT NULL COMMENT '请假原因',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechenghao` (`kechenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='请假信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiaxinxi`
--

LOCK TABLES `qingjiaxinxi` WRITE;
/*!40000 ALTER TABLE `qingjiaxinxi` DISABLE KEYS */;
INSERT INTO `qingjiaxinxi` VALUES (71,'2022-03-28 08:41:28','班级名称1','1111111111','课程名称1','课程类别1','周次1','星期一','第一节','教师工号1','教师姓名1','请假原因1','学号1','姓名1','2022-03-28 16:41:28','是',''),(72,'2022-03-28 08:41:28','班级名称2','2222222222','课程名称2','课程类别2','周次2','星期一','第一节','教师工号2','教师姓名2','请假原因2','学号2','姓名2','2022-03-28 16:41:28','是',''),(73,'2022-03-28 08:41:28','班级名称3','3333333333','课程名称3','课程类别3','周次3','星期一','第一节','教师工号3','教师姓名3','请假原因3','学号3','姓名3','2022-03-28 16:41:28','是',''),(74,'2022-03-28 08:41:28','班级名称4','4444444444','课程名称4','课程类别4','周次4','星期一','第一节','教师工号4','教师姓名4','请假原因4','学号4','姓名4','2022-03-28 16:41:28','是',''),(75,'2022-03-28 08:41:28','班级名称5','5555555555','课程名称5','课程类别5','周次5','星期一','第一节','教师工号5','教师姓名5','请假原因5','学号5','姓名5','2022-03-28 16:41:28','是',''),(76,'2022-03-28 08:41:28','班级名称6','6666666666','课程名称6','课程类别6','周次6','星期一','第一节','教师工号6','教师姓名6','请假原因6','学号6','姓名6','2022-03-28 16:41:28','是','');
/*!40000 ALTER TABLE `qingjiaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-28 08:41:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-03-28 08:41:28','学号1','123456','姓名1','男','年级1','专业1','班级1','13823888881','upload/xuesheng_zhaopian1.jpg'),(12,'2022-03-28 08:41:28','学号2','123456','姓名2','男','年级2','专业2','班级2','13823888882','upload/xuesheng_zhaopian2.jpg'),(13,'2022-03-28 08:41:28','学号3','123456','姓名3','男','年级3','专业3','班级3','13823888883','upload/xuesheng_zhaopian3.jpg'),(14,'2022-03-28 08:41:28','学号4','123456','姓名4','男','年级4','专业4','班级4','13823888884','upload/xuesheng_zhaopian4.jpg'),(15,'2022-03-28 08:41:28','学号5','123456','姓名5','男','年级5','专业5','班级5','13823888885','upload/xuesheng_zhaopian5.jpg'),(16,'2022-03-28 08:41:28','学号6','123456','姓名6','男','年级6','专业6','班级6','13823888886','upload/xuesheng_zhaopian6.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 21:26:59
