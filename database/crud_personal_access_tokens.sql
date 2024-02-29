-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: crud
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',2,'abilities','d47574fbe095d6c48cf3a96dd9dc90eb56f1314acde038111e0ff8ce70d68405','[\"auth-login\",\"auth-logout\"]','2024-02-28 08:52:59','2024-02-28 08:19:49','2024-02-28 08:52:59'),(3,'App\\Models\\User',2,'abilities','05c3738d612c946e7a3662699441f09b3b348dc035dbfbe7657f7f237cd521cf','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:19:08','2024-02-28 16:19:08'),(4,'App\\Models\\User',2,'abilities','ee0035f8a83fa80078b07141bad36098019d66993ae3f4bd651df0786dab623f','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:19:38','2024-02-28 16:19:38'),(5,'App\\Models\\User',2,'abilities','2f02cd309f2ccc35c8d92e4cd7a002c02453fd79de38750151035cfc717df9bc','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:20:39','2024-02-28 16:20:39'),(6,'App\\Models\\User',2,'abilities','83eeca48ffbda8a081f3bf8f62ed6d07f14229070c68698eae4c69b04acfabe9','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:20:51','2024-02-28 16:20:51'),(7,'App\\Models\\User',2,'abilities','2e1590f53f4ac1d8135ce766a5ea479e24291ead39d7fa1121b278ac9f9e6b49','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:21:04','2024-02-28 16:21:04'),(8,'App\\Models\\User',2,'abilities','753ec47d0feb483bfc2a3435ad71aac6a35e7997ae885c280091dcfca9cbce01','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:21:21','2024-02-28 16:21:21'),(9,'App\\Models\\User',2,'abilities','a806c25e93f4931fc4437aba64ec78e1b2995e20ee25e557330150d279f11cdb','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:21:37','2024-02-28 16:21:37'),(10,'App\\Models\\User',2,'abilities','9beade7ff0ad5f1237c9c503f0057eb543588bc01e111de6c242d38056cb584b','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:23:31','2024-02-28 16:23:31'),(11,'App\\Models\\User',2,'abilities','e67fd26b1c2bb5768eb200699405414cc02fdeb3edca072fb04568d2a74b70e2','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:23:48','2024-02-28 16:23:48'),(12,'App\\Models\\User',2,'abilities','07be31e7179690a4bdac7010438de16e36332220dd1f39068a56303ec82f7951','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:49:08','2024-02-28 16:49:08'),(13,'App\\Models\\User',2,'abilities','ca5887e38f07b68841c8a372d1f93fa492412ec310706859ea364ff99f3bac04','[\"auth-login\",\"auth-logout\"]',NULL,'2024-02-28 16:53:57','2024-02-28 16:53:57'),(14,'App\\Models\\User',2,'abilities','8e66551e49b3f58b0ca1b834f143f159463724c976ef230f3291518ecada061c','[\"auth-login\",\"auth-logout\"]','2024-02-28 16:55:13','2024-02-28 16:54:56','2024-02-28 16:55:13');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-29 11:24:25
