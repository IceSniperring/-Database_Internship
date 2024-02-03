-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: gamemanage
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminNo` varchar(20) NOT NULL,
  `adminPd` varchar(20) NOT NULL,
  PRIMARY KEY (`adminNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('root','root');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouse`
--

DROP TABLE IF EXISTS `storehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouse` (
  `username` varchar(20) NOT NULL,
  `wpName` char(20) NOT NULL,
  PRIMARY KEY (`username`,`wpName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouse`
--

LOCK TABLES `storehouse` WRITE;
/*!40000 ALTER TABLE `storehouse` DISABLE KEYS */;
INSERT INTO `storehouse` VALUES ('pee','.52加仑'),('pee','LACT-450'),('pee','可变式滚筒'),('pee','四重弹跳手枪.黑'),('splatoon','LACT-450'),('splatoon','开尔文525'),('user','专业模型枪MG'),('user1','.52加仑'),('user1','LACT-450'),('user1','专业模型枪MG'),('user1','北斋'),('user1','四重弹跳手枪.黑'),('user1','开尔文525'),('user1','斯普拉射击枪'),('user1','飞溅泼桶'),('user2','LACT-450'),('user2','专业模型枪MG'),('user2','北斋'),('user2','开尔文525'),('user2','飞溅泼桶'),('user6','LACT-450'),('user6','专业模型枪MG');
/*!40000 ALTER TABLE `storehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `currency` int NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('pee','zxc',0),('splatoon','spl',0),('test','1111',108),('user','123',87),('user1','1234',76),('user2','12345',89),('user6','6666',99);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon`
--

DROP TABLE IF EXISTS `weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapon` (
  `wpName` char(20) NOT NULL,
  `wpApperanceurl` varchar(200) NOT NULL,
  `currencyCost` int NOT NULL,
  `isShelves` tinyint(1) NOT NULL,
  PRIMARY KEY (`wpName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon`
--

LOCK TABLES `weapon` WRITE;
/*!40000 ALTER TABLE `weapon` DISABLE KEYS */;
INSERT INTO `weapon` VALUES ('.52加仑','../武器图片/52加仑.png',1,1),('.96加仑','../武器图片/96加仑.png',1,0),('14式竹筒枪·甲','../武器图片/14式竹筒枪·甲.png',1,0),('4K准星枪','../武器图片/4K准星枪.png',1,0),('H3卷管枪','../武器图片/H3卷管枪.png',1,0),('L3卷管枪','../武器图片/L3卷管枪.png',1,0),('LACT-450','../武器图片/LACT-450.png',1,1),('N-ZAP85','../武器图片/N-ZAP85.png',1,0),('三发猎鱼弓','../武器图片/三发猎鱼弓.png',1,0),('专业模型枪MG','../武器图片/专业模型枪MG.png',1,1),('公升4K','../武器图片/公升4K.png',1,0),('冲涂爆破枪','../武器图片/冲涂爆破枪.png',1,0),('北斋','../武器图片/北斋.png',1,0),('双重清洁枪','../武器图片/双重清洁枪.png',1,1),('可变式滚筒','../武器图片/可变式滚筒.png',1,1),('喷射清洁枪','../武器图片/喷射清洁枪.png',1,0),('四重弹跳手枪.黑','../武器图片/四重弹跳手枪.黑.png',1,1),('回旋泼桶','../武器图片/回旋泼桶.png',1,0),('圆珠笔','../武器图片/圆珠笔.png',1,0),('工作刮水刀','../武器图片/工作刮水刀.png',1,0),('巴勃罗','../武器图片/巴勃罗.png',1,0),('广域标记枪','../武器图片/广域标记枪.png',1,0),('开尔文525','../武器图片/开尔文525.png',1,0),('开瓶喷泉枪','../武器图片/开瓶喷泉枪.png',1,0),('快速爆破枪 精英','../武器图片/快速爆破枪 精英.png',1,0),('斯普拉准星枪','../武器图片/斯普拉准星枪.png',1,0),('斯普拉射击枪','../武器图片/斯普拉射击枪.png',1,0),('斯普拉旋转枪','../武器图片/斯普拉旋转枪.png',1,0),('斯普拉机动枪','../武器图片/斯普拉机动枪.png',1,0),('斯普拉滚筒','../武器图片/斯普拉滚筒.png',1,0),('斯普拉蓄力狙击枪','../武器图片/斯普拉蓄力狙击枪.png',1,0),('新叶射击枪','../武器图片/新叶射击枪.png',1,0),('新星爆破枪','../武器图片/新星爆破枪.png',1,0),('桶装旋转枪','../武器图片/桶装旋转枪.png',1,0),('洗笔桶','../武器图片/洗笔桶.png',1,0),('消防栓旋转枪','../武器图片/消防栓旋转枪.png',1,0),('溅镀枪','../武器图片/溅镀枪.png',1,0),('满溢泡澡泼桶','../武器图片/满溢泡澡泼桶.png',1,0),('火热爆破枪','../武器图片/火热爆破枪.png',1,0),('爆炸泼桶','../武器图片/爆炸泼桶.png',1,0),('特工配件','../武器图片/特工配件.png',1,0),('电动马达滚筒','../武器图片/电动马达滚筒.png',1,0),('碳纤维滚筒','../武器图片/碳纤维滚筒.png',1,0),('窄域标记枪','../武器图片/窄域标记枪.png',1,0),('英雄射击枪 复制','../武器图片/英雄射击枪 复制.png',1,0),('远程爆破枪','../武器图片/远程爆破枪.png',1,0),('遮阳防空伞','../武器图片/遮阳防空伞.png',1,0),('雨刷刮水刀','../武器图片/雨刷刮水刀.png',1,0),('露营防空伞','../武器图片/露营防空伞.png',1,0),('顶尖射击枪','../武器图片/顶尖射击枪.png',1,0),('飞溅泼桶','../武器图片/飞溅泼桶.png',1,0),('高压油管枪','../武器图片/高压油管枪.png',1,0),('鱿快洁α','../武器图片/鱿快洁α.png',1,0),('鹦鹉螺号47','../武器图片/鹦鹉螺号47.png',1,0);
/*!40000 ALTER TABLE `weapon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15 18:59:03
