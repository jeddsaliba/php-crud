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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Joana Goldner','kobe26@example.com','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','73UFu2FZAC','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(2,'Reanna Russel','kunze.nora@example.net','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FhEv1ZZKw5','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(3,'Prof. Nathan Rutherford Sr.','erin10@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','UOwHzsSz29','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(4,'Dr. Arvid Block Sr.','stoltenberg.vern@example.com','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ccOKSCboVy','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(5,'Dr. Royce Rempel I','heidi.kessler@example.com','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','leGoJgO3H0','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(6,'Luella Smitham','mckayla50@example.com','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','EPL2MIkHrd','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(7,'Paul Beahan','ahilpert@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','MWkKzkeiaQ','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(8,'Darrel Pagac MD','lbergstrom@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qBwFBnoa4T','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(9,'D\'angelo Kulas','herminio.mayert@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','mjJnmxypzN','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(10,'Lafayette Runte','okozey@example.net','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zJGTyI9GAq','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(11,'Curt Kovacek','carter.bertha@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pmpCQkBFXd','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(12,'Marshall Robel','linda40@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','DokoLiDpQs','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(13,'Mrs. Clarabelle Lindgren','connelly.candice@example.net','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7ZuCj2lRmA','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(14,'Lori Hill','imani.dietrich@example.net','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AT7cxncaF2','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(15,'Bulah Farrell','abernathy.hilario@example.net','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','yuwuBzvxZS','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(16,'Neha Osinski','camylle88@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FCQOGRmGzF','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(17,'Gaylord Kuphal III','hwintheiser@example.net','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','itr0VwgclU','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(18,'Mrs. Concepcion Goldner MD','aklocko@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','QjBWeEdNLH','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(19,'Cindy Armstrong','crona.kiana@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ovcPhrG8Ok','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(20,'Miss Liliana Hintz','utillman@example.com','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','i3fTBFFTCn','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(21,'Mr. Rocio Powlowski Jr.','rhayes@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','DwYEeefWJL','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(22,'Heaven Renner','erika.nader@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','POe7bPmcpz','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(23,'Prof. Alysa Runolfsson','esteban88@example.org','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ILKJmG4db9','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(24,'Modesto Quitzon Jr.','demarcus.batz@example.net','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','MP56tmzbii','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL),(25,'Mrs. Carlotta Wunsch Jr.','qlebsack@example.com','2024-02-28 08:18:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kFNO1L1bj1','2024-02-28 08:18:39','2024-02-28 08:18:39',NULL);
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

-- Dump completed on 2024-02-29 11:24:25
