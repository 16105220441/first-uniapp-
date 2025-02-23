-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopping_datasource
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `a`
--

DROP TABLE IF EXISTS `a`;
/*!50001 DROP VIEW IF EXISTS `a`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `a` AS SELECT 
 1 AS `product_id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `product_image`,
 1 AS `original_price`,
 1 AS `discount_price`,
 1 AS `product_sales`,
 1 AS `category_id`,
 1 AS `category_name`,
 1 AS `content`,
 1 AS `stock_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `carousel`
--

DROP TABLE IF EXISTS `carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carousel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `description` varchar(255) DEFAULT NULL COMMENT '图片描述',
  `carousel_type_id` int DEFAULT NULL COMMENT '轮播图分类id',
  PRIMARY KEY (`id`),
  KEY `carousel_type_id` (`carousel_type_id`),
  CONSTRAINT `carousel_ibfk_1` FOREIGN KEY (`carousel_type_id`) REFERENCES `carousel_image_classification` (`classification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='首页轮播图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousel`
--

LOCK TABLES `carousel` WRITE;
/*!40000 ALTER TABLE `carousel` DISABLE KEYS */;
INSERT INTO `carousel` VALUES (1,'https://smart-shop.itheima.net/uploads/10001/20230320/6d239000de9c3f12aafa571349b63d22.jpg',NULL,NULL,NULL),(2,'https://smart-shop.itheima.net/uploads/10001/20230320/5901a2e13e1075882950af75c98d0007.jpg',NULL,NULL,NULL),(3,'https://smart-shop.itheima.net/uploads/10001/20230320/7143e84bf3dd41fa67b9675a9e5d81a3.jpg',NULL,NULL,1);
/*!40000 ALTER TABLE `carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carousel_image_classification`
--

DROP TABLE IF EXISTS `carousel_image_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carousel_image_classification` (
  `classification_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL COMMENT '类型名称',
  PRIMARY KEY (`classification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='轮播图分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousel_image_classification`
--

LOCK TABLES `carousel_image_classification` WRITE;
/*!40000 ALTER TABLE `carousel_image_classification` DISABLE KEYS */;
INSERT INTO `carousel_image_classification` VALUES (1,'衣服');
/*!40000 ALTER TABLE `carousel_image_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL COMMENT '父类id',
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `preview_image_url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `category_name_index` (`name`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parent_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,1,'手机','https://smart-shop.itheima.net/uploads/10001/20230320/f871b65f88d19fd894845451873c7035.png'),(2,1,'平板电脑','https://smart-shop.itheima.net/uploads/10001/20230320/43db9277c381eef488544252757ebef8.png'),(3,1,'热水器','https://smart-shop.itheima.net/uploads/10001/20230320/ff30e80831c1f16f4d090116f55c0912.png'),(4,1,'冰箱','https://smart-shop.itheima.net/uploads/10001/20230320/a70fd1db54e5cb283a2e2c5bd20329ce.png'),(5,1,'电风扇','https://smart-shop.itheima.net/uploads/10001/20230320/94842ecc23df77a534052ee01eb3989d.png'),(6,1,'奶粉','https://smart-shop.itheima.net/uploads/10001/20230320/beab1b310c450d97ccf9ef85702afdca.png'),(7,1,'白酒','https://smart-shop.itheima.net/uploads/10001/20230320/cea722f494e41aad0307c7271f92aaf7.png'),(8,1,'电火锅','https://smart-shop.itheima.net/uploads/10001/20230320/f0c5575a00bcb50929ae79560ae2d9dd.png'),(9,1,'牛奶','https://smart-shop.itheima.net/uploads/10001/20230320/6166fdce6dea7c37fcd3917e3d119f30.png'),(10,1,'纸尿裤','https://smart-shop.itheima.net/uploads/10001/20230320/fd928229f9abf2a4c24ebd5aa5598d28.png'),(11,1,'抽纸','https://smart-shop.itheima.net/uploads/10001/20230320/eb38d6a3ff1e449000dd680352257b91.png'),(12,1,'护肤套装','https://smart-shop.itheima.net/uploads/10001/20230320/908a91724108f0dc170c4b0fc2d0e9a3.png'),(13,1,'大汇聚','https://smart-shop.itheima.net/uploads/10001/20230320/bfa1f4d7678cb2528f42d1fbfdeb4b6b.png'),(14,1,'百亿补贴','https://smart-shop.itheima.net/uploads/10001/20230320/8ed619b2fb0de8380cf8842923def5d6.png'),(15,1,'好物天天抢','https://smart-shop.itheima.net/uploads/10001/20230320/2e8243f74950a481f73ed4b992c07006.png'),(16,2,'好物天天抢','https://smart-shop.itheima.net/uploads/10001/20230321/2d6a45ff5b80e014abeb19dac6aad619.jpg'),(17,2,'苹果手机','https://smart-shop.itheima.net/uploads/10001/20230321/8836fc46fa74226ec3e406e3a05386ee.jpg'),(18,2,'游戏手机','https://smart-shop.itheima.net/uploads/10001/20230321/02c0fcc9b4b0b44d0fd96c7173129336.jpg'),(19,2,'拍照手机','https://smart-shop.itheima.net/uploads/10001/20230321/bfbcd59dce7529123087e21900a62d38.jpg'),(20,2,'折叠屏手机','https://smart-shop.itheima.net/uploads/10001/20230321/c57bfa2a9dd80e4ffe6727ef75a84308.jpg'),(21,2,'老人机','https://smart-shop.itheima.net/uploads/10001/20230321/2fe283dd266b5e2f4143d80da3725356.jpg'),(22,2,'骁龙手机','https://smart-shop.itheima.net/uploads/10001/20230321/3d2e748dd4e319b5bc20247bc02b2984.jpg'),(23,2,'以旧换新','https://smart-shop.itheima.net/uploads/10001/20230321/b2d59b888977c2e42b5f28f16796d2ab.jpg'),(24,2,'二手优品','https://smart-shop.itheima.net/uploads/10001/20230321/8e26de46f4668d7a22c7dcc7cb9b2b3d.jpg'),(25,2,'充电宝','https://smart-shop.itheima.net/uploads/10001/20230321/f323e65fea15ce209721ebb4c11c80e4.jpg'),(26,2,'数据线','https://smart-shop.itheima.net/uploads/10001/20230321/4cf5158dade4639b09ce4a19661250ff.png'),(27,2,'手机壳\\/套','https://smart-shop.itheima.net/uploads/10001/20230321/b8a60a790d4c88a61f50872ef3178ce5.png'),(28,2,'手机膜','https://smart-shop.itheima.net/uploads/10001/20230321/26fa29caf9e2e6cb513823ea373bb195.jpg'),(29,2,'苹果套餐','https://smart-shop.itheima.net/uploads/10001/20230321/c034fdbbc8f95318442478d96624808d.jpg'),(30,3,'空调挂机','https://smart-shop.itheima.net/uploads/10001/20230321/254ace3fb36423235279179b360bc161.jpg'),(31,3,'空调柜机','https://smart-shop.itheima.net/uploads/10001/20230321/935cc7e8d208add211bf050f4037083d.jpg'),(32,3,'新风空调','https://smart-shop.itheima.net/uploads/10001/20230321/0ff2c4bd54ec8fd38fd1c0049501e127.jpg'),(33,3,'风管机','https://smart-shop.itheima.net/uploads/10001/20230321/ca93f57fed2ea2911ba898eb8e3e8424.jpg'),(34,3,'新一级能效','https://smart-shop.itheima.net/uploads/10001/20230321/ebe34ce18e798af078323b23a7b36727.jpg'),(35,3,'空调套餐','https://smart-shop.itheima.net/uploads/10001/20230321/047a8775d8bd737ed6c0400c93e8d366.jpg'),(36,3,'移动空调','https://smart-shop.itheima.net/uploads/10001/20230321/831168725570c31aceb7aa39cd4025bc.jpg'),(37,3,'多联机','https://smart-shop.itheima.net/uploads/10001/20230321/ab063743631150a6f2933c9d00d6fc99.jpg'),(39,4,'对开门冰箱','https://smart-shop.itheima.net/uploads/10001/20230321/8297724286050b67847c7363cd423129.jpg'),(40,4,'十字对开门','https://smart-shop.itheima.net/uploads/10001/20230321/203cdd5a3f6e0299753d74fff18a1b47.jpg'),(41,4,'多门冰箱','https://smart-shop.itheima.net/uploads/10001/20230321/44714a908e75631719eb6c9d387f38df.jpg'),(42,4,'三门冰箱','https://smart-shop.itheima.net/uploads/10001/20230321/775a2aafe39a1dfbae20e50e055f0d48.jpg'),(43,4,'双面冰箱','https://smart-shop.itheima.net/uploads/10001/20230321/51eb19844f9c291e9f00beea87e71e24.jpg'),(44,4,'卧式冷柜','https://smart-shop.itheima.net/uploads/10001/20230321/33d312c2800c280c5cc663708c3c9880.jpg'),(45,4,'立式冷柜','https://smart-shop.itheima.net/uploads/10001/20230321/5ec8e1711faca92d20285cc24d80da8a.jpg'),(46,4,'冰吧','https://smart-shop.itheima.net/uploads/10001/20230321/ebd602e56e844c0f58aaa8aa566e61b4.jpg'),(47,4,'酒柜','https://smart-shop.itheima.net/uploads/10001/20230321/a5f76d7896d6803a29d5f49c78418caf.jpg'),(48,4,'风冷无霜','https://smart-shop.itheima.net/uploads/10001/20230321/32d944dd8eb54a0cab88e5159dd61e16.jpg'),(49,4,'杀菌净味','https://smart-shop.itheima.net/uploads/10001/20230321/d5e0f4f8e37d1264d3fa43e8cbc7863b.jpg'),(50,4,'冰洗套餐','https://smart-shop.itheima.net/uploads/10001/20230321/3f230b85e9ebb65e4cf76db9a1f5b137.jpg'),(51,5,'波轮洗衣机','https://smart-shop.itheima.net/uploads/10001/20230321/681f92796846c249088239d50d872e2f.jpg'),(52,5,'深桶洗衣机','https://smart-shop.itheima.net/uploads/10001/20230321/107c65bf1f95c9e68f62ec9b02904850.jpg'),(53,5,'洗干一体机','https://smart-shop.itheima.net/uploads/10001/20230321/b8e08c1152eede461fd4f28f0f616a83.jpg'),(54,6,'游戏电视','https://smart-shop.itheima.net/uploads/10001/20230321/f46ebcf25c63da624a26595bd4345c9d.jpg'),(55,6,'全面屏电视','https://smart-shop.itheima.net/uploads/10001/20230321/54de155831de5bb1afeeecfe266a0f6d.jpg'),(56,6,'OLED电视','https://smart-shop.itheima.net/uploads/10001/20230321/ed2600b8adc23ed01d5b2b5e51f721fe.jpg'),(57,7,'电风扇','https://smart-shop.itheima.net/uploads/10001/20230321/66144f643e5b45b8ea44ebf549c4a5e4.jpg'),(58,7,'破壁机','https://smart-shop.itheima.net/uploads/10001/20230321/481f03c1d9c5012c923bbf8cd837ff64.jpg'),(59,7,'空气炸锅','https://smart-shop.itheima.net/uploads/10001/20230321/76a706c1f90daca00b29eadba3129cdd.jpg'),(60,7,'扫地机器人','https://smart-shop.itheima.net/uploads/10001/20230321/84bb064c8ef2ffc8d7d08302249f9c35.jpg'),(61,7,'空气净化器','https://smart-shop.itheima.net/uploads/10001/20230321/1c85ffc085270341365b8eb5e6fcc938.jpg'),(62,8,'笔记本','https://smart-shop.itheima.net/uploads/10001/20230321/a71fe220ea6ae84bb4dbe8a94560bd90.png'),(63,8,'游戏本','https://smart-shop.itheima.net/uploads/10001/20230321/bfbe69cba827f1fcc89a4a438cd85449.png'),(64,8,'轻薄本','https://smart-shop.itheima.net/uploads/10001/20230321/6476af08d3b29adc6ab7f79e21236e1d.png');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `pick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `status` enum('active','log_out') DEFAULT 'active' COMMENT '用户状态',
  `avatar` text COMMENT '头像',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,NULL,'123456789',NULL,NULL,'active','https://smart-shop.itheima.net/uploads/10001/20230321/a0db9adb2e666a65bc8dd133fbed7834.png'),(2,NULL,'1234567899',NULL,NULL,'active','https://smart-shop.itheima.net/uploads/10001/20230321/a0db9adb2e666a65bc8dd133fbed7834.png'),(3,NULL,'123456789910',NULL,NULL,'active','https://smart-shop.itheima.net/uploads/10001/20230321/a0db9adb2e666a65bc8dd133fbed7834.png'),(8,NULL,'15800146202',NULL,NULL,'active','https://smart-shop.itheima.net/uploads/10001/20230321/a0db9adb2e666a65bc8dd133fbed7834.png'),(9,'哈哈啊','15800146902',NULL,NULL,'active',NULL),(10,NULL,'15800146903',NULL,NULL,'active',NULL),(11,NULL,'15800146303',NULL,NULL,'active',NULL),(12,NULL,'17819258363',NULL,NULL,'active',NULL),(13,'suNTTu','15800146315',NULL,NULL,'active',NULL),(14,'AB0k6L','15800146905',NULL,NULL,'active',NULL),(15,'V12Ku8','15800146904',NULL,NULL,'active',NULL),(16,'nH2mO5','',NULL,NULL,'active',NULL),(17,'TiCvIn','15800146907',NULL,NULL,'active',NULL),(18,'DticRm','15800136902',NULL,NULL,'active',NULL),(19,'sjyxAS','13333333333',NULL,NULL,'active',NULL),(20,'dXN4HQ','15800146909',NULL,NULL,'active',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `oder_detail_id` int NOT NULL COMMENT '一单订单中的子订单id',
  `customer_id` int NOT NULL COMMENT '用户id',
  PRIMARY KEY (`order_id`),
  KEY `order_order_detail_order_detail_id_fk` (`oder_detail_id`),
  KEY `order_customers_customer_id_fk` (`customer_id`),
  CONSTRAINT `order_customers_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `order_order_detail_order_detail_id_fk` FOREIGN KEY (`oder_detail_id`) REFERENCES `order_detail` (`order_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `order_detail_id` int NOT NULL AUTO_INCREMENT COMMENT '订单详情id',
  `customer_id` int DEFAULT NULL COMMENT '用户id',
  `product_id` int DEFAULT NULL COMMENT '产品id',
  `date` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `status` enum('unpaid','paid','unship','ship','already_stored','completed') DEFAULT 'unship' COMMENT '订单状态',
  `item_total_price` double DEFAULT NULL COMMENT '订单详情的总价',
  `num` int DEFAULT NULL COMMENT '商品数量',
  `payment_method` enum('wechat_pay','bank_card_pay','douyin_pay') DEFAULT NULL COMMENT '支付方式',
  `address_detail_id` int DEFAULT NULL COMMENT '收货地址id',
  PRIMARY KEY (`order_detail_id`),
  KEY `order_detail_customers_customer_id_fk` (`customer_id`),
  KEY `order_detail_products_product_id_fk` (`product_id`),
  KEY `order_detail_shopping_address_detail_address_detail_id_fk` (`address_detail_id`),
  CONSTRAINT `order_detail_customers_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `order_detail_products_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `order_detail_shopping_address_detail_address_detail_id_fk` FOREIGN KEY (`address_detail_id`) REFERENCES `shopping_address_detail` (`address_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_category`
--

DROP TABLE IF EXISTS `parent_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='父分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_category`
--

LOCK TABLES `parent_category` WRITE;
/*!40000 ALTER TABLE `parent_category` DISABLE KEYS */;
INSERT INTO `parent_category` VALUES (1,'热门推荐'),(2,'手机'),(3,'空调'),(4,'冰箱'),(5,'洗衣机'),(6,'电视'),(7,'生活家电'),(8,'电脑办公'),(9,'厨卫大电'),(10,'母婴用品'),(11,'个护清洁'),(12,'家纺时尚'),(13,'智慧逸品'),(14,'智慧超市'),(15,'运动户外'),(16,'智慧服务');
/*!40000 ALTER TABLE `parent_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_detail`
--

DROP TABLE IF EXISTS `product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_detail` (
  `product_detail_id` int NOT NULL AUTO_INCREMENT,
  `product_carousel` varchar(255) DEFAULT NULL COMMENT '产品轮播图',
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`product_detail_id`),
  KEY `product_detail_products_id_fk` (`product_id`),
  CONSTRAINT `product_detail_products_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='产品详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_detail`
--

LOCK TABLES `product_detail` WRITE;
/*!40000 ALTER TABLE `product_detail` DISABLE KEYS */;
INSERT INTO `product_detail` VALUES (1,'http://smart-shop.itheima.net/uploads/10001/20230321/8f505c6c437fc3d4b4310b57b1567544.jpg',1),(2,'http://smart-shop.itheima.net/uploads/10001/20230321/fa20dea3709b54444a2dfc2db8b39190.jpg',1),(3,'http://smart-shop.itheima.net/uploads/10001/20230321/b22edff057986a9f82100c4661596dc8.jpg',1),(4,'http://smart-shop.itheima.net/uploads/10001/20230321/466724f05d9244533cf747aa9c6968ff.jpg',1),(5,'http://smart-shop.itheima.net/uploads/10001/20230321/93b17aaaa38bbbcc1d699bdfc798713b.jpg',1),(6,'http://smart-shop.itheima.net/uploads/10001/20230321/c4b5c61e46489bb9b9c0630002fbd69e.jpg',2),(7,'http://smart-shop.itheima.net/uploads/10001/20230321/0ee2b454841d9725021f803b853661ab.jpg',2),(8,'http://smart-shop.itheima.net/uploads/10001/20230321/0ee2b454841d9725021f803b853661ab.jpg',2),(9,'http://smart-shop.itheima.net/uploads/10001/20230321/60f39ff4fe9737be0b4c3244e1d10c10.jpg',2),(10,'http://smart-shop.itheima.net/uploads/10001/20230321/4f92f03a85f6aa0025240115d1683c42.jpg',2),(11,'http://smart-shop.itheima.net/uploads/10001/20230321/bfe7f91b8413f35f8a222450d630d0c0.jpg',3),(12,'\"http://smart-shop.itheima.net/uploads/10001/20230321/9bce1005f6bd8ee2e32eecd0b0fb1512.jpg',3),(13,'http://smart-shop.itheima.net/uploads/10001/20230321/9f99b9a06614b60dad12abfa45711029.jpg',3),(14,'http://smart-shop.itheima.net/uploads/10001/20230321/3b41bb458273299f02e0f0b7b60d1e9f.jpg',3),(15,'http://smart-shop.itheima.net/uploads/10001/20230321/5c5c095502c09a9adae70d1d691b0166.jpg',4),(16,'http://smart-shop.itheima.net/uploads/10001/20230321/233679896e75827c4cfa7ca9c5abd45d.jpg',4),(17,'http://smart-shop.itheima.net/uploads/10001/20230321/7513f1ae3be1b10120a2c5dcee213e52.jpg',4),(18,'http://smart-shop.itheima.net/uploads/10001/20230321/58773ca3743ef5aa9a8fb0886195123d.jpg',4),(19,'http://smart-shop.itheima.net/uploads/10001/20230321/1a8a8f65a22eb3c8add8a9b76115c485.jpg',4),(20,'http://smart-shop.itheima.net/uploads/10001/20230321/7528f0580300abc5775dc9bb55a934ee.jpg',5),(21,'http://smart-shop.itheima.net/uploads/10001/20230321/01f6cd8c14cbd9757fe37631d004ca01.jpg',5),(22,'http://smart-shop.itheima.net/uploads/10001/20230321/5e5fc63397dc15b81115048d5f7c387a.jpg',5),(23,'http://smart-shop.itheima.net/uploads/10001/20230321/ce0a6070df55011fcfd88ebdc058fa8e.jpg',5),(24,'http://smart-shop.itheima.net/uploads/10001/20230321/0e484d2885e01fa566ba1c3bf13e7350.jpg',5),(25,'http://smart-shop.itheima.net/uploads/10001/20230321/a072ef0eef1648a5c4eae81fad1b7583.jpg',6),(26,'http://smart-shop.itheima.net/uploads/10001/20230321/c855e18d1f55f3775449de0b0d529341.jpg',6),(27,'http://smart-shop.itheima.net/uploads/10001/20230321/1ee4a369fa581eebf9553ff166debf62.jpg',6),(28,'http://smart-shop.itheima.net/uploads/10001/20230321/31d24dda0713a972c35b7fc8017b2a00.jpg',6),(29,'http://smart-shop.itheima.net/uploads/10001/20230321/b19c1abc922c29af22885f95a7e80707.jpg',6),(30,'\"http://smart-shop.itheima.net/uploads/10001/20230321/922b31bfa525919b1a1ece7ca7613c6e.jpg',7),(31,'http://smart-shop.itheima.net/uploads/10001/20230321/c3d643ff7d44e0bb16ca2c42a11b2df7.jpg',7),(32,'http://smart-shop.itheima.net/uploads/10001/20230321/d8d6781b6c4e8d515098b9c825f4db99.jpg',7),(33,'http://smart-shop.itheima.net/uploads/10001/20230321/c3ddd403978163e62bc0f427885b1975.jpg',7),(34,'http://smart-shop.itheima.net/uploads/10001/20230321/60c396eabf02068c538a15b31a951126.jpg',7);
/*!40000 ALTER TABLE `product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `review` text COMMENT '评论',
  `satisfaction` enum('1','2','3','4','5') DEFAULT '5' COMMENT '满意度',
  `customers_id` int DEFAULT NULL COMMENT '用户id',
  `product_id` int DEFAULT NULL COMMENT '产品id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`),
  KEY `product_reviews_customers_id_fk` (`customers_id`),
  KEY `product_reviews_products_id_fk` (`product_id`),
  CONSTRAINT `product_reviews_customers_id_fk` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `product_reviews_products_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='产品评论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
INSERT INTO `product_reviews` VALUES (1,'质量很不错 挺喜欢的','5',1,1,NULL),(2,'又买了一台 真的很喜欢','5',2,1,NULL),(3,'这个手机很不错','5',3,1,NULL),(4,'商品质量真不多哈','5',8,1,NULL),(5,'666','5',1,1,NULL),(6,'很不错的产品','5',2,1,NULL),(7,'3210','5',3,1,NULL),(8,'太便宜了','5',8,1,NULL),(9,'啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','5',1,1,NULL),(10,'666','5',2,1,NULL),(11,'555','5',3,2,NULL),(12,'还不错','5',8,2,NULL),(13,'好看，爱看','5',1,2,NULL),(14,'不错的手机','5',2,2,NULL),(15,'kun','5',3,2,NULL),(16,'不如华为','5',8,2,NULL),(17,'11','5',1,2,NULL),(18,'这个酒太辣了','5',2,3,NULL),(19,'111','5',3,3,NULL),(20,'好评','5',8,3,NULL),(21,'好评','5',1,3,NULL),(22,'鹅se','5',2,3,NULL),(23,'啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','5',3,3,NULL),(29,'好喝，爱喝','5',8,4,NULL),(30,'好喝！！！','5',1,5,NULL),(31,'asdfg','5',2,5,NULL),(32,'很不错的手机','5',3,6,NULL),(33,'啊啊啊啊啊','5',8,6,NULL),(34,'0444441234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789','5',1,6,NULL),(35,NULL,'5',2,NULL,NULL),(36,NULL,'5',3,NULL,NULL),(37,NULL,'5',8,NULL,NULL);
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `product_image` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `original_price` double DEFAULT NULL COMMENT '原价',
  `discount_price` double DEFAULT NULL COMMENT '折扣价',
  `product_sales` int DEFAULT NULL COMMENT '销售量',
  `category_id` int DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `content` text COMMENT '产品详情图片',
  `stock_total` int DEFAULT '0' COMMENT '库存',
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `id` (`product_id`),
  KEY `category_id` (`category_id`),
  KEY `products_category_name_fk` (`category_name`),
  CONSTRAINT `products_category_name_fk` FOREIGN KEY (`category_name`) REFERENCES `category` (`name`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'三星手机 SAMSUNG Galaxy S23 8GB+256GB 超视觉夜拍系统 超清夜景 悠雾紫 5G手机 游戏拍照旗舰机s23',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/8f505c6c437fc3d4b4310b57b1567544.jpg',8999,7999,517050,1,'手机','<table><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\" class=\"firstRow\"><td style=\"margin: 0px; padding: 0px;\"><a href=\"https://cuxiao.m.suning.com/scms/shoujiziyinghuichang.html?isSCMS=1\" sap-expo=\"true\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); outline: none 0px !important;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/kHgx21fZMWwqirkMhawkAw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></a></td></tr></tbody></table><p style=\"padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; color: rgb(34, 34, 34); white-space: normal;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/0rRMmncfF0kGjuK5cvLolg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p style=\"padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; color: rgb(34, 34, 34); white-space: normal;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/2P04A4Jn0HKxbKYSHc17kw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p style=\"padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; color: rgb(34, 34, 34); white-space: normal;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/l1ZEPifcq34geZv7aOxCMQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p style=\"padding: 0px;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/YD8f4FvV-L1AmdA1SDxdFw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/iZC9oUbvGTp6mfgWwygRLA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/sGP_igHXLo59dqdxBXrzKw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p style=\"padding: 0px;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/MT4k-mPd0veQXWPPO5yTIw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/1K48vT8ebFj3KgDkr91yPw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p style=\"padding: 0px;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/We3VeS8futphrBVbS69vkA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/vDQqItJHgBdH92CS_UOUNg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/5H0yEeKz9Lp3UWBwwW6Jmw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/6KwWbuT1rGQTGjLjnCzu8A.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/TQby1g6aoE2afwR99rfViw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/Kp9207UBEd9BbwwoaWKlkA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/aBRn3T1aFPu7mLpFLyNZkg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/GPzg5REUM2mGVVSpF9hgGg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/qJwvOdSK2WG1uiKyJaMRsQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/EzjRLCAz9kLa8hWQjk5XzA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/677p5Civfw-jegXHdGJcxQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/glD0spxOFfIBIhZXyqAoOA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/GHWQZUATVWXkqKA8cPzYVQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/ae9uIgZxnla55hDHk7VfgQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/wdg0s6EZyQoJ5RSRUHzKfg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/KYSdsBxLnOTv9zohgNFcSQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p><br/></p>\n',500),(2,'Apple iPhone 14 Pro Max 256G 银色 移动联通电信5G双卡双待手机',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/c4b5c61e46489bb9b9c0630002fbd69e.jpg',9899,8000,12863,1,'手机','<p><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/qZKgU-QKpYPEo7UYKeLWUw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/></p>\n',1000),(3,'[郎酒旗舰店郎牌郎酒]郎酒 郎牌郎酒 普郎 53度酱香型白酒 500ml*6瓶 整箱装白酒普郎原箱',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/bfe7f91b8413f35f8a222450d630d0c0.jpg',1620,1499,51931,7,'白酒','<p style=\"padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; color: rgb(34, 34, 34); white-space: normal;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/xZK7-ixAcwVqa-P1XEFA_A.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/5f2HNrmzMXT16KBwx2bJrQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/rxDYxXGiymYHifb6ppfBfw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/>&nbsp;</p><p style=\"padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; color: rgb(34, 34, 34); white-space: normal;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/jA_Za8lkjJGQ-f3uNUopUw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/OzuUMcw3O7y3uKkkHVureQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/ytWT4TRVbhBaeuX6ud6QPg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p><br/></p>\n',16000),(4,'[酒别重逢]贵州茅台酒 机场纪念茅台53度500ml+50ml*2酱香型白酒',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/5c5c095502c09a9adae70d1d691b0166.jpg',5999,5000,1858,7,'白酒','<p style=\"padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; color: rgb(34, 34, 34); white-space: normal;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/2RhyJmTtSqwC9Ar5E2Zlxg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/Xzpl0E2YYqgKiFV-3WkZgA.jpg\" alt=\"\" usemap=\"#bangox16473975080\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p><map name=\"bangox16473975080\" style=\"margin: 0px; padding: 0px;\"><area title=\"\" coords=\"2,0,400,210\" shape=\"rect\" href=\"https://product.suning.com/0071541398/12361718886.html?safp=d488778a.SFS_10448376.0.a0cab3caa1&safc=prd.0.0&safpn=10010\" target=\"_blank\" oldcoords=\"4,1,800,421\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"1,210,132,408\" shape=\"rect\" href=\"https://product.suning.com/0071541398/12362204721.html?safp=d488778a.SFS_10448376.0.014cf501ca&safc=prd.0.0&safpn=10010\" target=\"_blank\" oldcoords=\"2,421,265,817\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"132,211,267,409\" shape=\"rect\" href=\"https://product.suning.com/0071541398/12362205500.html?safp=d488778a.SFS_10448376.0.63e9d7dc2d&safc=prd.0.0&safpn=10010\" target=\"_blank\" oldcoords=\"265,423,535,819\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"268,211,399,409\" shape=\"rect\" href=\"https://product.suning.com/0071541398/12362204614.html?safp=d488778a.SFS_10448376.0.53ee9b1235&safc=prd.0.0&safpn=10010\" target=\"_blank\" oldcoords=\"537,423,798,818\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"16,500,196,548\" shape=\"rect\" href=\"https://jbcf.suning.com/list_210862938_1.html\" target=\"_blank\" oldcoords=\"33,1001,393,1096\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"208,503,393,545\" shape=\"rect\" href=\"https://jbcf.suning.com/list_210862939_1.html\" target=\"_blank\" oldcoords=\"416,1007,786,1091\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"18,568,191,606\" shape=\"rect\" href=\"https://jbcf.suning.com/list_210862942_1.html\" target=\"_blank\" oldcoords=\"36,1137,382,1213\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"205,566,385,604\" shape=\"rect\" href=\"https://jbcf.suning.com/list_210862945_1.html\" target=\"_blank\" oldcoords=\"411,1132,770,1209\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"15,624,196,664\" shape=\"rect\" href=\"https://jbcf.suning.com/list_210863036_1.html\" target=\"_blank\" oldcoords=\"30,1249,392,1328\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"210,621,381,662\" shape=\"rect\" href=\"https://jbcf.suning.com/list_210863166_1.html\" target=\"_blank\" oldcoords=\"421,1243,762,1324\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"16,680,189,722\" shape=\"rect\" href=\"https://jbcf.suning.com/list_210862940_1.html\" target=\"_blank\" oldcoords=\"33,1361,379,1445\" style=\"margin: 0px; padding: 0px;\"/><area title=\"\" coords=\"213,680,378,720\" shape=\"rect\" href=\"https://jbcf.suning.com/list_210863324_1.html\" target=\"_blank\" oldcoords=\"426,1360,757,1440\" style=\"margin: 0px; padding: 0px;\"/></map></p><p style=\"padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; color: rgb(34, 34, 34); white-space: normal;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/Zl1C-Apu0wjSdERB3R9hIw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/M4JLijFNzvlZ1fMhxOSFCQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/vSoRQVrh9wQWUBf5SLYWEQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/GodNpgD0_d25sFBsQ9VoNg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p><br/></p>\n',500),(5,'荷仕兰新西兰原装进口 暖阳高端中老年奶粉375g罐装 高钙高铁高硒 无添加蔗糖低GI配方糖尿三高放心力免疫乳铁蛋白',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/7528f0580300abc5775dc9bb55a934ee.jpg',102,52,1520,NULL,NULL,'<p><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/yZHOwdRfiNBAbcd4kVBZ1g.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/wRt3bNnBDniEjWV6Bth-Og.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/DOULXfU_WlBa1U9kc0YpmQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/DwoBzN0W8yJ5ipUmFKIOKw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/HPINoJYC-W_DcwiLKcefOA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/HMMmrPyPx9fzJQw5lrjEXw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/R0hgAQhWzIxMAb2_yo8KSQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/CbK2T1-Za1B4SQOtO4Loog.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/HAbrWYcBwZNUjVzoSzA4vg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/EkAb53JgeyXu5hD3C6FX0Q.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/j9HgYbXIvhJQbGszyBW_lg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/K0NWdsD3orowlcasVWZFgA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/PjAb2KF2v44SYaDPN2Xv7w.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/Q6KBctHfzKmKp7hr0FeBJQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/7Bzrj8_KGXB14r9L9LXy4w.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/vQtM7OGiB8VKgBKpY_uVxQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/OjjtzGeaOiWtivL_g_Cgtw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/Xsp_paYJ7JFKPff5B1aTfA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; border: 0px; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(242, 242, 242); width: 100%; height: auto;\"/></p><p><br/></p>\n',900),(6,'新Pad 14英寸 12+128 远峰蓝 M6平板电脑 智能安卓娱乐十核游戏学习二合一 低蓝光护眼超清4K全面三星屏5GWIFI全网通 蓝魔快本平板',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/a072ef0eef1648a5c4eae81fad1b7583.jpg',1299,1099,558,2,'平板电脑','<p style=\"padding: 0px; font-family: Arial, Helvetica, STHeiTi, sans-serif; color: rgb(34, 34, 34); white-space: normal;\"><a title=\"消费电子3月活动\" href=\"https://cuxiao.m.suning.com/scms/wapzf_11yue.html?isSCMS=1\" target=\"_blank\" sap-expo=\"true\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(51, 51, 51); outline: none 0px !important;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/-12ZzXPbILIMqLCjE0DCgg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></a></p><p style=\"padding: 0px;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/tItd6QmcReIF9Z9Z0pOONw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/IZOm8y0YQUT3Fw9vDZ_G9w.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/FBl9DA8dzXMCnAQo7VY-cA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/WNBPMoVKrYsL9S0y_0_XKw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/BHl92LBnSFVze5Y6dYB_BA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/URdPe5cvyiV62tYk5OWwxA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/iUYnkLRhfZoa73kt857sJQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/XKUwfUUSMUQnxErcd_vuBA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/R744889LS86Wlds4VEAlTQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/WDm3witGt7HiLMTU3cRDsA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/8_dM36xQ7gKFECte-FA6AA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/NEIGVP2sEcSEg_Gc7-I4tA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/QJMWxsP9nR5wOBIjsxsZLg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/2u2LMhvGq-aqFHhkuQlTwA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/08xiunajymps0bBKA1pKlA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/WnQcB9r3h09LlkBvyp_gtw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/gx6RcjjBGZK7ybe82-SeYw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/jK6BIbyevk1lVFeGTftf7g.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/B-WsdIe3a8w7CwsVMGk1cg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/K_tabckgcZXopgIqZK0cYQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/N_ETiFgZgaNHZBL1Uxdivg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/P4tD6KNR7bbqILRiaH7z5A.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/SG9dM0tA6_Pyvz6btInUpw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p><br/></p>\n',1000),(7,'康佳(KONKA)电热水器 家用杀菌储水式大容量 2000W速热 智能断电 内胆8年漏水免费换新 KX01-50',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/922b31bfa525919b1a1ece7ca7613c6e.jpg',399,299,1098,3,'热水器','<p style=\"padding: 0px;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/Fr9UKCRW4915-HPVOy6hfw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/1Ys-QEYnzXD1B9_DqrGMMg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/-pYLOdOtgiHqEzAXeQN14Q.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/5z0IK6DuGZ_CttpphHbBIA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/mcumcx4fHqSbFrXQuCCr4g.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/U_wFHUv_Hctw3oznT4Bw5w.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/aIPCWtjeALyHL_G6-lmo5A.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/ssnZRQ2bvB2yBAaqy0dufg.png\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/RQ_BHT7xmFBhuXWoFWkd4Q.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/-OzLSGOoDUnKl2s3MOVxtA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/bSIC18edrDxfzTpuO14pLg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/wfLRUsOvy_5mDYFnESdpUQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/qmOA9JgIFFVDlm4yIgK_UA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/ggWIEJXnGIpT3f2vlMBE6A.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/gSN-X6g6LMHAId6s_FaMOA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/rNt35bxgIIcOfRAZjmH5cg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/eaoijnNFcInCIj5eKcmMRw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/X5EduT0La0fl05SiM9uT7w.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/vPtjcPuyhPOnYMzCykGFOg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/klRNKvHhfOpa6JOCxJs73A.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/j44dh7NVQZpqlJyy6zOSOQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/Xc1eZetnWWc-_iriDHSGlg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/XRpzW1I7ho3BDzSJtsmYRg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/ICs4TKmQhCETHt12dIdmvA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/M6nGN9vJ_t6QAbq_sMEfNg.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/L0v8z2IRt_9UjBee67oTrw.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/o1oxUzFh8jBn_ICCBkF50Q.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p style=\"padding: 0px;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/f4GXf998OxOgZyhZgXIiXA.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p style=\"padding: 0px;\"><img src=\"https://uimgproxy.suning.cn/uimg1/sop/commodity/0owhmD6rS1KPtLhKxDN9UQ.jpg\" alt=\"\" style=\"margin: 0px; padding: 0px; border: 0px; width: 100%; height: auto;\"/></p><p><br/></p>\n',1000),(8,'米家小米出品456L对开门大容量家用冰箱双开门 嵌入式风冷无霜墨羽岩面板颜值出众银离子除菌BCD-456WMEA',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/969969a55b047c0a44df7320dda6d7b9.jpg',1969,1869,1513,5,'电风扇',NULL,100),(9,'海尔(Haier)470升十字对开门嵌入式冰箱 全变温空间 636mm纤薄机身 BCD-470WGHTD7ES9U1',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/249154fe5b8fe76dec57d9b427f06704.jpg',3999,3000,2463,5,'电风扇',NULL,100),(10,'艾美特(Airmate) 电风扇 五叶大风量4档遥控控制正常风睡眠风预约升降落地扇家用电扇空调伴侣 FS4056R-5',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/cb840d798319def25ea06e93a08de9c6.jpg',189,100,1989,5,'电风扇',NULL,100),(11,'美的(Midea)电扇风扇落地扇家用台立两用轻音循环通风大风量电扇台扇小风扇七叶立式迷你扇 [SAF30AC]',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/39b505c2205b69a8ad91601290c5ac65.jpg',108,58,1286,5,'电风扇',NULL,300),(12,'美的(Midea)电火锅温度调节功能分体式涮烤一体锅多功能大容量家用煎烤炒智能电火锅4LMC-DY26Easy501',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/74531e4d76c5fbadb0b6b7bddb178f8f.jpg',159,100,1381,8,'电火锅',NULL,0),(13,'伊利 金典 纯牛奶礼盒装 250ml*12/箱',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/e77e631bf1c6e99565ca9dbc04ce84ab.jpg',55,35,1099,9,'牛奶',NULL,0),(14,'蒙牛 特仑苏纯牛奶 250ml*12包 学生青少年营养早餐奶 送礼佳品 1月产',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/1d1801baa9c9b8d1d1524ec917d2adde.jpg',49,29,1990,9,'牛奶',NULL,0),(15,'FISH BASKET春季裤子男生春秋款九分潮牌宽松束脚春夏季哈伦工装运动休闲长裤',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/f2a0ad4b6acd36bbdbf83ad6759042f2.jpg',98,78,27404,NULL,NULL,NULL,0),(16,'新茶日照充足 高山绿茶云雾茶绿茶炒青茶毛尖茶浓香型茶叶散装500g',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/9e99669797f3771d1d9db6546b4499d7.jpg',88,58,9991,NULL,NULL,NULL,0),(17,'百草味 糕点点心 手撕面包 1000g 早餐面包原味办公室休闲零食食品饼干糕点整箱零食小面包蛋糕',NULL,'https://smart-shop.itheima.net/uploads/10001/20230321/a9f9c3fa1f7d2e47d096e11442c3ac00.jpg',21,11,1992,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_address`
--

DROP TABLE IF EXISTS `shopping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_address` (
  `address_id` int NOT NULL AUTO_INCREMENT COMMENT '收货地址id',
  `customer_id` int DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`address_id`),
  KEY `shopping_address_customers_customer_id_fk` (`customer_id`),
  CONSTRAINT `shopping_address_customers_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='收货地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_address`
--

LOCK TABLES `shopping_address` WRITE;
/*!40000 ALTER TABLE `shopping_address` DISABLE KEYS */;
INSERT INTO `shopping_address` VALUES (6,8),(3,9),(14,10),(7,11),(8,12),(9,13),(10,14),(11,15),(12,16),(13,17),(15,18),(16,19),(17,20);
/*!40000 ALTER TABLE `shopping_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_address_detail`
--

DROP TABLE IF EXISTS `shopping_address_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_address_detail` (
  `address_detail_id` int NOT NULL AUTO_INCREMENT COMMENT '收货地址详情id',
  `customer_id` int NOT NULL COMMENT '用户id',
  `name` varchar(255) DEFAULT NULL COMMENT '收货人的姓名',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `county` varchar(255) DEFAULT NULL COMMENT '区/县',
  `address_detail` varchar(255) DEFAULT NULL COMMENT '详细位置',
  `is_default` enum('true','false') DEFAULT 'false' COMMENT '默认收货地址',
  `tel` varchar(250) DEFAULT NULL COMMENT '收货人手机号',
  `address_id` int DEFAULT NULL COMMENT '收货地址id',
  PRIMARY KEY (`address_detail_id`),
  UNIQUE KEY `id` (`address_detail_id`),
  KEY `customer_id` (`customer_id`),
  KEY `shopping_address_detail_shopping_address_address_id_fk` (`address_id`),
  CONSTRAINT `shopping_address_detail_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `shopping_address_detail_shopping_address_address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `shopping_address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='收货地址详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_address_detail`
--

LOCK TABLES `shopping_address_detail` WRITE;
/*!40000 ALTER TABLE `shopping_address_detail` DISABLE KEYS */;
INSERT INTO `shopping_address_detail` VALUES (9,12,'小吴','北京市','北京市','东城区','杭州市西湖区 黄龙万科中心','false','15800146902',8),(11,14,'hahwhah','北京市','北京市','东城区','杭州市西湖区 黄龙万科中心','false','15800146905',10),(12,15,'hahha','天津市','天津市','和平区','杭州市西湖区 黄龙万科中心','false','15800146905',11),(31,9,'吴龙佑','上海市','上海市','卢湾区','1111','false','15800146902',3),(44,9,'小哈','内蒙古自治区','呼和浩特市','回民区','哈哈哈啊','false','15800146903',3),(45,19,'哈哈哈','云南省','曲靖市','马龙县','哈哈','false','15800146903',16),(47,10,'小哈','吉林省','长春市','宽城区','哈哈哈','true','15800146902',14),(49,10,'大欣','北京市','北京市','东城区','哈哈啊哈','false','15800146902',14),(50,10,'小天','吉林省','白山市','临江市','哈哈哈','false','15800146902',14);
/*!40000 ALTER TABLE `shopping_address_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customers_id` int DEFAULT NULL COMMENT '用户id',
  `total_price` double DEFAULT '0' COMMENT '总价',
  `total_quantity` int DEFAULT '0' COMMENT '总数量',
  PRIMARY KEY (`id`),
  KEY `shopping_cart_customers_id_fk` (`customers_id`),
  CONSTRAINT `shopping_cart_customers_id_fk` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (1,1,0,0),(6,9,48047,7),(7,10,86332,619),(8,8,17497,3),(9,11,8000,1),(10,12,-0.010000000009313226,0),(11,13,0,0),(12,14,0.01,1),(13,15,-0.000000000000054567461660326444,0),(14,16,0,0),(15,17,0,0),(16,18,0,0),(17,19,388925,208),(18,20,7999,1);
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart_detail`
--

DROP TABLE IF EXISTS `shopping_cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart_detail` (
  `detail_id` int NOT NULL AUTO_INCREMENT,
  `shopping_cart_id` int DEFAULT NULL COMMENT '购物车id',
  `product_id` int DEFAULT NULL COMMENT '商品id',
  `quantity` int DEFAULT NULL COMMENT '商品数量',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `item_total_price` double DEFAULT '0' COMMENT '该商品的总价',
  `customer_id` int DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`detail_id`),
  UNIQUE KEY `id` (`detail_id`),
  KEY `product_id` (`product_id`),
  KEY `shopping_cart_detail_shopping_cart_id_fk` (`shopping_cart_id`),
  KEY `shopping_cart_detail_customers_id_fk` (`customer_id`),
  CONSTRAINT `shopping_cart_detail_customers_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `shopping_cart_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `shopping_cart_detail_shopping_cart_id_fk` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_cart` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='购物车详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_detail`
--

LOCK TABLES `shopping_cart_detail` WRITE;
/*!40000 ALTER TABLE `shopping_cart_detail` DISABLE KEYS */;
INSERT INTO `shopping_cart_detail` VALUES (1,1,1,15,'2024-06-18 15:21:32','2024-06-19 03:09:24',0.1,1),(22,6,2,1,'2024-06-22 08:15:18','2024-06-22 08:15:18',8000,9),(26,8,3,1,'2024-06-24 06:48:53','2024-06-24 06:48:53',1499,8),(27,9,2,1,'2024-06-24 06:53:16','2024-06-24 06:53:16',8000,11),(33,12,1,1,'2024-06-25 05:31:49','2024-06-25 05:31:49',0.01,14),(39,8,1,2,'2024-10-22 13:37:50','2024-10-22 13:51:14',15998,8),(40,6,1,5,'2024-11-01 12:27:54','2024-11-10 00:43:59',39995,9),(41,6,5,1,'2024-11-02 14:47:39','2024-11-02 14:47:39',52,9),(53,17,2,39,'2024-11-09 23:47:11','2024-11-10 00:35:23',312000,19),(54,17,5,13,'2024-11-10 00:28:36','2024-11-10 00:28:36',676,19),(55,17,8,14,'2024-11-10 00:29:28','2024-11-10 00:29:28',26166,19),(56,17,9,15,'2024-11-10 00:30:38','2024-11-10 00:30:38',45000,19),(57,17,7,17,'2024-11-10 00:35:30','2024-11-10 00:35:30',5083,19),(82,18,1,1,'2024-11-10 08:13:10','2024-11-10 08:13:10',7999,20),(88,7,1,3,'2024-11-10 08:51:06','2024-11-10 13:20:10',23997,10),(90,7,2,1,'2024-11-10 13:20:32','2024-11-10 13:20:32',8000,10);
/*!40000 ALTER TABLE `shopping_cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_city`
--

DROP TABLE IF EXISTS `tl_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_city` (
  `CityID` int unsigned NOT NULL,
  `CityName` varchar(50) DEFAULT NULL,
  `ZipCode` varchar(50) DEFAULT NULL,
  `ProvinceID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CityID`),
  KEY `ProvinceID` (`ProvinceID`),
  CONSTRAINT `tl_city_ibfk_1` FOREIGN KEY (`ProvinceID`) REFERENCES `tl_province` (`ProvinceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='市';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_city`
--

LOCK TABLES `tl_city` WRITE;
/*!40000 ALTER TABLE `tl_city` DISABLE KEYS */;
INSERT INTO `tl_city` VALUES (1,'北京市','100000',1),(2,'天津市','100000',2),(3,'石家庄市','050000',3),(4,'唐山市','063000',3),(5,'秦皇岛市','066000',3),(6,'邯郸市','056000',3),(7,'邢台市','054000',3),(8,'保定市','071000',3),(9,'张家口市','075000',3),(10,'承德市','067000',3),(11,'沧州市','061000',3),(12,'廊坊市','065000',3),(13,'衡水市','053000',3),(14,'太原市','030000',4),(15,'大同市','037000',4),(16,'阳泉市','045000',4),(17,'长治市','046000',4),(18,'晋城市','048000',4),(19,'朔州市','036000',4),(20,'晋中市','030600',4),(21,'运城市','044000',4),(22,'忻州市','034000',4),(23,'临汾市','041000',4),(24,'吕梁市','030500',4),(25,'呼和浩特市','010000',5),(26,'包头市','014000',5),(27,'乌海市','016000',5),(28,'赤峰市','024000',5),(29,'通辽市','028000',5),(30,'鄂尔多斯市','010300',5),(31,'呼伦贝尔市','021000',5),(32,'巴彦淖尔市','014400',5),(33,'乌兰察布市','011800',5),(34,'兴安盟','137500',5),(35,'锡林郭勒盟','011100',5),(36,'阿拉善盟','016000',5),(37,'沈阳市','110000',6),(38,'大连市','116000',6),(39,'鞍山市','114000',6),(40,'抚顺市','113000',6),(41,'本溪市','117000',6),(42,'丹东市','118000',6),(43,'锦州市','121000',6),(44,'营口市','115000',6),(45,'阜新市','123000',6),(46,'辽阳市','111000',6),(47,'盘锦市','124000',6),(48,'铁岭市','112000',6),(49,'朝阳市','122000',6),(50,'葫芦岛市','125000',6),(51,'长春市','130000',7),(52,'吉林市','132000',7),(53,'四平市','136000',7),(54,'辽源市','136200',7),(55,'通化市','134000',7),(56,'白山市','134300',7),(57,'松原市','131100',7),(58,'白城市','137000',7),(59,'延边朝鲜族自治州','133000',7),(60,'哈尔滨市','150000',8),(61,'齐齐哈尔市','161000',8),(62,'鸡西市','158100',8),(63,'鹤岗市','154100',8),(64,'双鸭山市','155100',8),(65,'大庆市','163000',8),(66,'伊春市','152300',8),(67,'佳木斯市','154000',8),(68,'七台河市','154600',8),(69,'牡丹江市','157000',8),(70,'黑河市','164300',8),(71,'绥化市','152000',8),(72,'大兴安岭地区','165000',8),(73,'上海市','200000',9),(74,'南京市','210000',10),(75,'无锡市','214000',10),(76,'徐州市','221000',10),(77,'常州市','213000',10),(78,'苏州市','215000',10),(79,'南通市','226000',10),(80,'连云港市','222000',10),(81,'淮安市','223200',10),(82,'盐城市','224000',10),(83,'扬州市','225000',10),(84,'镇江市','212000',10),(85,'泰州市','225300',10),(86,'宿迁市','223800',10),(87,'杭州市','310000',11),(88,'宁波市','315000',11),(89,'温州市','325000',11),(90,'嘉兴市','314000',11),(91,'湖州市','313000',11),(92,'绍兴市','312000',11),(93,'金华市','321000',11),(94,'衢州市','324000',11),(95,'舟山市','316000',11),(96,'台州市','318000',11),(97,'丽水市','323000',11),(98,'合肥市','230000',12),(99,'芜湖市','241000',12),(100,'蚌埠市','233000',12),(101,'淮南市','232000',12),(102,'马鞍山市','243000',12),(103,'淮北市','235000',12),(104,'铜陵市','244000',12),(105,'安庆市','246000',12),(106,'黄山市','242700',12),(107,'滁州市','239000',12),(108,'阜阳市','236100',12),(109,'宿州市','234100',12),(110,'巢湖市','238000',12),(111,'六安市','237000',12),(112,'亳州市','236800',12),(113,'池州市','247100',12),(114,'宣城市','366000',12),(115,'福州市','350000',13),(116,'厦门市','361000',13),(117,'莆田市','351100',13),(118,'三明市','365000',13),(119,'泉州市','362000',13),(120,'漳州市','363000',13),(121,'南平市','353000',13),(122,'龙岩市','364000',13),(123,'宁德市','352100',13),(124,'南昌市','330000',14),(125,'景德镇市','333000',14),(126,'萍乡市','337000',14),(127,'九江市','332000',14),(128,'新余市','338000',14),(129,'鹰潭市','335000',14),(130,'赣州市','341000',14),(131,'吉安市','343000',14),(132,'宜春市','336000',14),(133,'抚州市','332900',14),(134,'上饶市','334000',14),(135,'济南市','250000',15),(136,'青岛市','266000',15),(137,'淄博市','255000',15),(138,'枣庄市','277100',15),(139,'东营市','257000',15),(140,'烟台市','264000',15),(141,'潍坊市','261000',15),(142,'济宁市','272100',15),(143,'泰安市','271000',15),(144,'威海市','265700',15),(145,'日照市','276800',15),(146,'莱芜市','271100',15),(147,'临沂市','276000',15),(148,'德州市','253000',15),(149,'聊城市','252000',15),(150,'滨州市','256600',15),(151,'荷泽市','255000',15),(152,'郑州市','450000',16),(153,'开封市','475000',16),(154,'洛阳市','471000',16),(155,'平顶山市','467000',16),(156,'安阳市','454900',16),(157,'鹤壁市','456600',16),(158,'新乡市','453000',16),(159,'焦作市','454100',16),(160,'濮阳市','457000',16),(161,'许昌市','461000',16),(162,'漯河市','462000',16),(163,'三门峡市','472000',16),(164,'南阳市','473000',16),(165,'商丘市','476000',16),(166,'信阳市','464000',16),(167,'周口市','466000',16),(168,'驻马店市','463000',16),(169,'武汉市','430000',17),(170,'黄石市','435000',17),(171,'十堰市','442000',17),(172,'宜昌市','443000',17),(173,'襄樊市','441000',17),(174,'鄂州市','436000',17),(175,'荆门市','448000',17),(176,'孝感市','432100',17),(177,'荆州市','434000',17),(178,'黄冈市','438000',17),(179,'咸宁市','437000',17),(180,'随州市','441300',17),(181,'恩施土家族苗族自治州','445000',17),(182,'神农架','442400',17),(183,'长沙市','410000',18),(184,'株洲市','412000',18),(185,'湘潭市','411100',18),(186,'衡阳市','421000',18),(187,'邵阳市','422000',18),(188,'岳阳市','414000',18),(189,'常德市','415000',18),(190,'张家界市','427000',18),(191,'益阳市','413000',18),(192,'郴州市','423000',18),(193,'永州市','425000',18),(194,'怀化市','418000',18),(195,'娄底市','417000',18),(196,'湘西土家族苗族自治州','416000',18),(197,'广州市','510000',19),(198,'韶关市','521000',19),(199,'深圳市','518000',19),(200,'珠海市','519000',19),(201,'汕头市','515000',19),(202,'佛山市','528000',19),(203,'江门市','529000',19),(204,'湛江市','524000',19),(205,'茂名市','525000',19),(206,'肇庆市','526000',19),(207,'惠州市','516000',19),(208,'梅州市','514000',19),(209,'汕尾市','516600',19),(210,'河源市','517000',19),(211,'阳江市','529500',19),(212,'清远市','511500',19),(213,'东莞市','511700',19),(214,'中山市','528400',19),(215,'潮州市','515600',19),(216,'揭阳市','522000',19),(217,'云浮市','527300',19),(218,'南宁市','530000',20),(219,'柳州市','545000',20),(220,'桂林市','541000',20),(221,'梧州市','543000',20),(222,'北海市','536000',20),(223,'防城港市','538000',20),(224,'钦州市','535000',20),(225,'贵港市','537100',20),(226,'玉林市','537000',20),(227,'百色市','533000',20),(228,'贺州市','542800',20),(229,'河池市','547000',20),(230,'来宾市','546100',20),(231,'崇左市','532200',20),(232,'海口市','570000',21),(233,'三亚市','572000',21),(234,'重庆市','400000',22),(235,'成都市','610000',23),(236,'自贡市','643000',23),(237,'攀枝花市','617000',23),(238,'泸州市','646100',23),(239,'德阳市','618000',23),(240,'绵阳市','621000',23),(241,'广元市','628000',23),(242,'遂宁市','629000',23),(243,'内江市','641000',23),(244,'乐山市','614000',23),(245,'南充市','637000',23),(246,'眉山市','612100',23),(247,'宜宾市','644000',23),(248,'广安市','638000',23),(249,'达州市','635000',23),(250,'雅安市','625000',23),(251,'巴中市','635500',23),(252,'资阳市','641300',23),(253,'阿坝藏族羌族自治州','624600',23),(254,'甘孜藏族自治州','626000',23),(255,'凉山彝族自治州','615000',23),(256,'贵阳市','55000',24),(257,'六盘水市','553000',24),(258,'遵义市','563000',24),(259,'安顺市','561000',24),(260,'铜仁地区','554300',24),(261,'黔西南布依族苗族自治州','551500',24),(262,'毕节地区','551700',24),(263,'黔东南苗族侗族自治州','551500',24),(264,'黔南布依族苗族自治州','550100',24),(265,'昆明市','650000',25),(266,'曲靖市','655000',25),(267,'玉溪市','653100',25),(268,'保山市','678000',25),(269,'昭通市','657000',25),(270,'丽江市','674100',25),(271,'思茅市','665000',25),(272,'临沧市','677000',25),(273,'楚雄彝族自治州','675000',25),(274,'红河哈尼族彝族自治州','654400',25),(275,'文山壮族苗族自治州','663000',25),(276,'西双版纳傣族自治州','666200',25),(277,'大理白族自治州','671000',25),(278,'德宏傣族景颇族自治州','678400',25),(279,'怒江傈僳族自治州','671400',25),(280,'迪庆藏族自治州','674400',25),(281,'拉萨市','850000',26),(282,'昌都地区','854000',26),(283,'山南地区','856000',26),(284,'日喀则地区','857000',26),(285,'那曲地区','852000',26),(286,'阿里地区','859100',26),(287,'林芝地区','860100',26),(288,'西安市','710000',27),(289,'铜川市','727000',27),(290,'宝鸡市','721000',27),(291,'咸阳市','712000',27),(292,'渭南市','714000',27),(293,'延安市','716000',27),(294,'汉中市','723000',27),(295,'榆林市','719000',27),(296,'安康市','725000',27),(297,'商洛市','711500',27),(298,'兰州市','730000',28),(299,'嘉峪关市','735100',28),(300,'金昌市','737100',28),(301,'白银市','730900',28),(302,'天水市','741000',28),(303,'武威市','733000',28),(304,'张掖市','734000',28),(305,'平凉市','744000',28),(306,'酒泉市','735000',28),(307,'庆阳市','744500',28),(308,'定西市','743000',28),(309,'陇南市','742100',28),(310,'临夏回族自治州','731100',28),(311,'甘南藏族自治州','747000',28),(312,'西宁市','810000',29),(313,'海东地区','810600',29),(314,'海北藏族自治州','810300',29),(315,'黄南藏族自治州','811300',29),(316,'海南藏族自治州','813000',29),(317,'果洛藏族自治州','814000',29),(318,'玉树藏族自治州','815000',29),(319,'海西蒙古族藏族自治州','817000',29),(320,'银川市','750000',30),(321,'石嘴山市','753000',30),(322,'吴忠市','751100',30),(323,'固原市','756000',30),(324,'中卫市','751700',30),(325,'乌鲁木齐市','830000',31),(326,'克拉玛依市','834000',31),(327,'吐鲁番地区','838000',31),(328,'哈密地区','839000',31),(329,'昌吉回族自治州','831100',31),(330,'博尔塔拉蒙古自治州','833400',31),(331,'巴音郭楞蒙古自治州','841000',31),(332,'阿克苏地区','843000',31),(333,'克孜勒苏柯尔克孜自治州','835600',31),(334,'喀什地区','844000',31),(335,'和田地区','848000',31),(336,'伊犁哈萨克自治州','833200',31),(337,'塔城地区','834700',31),(338,'阿勒泰地区','836500',31),(339,'石河子市','832000',31),(340,'阿拉尔市','843300',31),(341,'图木舒克市','843900',31),(342,'五家渠市','831300',31),(343,'香港特别行政区','000000',32),(344,'澳门特别行政区','000000',33),(345,'台湾省','000000',34);
/*!40000 ALTER TABLE `tl_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_district`
--

DROP TABLE IF EXISTS `tl_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_district` (
  `DistrictID` int unsigned NOT NULL,
  `DistrictName` varchar(50) NOT NULL,
  `CityID` int unsigned NOT NULL,
  PRIMARY KEY (`DistrictID`),
  KEY `CityID` (`CityID`),
  CONSTRAINT `tl_district_ibfk_1` FOREIGN KEY (`CityID`) REFERENCES `tl_city` (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='县/区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_district`
--

LOCK TABLES `tl_district` WRITE;
/*!40000 ALTER TABLE `tl_district` DISABLE KEYS */;
INSERT INTO `tl_district` VALUES (1,'东城区',1),(2,'西城区',1),(3,'崇文区',1),(4,'宣武区',1),(5,'朝阳区',1),(6,'丰台区',1),(7,'石景山区',1),(8,'海淀区',1),(9,'门头沟区',1),(10,'房山区',1),(11,'通州区',1),(12,'顺义区',1),(13,'昌平区',1),(14,'大兴区',1),(15,'怀柔区',1),(16,'平谷区',1),(17,'密云县',1),(18,'延庆县',1),(19,'和平区',2),(20,'河东区',2),(21,'河西区',2),(22,'南开区',2),(23,'河北区',2),(24,'红桥区',2),(25,'塘沽区',2),(26,'汉沽区',2),(27,'大港区',2),(28,'东丽区',2),(29,'西青区',2),(30,'津南区',2),(31,'北辰区',2),(32,'武清区',2),(33,'宝坻区',2),(34,'宁河县',2),(35,'静海县',2),(36,'蓟县',2),(37,'长安区',3),(38,'桥东区',3),(39,'桥西区',3),(40,'新华区',3),(41,'井陉矿区',3),(42,'裕华区',3),(43,'井陉县',3),(44,'正定县',3),(45,'栾城县',3),(46,'行唐县',3),(47,'灵寿县',3),(48,'高邑县',3),(49,'深泽县',3),(50,'赞皇县',3),(51,'无极县',3),(52,'平山县',3),(53,'元氏县',3),(54,'赵县',3),(55,'辛集市',3),(56,'藁城市',3),(57,'晋州市',3),(58,'新乐市',3),(59,'鹿泉市',3),(60,'路南区',4),(61,'路北区',4),(62,'古冶区',4),(63,'开平区',4),(64,'丰南区',4),(65,'丰润区',4),(66,'滦县',4),(67,'滦南县',4),(68,'乐亭县',4),(69,'迁西县',4),(70,'玉田县',4),(71,'唐海县',4),(72,'遵化市',4),(73,'迁安市',4),(74,'海港区',5),(75,'山海关区',5),(76,'北戴河区',5),(77,'青龙满族自治县',5),(78,'昌黎县',5),(79,'抚宁县',5),(80,'卢龙县',5),(81,'邯山区',6),(82,'丛台区',6),(83,'复兴区',6),(84,'峰峰矿区',6),(85,'邯郸县',6),(86,'临漳县',6),(87,'成安县',6),(88,'大名县',6),(89,'涉县',6),(90,'磁县',6),(91,'肥乡县',6),(92,'永年县',6),(93,'邱县',6),(94,'鸡泽县',6),(95,'广平县',6),(96,'馆陶县',6),(97,'魏县',6),(98,'曲周县',6),(99,'武安市',6),(100,'桥东区',7),(101,'桥西区',7),(102,'邢台县',7),(103,'临城县',7),(104,'内丘县',7),(105,'柏乡县',7),(106,'隆尧县',7),(107,'任县',7),(108,'南和县',7),(109,'宁晋县',7),(110,'巨鹿县',7),(111,'新河县',7),(112,'广宗县',7),(113,'平乡县',7),(114,'威县',7),(115,'清河县',7),(116,'临西县',7),(117,'南宫市',7),(118,'沙河市',7),(119,'新市区',8),(120,'北市区',8),(121,'南市区',8),(122,'满城县',8),(123,'清苑县',8),(124,'涞水县',8),(125,'阜平县',8),(126,'徐水县',8),(127,'定兴县',8),(128,'唐县',8),(129,'高阳县',8),(130,'容城县',8),(131,'涞源县',8),(132,'望都县',8),(133,'安新县',8),(134,'易县',8),(135,'曲阳县',8),(136,'蠡县',8),(137,'顺平县',8),(138,'博野县',8),(139,'雄县',8),(140,'涿州市',8),(141,'定州市',8),(142,'安国市',8),(143,'高碑店市',8),(144,'桥东区',9),(145,'桥西区',9),(146,'宣化区',9),(147,'下花园区',9),(148,'宣化县',9),(149,'张北县',9),(150,'康保县',9),(151,'沽源县',9),(152,'尚义县',9),(153,'蔚县',9),(154,'阳原县',9),(155,'怀安县',9),(156,'万全县',9),(157,'怀来县',9),(158,'涿鹿县',9),(159,'赤城县',9),(160,'崇礼县',9),(161,'双桥区',10),(162,'双滦区',10),(163,'鹰手营子矿区',10),(164,'承德县',10),(165,'兴隆县',10),(166,'平泉县',10),(167,'滦平县',10),(168,'隆化县',10),(169,'丰宁满族自治县',10),(170,'宽城满族自治县',10),(171,'围场满族蒙古族自治县',10),(172,'新华区',11),(173,'运河区',11),(174,'沧县',11),(175,'青县',11),(176,'东光县',11),(177,'海兴县',11),(178,'盐山县',11),(179,'肃宁县',11),(180,'南皮县',11),(181,'吴桥县',11),(182,'献县',11),(183,'孟村回族自治县',11),(184,'泊头市',11),(185,'任丘市',11),(186,'黄骅市',11),(187,'河间市',11),(188,'安次区',12),(189,'广阳区',12),(190,'固安县',12),(191,'永清县',12),(192,'香河县',12),(193,'大城县',12),(194,'文安县',12),(195,'大厂回族自治县',12),(196,'霸州市',12),(197,'三河市',12),(198,'桃城区',13),(199,'枣强县',13),(200,'武邑县',13),(201,'武强县',13),(202,'饶阳县',13),(203,'安平县',13),(204,'故城县',13),(205,'景县',13),(206,'阜城县',13),(207,'冀州市',13),(208,'深州市',13),(209,'小店区',14),(210,'迎泽区',14),(211,'杏花岭区',14),(212,'尖草坪区',14),(213,'万柏林区',14),(214,'晋源区',14),(215,'清徐县',14),(216,'阳曲县',14),(217,'娄烦县',14),(218,'古交市',14),(219,'城区',15),(220,'矿区',15),(221,'南郊区',15),(222,'新荣区',15),(223,'阳高县',15),(224,'天镇县',15),(225,'广灵县',15),(226,'灵丘县',15),(227,'浑源县',15),(228,'左云县',15),(229,'大同县',15),(230,'城区',16),(231,'矿区',16),(232,'郊区',16),(233,'平定县',16),(234,'盂县',16),(235,'城区',17),(236,'郊区',17),(237,'长治县',17),(238,'襄垣县',17),(239,'屯留县',17),(240,'平顺县',17),(241,'黎城县',17),(242,'壶关县',17),(243,'长子县',17),(244,'武乡县',17),(245,'沁县',17),(246,'沁源县',17),(247,'潞城市',17),(248,'城区',18),(249,'沁水县',18),(250,'阳城县',18),(251,'陵川县',18),(252,'泽州县',18),(253,'高平市',18),(254,'朔城区',19),(255,'平鲁区',19),(256,'山阴县',19),(257,'应县',19),(258,'右玉县',19),(259,'怀仁县',19),(260,'榆次区',20),(261,'榆社县',20),(262,'左权县',20),(263,'和顺县',20),(264,'昔阳县',20),(265,'寿阳县',20),(266,'太谷县',20),(267,'祁县',20),(268,'平遥县',20),(269,'灵石县',20),(270,'介休市',20),(271,'盐湖区',21),(272,'临猗县',21),(273,'万荣县',21),(274,'闻喜县',21),(275,'稷山县',21),(276,'新绛县',21),(277,'绛县',21),(278,'垣曲县',21),(279,'夏县',21),(280,'平陆县',21),(281,'芮城县',21),(282,'永济市',21),(283,'河津市',21),(284,'忻府区',22),(285,'定襄县',22),(286,'五台县',22),(287,'代县',22),(288,'繁峙县',22),(289,'宁武县',22),(290,'静乐县',22),(291,'神池县',22),(292,'五寨县',22),(293,'岢岚县',22),(294,'河曲县',22),(295,'保德县',22),(296,'偏关县',22),(297,'原平市',22),(298,'尧都区',23),(299,'曲沃县',23),(300,'翼城县',23),(301,'襄汾县',23),(302,'洪洞县',23),(303,'古县',23),(304,'安泽县',23),(305,'浮山县',23),(306,'吉县',23),(307,'乡宁县',23),(308,'大宁县',23),(309,'隰县',23),(310,'永和县',23),(311,'蒲县',23),(312,'汾西县',23),(313,'侯马市',23),(314,'霍州市',23),(315,'离石区',24),(316,'文水县',24),(317,'交城县',24),(318,'兴县',24),(319,'临县',24),(320,'柳林县',24),(321,'石楼县',24),(322,'岚县',24),(323,'方山县',24),(324,'中阳县',24),(325,'交口县',24),(326,'孝义市',24),(327,'汾阳市',24),(328,'新城区',25),(329,'回民区',25),(330,'玉泉区',25),(331,'赛罕区',25),(332,'土默特左旗',25),(333,'托克托县',25),(334,'和林格尔县',25),(335,'清水河县',25),(336,'武川县',25),(337,'东河区',26),(338,'昆都仑区',26),(339,'青山区',26),(340,'石拐区',26),(341,'白云矿区',26),(342,'九原区',26),(343,'土默特右旗',26),(344,'固阳县',26),(345,'达尔罕茂明安联合旗',26),(346,'海勃湾区',27),(347,'海南区',27),(348,'乌达区',27),(349,'红山区',28),(350,'元宝山区',28),(351,'松山区',28),(352,'阿鲁科尔沁旗',28),(353,'巴林左旗',28),(354,'巴林右旗',28),(355,'林西县',28),(356,'克什克腾旗',28),(357,'翁牛特旗',28),(358,'喀喇沁旗',28),(359,'宁城县',28),(360,'敖汉旗',28),(361,'科尔沁区',29),(362,'科尔沁左翼中旗',29),(363,'科尔沁左翼后旗',29),(364,'开鲁县',29),(365,'库伦旗',29),(366,'奈曼旗',29),(367,'扎鲁特旗',29),(368,'霍林郭勒市',29),(369,'东胜区',30),(370,'达拉特旗',30),(371,'准格尔旗',30),(372,'鄂托克前旗',30),(373,'鄂托克旗',30),(374,'杭锦旗',30),(375,'乌审旗',30),(376,'伊金霍洛旗',30),(377,'海拉尔区',31),(378,'阿荣旗',31),(379,'莫力达瓦达斡尔族自治旗',31),(380,'鄂伦春自治旗',31),(381,'鄂温克族自治旗',31),(382,'陈巴尔虎旗',31),(383,'新巴尔虎左旗',31),(384,'新巴尔虎右旗',31),(385,'满洲里市',31),(386,'牙克石市',31),(387,'扎兰屯市',31),(388,'额尔古纳市',31),(389,'根河市',31),(390,'临河区',32),(391,'五原县',32),(392,'磴口县',32),(393,'乌拉特前旗',32),(394,'乌拉特中旗',32),(395,'乌拉特后旗',32),(396,'杭锦后旗',32),(397,'集宁区',33),(398,'卓资县',33),(399,'化德县',33),(400,'商都县',33),(401,'兴和县',33),(402,'凉城县',33),(403,'察哈尔右翼前旗',33),(404,'察哈尔右翼中旗',33),(405,'察哈尔右翼后旗',33),(406,'四子王旗',33),(407,'丰镇市',33),(408,'乌兰浩特市',34),(409,'阿尔山市',34),(410,'科尔沁右翼前旗',34),(411,'科尔沁右翼中旗',34),(412,'扎赉特旗',34),(413,'突泉县',34),(414,'二连浩特市',35),(415,'锡林浩特市',35),(416,'阿巴嘎旗',35),(417,'苏尼特左旗',35),(418,'苏尼特右旗',35),(419,'东乌珠穆沁旗',35),(420,'西乌珠穆沁旗',35),(421,'太仆寺旗',35),(422,'镶黄旗',35),(423,'正镶白旗',35),(424,'正蓝旗',35),(425,'多伦县',35),(426,'阿拉善左旗',36),(427,'阿拉善右旗',36),(428,'额济纳旗',36),(429,'和平区',37),(430,'沈河区',37),(431,'大东区',37),(432,'皇姑区',37),(433,'铁西区',37),(434,'苏家屯区',37),(435,'东陵区',37),(436,'新城子区',37),(437,'于洪区',37),(438,'辽中县',37),(439,'康平县',37),(440,'法库县',37),(441,'新民市',37),(442,'中山区',38),(443,'西岗区',38),(444,'沙河口区',38),(445,'甘井子区',38),(446,'旅顺口区',38),(447,'金州区',38),(448,'长海县',38),(449,'瓦房店市',38),(450,'普兰店市',38),(451,'庄河市',38),(452,'铁东区',39),(453,'铁西区',39),(454,'立山区',39),(455,'千山区',39),(456,'台安县',39),(457,'岫岩满族自治县',39),(458,'海城市',39),(459,'新抚区',40),(460,'东洲区',40),(461,'望花区',40),(462,'顺城区',40),(463,'抚顺县',40),(464,'新宾满族自治县',40),(465,'清原满族自治县',40),(466,'平山区',41),(467,'溪湖区',41),(468,'明山区',41),(469,'南芬区',41),(470,'本溪满族自治县',41),(471,'桓仁满族自治县',41),(472,'元宝区',42),(473,'振兴区',42),(474,'振安区',42),(475,'宽甸满族自治县',42),(476,'东港市',42),(477,'凤城市',42),(478,'古塔区',43),(479,'凌河区',43),(480,'太和区',43),(481,'黑山县',43),(482,'义县',43),(483,'凌海市',43),(484,'北宁市',43),(485,'站前区',44),(486,'西市区',44),(487,'鲅鱼圈区',44),(488,'老边区',44),(489,'盖州市',44),(490,'大石桥市',44),(491,'海州区',45),(492,'新邱区',45),(493,'太平区',45),(494,'清河门区',45),(495,'细河区',45),(496,'阜新蒙古族自治县',45),(497,'彰武县',45),(498,'白塔区',46),(499,'文圣区',46),(500,'宏伟区',46),(501,'弓长岭区',46),(502,'太子河区',46),(503,'辽阳县',46),(504,'灯塔市',46),(505,'双台子区',47),(506,'兴隆台区',47),(507,'大洼县',47),(508,'盘山县',47),(509,'银州区',48),(510,'清河区',48),(511,'铁岭县',48),(512,'西丰县',48),(513,'昌图县',48),(514,'调兵山市',48),(515,'开原市',48),(516,'双塔区',49),(517,'龙城区',49),(518,'朝阳县',49),(519,'建平县',49),(520,'喀喇沁左翼蒙古族自治县',49),(521,'北票市',49),(522,'凌源市',49),(523,'连山区',50),(524,'龙港区',50),(525,'南票区',50),(526,'绥中县',50),(527,'建昌县',50),(528,'兴城市',50),(529,'南关区',51),(530,'宽城区',51),(531,'朝阳区',51),(532,'二道区',51),(533,'绿园区',51),(534,'双阳区',51),(535,'农安县',51),(536,'九台市',51),(537,'榆树市',51),(538,'德惠市',51),(539,'昌邑区',52),(540,'龙潭区',52),(541,'船营区',52),(542,'丰满区',52),(543,'永吉县',52),(544,'蛟河市',52),(545,'桦甸市',52),(546,'舒兰市',52),(547,'磐石市',52),(548,'铁西区',53),(549,'铁东区',53),(550,'梨树县',53),(551,'伊通满族自治县',53),(552,'公主岭市',53),(553,'双辽市',53),(554,'龙山区',54),(555,'西安区',54),(556,'东丰县',54),(557,'东辽县',54),(558,'东昌区',55),(559,'二道江区',55),(560,'通化县',55),(561,'辉南县',55),(562,'柳河县',55),(563,'梅河口市',55),(564,'集安市',55),(565,'八道江区',56),(566,'抚松县',56),(567,'靖宇县',56),(568,'长白朝鲜族自治县',56),(569,'江源县',56),(570,'临江市',56),(571,'宁江区',57),(572,'前郭尔罗斯蒙古族自治县',57),(573,'长岭县',57),(574,'乾安县',57),(575,'扶余县',57),(576,'洮北区',58),(577,'镇赉县',58),(578,'通榆县',58),(579,'洮南市',58),(580,'大安市',58),(581,'延吉市',59),(582,'图们市',59),(583,'敦化市',59),(584,'珲春市',59),(585,'龙井市',59),(586,'和龙市',59),(587,'汪清县',59),(588,'安图县',59),(589,'道里区',60),(590,'南岗区',60),(591,'道外区',60),(592,'香坊区',60),(593,'动力区',60),(594,'平房区',60),(595,'松北区',60),(596,'呼兰区',60),(597,'依兰县',60),(598,'方正县',60),(599,'宾县',60),(600,'巴彦县',60),(601,'木兰县',60),(602,'通河县',60),(603,'延寿县',60),(604,'阿城市',60),(605,'双城市',60),(606,'尚志市',60),(607,'五常市',60),(608,'龙沙区',61),(609,'建华区',61),(610,'铁锋区',61),(611,'昂昂溪区',61),(612,'富拉尔基区',61),(613,'碾子山区',61),(614,'梅里斯达斡尔族区',61),(615,'龙江县',61),(616,'依安县',61),(617,'泰来县',61),(618,'甘南县',61),(619,'富裕县',61),(620,'克山县',61),(621,'克东县',61),(622,'拜泉县',61),(623,'讷河市',61),(624,'鸡冠区',62),(625,'恒山区',62),(626,'滴道区',62),(627,'梨树区',62),(628,'城子河区',62),(629,'麻山区',62),(630,'鸡东县',62),(631,'虎林市',62),(632,'密山市',62),(633,'向阳区',63),(634,'工农区',63),(635,'南山区',63),(636,'兴安区',63),(637,'东山区',63),(638,'兴山区',63),(639,'萝北县',63),(640,'绥滨县',63),(641,'尖山区',64),(642,'岭东区',64),(643,'四方台区',64),(644,'宝山区',64),(645,'集贤县',64),(646,'友谊县',64),(647,'宝清县',64),(648,'饶河县',64),(649,'萨尔图区',65),(650,'龙凤区',65),(651,'让胡路区',65),(652,'红岗区',65),(653,'大同区',65),(654,'肇州县',65),(655,'肇源县',65),(656,'林甸县',65),(657,'杜尔伯特蒙古族自治县',65),(658,'伊春区',66),(659,'南岔区',66),(660,'友好区',66),(661,'西林区',66),(662,'翠峦区',66),(663,'新青区',66),(664,'美溪区',66),(665,'金山屯区',66),(666,'五营区',66),(667,'乌马河区',66),(668,'汤旺河区',66),(669,'带岭区',66),(670,'乌伊岭区',66),(671,'红星区',66),(672,'上甘岭区',66),(673,'嘉荫县',66),(674,'铁力市',66),(675,'永红区',67),(676,'向阳区',67),(677,'前进区',67),(678,'东风区',67),(679,'郊区',67),(680,'桦南县',67),(681,'桦川县',67),(682,'汤原县',67),(683,'抚远县',67),(684,'同江市',67),(685,'富锦市',67),(686,'新兴区',68),(687,'桃山区',68),(688,'茄子河区',68),(689,'勃利县',68),(690,'东安区',69),(691,'阳明区',69),(692,'爱民区',69),(693,'西安区',69),(694,'东宁县',69),(695,'林口县',69),(696,'绥芬河市',69),(697,'海林市',69),(698,'宁安市',69),(699,'穆棱市',69),(700,'爱辉区',70),(701,'嫩江县',70),(702,'逊克县',70),(703,'孙吴县',70),(704,'北安市',70),(705,'五大连池市',70),(706,'北林区',71),(707,'望奎县',71),(708,'兰西县',71),(709,'青冈县',71),(710,'庆安县',71),(711,'明水县',71),(712,'绥棱县',71),(713,'安达市',71),(714,'肇东市',71),(715,'海伦市',71),(716,'呼玛县',72),(717,'塔河县',72),(718,'漠河县',72),(719,'黄浦区',73),(720,'卢湾区',73),(721,'徐汇区',73),(722,'长宁区',73),(723,'静安区',73),(724,'普陀区',73),(725,'闸北区',73),(726,'虹口区',73),(727,'杨浦区',73),(728,'闵行区',73),(729,'宝山区',73),(730,'嘉定区',73),(731,'浦东新区',73),(732,'金山区',73),(733,'松江区',73),(734,'青浦区',73),(735,'南汇区',73),(736,'奉贤区',73),(737,'崇明县',73),(738,'玄武区',74),(739,'白下区',74),(740,'秦淮区',74),(741,'建邺区',74),(742,'鼓楼区',74),(743,'下关区',74),(744,'浦口区',74),(745,'栖霞区',74),(746,'雨花台区',74),(747,'江宁区',74),(748,'六合区',74),(749,'溧水县',74),(750,'高淳县',74),(751,'崇安区',75),(752,'南长区',75),(753,'北塘区',75),(754,'锡山区',75),(755,'惠山区',75),(756,'滨湖区',75),(757,'江阴市',75),(758,'宜兴市',75),(759,'鼓楼区',76),(760,'云龙区',76),(761,'九里区',76),(762,'贾汪区',76),(763,'泉山区',76),(764,'丰县',76),(765,'沛县',76),(766,'铜山县',76),(767,'睢宁县',76),(768,'新沂市',76),(769,'邳州市',76),(770,'天宁区',77),(771,'钟楼区',77),(772,'戚墅堰区',77),(773,'新北区',77),(774,'武进区',77),(775,'溧阳市',77),(776,'金坛市',77),(777,'沧浪区',78),(778,'平江区',78),(779,'金阊区',78),(780,'虎丘区',78),(781,'吴中区',78),(782,'相城区',78),(783,'常熟市',78),(784,'张家港市',78),(785,'昆山市',78),(786,'吴江市',78),(787,'太仓市',78),(788,'崇川区',79),(789,'港闸区',79),(790,'海安县',79),(791,'如东县',79),(792,'启东市',79),(793,'如皋市',79),(794,'通州市',79),(795,'海门市',79),(796,'连云区',80),(797,'新浦区',80),(798,'海州区',80),(799,'赣榆县',80),(800,'东海县',80),(801,'灌云县',80),(802,'灌南县',80),(803,'清河区',81),(804,'楚州区',81),(805,'淮阴区',81),(806,'清浦区',81),(807,'涟水县',81),(808,'洪泽县',81),(809,'盱眙县',81),(810,'金湖县',81),(811,'亭湖区',82),(812,'盐都区',82),(813,'响水县',82),(814,'滨海县',82),(815,'阜宁县',82),(816,'射阳县',82),(817,'建湖县',82),(818,'东台市',82),(819,'大丰市',82),(820,'广陵区',83),(821,'邗江区',83),(822,'维扬区',83),(823,'宝应县',83),(824,'仪征市',83),(825,'高邮市',83),(826,'江都市',83),(827,'京口区',84),(828,'润州区',84),(829,'丹徒区',84),(830,'丹阳市',84),(831,'扬中市',84),(832,'句容市',84),(833,'海陵区',85),(834,'高港区',85),(835,'兴化市',85),(836,'靖江市',85),(837,'泰兴市',85),(838,'姜堰市',85),(839,'宿城区',86),(840,'宿豫区',86),(841,'沭阳县',86),(842,'泗阳县',86),(843,'泗洪县',86),(844,'上城区',87),(845,'下城区',87),(846,'江干区',87),(847,'拱墅区',87),(848,'西湖区',87),(849,'滨江区',87),(850,'萧山区',87),(851,'余杭区',87),(852,'桐庐县',87),(853,'淳安县',87),(854,'建德市',87),(855,'富阳市',87),(856,'临安市',87),(857,'海曙区',88),(858,'江东区',88),(859,'江北区',88),(860,'北仑区',88),(861,'镇海区',88),(862,'鄞州区',88),(863,'象山县',88),(864,'宁海县',88),(865,'余姚市',88),(866,'慈溪市',88),(867,'奉化市',88),(868,'鹿城区',89),(869,'龙湾区',89),(870,'瓯海区',89),(871,'洞头县',89),(872,'永嘉县',89),(873,'平阳县',89),(874,'苍南县',89),(875,'文成县',89),(876,'泰顺县',89),(877,'瑞安市',89),(878,'乐清市',89),(879,'秀城区',90),(880,'秀洲区',90),(881,'嘉善县',90),(882,'海盐县',90),(883,'海宁市',90),(884,'平湖市',90),(885,'桐乡市',90),(886,'吴兴区',91),(887,'南浔区',91),(888,'德清县',91),(889,'长兴县',91),(890,'安吉县',91),(891,'越城区',92),(892,'绍兴县',92),(893,'新昌县',92),(894,'诸暨市',92),(895,'上虞市',92),(896,'嵊州市',92),(897,'婺城区',93),(898,'金东区',93),(899,'武义县',93),(900,'浦江县',93),(901,'磐安县',93),(902,'兰溪市',93),(903,'义乌市',93),(904,'东阳市',93),(905,'永康市',93),(906,'柯城区',94),(907,'衢江区',94),(908,'常山县',94),(909,'开化县',94),(910,'龙游县',94),(911,'江山市',94),(912,'定海区',95),(913,'普陀区',95),(914,'岱山县',95),(915,'嵊泗县',95),(916,'椒江区',96),(917,'黄岩区',96),(918,'路桥区',96),(919,'玉环县',96),(920,'三门县',96),(921,'天台县',96),(922,'仙居县',96),(923,'温岭市',96),(924,'临海市',96),(925,'莲都区',97),(926,'青田县',97),(927,'缙云县',97),(928,'遂昌县',97),(929,'松阳县',97),(930,'云和县',97),(931,'庆元县',97),(932,'景宁畲族自治县',97),(933,'龙泉市',97),(934,'瑶海区',98),(935,'庐阳区',98),(936,'蜀山区',98),(937,'包河区',98),(938,'长丰县',98),(939,'肥东县',98),(940,'肥西县',98),(941,'镜湖区',99),(942,'马塘区',99),(943,'新芜区',99),(944,'鸠江区',99),(945,'芜湖县',99),(946,'繁昌县',99),(947,'南陵县',99),(948,'龙子湖区',100),(949,'蚌山区',100),(950,'禹会区',100),(951,'淮上区',100),(952,'怀远县',100),(953,'五河县',100),(954,'固镇县',100),(955,'大通区',101),(956,'田家庵区',101),(957,'谢家集区',101),(958,'八公山区',101),(959,'潘集区',101),(960,'凤台县',101),(961,'金家庄区',102),(962,'花山区',102),(963,'雨山区',102),(964,'当涂县',102),(965,'杜集区',103),(966,'相山区',103),(967,'烈山区',103),(968,'濉溪县',103),(969,'铜官山区',104),(970,'狮子山区',104),(971,'郊区',104),(972,'铜陵县',104),(973,'迎江区',105),(974,'大观区',105),(975,'郊区',105),(976,'怀宁县',105),(977,'枞阳县',105),(978,'潜山县',105),(979,'太湖县',105),(980,'宿松县',105),(981,'望江县',105),(982,'岳西县',105),(983,'桐城市',105),(984,'屯溪区',106),(985,'黄山区',106),(986,'徽州区',106),(987,'歙县',106),(988,'休宁县',106),(989,'黟县',106),(990,'祁门县',106),(991,'琅琊区',107),(992,'南谯区',107),(993,'来安县',107),(994,'全椒县',107),(995,'定远县',107),(996,'凤阳县',107),(997,'天长市',107),(998,'明光市',107),(999,'颍州区',108),(1000,'颍东区',108),(1001,'颍泉区',108),(1002,'临泉县',108),(1003,'太和县',108),(1004,'阜南县',108),(1005,'颍上县',108),(1006,'界首市',108),(1007,'埇桥区',109),(1008,'砀山县',109),(1009,'萧县',109),(1010,'灵璧县',109),(1011,'泗县',109),(1012,'居巢区',110),(1013,'庐江县',110),(1014,'无为县',110),(1015,'含山县',110),(1016,'和县',110),(1017,'金安区',111),(1018,'裕安区',111),(1019,'寿县',111),(1020,'霍邱县',111),(1021,'舒城县',111),(1022,'金寨县',111),(1023,'霍山县',111),(1024,'谯城区',112),(1025,'涡阳县',112),(1026,'蒙城县',112),(1027,'利辛县',112),(1028,'贵池区',113),(1029,'东至县',113),(1030,'石台县',113),(1031,'青阳县',113),(1032,'宣州区',114),(1033,'郎溪县',114),(1034,'广德县',114),(1035,'泾县',114),(1036,'绩溪县',114),(1037,'旌德县',114),(1038,'宁国市',114),(1039,'鼓楼区',115),(1040,'台江区',115),(1041,'仓山区',115),(1042,'马尾区',115),(1043,'晋安区',115),(1044,'闽侯县',115),(1045,'连江县',115),(1046,'罗源县',115),(1047,'闽清县',115),(1048,'永泰县',115),(1049,'平潭县',115),(1050,'福清市',115),(1051,'长乐市',115),(1052,'思明区',116),(1053,'海沧区',116),(1054,'湖里区',116),(1055,'集美区',116),(1056,'同安区',116),(1057,'翔安区',116),(1058,'城厢区',117),(1059,'涵江区',117),(1060,'荔城区',117),(1061,'秀屿区',117),(1062,'仙游县',117),(1063,'梅列区',118),(1064,'三元区',118),(1065,'明溪县',118),(1066,'清流县',118),(1067,'宁化县',118),(1068,'大田县',118),(1069,'尤溪县',118),(1070,'沙县',118),(1071,'将乐县',118),(1072,'泰宁县',118),(1073,'建宁县',118),(1074,'永安市',118),(1075,'鲤城区',119),(1076,'丰泽区',119),(1077,'洛江区',119),(1078,'泉港区',119),(1079,'惠安县',119),(1080,'安溪县',119),(1081,'永春县',119),(1082,'德化县',119),(1083,'金门县',119),(1084,'石狮市',119),(1085,'晋江市',119),(1086,'南安市',119),(1087,'芗城区',120),(1088,'龙文区',120),(1089,'云霄县',120),(1090,'漳浦县',120),(1091,'诏安县',120),(1092,'长泰县',120),(1093,'东山县',120),(1094,'南靖县',120),(1095,'平和县',120),(1096,'华安县',120),(1097,'龙海市',120),(1098,'延平区',121),(1099,'顺昌县',121),(1100,'浦城县',121),(1101,'光泽县',121),(1102,'松溪县',121),(1103,'政和县',121),(1104,'邵武市',121),(1105,'武夷山市',121),(1106,'建瓯市',121),(1107,'建阳市',121),(1108,'新罗区',122),(1109,'长汀县',122),(1110,'永定县',122),(1111,'上杭县',122),(1112,'武平县',122),(1113,'连城县',122),(1114,'漳平市',122),(1115,'蕉城区',123),(1116,'霞浦县',123),(1117,'古田县',123),(1118,'屏南县',123),(1119,'寿宁县',123),(1120,'周宁县',123),(1121,'柘荣县',123),(1122,'福安市',123),(1123,'福鼎市',123),(1124,'东湖区',124),(1125,'西湖区',124),(1126,'青云谱区',124),(1127,'湾里区',124),(1128,'青山湖区',124),(1129,'南昌县',124),(1130,'新建县',124),(1131,'安义县',124),(1132,'进贤县',124),(1133,'昌江区',125),(1134,'珠山区',125),(1135,'浮梁县',125),(1136,'乐平市',125),(1137,'安源区',126),(1138,'湘东区',126),(1139,'莲花县',126),(1140,'上栗县',126),(1141,'芦溪县',126),(1142,'庐山区',127),(1143,'浔阳区',127),(1144,'九江县',127),(1145,'武宁县',127),(1146,'修水县',127),(1147,'永修县',127),(1148,'德安县',127),(1149,'星子县',127),(1150,'都昌县',127),(1151,'湖口县',127),(1152,'彭泽县',127),(1153,'瑞昌市',127),(1154,'渝水区',128),(1155,'分宜县',128),(1156,'月湖区',129),(1157,'余江县',129),(1158,'贵溪市',129),(1159,'章贡区',130),(1160,'赣县',130),(1161,'信丰县',130),(1162,'大余县',130),(1163,'上犹县',130),(1164,'崇义县',130),(1165,'安远县',130),(1166,'龙南县',130),(1167,'定南县',130),(1168,'全南县',130),(1169,'宁都县',130),(1170,'于都县',130),(1171,'兴国县',130),(1172,'会昌县',130),(1173,'寻乌县',130),(1174,'石城县',130),(1175,'瑞金市',130),(1176,'南康市',130),(1177,'吉州区',131),(1178,'青原区',131),(1179,'吉安县',131),(1180,'吉水县',131),(1181,'峡江县',131),(1182,'新干县',131),(1183,'永丰县',131),(1184,'泰和县',131),(1185,'遂川县',131),(1186,'万安县',131),(1187,'安福县',131),(1188,'永新县',131),(1189,'井冈山市',131),(1190,'袁州区',132),(1191,'奉新县',132),(1192,'万载县',132),(1193,'上高县',132),(1194,'宜丰县',132),(1195,'靖安县',132),(1196,'铜鼓县',132),(1197,'丰城市',132),(1198,'樟树市',132),(1199,'高安市',132),(1200,'临川区',133),(1201,'南城县',133),(1202,'黎川县',133),(1203,'南丰县',133),(1204,'崇仁县',133),(1205,'乐安县',133),(1206,'宜黄县',133),(1207,'金溪县',133),(1208,'资溪县',133),(1209,'东乡县',133),(1210,'广昌县',133),(1211,'信州区',134),(1212,'上饶县',134),(1213,'广丰县',134),(1214,'玉山县',134),(1215,'铅山县',134),(1216,'横峰县',134),(1217,'弋阳县',134),(1218,'余干县',134),(1219,'鄱阳县',134),(1220,'万年县',134),(1221,'婺源县',134),(1222,'德兴市',134),(1223,'历下区',135),(1224,'市中区',135),(1225,'槐荫区',135),(1226,'天桥区',135),(1227,'历城区',135),(1228,'长清区',135),(1229,'平阴县',135),(1230,'济阳县',135),(1231,'商河县',135),(1232,'章丘市',135),(1233,'市南区',136),(1234,'市北区',136),(1235,'四方区',136),(1236,'黄岛区',136),(1237,'崂山区',136),(1238,'李沧区',136),(1239,'城阳区',136),(1240,'胶州市',136),(1241,'即墨市',136),(1242,'平度市',136),(1243,'胶南市',136),(1244,'莱西市',136),(1245,'淄川区',137),(1246,'张店区',137),(1247,'博山区',137),(1248,'临淄区',137),(1249,'周村区',137),(1250,'桓台县',137),(1251,'高青县',137),(1252,'沂源县',137),(1253,'市中区',138),(1254,'薛城区',138),(1255,'峄城区',138),(1256,'台儿庄区',138),(1257,'山亭区',138),(1258,'滕州市',138),(1259,'东营区',139),(1260,'河口区',139),(1261,'垦利县',139),(1262,'利津县',139),(1263,'广饶县',139),(1264,'芝罘区',140),(1265,'福山区',140),(1266,'牟平区',140),(1267,'莱山区',140),(1268,'长岛县',140),(1269,'龙口市',140),(1270,'莱阳市',140),(1271,'莱州市',140),(1272,'蓬莱市',140),(1273,'招远市',140),(1274,'栖霞市',140),(1275,'海阳市',140),(1276,'潍城区',141),(1277,'寒亭区',141),(1278,'坊子区',141),(1279,'奎文区',141),(1280,'临朐县',141),(1281,'昌乐县',141),(1282,'青州市',141),(1283,'诸城市',141),(1284,'寿光市',141),(1285,'安丘市',141),(1286,'高密市',141),(1287,'昌邑市',141),(1288,'市中区',142),(1289,'任城区',142),(1290,'微山县',142),(1291,'鱼台县',142),(1292,'金乡县',142),(1293,'嘉祥县',142),(1294,'汶上县',142),(1295,'泗水县',142),(1296,'梁山县',142),(1297,'曲阜市',142),(1298,'兖州市',142),(1299,'邹城市',142),(1300,'泰山区',143),(1301,'岱岳区',143),(1302,'宁阳县',143),(1303,'东平县',143),(1304,'新泰市',143),(1305,'肥城市',143),(1306,'环翠区',144),(1307,'文登市',144),(1308,'荣成市',144),(1309,'乳山市',144),(1310,'东港区',145),(1311,'岚山区',145),(1312,'五莲县',145),(1313,'莒县',145),(1314,'莱城区',146),(1315,'钢城区',146),(1316,'兰山区',147),(1317,'罗庄区',147),(1318,'河东区',147),(1319,'沂南县',147),(1320,'郯城县',147),(1321,'沂水县',147),(1322,'苍山县',147),(1323,'费县',147),(1324,'平邑县',147),(1325,'莒南县',147),(1326,'蒙阴县',147),(1327,'临沭县',147),(1328,'德城区',148),(1329,'陵县',148),(1330,'宁津县',148),(1331,'庆云县',148),(1332,'临邑县',148),(1333,'齐河县',148),(1334,'平原县',148),(1335,'夏津县',148),(1336,'武城县',148),(1337,'乐陵市',148),(1338,'禹城市',148),(1339,'东昌府区',149),(1340,'阳谷县',149),(1341,'莘县',149),(1342,'茌平县',149),(1343,'东阿县',149),(1344,'冠县',149),(1345,'高唐县',149),(1346,'临清市',149),(1347,'滨城区',150),(1348,'惠民县',150),(1349,'阳信县',150),(1350,'无棣县',150),(1351,'沾化县',150),(1352,'博兴县',150),(1353,'邹平县',150),(1354,'牡丹区',151),(1355,'曹县',151),(1356,'单县',151),(1357,'成武县',151),(1358,'巨野县',151),(1359,'郓城县',151),(1360,'鄄城县',151),(1361,'定陶县',151),(1362,'东明县',151),(1363,'中原区',152),(1364,'二七区',152),(1365,'管城回族区',152),(1366,'金水区',152),(1367,'上街区',152),(1368,'惠济区',152),(1369,'中牟县',152),(1370,'巩义市',152),(1371,'荥阳市',152),(1372,'新密市',152),(1373,'新郑市',152),(1374,'登封市',152),(1375,'龙亭区',153),(1376,'顺河回族区',153),(1377,'鼓楼区',153),(1378,'南关区',153),(1379,'郊区',153),(1380,'杞县',153),(1381,'通许县',153),(1382,'尉氏县',153),(1383,'开封县',153),(1384,'兰考县',153),(1385,'老城区',154),(1386,'西工区',154),(1387,'廛河回族区',154),(1388,'涧西区',154),(1389,'吉利区',154),(1390,'洛龙区',154),(1391,'孟津县',154),(1392,'新安县',154),(1393,'栾川县',154),(1394,'嵩县',154),(1395,'汝阳县',154),(1396,'宜阳县',154),(1397,'洛宁县',154),(1398,'伊川县',154),(1399,'偃师市',154),(1400,'新华区',155),(1401,'卫东区',155),(1402,'石龙区',155),(1403,'湛河区',155),(1404,'宝丰县',155),(1405,'叶县',155),(1406,'鲁山县',155),(1407,'郏县',155),(1408,'舞钢市',155),(1409,'汝州市',155),(1410,'文峰区',156),(1411,'北关区',156),(1412,'殷都区',156),(1413,'龙安区',156),(1414,'安阳县',156),(1415,'汤阴县',156),(1416,'滑县',156),(1417,'内黄县',156),(1418,'林州市',156),(1419,'鹤山区',157),(1420,'山城区',157),(1421,'淇滨区',157),(1422,'浚县',157),(1423,'淇县',157),(1424,'红旗区',158),(1425,'卫滨区',158),(1426,'凤泉区',158),(1427,'牧野区',158),(1428,'新乡县',158),(1429,'获嘉县',158),(1430,'原阳县',158),(1431,'延津县',158),(1432,'封丘县',158),(1433,'长垣县',158),(1434,'卫辉市',158),(1435,'辉县市',158),(1436,'解放区',159),(1437,'中站区',159),(1438,'马村区',159),(1439,'山阳区',159),(1440,'修武县',159),(1441,'博爱县',159),(1442,'武陟县',159),(1443,'温县',159),(1444,'济源市',159),(1445,'沁阳市',159),(1446,'孟州市',159),(1447,'华龙区',160),(1448,'清丰县',160),(1449,'南乐县',160),(1450,'范县',160),(1451,'台前县',160),(1452,'濮阳县',160),(1453,'魏都区',161),(1454,'许昌县',161),(1455,'鄢陵县',161),(1456,'襄城县',161),(1457,'禹州市',161),(1458,'长葛市',161),(1459,'源汇区',162),(1460,'郾城区',162),(1461,'召陵区',162),(1462,'舞阳县',162),(1463,'临颍县',162),(1464,'市辖区',163),(1465,'湖滨区',163),(1466,'渑池县',163),(1467,'陕县',163),(1468,'卢氏县',163),(1469,'义马市',163),(1470,'灵宝市',163),(1471,'宛城区',164),(1472,'卧龙区',164),(1473,'南召县',164),(1474,'方城县',164),(1475,'西峡县',164),(1476,'镇平县',164),(1477,'内乡县',164),(1478,'淅川县',164),(1479,'社旗县',164),(1480,'唐河县',164),(1481,'新野县',164),(1482,'桐柏县',164),(1483,'邓州市',164),(1484,'梁园区',165),(1485,'睢阳区',165),(1486,'民权县',165),(1487,'睢县',165),(1488,'宁陵县',165),(1489,'柘城县',165),(1490,'虞城县',165),(1491,'夏邑县',165),(1492,'永城市',165),(1493,'浉河区',166),(1494,'平桥区',166),(1495,'罗山县',166),(1496,'光山县',166),(1497,'新县',166),(1498,'商城县',166),(1499,'固始县',166),(1500,'潢川县',166),(1501,'淮滨县',166),(1502,'息县',166),(1503,'川汇区',167),(1504,'扶沟县',167),(1505,'西华县',167),(1506,'商水县',167),(1507,'沈丘县',167),(1508,'郸城县',167),(1509,'淮阳县',167),(1510,'太康县',167),(1511,'鹿邑县',167),(1512,'项城市',167),(1513,'驿城区',168),(1514,'西平县',168),(1515,'上蔡县',168),(1516,'平舆县',168),(1517,'正阳县',168),(1518,'确山县',168),(1519,'泌阳县',168),(1520,'汝南县',168),(1521,'遂平县',168),(1522,'新蔡县',168),(1523,'江岸区',169),(1524,'江汉区',169),(1525,'硚口区',169),(1526,'汉阳区',169),(1527,'武昌区',169),(1528,'青山区',169),(1529,'洪山区',169),(1530,'东西湖区',169),(1531,'汉南区',169),(1532,'蔡甸区',169),(1533,'江夏区',169),(1534,'黄陂区',169),(1535,'新洲区',169),(1536,'黄石港区',170),(1537,'西塞山区',170),(1538,'下陆区',170),(1539,'铁山区',170),(1540,'阳新县',170),(1541,'大冶市',170),(1542,'茅箭区',171),(1543,'张湾区',171),(1544,'郧县',171),(1545,'郧西县',171),(1546,'竹山县',171),(1547,'竹溪县',171),(1548,'房县',171),(1549,'丹江口市',171),(1550,'西陵区',172),(1551,'伍家岗区',172),(1552,'点军区',172),(1553,'猇亭区',172),(1554,'夷陵区',172),(1555,'远安县',172),(1556,'兴山县',172),(1557,'秭归县',172),(1558,'长阳土家族自治县',172),(1559,'五峰土家族自治县',172),(1560,'宜都市',172),(1561,'当阳市',172),(1562,'枝江市',172),(1563,'襄城区',173),(1564,'樊城区',173),(1565,'襄阳区',173),(1566,'南漳县',173),(1567,'谷城县',173),(1568,'保康县',173),(1569,'老河口市',173),(1570,'枣阳市',173),(1571,'宜城市',173),(1572,'梁子湖区',174),(1573,'华容区',174),(1574,'鄂城区',174),(1575,'东宝区',175),(1576,'掇刀区',175),(1577,'京山县',175),(1578,'沙洋县',175),(1579,'钟祥市',175),(1580,'孝南区',176),(1581,'孝昌县',176),(1582,'大悟县',176),(1583,'云梦县',176),(1584,'应城市',176),(1585,'安陆市',176),(1586,'汉川市',176),(1587,'沙市区',177),(1588,'荆州区',177),(1589,'公安县',177),(1590,'监利县',177),(1591,'江陵县',177),(1592,'石首市',177),(1593,'洪湖市',177),(1594,'松滋市',177),(1595,'黄州区',178),(1596,'团风县',178),(1597,'红安县',178),(1598,'罗田县',178),(1599,'英山县',178),(1600,'浠水县',178),(1601,'蕲春县',178),(1602,'黄梅县',178),(1603,'麻城市',178),(1604,'武穴市',178),(1605,'咸安区',179),(1606,'嘉鱼县',179),(1607,'通城县',179),(1608,'崇阳县',179),(1609,'通山县',179),(1610,'赤壁市',179),(1611,'曾都区',180),(1612,'广水市',180),(1613,'恩施市',181),(1614,'利川市',181),(1615,'建始县',181),(1616,'巴东县',181),(1617,'宣恩县',181),(1618,'咸丰县',181),(1619,'来凤县',181),(1620,'鹤峰县',181),(1621,'仙桃市',182),(1622,'潜江市',182),(1623,'天门市',182),(1624,'神农架林区',182),(1625,'芙蓉区',183),(1626,'天心区',183),(1627,'岳麓区',183),(1628,'开福区',183),(1629,'雨花区',183),(1630,'长沙县',183),(1631,'望城县',183),(1632,'宁乡县',183),(1633,'浏阳市',183),(1634,'荷塘区',184),(1635,'芦淞区',184),(1636,'石峰区',184),(1637,'天元区',184),(1638,'株洲县',184),(1639,'攸县',184),(1640,'茶陵县',184),(1641,'炎陵县',184),(1642,'醴陵市',184),(1643,'雨湖区',185),(1644,'岳塘区',185),(1645,'湘潭县',185),(1646,'湘乡市',185),(1647,'韶山市',185),(1648,'珠晖区',186),(1649,'雁峰区',186),(1650,'石鼓区',186),(1651,'蒸湘区',186),(1652,'南岳区',186),(1653,'衡阳县',186),(1654,'衡南县',186),(1655,'衡山县',186),(1656,'衡东县',186),(1657,'祁东县',186),(1658,'耒阳市',186),(1659,'常宁市',186),(1660,'双清区',187),(1661,'大祥区',187),(1662,'北塔区',187),(1663,'邵东县',187),(1664,'新邵县',187),(1665,'邵阳县',187),(1666,'隆回县',187),(1667,'洞口县',187),(1668,'绥宁县',187),(1669,'新宁县',187),(1670,'城步苗族自治县',187),(1671,'武冈市',187),(1672,'岳阳楼区',188),(1673,'云溪区',188),(1674,'君山区',188),(1675,'岳阳县',188),(1676,'华容县',188),(1677,'湘阴县',188),(1678,'平江县',188),(1679,'汨罗市',188),(1680,'临湘市',188),(1681,'武陵区',189),(1682,'鼎城区',189),(1683,'安乡县',189),(1684,'汉寿县',189),(1685,'澧县',189),(1686,'临澧县',189),(1687,'桃源县',189),(1688,'石门县',189),(1689,'津市市',189),(1690,'永定区',190),(1691,'武陵源区',190),(1692,'慈利县',190),(1693,'桑植县',190),(1694,'资阳区',191),(1695,'赫山区',191),(1696,'南县',191),(1697,'桃江县',191),(1698,'安化县',191),(1699,'沅江市',191),(1700,'北湖区',192),(1701,'苏仙区',192),(1702,'桂阳县',192),(1703,'宜章县',192),(1704,'永兴县',192),(1705,'嘉禾县',192),(1706,'临武县',192),(1707,'汝城县',192),(1708,'桂东县',192),(1709,'安仁县',192),(1710,'资兴市',192),(1711,'芝山区',193),(1712,'冷水滩区',193),(1713,'祁阳县',193),(1714,'东安县',193),(1715,'双牌县',193),(1716,'道县',193),(1717,'江永县',193),(1718,'宁远县',193),(1719,'蓝山县',193),(1720,'新田县',193),(1721,'江华瑶族自治县',193),(1722,'鹤城区',194),(1723,'中方县',194),(1724,'沅陵县',194),(1725,'辰溪县',194),(1726,'溆浦县',194),(1727,'会同县',194),(1728,'麻阳苗族自治县',194),(1729,'新晃侗族自治县',194),(1730,'芷江侗族自治县',194),(1731,'靖州苗族侗族自治县',194),(1732,'通道侗族自治县',194),(1733,'洪江市',194),(1734,'娄星区',195),(1735,'双峰县',195),(1736,'新化县',195),(1737,'冷水江市',195),(1738,'涟源市',195),(1739,'吉首市',196),(1740,'泸溪县',196),(1741,'凤凰县',196),(1742,'花垣县',196),(1743,'保靖县',196),(1744,'古丈县',196),(1745,'永顺县',196),(1746,'龙山县',196),(1747,'东山区',197),(1748,'荔湾区',197),(1749,'越秀区',197),(1750,'海珠区',197),(1751,'天河区',197),(1752,'芳村区',197),(1753,'白云区',197),(1754,'黄埔区',197),(1755,'番禺区',197),(1756,'花都区',197),(1757,'增城市',197),(1758,'从化市',197),(1759,'武江区',198),(1760,'浈江区',198),(1761,'曲江区',198),(1762,'始兴县',198),(1763,'仁化县',198),(1764,'翁源县',198),(1765,'乳源瑶族自治县',198),(1766,'新丰县',198),(1767,'乐昌市',198),(1768,'南雄市',198),(1769,'罗湖区',199),(1770,'福田区',199),(1771,'南山区',199),(1772,'宝安区',199),(1773,'龙岗区',199),(1774,'盐田区',199),(1775,'香洲区',200),(1776,'斗门区',200),(1777,'金湾区',200),(1778,'龙湖区',201),(1779,'金平区',201),(1780,'濠江区',201),(1781,'潮阳区',201),(1782,'潮南区',201),(1783,'澄海区',201),(1784,'南澳县',201),(1785,'禅城区',202),(1786,'南海区',202),(1787,'顺德区',202),(1788,'三水区',202),(1789,'高明区',202),(1790,'蓬江区',203),(1791,'江海区',203),(1792,'新会区',203),(1793,'台山市',203),(1794,'开平市',203),(1795,'鹤山市',203),(1796,'恩平市',203),(1797,'赤坎区',204),(1798,'霞山区',204),(1799,'坡头区',204),(1800,'麻章区',204),(1801,'遂溪县',204),(1802,'徐闻县',204),(1803,'廉江市',204),(1804,'雷州市',204),(1805,'吴川市',204),(1806,'茂南区',205),(1807,'茂港区',205),(1808,'电白县',205),(1809,'高州市',205),(1810,'化州市',205),(1811,'信宜市',205),(1812,'端州区',206),(1813,'鼎湖区',206),(1814,'广宁县',206),(1815,'怀集县',206),(1816,'封开县',206),(1817,'德庆县',206),(1818,'高要市',206),(1819,'四会市',206),(1820,'惠城区',207),(1821,'惠阳区',207),(1822,'博罗县',207),(1823,'惠东县',207),(1824,'龙门县',207),(1825,'梅江区',208),(1826,'梅县',208),(1827,'大埔县',208),(1828,'丰顺县',208),(1829,'五华县',208),(1830,'平远县',208),(1831,'蕉岭县',208),(1832,'兴宁市',208),(1833,'城区',209),(1834,'海丰县',209),(1835,'陆河县',209),(1836,'陆丰市',209),(1837,'源城区',210),(1838,'紫金县',210),(1839,'龙川县',210),(1840,'连平县',210),(1841,'和平县',210),(1842,'东源县',210),(1843,'江城区',211),(1844,'阳西县',211),(1845,'阳东县',211),(1846,'阳春市',211),(1847,'清城区',212),(1848,'佛冈县',212),(1849,'阳山县',212),(1850,'连山壮族瑶族自治县',212),(1851,'连南瑶族自治县',212),(1852,'清新县',212),(1853,'英德市',212),(1854,'连州市',212),(1855,'湘桥区',215),(1856,'潮安县',215),(1857,'饶平县',215),(1858,'榕城区',216),(1859,'揭东县',216),(1860,'揭西县',216),(1861,'惠来县',216),(1862,'普宁市',216),(1863,'云城区',217),(1864,'新兴县',217),(1865,'郁南县',217),(1866,'云安县',217),(1867,'罗定市',217),(1868,'兴宁区',218),(1869,'青秀区',218),(1870,'江南区',218),(1871,'西乡塘区',218),(1872,'良庆区',218),(1873,'邕宁区',218),(1874,'武鸣县',218),(1875,'隆安县',218),(1876,'马山县',218),(1877,'上林县',218),(1878,'宾阳县',218),(1879,'横县',218),(1880,'城中区',219),(1881,'鱼峰区',219),(1882,'柳南区',219),(1883,'柳北区',219),(1884,'柳江县',219),(1885,'柳城县',219),(1886,'鹿寨县',219),(1887,'融安县',219),(1888,'融水苗族自治县',219),(1889,'三江侗族自治县',219),(1890,'秀峰区',220),(1891,'叠彩区',220),(1892,'象山区',220),(1893,'七星区',220),(1894,'雁山区',220),(1895,'阳朔县',220),(1896,'临桂县',220),(1897,'灵川县',220),(1898,'全州县',220),(1899,'兴安县',220),(1900,'永福县',220),(1901,'灌阳县',220),(1902,'龙胜各族自治县',220),(1903,'资源县',220),(1904,'平乐县',220),(1905,'荔蒲县',220),(1906,'恭城瑶族自治县',220),(1907,'万秀区',221),(1908,'蝶山区',221),(1909,'长洲区',221),(1910,'苍梧县',221),(1911,'藤县',221),(1912,'蒙山县',221),(1913,'岑溪市',221),(1914,'海城区',222),(1915,'银海区',222),(1916,'铁山港区',222),(1917,'合浦县',222),(1918,'港口区',223),(1919,'防城区',223),(1920,'上思县',223),(1921,'东兴市',223),(1922,'钦南区',224),(1923,'钦北区',224),(1924,'灵山县',224),(1925,'浦北县',224),(1926,'港北区',225),(1927,'港南区',225),(1928,'覃塘区',225),(1929,'平南县',225),(1930,'桂平市',225),(1931,'玉州区',226),(1932,'容县',226),(1933,'陆川县',226),(1934,'博白县',226),(1935,'兴业县',226),(1936,'北流市',226),(1937,'右江区',227),(1938,'田阳县',227),(1939,'田东县',227),(1940,'平果县',227),(1941,'德保县',227),(1942,'靖西县',227),(1943,'那坡县',227),(1944,'凌云县',227),(1945,'乐业县',227),(1946,'田林县',227),(1947,'西林县',227),(1948,'隆林各族自治县',227),(1949,'八步区',228),(1950,'昭平县',228),(1951,'钟山县',228),(1952,'富川瑶族自治县',228),(1953,'金城江区',229),(1954,'南丹县',229),(1955,'天峨县',229),(1956,'凤山县',229),(1957,'东兰县',229),(1958,'罗城仫佬族自治县',229),(1959,'环江毛南族自治县',229),(1960,'巴马瑶族自治县',229),(1961,'都安瑶族自治县',229),(1962,'大化瑶族自治县',229),(1963,'宜州市',229),(1964,'兴宾区',230),(1965,'忻城县',230),(1966,'象州县',230),(1967,'武宣县',230),(1968,'金秀瑶族自治县',230),(1969,'合山市',230),(1970,'江洲区',231),(1971,'扶绥县',231),(1972,'宁明县',231),(1973,'龙州县',231),(1974,'大新县',231),(1975,'天等县',231),(1976,'凭祥市',231),(1977,'秀英区',232),(1978,'龙华区',232),(1979,'琼山区',232),(1980,'美兰区',232),(1981,'五指山市',233),(1982,'琼海市',233),(1983,'儋州市',233),(1984,'文昌市',233),(1985,'万宁市',233),(1986,'东方市',233),(1987,'定安县',233),(1988,'屯昌县',233),(1989,'澄迈县',233),(1990,'临高县',233),(1991,'白沙黎族自治县',233),(1992,'昌江黎族自治县',233),(1993,'乐东黎族自治县',233),(1994,'陵水黎族自治县',233),(1995,'保亭黎族苗族自治县',233),(1996,'琼中黎族苗族自治县',233),(1997,'西沙群岛',233),(1998,'南沙群岛',233),(1999,'中沙群岛的岛礁及其海域',233),(2000,'万州区',234),(2001,'涪陵区',234),(2002,'渝中区',234),(2003,'大渡口区',234),(2004,'江北区',234),(2005,'沙坪坝区',234),(2006,'九龙坡区',234),(2007,'南岸区',234),(2008,'北碚区',234),(2009,'万盛区',234),(2010,'双桥区',234),(2011,'渝北区',234),(2012,'巴南区',234),(2013,'黔江区',234),(2014,'长寿区',234),(2015,'綦江县',234),(2016,'潼南县',234),(2017,'铜梁县',234),(2018,'大足县',234),(2019,'荣昌县',234),(2020,'璧山县',234),(2021,'梁平县',234),(2022,'城口县',234),(2023,'丰都县',234),(2024,'垫江县',234),(2025,'武隆县',234),(2026,'忠县',234),(2027,'开县',234),(2028,'云阳县',234),(2029,'奉节县',234),(2030,'巫山县',234),(2031,'巫溪县',234),(2032,'石柱土家族自治县',234),(2033,'秀山土家族苗族自治县',234),(2034,'酉阳土家族苗族自治县',234),(2035,'彭水苗族土家族自治县',234),(2036,'江津市',234),(2037,'合川市',234),(2038,'永川市',234),(2039,'南川市',234),(2040,'锦江区',235),(2041,'青羊区',235),(2042,'金牛区',235),(2043,'武侯区',235),(2044,'成华区',235),(2045,'龙泉驿区',235),(2046,'青白江区',235),(2047,'新都区',235),(2048,'温江区',235),(2049,'金堂县',235),(2050,'双流县',235),(2051,'郫县',235),(2052,'大邑县',235),(2053,'蒲江县',235),(2054,'新津县',235),(2055,'都江堰市',235),(2056,'彭州市',235),(2057,'邛崃市',235),(2058,'崇州市',235),(2059,'自流井区',236),(2060,'贡井区',236),(2061,'大安区',236),(2062,'沿滩区',236),(2063,'荣县',236),(2064,'富顺县',236),(2065,'东区',237),(2066,'西区',237),(2067,'仁和区',237),(2068,'米易县',237),(2069,'盐边县',237),(2070,'江阳区',238),(2071,'纳溪区',238),(2072,'龙马潭区',238),(2073,'泸县',238),(2074,'合江县',238),(2075,'叙永县',238),(2076,'古蔺县',238),(2077,'旌阳区',239),(2078,'中江县',239),(2079,'罗江县',239),(2080,'广汉市',239),(2081,'什邡市',239),(2082,'绵竹市',239),(2083,'涪城区',240),(2084,'游仙区',240),(2085,'三台县',240),(2086,'盐亭县',240),(2087,'安县',240),(2088,'梓潼县',240),(2089,'北川羌族自治县',240),(2090,'平武县',240),(2091,'江油市',240),(2092,'市中区',241),(2093,'元坝区',241),(2094,'朝天区',241),(2095,'旺苍县',241),(2096,'青川县',241),(2097,'剑阁县',241),(2098,'苍溪县',241),(2099,'船山区',242),(2100,'安居区',242),(2101,'蓬溪县',242),(2102,'射洪县',242),(2103,'大英县',242),(2104,'市中区',243),(2105,'东兴区',243),(2106,'威远县',243),(2107,'资中县',243),(2108,'隆昌县',243),(2109,'市中区',244),(2110,'沙湾区',244),(2111,'五通桥区',244),(2112,'金口河区',244),(2113,'犍为县',244),(2114,'井研县',244),(2115,'夹江县',244),(2116,'沐川县',244),(2117,'峨边彝族自治县',244),(2118,'马边彝族自治县',244),(2119,'峨眉山市',244),(2120,'顺庆区',245),(2121,'高坪区',245),(2122,'嘉陵区',245),(2123,'南部县',245),(2124,'营山县',245),(2125,'蓬安县',245),(2126,'仪陇县',245),(2127,'西充县',245),(2128,'阆中市',245),(2129,'东坡区',246),(2130,'仁寿县',246),(2131,'彭山县',246),(2132,'洪雅县',246),(2133,'丹棱县',246),(2134,'青神县',246),(2135,'翠屏区',247),(2136,'宜宾县',247),(2137,'南溪县',247),(2138,'江安县',247),(2139,'长宁县',247),(2140,'高县',247),(2141,'珙县',247),(2142,'筠连县',247),(2143,'兴文县',247),(2144,'屏山县',247),(2145,'广安区',248),(2146,'岳池县',248),(2147,'武胜县',248),(2148,'邻水县',248),(2149,'华蓥市',248),(2150,'通川区',249),(2151,'达县',249),(2152,'宣汉县',249),(2153,'开江县',249),(2154,'大竹县',249),(2155,'渠县',249),(2156,'万源市',249),(2157,'雨城区',250),(2158,'名山县',250),(2159,'荥经县',250),(2160,'汉源县',250),(2161,'石棉县',250),(2162,'天全县',250),(2163,'芦山县',250),(2164,'宝兴县',250),(2165,'巴州区',251),(2166,'通江县',251),(2167,'南江县',251),(2168,'平昌县',251),(2169,'雁江区',252),(2170,'安岳县',252),(2171,'乐至县',252),(2172,'简阳市',252),(2173,'汶川县',253),(2174,'理县',253),(2175,'茂县',253),(2176,'松潘县',253),(2177,'九寨沟县',253),(2178,'金川县',253),(2179,'小金县',253),(2180,'黑水县',253),(2181,'马尔康县',253),(2182,'壤塘县',253),(2183,'阿坝县',253),(2184,'若尔盖县',253),(2185,'红原县',253),(2186,'康定县',254),(2187,'泸定县',254),(2188,'丹巴县',254),(2189,'九龙县',254),(2190,'雅江县',254),(2191,'道孚县',254),(2192,'炉霍县',254),(2193,'甘孜县',254),(2194,'新龙县',254),(2195,'德格县',254),(2196,'白玉县',254),(2197,'石渠县',254),(2198,'色达县',254),(2199,'理塘县',254),(2200,'巴塘县',254),(2201,'乡城县',254),(2202,'稻城县',254),(2203,'得荣县',254),(2204,'西昌市',255),(2205,'木里藏族自治县',255),(2206,'盐源县',255),(2207,'德昌县',255),(2208,'会理县',255),(2209,'会东县',255),(2210,'宁南县',255),(2211,'普格县',255),(2212,'布拖县',255),(2213,'金阳县',255),(2214,'昭觉县',255),(2215,'喜德县',255),(2216,'冕宁县',255),(2217,'越西县',255),(2218,'甘洛县',255),(2219,'美姑县',255),(2220,'雷波县',255),(2221,'南明区',256),(2222,'云岩区',256),(2223,'花溪区',256),(2224,'乌当区',256),(2225,'白云区',256),(2226,'小河区',256),(2227,'开阳县',256),(2228,'息烽县',256),(2229,'修文县',256),(2230,'清镇市',256),(2231,'钟山区',257),(2232,'六枝特区',257),(2233,'水城县',257),(2234,'盘县',257),(2235,'红花岗区',258),(2236,'汇川区',258),(2237,'遵义县',258),(2238,'桐梓县',258),(2239,'绥阳县',258),(2240,'正安县',258),(2241,'道真仡佬族苗族自治县',258),(2242,'务川仡佬族苗族自治县',258),(2243,'凤冈县',258),(2244,'湄潭县',258),(2245,'余庆县',258),(2246,'习水县',258),(2247,'赤水市',258),(2248,'仁怀市',258),(2249,'西秀区',259),(2250,'平坝县',259),(2251,'普定县',259),(2252,'镇宁布依族苗族自治县',259),(2253,'关岭布依族苗族自治县',259),(2254,'紫云苗族布依族自治县',259),(2255,'铜仁市',260),(2256,'江口县',260),(2257,'玉屏侗族自治县',260),(2258,'石阡县',260),(2259,'思南县',260),(2260,'印江土家族苗族自治县',260),(2261,'德江县',260),(2262,'沿河土家族自治县',260),(2263,'松桃苗族自治县',260),(2264,'万山特区',260),(2265,'兴义市',261),(2266,'兴仁县',261),(2267,'普安县',261),(2268,'晴隆县',261),(2269,'贞丰县',261),(2270,'望谟县',261),(2271,'册亨县',261),(2272,'安龙县',261),(2273,'毕节市',262),(2274,'大方县',262),(2275,'黔西县',262),(2276,'金沙县',262),(2277,'织金县',262),(2278,'纳雍县',262),(2279,'威宁彝族回族苗族自治县',262),(2280,'赫章县',262),(2281,'凯里市',263),(2282,'黄平县',263),(2283,'施秉县',263),(2284,'三穗县',263),(2285,'镇远县',263),(2286,'岑巩县',263),(2287,'天柱县',263),(2288,'锦屏县',263),(2289,'剑河县',263),(2290,'台江县',263),(2291,'黎平县',263),(2292,'榕江县',263),(2293,'从江县',263),(2294,'雷山县',263),(2295,'麻江县',263),(2296,'丹寨县',263),(2297,'都匀市',264),(2298,'福泉市',264),(2299,'荔波县',264),(2300,'贵定县',264),(2301,'瓮安县',264),(2302,'独山县',264),(2303,'平塘县',264),(2304,'罗甸县',264),(2305,'长顺县',264),(2306,'龙里县',264),(2307,'惠水县',264),(2308,'三都水族自治县',264),(2309,'五华区',265),(2310,'盘龙区',265),(2311,'官渡区',265),(2312,'西山区',265),(2313,'东川区',265),(2314,'呈贡县',265),(2315,'晋宁县',265),(2316,'富民县',265),(2317,'宜良县',265),(2318,'石林彝族自治县',265),(2319,'嵩明县',265),(2320,'禄劝彝族苗族自治县',265),(2321,'寻甸回族彝族自治县',265),(2322,'安宁市',265),(2323,'麒麟区',266),(2324,'马龙县',266),(2325,'陆良县',266),(2326,'师宗县',266),(2327,'罗平县',266),(2328,'富源县',266),(2329,'会泽县',266),(2330,'沾益县',266),(2331,'宣威市',266),(2332,'红塔区',267),(2333,'江川县',267),(2334,'澄江县',267),(2335,'通海县',267),(2336,'华宁县',267),(2337,'易门县',267),(2338,'峨山彝族自治县',267),(2339,'新平彝族傣族自治县',267),(2340,'元江哈尼族彝族傣族自治县',267),(2341,'隆阳区',268),(2342,'施甸县',268),(2343,'腾冲县',268),(2344,'龙陵县',268),(2345,'昌宁县',268),(2346,'昭阳区',269),(2347,'鲁甸县',269),(2348,'巧家县',269),(2349,'盐津县',269),(2350,'大关县',269),(2351,'永善县',269),(2352,'绥江县',269),(2353,'镇雄县',269),(2354,'彝良县',269),(2355,'威信县',269),(2356,'水富县',269),(2357,'古城区',270),(2358,'玉龙纳西族自治县',270),(2359,'永胜县',270),(2360,'华坪县',270),(2361,'宁蒗彝族自治县',270),(2362,'翠云区',271),(2363,'普洱哈尼族彝族自治县',271),(2364,'墨江哈尼族自治县',271),(2365,'景东彝族自治县',271),(2366,'景谷傣族彝族自治县',271),(2367,'镇沅彝族哈尼族拉祜族自治县',271),(2368,'江城哈尼族彝族自治县',271),(2369,'孟连傣族拉祜族佤族自治县',271),(2370,'澜沧拉祜族自治县',271),(2371,'西盟佤族自治县',271),(2372,'临翔区',272),(2373,'凤庆县',272),(2374,'云县',272),(2375,'永德县',272),(2376,'镇康县',272),(2377,'双江拉祜族佤族布朗族傣族自治县',272),(2378,'耿马傣族佤族自治县',272),(2379,'沧源佤族自治县',272),(2380,'楚雄市',273),(2381,'双柏县',273),(2382,'牟定县',273),(2383,'南华县',273),(2384,'姚安县',273),(2385,'大姚县',273),(2386,'永仁县',273),(2387,'元谋县',273),(2388,'武定县',273),(2389,'禄丰县',273),(2390,'个旧市',274),(2391,'开远市',274),(2392,'蒙自县',274),(2393,'屏边苗族自治县',274),(2394,'建水县',274),(2395,'石屏县',274),(2396,'弥勒县',274),(2397,'泸西县',274),(2398,'元阳县',274),(2399,'红河县',274),(2400,'金平苗族瑶族傣族自治县',274),(2401,'绿春县',274),(2402,'河口瑶族自治县',274),(2403,'文山县',275),(2404,'砚山县',275),(2405,'西畴县',275),(2406,'麻栗坡县',275),(2407,'马关县',275),(2408,'丘北县',275),(2409,'广南县',275),(2410,'富宁县',275),(2411,'景洪市',276),(2412,'勐海县',276),(2413,'勐腊县',276),(2414,'大理市',277),(2415,'漾濞彝族自治县',277),(2416,'祥云县',277),(2417,'宾川县',277),(2418,'弥渡县',277),(2419,'南涧彝族自治县',277),(2420,'巍山彝族回族自治县',277),(2421,'永平县',277),(2422,'云龙县',277),(2423,'洱源县',277),(2424,'剑川县',277),(2425,'鹤庆县',277),(2426,'瑞丽市',278),(2427,'潞西市',278),(2428,'梁河县',278),(2429,'盈江县',278),(2430,'陇川县',278),(2431,'泸水县',279),(2432,'福贡县',279),(2433,'贡山独龙族怒族自治县',279),(2434,'兰坪白族普米族自治县',279),(2435,'香格里拉县',280),(2436,'德钦县',280),(2437,'维西傈僳族自治县',280),(2438,'城关区',281),(2439,'林周县',281),(2440,'当雄县',281),(2441,'尼木县',281),(2442,'曲水县',281),(2443,'堆龙德庆县',281),(2444,'达孜县',281),(2445,'墨竹工卡县',281),(2446,'昌都县',282),(2447,'江达县',282),(2448,'贡觉县',282),(2449,'类乌齐县',282),(2450,'丁青县',282),(2451,'察雅县',282),(2452,'八宿县',282),(2453,'左贡县',282),(2454,'芒康县',282),(2455,'洛隆县',282),(2456,'边坝县',282),(2457,'乃东县',283),(2458,'扎囊县',283),(2459,'贡嘎县',283),(2460,'桑日县',283),(2461,'琼结县',283),(2462,'曲松县',283),(2463,'措美县',283),(2464,'洛扎县',283),(2465,'加查县',283),(2466,'隆子县',283),(2467,'错那县',283),(2468,'浪卡子县',283),(2469,'日喀则市',284),(2470,'南木林县',284),(2471,'江孜县',284),(2472,'定日县',284),(2473,'萨迦县',284),(2474,'拉孜县',284),(2475,'昂仁县',284),(2476,'谢通门县',284),(2477,'白朗县',284),(2478,'仁布县',284),(2479,'康马县',284),(2480,'定结县',284),(2481,'仲巴县',284),(2482,'亚东县',284),(2483,'吉隆县',284),(2484,'聂拉木县',284),(2485,'萨嘎县',284),(2486,'岗巴县',284),(2487,'那曲县',285),(2488,'嘉黎县',285),(2489,'比如县',285),(2490,'聂荣县',285),(2491,'安多县',285),(2492,'申扎县',285),(2493,'索县',285),(2494,'班戈县',285),(2495,'巴青县',285),(2496,'尼玛县',285),(2497,'普兰县',286),(2498,'札达县',286),(2499,'噶尔县',286),(2500,'日土县',286),(2501,'革吉县',286),(2502,'改则县',286),(2503,'措勤县',286),(2504,'林芝县',287),(2505,'工布江达县',287),(2506,'米林县',287),(2507,'墨脱县',287),(2508,'波密县',287),(2509,'察隅县',287),(2510,'朗县',287),(2511,'新城区',288),(2512,'碑林区',288),(2513,'莲湖区',288),(2514,'灞桥区',288),(2515,'未央区',288),(2516,'雁塔区',288),(2517,'阎良区',288),(2518,'临潼区',288),(2519,'长安区',288),(2520,'蓝田县',288),(2521,'周至县',288),(2522,'户县',288),(2523,'高陵县',288),(2524,'王益区',289),(2525,'印台区',289),(2526,'耀州区',289),(2527,'宜君县',289),(2528,'渭滨区',290),(2529,'金台区',290),(2530,'陈仓区',290),(2531,'凤翔县',290),(2532,'岐山县',290),(2533,'扶风县',290),(2534,'眉县',290),(2535,'陇县',290),(2536,'千阳县',290),(2537,'麟游县',290),(2538,'凤县',290),(2539,'太白县',290),(2540,'秦都区',291),(2541,'杨凌区',291),(2542,'渭城区',291),(2543,'三原县',291),(2544,'泾阳县',291),(2545,'乾县',291),(2546,'礼泉县',291),(2547,'永寿县',291),(2548,'彬县',291),(2549,'长武县',291),(2550,'旬邑县',291),(2551,'淳化县',291),(2552,'武功县',291),(2553,'兴平市',291),(2554,'临渭区',292),(2555,'华县',292),(2556,'潼关县',292),(2557,'大荔县',292),(2558,'合阳县',292),(2559,'澄城县',292),(2560,'蒲城县',292),(2561,'白水县',292),(2562,'富平县',292),(2563,'韩城市',292),(2564,'华阴市',292),(2565,'宝塔区',293),(2566,'延长县',293),(2567,'延川县',293),(2568,'子长县',293),(2569,'安塞县',293),(2570,'志丹县',293),(2571,'吴旗县',293),(2572,'甘泉县',293),(2573,'富县',293),(2574,'洛川县',293),(2575,'宜川县',293),(2576,'黄龙县',293),(2577,'黄陵县',293),(2578,'汉台区',294),(2579,'南郑县',294),(2580,'城固县',294),(2581,'洋县',294),(2582,'西乡县',294),(2583,'勉县',294),(2584,'宁强县',294),(2585,'略阳县',294),(2586,'镇巴县',294),(2587,'留坝县',294),(2588,'佛坪县',294),(2589,'榆阳区',295),(2590,'神木县',295),(2591,'府谷县',295),(2592,'横山县',295),(2593,'靖边县',295),(2594,'定边县',295),(2595,'绥德县',295),(2596,'米脂县',295),(2597,'佳县',295),(2598,'吴堡县',295),(2599,'清涧县',295),(2600,'子洲县',295),(2601,'汉滨区',296),(2602,'汉阴县',296),(2603,'石泉县',296),(2604,'宁陕县',296),(2605,'紫阳县',296),(2606,'岚皋县',296),(2607,'平利县',296),(2608,'镇坪县',296),(2609,'旬阳县',296),(2610,'白河县',296),(2611,'商州区',297),(2612,'洛南县',297),(2613,'丹凤县',297),(2614,'商南县',297),(2615,'山阳县',297),(2616,'镇安县',297),(2617,'柞水县',297),(2618,'城关区',298),(2619,'七里河区',298),(2620,'西固区',298),(2621,'安宁区',298),(2622,'红古区',298),(2623,'永登县',298),(2624,'皋兰县',298),(2625,'榆中县',298),(2626,'金川区',300),(2627,'永昌县',300),(2628,'白银区',301),(2629,'平川区',301),(2630,'靖远县',301),(2631,'会宁县',301),(2632,'景泰县',301),(2633,'秦城区',302),(2634,'北道区',302),(2635,'清水县',302),(2636,'秦安县',302),(2637,'甘谷县',302),(2638,'武山县',302),(2639,'张家川回族自治县',302),(2640,'凉州区',303),(2641,'民勤县',303),(2642,'古浪县',303),(2643,'天祝藏族自治县',303),(2644,'甘州区',304),(2645,'肃南裕固族自治县',304),(2646,'民乐县',304),(2647,'临泽县',304),(2648,'高台县',304),(2649,'山丹县',304),(2650,'崆峒区',305),(2651,'泾川县',305),(2652,'灵台县',305),(2653,'崇信县',305),(2654,'华亭县',305),(2655,'庄浪县',305),(2656,'静宁县',305),(2657,'肃州区',306),(2658,'金塔县',306),(2659,'安西县',306),(2660,'肃北蒙古族自治县',306),(2661,'阿克塞哈萨克族自治县',306),(2662,'玉门市',306),(2663,'敦煌市',306),(2664,'西峰区',307),(2665,'庆城县',307),(2666,'环县',307),(2667,'华池县',307),(2668,'合水县',307),(2669,'正宁县',307),(2670,'宁县',307),(2671,'镇原县',307),(2672,'安定区',308),(2673,'通渭县',308),(2674,'陇西县',308),(2675,'渭源县',308),(2676,'临洮县',308),(2677,'漳县',308),(2678,'岷县',308),(2679,'武都区',309),(2680,'成县',309),(2681,'文县',309),(2682,'宕昌县',309),(2683,'康县',309),(2684,'西和县',309),(2685,'礼县',309),(2686,'徽县',309),(2687,'两当县',309),(2688,'临夏市',310),(2689,'临夏县',310),(2690,'康乐县',310),(2691,'永靖县',310),(2692,'广河县',310),(2693,'和政县',310),(2694,'东乡族自治县',310),(2695,'积石山保安族东乡族撒拉族自治县',310),(2696,'合作市',311),(2697,'临潭县',311),(2698,'卓尼县',311),(2699,'舟曲县',311),(2700,'迭部县',311),(2701,'玛曲县',311),(2702,'碌曲县',311),(2703,'夏河县',311),(2704,'城东区',312),(2705,'城中区',312),(2706,'城西区',312),(2707,'城北区',312),(2708,'大通回族土族自治县',312),(2709,'湟中县',312),(2710,'湟源县',312),(2711,'平安县',313),(2712,'民和回族土族自治县',313),(2713,'乐都县',313),(2714,'互助土族自治县',313),(2715,'化隆回族自治县',313),(2716,'循化撒拉族自治县',313),(2717,'门源回族自治县',314),(2718,'祁连县',314),(2719,'海晏县',314),(2720,'刚察县',314),(2721,'同仁县',315),(2722,'尖扎县',315),(2723,'泽库县',315),(2724,'河南蒙古族自治县',315),(2725,'共和县',316),(2726,'同德县',316),(2727,'贵德县',316),(2728,'兴海县',316),(2729,'贵南县',316),(2730,'玛沁县',317),(2731,'班玛县',317),(2732,'甘德县',317),(2733,'达日县',317),(2734,'久治县',317),(2735,'玛多县',317),(2736,'玉树县',318),(2737,'杂多县',318),(2738,'称多县',318),(2739,'治多县',318),(2740,'囊谦县',318),(2741,'曲麻莱县',318),(2742,'格尔木市',319),(2743,'德令哈市',319),(2744,'乌兰县',319),(2745,'都兰县',319),(2746,'天峻县',319),(2747,'兴庆区',320),(2748,'西夏区',320),(2749,'金凤区',320),(2750,'永宁县',320),(2751,'贺兰县',320),(2752,'灵武市',320),(2753,'大武口区',321),(2754,'惠农区',321),(2755,'平罗县',321),(2756,'利通区',322),(2757,'盐池县',322),(2758,'同心县',322),(2759,'青铜峡市',322),(2760,'原州区',323),(2761,'西吉县',323),(2762,'隆德县',323),(2763,'泾源县',323),(2764,'彭阳县',323),(2765,'沙坡头区',324),(2766,'中宁县',324),(2767,'海原县',324),(2768,'天山区',325),(2769,'沙依巴克区',325),(2770,'新市区',325),(2771,'水磨沟区',325),(2772,'头屯河区',325),(2773,'达坂城区',325),(2774,'东山区',325),(2775,'乌鲁木齐县',325),(2776,'独山子区',326),(2777,'克拉玛依区',326),(2778,'白碱滩区',326),(2779,'乌尔禾区',326),(2780,'吐鲁番市',327),(2781,'鄯善县',327),(2782,'托克逊县',327),(2783,'哈密市',328),(2784,'巴里坤哈萨克自治县',328),(2785,'伊吾县',328),(2786,'昌吉市',329),(2787,'阜康市',329),(2788,'米泉市',329),(2789,'呼图壁县',329),(2790,'玛纳斯县',329),(2791,'奇台县',329),(2792,'吉木萨尔县',329),(2793,'木垒哈萨克自治县',329),(2794,'博乐市',330),(2795,'精河县',330),(2796,'温泉县',330),(2797,'库尔勒市',331),(2798,'轮台县',331),(2799,'尉犁县',331),(2800,'若羌县',331),(2801,'且末县',331),(2802,'焉耆回族自治县',331),(2803,'和静县',331),(2804,'和硕县',331),(2805,'博湖县',331),(2806,'阿克苏市',332),(2807,'温宿县',332),(2808,'库车县',332),(2809,'沙雅县',332),(2810,'新和县',332),(2811,'拜城县',332),(2812,'乌什县',332),(2813,'阿瓦提县',332),(2814,'柯坪县',332),(2815,'阿图什市',333),(2816,'阿克陶县',333),(2817,'阿合奇县',333),(2818,'乌恰县',333),(2819,'喀什市',334),(2820,'疏附县',334),(2821,'疏勒县',334),(2822,'英吉沙县',334),(2823,'泽普县',334),(2824,'莎车县',334),(2825,'叶城县',334),(2826,'麦盖提县',334),(2827,'岳普湖县',334),(2828,'伽师县',334),(2829,'巴楚县',334),(2830,'塔什库尔干塔吉克自治县',334),(2831,'和田市',335),(2832,'和田县',335),(2833,'墨玉县',335),(2834,'皮山县',335),(2835,'洛浦县',335),(2836,'策勒县',335),(2837,'于田县',335),(2838,'民丰县',335),(2839,'伊宁市',336),(2840,'奎屯市',336),(2841,'伊宁县',336),(2842,'察布查尔锡伯自治县',336),(2843,'霍城县',336),(2844,'巩留县',336),(2845,'新源县',336),(2846,'昭苏县',336),(2847,'特克斯县',336),(2848,'尼勒克县',336),(2849,'塔城市',337),(2850,'乌苏市',337),(2851,'额敏县',337),(2852,'沙湾县',337),(2853,'托里县',337),(2854,'裕民县',337),(2855,'和布克赛尔蒙古自治县',337),(2856,'阿勒泰市',338),(2857,'布尔津县',338),(2858,'富蕴县',338),(2859,'福海县',338),(2860,'哈巴河县',338),(2861,'青河县',338),(2862,'吉木乃县',338);
/*!40000 ALTER TABLE `tl_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_province`
--

DROP TABLE IF EXISTS `tl_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tl_province` (
  `ProvinceID` int unsigned NOT NULL,
  `ProvinceName` varchar(50) NOT NULL,
  PRIMARY KEY (`ProvinceID`),
  UNIQUE KEY `ProvinceName` (`ProvinceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='省份';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_province`
--

LOCK TABLES `tl_province` WRITE;
/*!40000 ALTER TABLE `tl_province` DISABLE KEYS */;
INSERT INTO `tl_province` VALUES (9,'上海市'),(25,'云南省'),(5,'内蒙古自治区'),(1,'北京市'),(34,'台湾省'),(7,'吉林省'),(23,'四川省'),(2,'天津市'),(30,'宁夏回族自治区'),(12,'安徽省'),(15,'山东省'),(4,'山西省'),(19,'广东省'),(20,'广西壮族自治区'),(31,'新疆维吾尔自治区'),(10,'江苏省'),(14,'江西省'),(3,'河北省'),(16,'河南省'),(11,'浙江省'),(21,'海南省'),(17,'湖北省'),(18,'湖南省'),(33,'澳门特别行政区'),(28,'甘肃省'),(13,'福建省'),(26,'西藏自治区'),(24,'贵州省'),(6,'辽宁省'),(22,'重庆市'),(27,'陕西省'),(29,'青海省'),(32,'香港特别行政区'),(8,'黑龙江省');
/*!40000 ALTER TABLE `tl_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_categories`
--

DROP TABLE IF EXISTS `top_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `text` varchar(255) DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='热门分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_categories`
--

LOCK TABLES `top_categories` WRITE;
/*!40000 ALTER TABLE `top_categories` DISABLE KEYS */;
INSERT INTO `top_categories` VALUES (1,'https://smart-shop.itheima.net/uploads/10001/20230320/58a7c1f62df4cb1eb47fe83ff0e566e6.png','新品首发'),(2,'https://smart-shop.itheima.net/uploads/10001/20230320/49c64dbbf449e9e8abfca314f92814bd.png','居家生活'),(3,'https://smart-shop.itheima.net/uploads/10001/20230320/8573fbc5e87e8a88827e905fca284604.png','服饰鞋包'),(4,'https://smart-shop.itheima.net/uploads/10001/20230320/f01c5fc360f55c6053beec34913bc699.png','美食酒水'),(5,'https://smart-shop.itheima.net/uploads/10001/20230320/b106e9bd9e0c8c779e7d77a84e92ed93.png','个护清洁'),(6,'https://smart-shop.itheima.net/uploads/10001/20230320/fd3a573889671b924d89859f521c30c9.png','母婴亲子'),(7,'https://smart-shop.itheima.net/uploads/10001/20230320/8f979924a4fd3b5f406b62a6b405ea32.png','运动旅行'),(8,'https://smart-shop.itheima.net/uploads/10001/20230320/f7657720f79ea9f769c40608f369130e.png','数码家电'),(9,'https://smart-shop.itheima.net/uploads/10001/20230320/36f09e32efc53e1e695210ca92c54ed8.png','宠物生活'),(10,'https://smart-shop.itheima.net/uploads/10001/20230320/0cccdb31952fbf3bc0026efbe260e40e.png','每日抄底');
/*!40000 ALTER TABLE `top_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `a`
--

/*!50001 DROP VIEW IF EXISTS `a`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `a` AS select `products`.`product_id` AS `product_id`,`products`.`name` AS `name`,`products`.`description` AS `description`,`products`.`product_image` AS `product_image`,`products`.`original_price` AS `original_price`,`products`.`discount_price` AS `discount_price`,`products`.`product_sales` AS `product_sales`,`products`.`category_id` AS `category_id`,`products`.`category_name` AS `category_name`,`products`.`content` AS `content`,`products`.`stock_total` AS `stock_total` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 15:03:28
