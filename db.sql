-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django2j519
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
-- Current Database: `django2j519`
--

/*!40000 DROP DATABASE IF EXISTS `django2j519`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django2j519` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `django2j519`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-05-05 07:19:17',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-05-05 07:19:17',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-05-05 07:19:17',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-05-05 07:19:17',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-05-05 07:19:17',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-05-05 07:19:17',16,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinleixing`
--

DROP TABLE IF EXISTS `caipinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinleixing` varchar(200) DEFAULT NULL COMMENT '菜品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='菜品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinleixing`
--

LOCK TABLES `caipinleixing` WRITE;
/*!40000 ALTER TABLE `caipinleixing` DISABLE KEYS */;
INSERT INTO `caipinleixing` VALUES (21,'2022-05-05 07:19:17','小吃'),(22,'2022-05-05 07:19:17','菜品类型2'),(23,'2022-05-05 07:19:17','菜品类型3'),(24,'2022-05-05 07:19:17','菜品类型4'),(25,'2022-05-05 07:19:17','菜品类型5'),(26,'2022-05-05 07:19:17','菜品类型6');
/*!40000 ALTER TABLE `caipinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinxinxi`
--

DROP TABLE IF EXISTS `caipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipinleixing` varchar(200) NOT NULL COMMENT '菜品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `yujishijian` varchar(200) NOT NULL COMMENT '预计时间',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `price` float DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='菜品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinxinxi`
--

LOCK TABLES `caipinxinxi` WRITE;
/*!40000 ALTER TABLE `caipinxinxi` DISABLE KEYS */;
INSERT INTO `caipinxinxi` VALUES (31,'2022-05-05 07:19:17','烤翅','小吃','upload/1651735451830.jpg','微辣','15分钟','<p><br></p><p><img src=\"http://localhost:8080/django2j519/upload/1651735461481.jpg\"></p><p><img src=\"http://localhost:8080/django2j519/upload/1651735463649.jpg\"></p><p><img src=\"http://localhost:8080/django2j519/upload/1651735465628.jpg\"></p><p><img src=\"http://localhost:8080/django2j519/upload/1651735467536.jpg\"></p><p>这里可以发布一些相关菜品介绍的。。</p>','2022-05-05 15:19:17',55),(32,'2022-05-05 07:19:17','菜品名称2','菜品类型2','upload/caipinxinxi_tupian2.jpg','口味2','预计时间2','菜品介绍2','2022-05-05 15:19:17',99.9),(33,'2022-05-05 07:19:17','菜品名称3','菜品类型3','upload/caipinxinxi_tupian3.jpg','口味3','预计时间3','菜品介绍3','2022-05-05 15:19:17',99.9),(34,'2022-05-05 07:19:17','菜品名称4','菜品类型4','upload/caipinxinxi_tupian4.jpg','口味4','预计时间4','菜品介绍4','2022-05-05 15:19:17',99.9),(35,'2022-05-05 07:19:17','菜品名称5','菜品类型5','upload/caipinxinxi_tupian5.jpg','口味5','预计时间5','菜品介绍5','2022-05-05 15:19:17',99.9),(36,'2022-05-05 07:19:17','菜品名称6','菜品类型6','upload/caipinxinxi_tupian6.jpg','口味6','预计时间6','菜品介绍6','2022-05-05 15:19:17',99.9);
/*!40000 ALTER TABLE `caipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'caipinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651735554432 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1651735243008,'2022-05-05 07:20:43','caipinxinxi',11,33,'菜品名称3','upload/caipinxinxi_tupian3.jpg',2,99.9,0,'菜品类型3'),(1651735257056,'2022-05-05 07:20:57','caipinxinxi',11,36,'菜品名称6','upload/caipinxinxi_tupian6.jpg',2,99.9,0,'菜品类型6');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','upload/1651735482654.jpeg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusscaipinxinxi`
--

DROP TABLE IF EXISTS `discusscaipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651735697928 DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusscaipinxinxi`
--

LOCK TABLES `discusscaipinxinxi` WRITE;
/*!40000 ALTER TABLE `discusscaipinxinxi` DISABLE KEYS */;
INSERT INTO `discusscaipinxinxi` VALUES (81,'2022-05-05 07:19:17',1,1,'用户名1','评论内容1','回复内容1'),(82,'2022-05-05 07:19:17',2,2,'用户名2','评论内容2','回复内容2'),(83,'2022-05-05 07:19:17',3,3,'用户名3','评论内容3','回复内容3'),(84,'2022-05-05 07:19:17',4,4,'用户名4','评论内容4','回复内容4'),(85,'2022-05-05 07:19:17',5,5,'用户名5','评论内容5','回复内容5'),(86,'2022-05-05 07:19:17',6,6,'用户名6','评论内容6','回复内容6'),(1651735697927,'2022-05-05 07:28:17',31,1651735368012,'2','6666','9999');
/*!40000 ALTER TABLE `discusscaipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) NOT NULL COMMENT '会员号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) NOT NULL COMMENT '邮箱',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanhao` (`huiyuanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1651735368013 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (11,'2022-05-05 07:19:17','1','1','姓名1','男','upload/huiyuan_touxiang1.jpg','773890001@qq.com','13823888881',100),(12,'2022-05-05 07:19:17','会员号2','123456','姓名2','男','upload/huiyuan_touxiang2.jpg','773890002@qq.com','13823888882',100),(13,'2022-05-05 07:19:17','会员号3','123456','姓名3','男','upload/huiyuan_touxiang3.jpg','773890003@qq.com','13823888883',100),(14,'2022-05-05 07:19:17','会员号4','123456','姓名4','男','upload/huiyuan_touxiang4.jpg','773890004@qq.com','13823888884',100),(15,'2022-05-05 07:19:17','会员号5','123456','姓名5','男','upload/huiyuan_touxiang5.jpg','773890005@qq.com','13823888885',100),(16,'2022-05-05 07:19:17','会员号6','123456','姓名6','男','upload/huiyuan_touxiang6.jpg','773890006@qq.com','13823888886',100),(1651735368012,'2022-05-05 07:22:48','2','1','张莉','女','upload/1651735389712.jpg','12121@12.com','15214121412',711.4);
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'caipinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1651735624949 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1651735262197,'2022-05-05 07:21:02','20225515215545224633','caipinxinxi',11,33,'菜品名称3','upload/caipinxinxi_tupian3.jpg',2,99.9,99.9,199.8,199.8,1,'未支付',NULL,NULL,NULL,NULL,'菜品类型3'),(1651735262204,'2022-05-05 07:21:02','20225515215545602507','caipinxinxi',11,36,'菜品名称6','upload/caipinxinxi_tupian6.jpg',2,99.9,99.9,199.8,199.8,1,'未支付',NULL,NULL,NULL,NULL,'菜品类型6'),(1651735576985,'2022-05-05 07:26:16','20225515271024201299','caipinxinxi',1651735368012,36,'菜品名称6','upload/caipinxinxi_tupian6.jpg',2,99.9,99.9,199.8,199.8,1,'已取消',NULL,NULL,NULL,NULL,'菜品类型6'),(1651735577023,'2022-05-05 07:26:17','20225515271027218708','caipinxinxi',1651735368012,34,'菜品名称4','upload/caipinxinxi_tupian4.jpg',2,99.9,99.9,199.8,199.8,1,'未支付',NULL,NULL,NULL,NULL,'菜品类型4'),(1651735577025,'2022-05-05 07:26:17','20225515271026850542','caipinxinxi',1651735368012,31,'烤翅','upload/1651735451830.jpg',2,55,55,110,110,1,'已退款',NULL,NULL,NULL,NULL,'小吃'),(1651735624855,'2022-05-05 07:27:04','2022551527588690153','caipinxinxi',1651735368012,36,'菜品名称6','upload/caipinxinxi_tupian6.jpg',2,99.9,99.9,199.8,199.8,1,'已支付',NULL,NULL,NULL,NULL,'菜品类型6'),(1651735624902,'2022-05-05 07:27:04','2022551527589155344','caipinxinxi',1651735368012,34,'菜品名称4','upload/caipinxinxi_tupian4.jpg',2,99.9,99.9,199.8,199.8,1,'已完成',NULL,NULL,NULL,NULL,'菜品类型4'),(1651735624948,'2022-05-05 07:27:04','2022551527589696026','caipinxinxi',1651735368012,31,'烤翅','upload/1651735451830.jpg',2,55,55,110,110,1,'已完成',NULL,NULL,NULL,NULL,'小吃');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651735547675 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1651735222524,'2022-05-05 07:20:22',11,34,'caipinxinxi','菜品名称4','upload/caipinxinxi_tupian4.jpg','1','菜品类型4'),(1651735525496,'2022-05-05 07:25:25',1651735368012,36,'caipinxinxi','','','1',NULL),(1651735547674,'2022-05-05 07:25:47',1651735368012,31,'caipinxinxi','烤翅','upload/1651735451830.jpg','1','小吃');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-05 07:19:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06 20:43:57
