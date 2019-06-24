-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: 192.168.10.10    Database: matchmove
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',2),(4,'2016_06_01_000002_create_oauth_access_tokens_table',2),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),(6,'2016_06_01_000004_create_oauth_clients_table',2),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('030c0563012715dd6c793c1acf4fc75b473fbc90e6c078c3034af50051c33f8aa8a1507d58eadcd3',1,1,'MatchMove','[]',0,'2019-06-24 13:52:08','2019-06-24 13:52:08','2020-06-24 13:52:08'),('2e598908fa3a8bcb79e0b0fe46010893c8b4e9846e8851fef2d1b3314df787f0c4da65ee5855e763',1,1,'MatchMove','[]',0,'2019-06-24 13:19:53','2019-06-24 13:19:53','2020-06-24 13:19:53'),('37d60c96d3c5a498e4ad1ebea76bb7a41950098642df1df522c7e0a2c7ce778238fe8d2100554e6c',1,1,'MatchMove','[]',0,'2019-06-24 12:36:27','2019-06-24 12:36:27','2020-06-24 12:36:27'),('7da59adbd5ed67c8b4623afadf779c5a297208a350340ce8bcb2ff81fbaea1c13d67ae65b1d093b3',1,1,'matchmove','[]',0,'2019-06-24 07:46:51','2019-06-24 07:46:51','2020-06-24 07:46:51'),('ab907faebb37e3d7d68fbecfbd1ba90586c9b8092fedb291bd10596a929e85682c1a107501b37c05',3,1,'MatchMove','[]',0,'2019-06-24 07:55:41','2019-06-24 07:55:41','2020-06-24 07:55:41'),('db60817ec6f4399a81f77cd095b4480518026031a913a51b94a46f0e69536a65536c08b2900454c0',1,1,'MatchMove','[]',0,'2019-06-24 12:32:43','2019-06-24 12:32:43','2020-06-24 12:32:43'),('f6f79888cddf3cf5cfe69c1ea5e8e6aab8a46b26d110ab33e895812d1f666004386621b32e82fef5',1,1,'matchmove','[]',0,'2019-06-24 07:49:46','2019-06-24 07:49:46','2020-06-24 07:49:46'),('fa1eeb48bba56241ff223eb8e14dd5edafbf59016822213e24e4bd5e76ab1ba53121d238f3b4f23a',1,1,'MatchMove','[]',0,'2019-06-24 07:52:36','2019-06-24 07:52:36','2020-06-24 07:52:36');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','CWjLyxieVZXdwM6ZGfWL8ukPneqIzNR4AypEvr6i','http://localhost',1,0,0,'2019-06-24 07:31:25','2019-06-24 07:31:25'),(2,NULL,'Laravel Password Grant Client','UIDN1AGHNvn82bi2DRcENA7gE8i0NgfMfJtVB2vG','http://localhost',0,1,0,'2019-06-24 07:31:25','2019-06-24 07:31:25');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2019-06-24 07:31:25','2019-06-24 07:31:25');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_id_index` (`id`),
  KEY `transactions_user_id_index` (`user_id`),
  CONSTRAINT `transactions_users_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,77664.00,'BHD','90653','2019-06-04 12:26:35','2019-06-04 12:26:35'),(2,1,21438.00,'AOA','99458','2019-06-24 12:26:35','2019-06-24 12:26:35'),(3,1,84104.00,'HUF','37489','2019-06-24 12:26:35','2019-06-24 12:26:35'),(4,1,93141.00,'AMD','68256','2019-06-14 12:26:35','2019-06-14 12:26:35'),(5,1,31813.00,'KMF','42730','2019-06-24 12:26:35','2019-06-24 12:26:35'),(6,1,25378.00,'MUR','10875','2019-06-24 12:26:35','2019-06-24 12:26:35'),(7,1,38591.00,'TMT','95976','2019-06-12 12:26:35','2019-06-12 12:26:35'),(8,1,6229.00,'GHS','66867','2019-06-24 12:26:35','2019-06-24 12:26:35'),(9,1,43398.00,'KMF','6635','2019-06-10 12:26:35','2019-06-10 12:26:35'),(10,1,94812.00,'CRC','77395','2019-06-24 12:26:35','2019-06-24 12:26:35'),(11,1,66477.00,'BTN','14491','2019-06-24 12:26:35','2019-06-24 12:26:35'),(12,1,56071.00,'CVE','69080','2019-06-24 12:26:35','2019-06-24 12:26:35'),(13,1,95681.00,'BGN','90898','2019-06-24 12:26:35','2019-06-24 12:26:35'),(14,1,72530.00,'GBP','54878','2019-06-24 12:26:35','2019-06-24 12:26:35'),(15,1,21344.00,'DKK','75473','2019-06-24 12:26:35','2019-06-24 12:26:35'),(16,1,12237.00,'BBD','79049','2019-06-24 12:26:35','2019-06-24 12:26:35'),(17,1,39391.00,'TJS','11731','2019-06-24 12:26:35','2019-06-24 12:26:35'),(18,1,7638.00,'SRD','73192','2019-06-24 12:26:35','2019-06-24 12:26:35'),(19,1,59701.00,'GTQ','15605','2019-06-24 12:26:35','2019-06-24 12:26:35'),(20,1,51563.00,'SYP','25958','2019-06-24 12:26:35','2019-06-24 12:26:35'),(21,1,65182.00,'MOP','16592','2019-06-24 12:26:35','2019-06-24 12:26:35'),(22,1,34306.00,'MVR','86137','2019-06-24 12:26:35','2019-06-24 12:26:35'),(23,1,89964.00,'SBD','23033','2019-06-24 12:26:35','2019-06-24 12:26:35'),(24,1,10024.00,'SBD','32053','2019-06-24 12:26:35','2019-06-24 12:26:35'),(25,1,50969.00,'VEF','78232','2019-06-24 12:26:35','2019-06-24 12:26:35'),(26,1,89884.00,'XCD','84142','2019-06-24 12:26:35','2019-06-24 12:26:35'),(27,1,73912.00,'GYD','96279','2019-06-24 12:26:35','2019-06-24 12:26:35'),(28,1,13935.00,'FJD','75433','2019-06-24 12:26:35','2019-06-24 12:26:35'),(29,1,33849.00,'PEN','15691','2019-06-24 12:26:35','2019-06-24 12:26:35'),(30,1,33864.00,'MWK','50189','2019-06-24 12:26:35','2019-06-24 12:26:35'),(31,1,55733.00,'SLL','26641','2019-06-24 12:26:35','2019-06-24 12:26:35'),(32,1,46761.00,'BND','9398','2019-06-24 12:26:35','2019-06-24 12:26:35'),(33,1,93944.00,'MZN','74537','2019-06-24 12:26:35','2019-06-24 12:26:35'),(34,1,4986.00,'SOS','69456','2019-06-24 12:26:35','2019-06-24 12:26:35'),(35,1,25577.00,'VUV','67662','2019-06-24 12:26:35','2019-06-24 12:26:35'),(36,1,56086.00,'CNY','45121','2019-06-24 12:26:35','2019-06-24 12:26:35'),(37,1,36982.00,'VEF','73233','2019-06-24 12:26:35','2019-06-24 12:26:35'),(38,1,86656.00,'MAD','56856','2019-06-24 12:26:35','2019-06-24 12:26:35'),(39,1,94115.00,'SEK','17348','2019-06-24 12:26:35','2019-06-24 12:26:35'),(40,1,87331.00,'ISK','32116','2019-06-24 12:26:35','2019-06-24 12:26:35'),(41,1,53972.00,'ETB','89567','2019-06-24 12:26:35','2019-06-24 12:26:35'),(42,1,74281.00,'OMR','12505','2019-06-24 12:26:35','2019-06-24 12:26:35'),(43,1,90003.00,'QAR','30755','2019-06-24 12:26:35','2019-06-24 12:26:35'),(44,1,18180.00,'LAK','6719','2019-06-24 12:26:35','2019-06-24 12:26:35'),(45,1,75436.00,'CUP','83255','2019-06-24 12:26:35','2019-06-24 12:26:35'),(46,1,36418.00,'BAM','57267','2019-06-29 12:26:35','2019-06-24 12:26:35'),(47,1,45142.00,'GYD','94427','2019-06-24 12:26:35','2019-06-24 12:26:35'),(48,1,6395.00,'SEK','44704','2019-06-28 12:26:35','2019-06-24 12:26:35'),(49,1,8110.00,'BIF','23971','2019-06-24 12:26:35','2019-06-24 12:26:35'),(50,1,4387.00,'DJF','63228','2019-06-26 12:26:35','2019-06-24 12:26:35');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Manoj kumar','mkgarwa@gmail.com',NULL,'$2y$10$qdZz/9aUI2d9LvqqEizFke.sYRogOyWWjF1KUGs3np4u1WvWHrUwO',NULL,NULL,NULL),(2,'Divya Singh','sdivya@gmail.com',NULL,'$2y$10$q8ziWxtbKvR59vSp2RYUMe5yP9.k.lvLe3jbA1dEXLw2R.pA0nkzW',NULL,NULL,NULL),(3,'test user','mkgarwa@gmail',NULL,'$2y$10$8dceTSAwpU5dAyjca7AgSenYHKKsbvt2JaVqzgrIcZFWpttci0cKe',NULL,'2019-06-24 07:55:41','2019-06-24 07:55:41');
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

-- Dump completed on 2019-06-24 19:44:36
