
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
DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `subject_id` bigint unsigned DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `causer_id` bigint unsigned DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'User','This User has been created','App\\Models\\User','created',1,NULL,NULL,'{\"attributes\": {\"name\": \"Developer\"}}',NULL,'2024-07-27 17:09:51','2024-07-27 17:09:51'),(2,'User','This User has been created','App\\Models\\User','created',2,NULL,NULL,'{\"attributes\": {\"name\": \"Hisham Basheer\"}}',NULL,'2024-07-27 17:09:51','2024-07-27 17:09:51'),(3,'Settings','Settings created','App\\Models\\Settings','created',1,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:51','2024-07-27 17:09:51'),(4,'Settings','Settings created','App\\Models\\Settings','created',2,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:51','2024-07-27 17:09:51'),(5,'Settings','Settings created','App\\Models\\Settings','created',3,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:51','2024-07-27 17:09:51'),(6,'Settings','Settings created','App\\Models\\Settings','created',4,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(7,'Settings','Settings created','App\\Models\\Settings','created',5,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(8,'Settings','Settings created','App\\Models\\Settings','created',6,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(9,'Settings','Settings created','App\\Models\\Settings','created',7,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(10,'Settings','Settings created','App\\Models\\Settings','created',8,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(11,'Settings','Settings created','App\\Models\\Settings','created',9,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(12,'Settings','Settings created','App\\Models\\Settings','created',10,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(13,'Settings','Settings created','App\\Models\\Settings','created',11,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(14,'Settings','Settings created','App\\Models\\Settings','created',12,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(15,'Settings','Settings created','App\\Models\\Settings','created',13,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(16,'Settings','Settings created','App\\Models\\Settings','created',14,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(17,'Settings','Settings created','App\\Models\\Settings','created',15,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(18,'Settings','Settings created','App\\Models\\Settings','created',16,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(19,'Settings','Settings created','App\\Models\\Settings','created',17,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(20,'Settings','Settings created','App\\Models\\Settings','created',18,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(21,'Settings','Settings created','App\\Models\\Settings','created',19,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(22,'Settings','Settings created','App\\Models\\Settings','created',20,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(23,'Settings','Settings created','App\\Models\\Settings','created',21,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(24,'Settings','Settings created','App\\Models\\Settings','created',22,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(25,'Settings','Settings created','App\\Models\\Settings','created',23,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(26,'Settings','Settings created','App\\Models\\Settings','created',24,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(27,'Settings','Settings created','App\\Models\\Settings','created',25,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": null}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(28,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',1,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 1\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(29,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',2,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 2\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(30,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',3,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 3\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(31,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',4,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 4\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(32,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',5,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 5\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(33,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',6,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 6\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(34,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',7,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 7\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(35,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',8,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 8\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(36,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',9,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 9\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(37,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',10,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 10\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(38,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',11,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 11\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(39,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',12,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 12\"}}',NULL,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(40,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',13,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 13\"}}',NULL,'2024-07-27 17:09:53','2024-07-27 17:09:53'),(41,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',14,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 14\"}}',NULL,'2024-07-27 17:09:53','2024-07-27 17:09:53'),(42,'TestDemo','TestDemo created','App\\Models\\TestDemo','created',15,NULL,NULL,'{\"attributes\": {\"code\": null, \"name\": \"Test 15\"}}',NULL,'2024-07-27 17:09:53','2024-07-27 17:09:53');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `zip_code` mediumint unsigned NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_created_by_index` (`created_by`),
  KEY `addresses_updated_by_index` (`updated_by`),
  CONSTRAINT `addresses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `addresses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'India','Kerala','Alappuzha','Kidangara BO',686102,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(2,'India','Kerala','Alappuzha','Kunnamkary BO',686102,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `application_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `application_settings_created_by_index` (`created_by`),
  KEY `application_settings_updated_by_index` (`updated_by`),
  CONSTRAINT `application_settings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `application_settings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `application_settings` WRITE;
/*!40000 ALTER TABLE `application_settings` DISABLE KEYS */;
INSERT INTO `application_settings` VALUES (1,'default front end layout','{\"home_carousel_section\":1,\"about_section\":1,\"features_section\":1,\"call_to_action_section\":1,\"services_section\":1,\"portfolio_section\":1,\"testimonials_section\":1,\"pricing_section\":1,\"faq_section\":1,\"team_section\":1,\"contact_section\":1}','app des','message',1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52');
/*!40000 ALTER TABLE `application_settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `local_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `edit_description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `developers_name_unique` (`name`),
  KEY `developers_created_by_index` (`created_by`),
  KEY `developers_updated_by_index` (`updated_by`),
  CONSTRAINT `developers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `developers_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `developers` WRITE;
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `data` text COLLATE utf8mb3_unicode_ci,
  `url` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `edit_description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `images_code_unique` (`code`),
  KEY `images_created_by_index` (`created_by`),
  KEY `images_updated_by_index` (`updated_by`),
  CONSTRAINT `images_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `images_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_10_07_072524_create_permission_tables',1),(6,'2023_10_07_072525_create_settings_table',1),(7,'2023_10_07_072526_create_user_settings_table',1),(8,'2023_10_07_095114_create_time_zones_table',1),(9,'2023_10_07_095257_create_application_settings_table',1),(10,'2023_10_07_095322_create_addresses_table',1),(11,'2023_10_17_235626_add_more_to_users_table',1),(12,'2023_10_27_082138_create_activity_log_table',1),(13,'2023_10_27_082139_add_event_column_to_activity_log_table',1),(14,'2023_10_27_082140_add_batch_uuid_column_to_activity_log_table',1),(15,'2023_10_27_082141_create_notifications_table',1),(16,'2023_10_27_082142_create_jobs_table',1),(17,'2024_07_10_061311_create_images_table',1),(18,'2024_07_10_063627_create_developers_table',1),(19,'2024_07_13_131747_create_test_demos_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `parent` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  KEY `permissions_created_by_index` (`created_by`),
  KEY `permissions_updated_by_index` (`updated_by`),
  CONSTRAINT `permissions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permissions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'Developer Settings','Developer','web',1,1,1,'2024-07-27 17:09:51','2024-07-27 17:09:51'),(2,'Application Settings','Developer','web',1,1,1,'2024-07-27 17:09:51','2024-07-27 17:09:51');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'web',
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`),
  CONSTRAINT `roles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `roles_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Developer','web',1,1,1,'2024-07-27 17:09:51','2024-07-27 17:09:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `default_value` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `default_by` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `edit_description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_created_by_index` (`created_by`),
  KEY `settings_updated_by_index` (`updated_by`),
  CONSTRAINT `settings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `settings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'app_name','app','HSBR','application','application','1','des',NULL,1,1,1,'2024-07-27 17:09:51','2024-07-27 17:09:51'),(2,'app_version','app','1.1','application','page','1','des',NULL,1,1,1,'2024-07-27 17:09:51','2024-07-27 17:09:51'),(3,'page_title_prefix','app','HSBR','application','page','1','des',NULL,1,1,1,'2024-07-27 17:09:51','2024-07-27 17:09:51'),(4,'page_title_suffix','app','online','application','page','1','des',NULL,1,1,1,'2024-07-27 17:09:51','2024-07-27 17:09:51'),(5,'page_title_description','app','default description','application','page','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(6,'page_title_message','app','default message','application','page','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(7,'developer_company_name','app','HSBR-Apps','developer','developer_company','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(8,'developer_company_website','app','https://hsbr-apps.co','developer','developer_company','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(9,'developer_company_mail','app','hisham@hsbr.apps','developer','developer_company','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(10,'developer_app_starting_year','app','2020','developer','developer_company','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(11,'developer_app_endting_year','app','2023','developer','developer_company','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(12,'logo_sidebar','app','1','logo','logo_sidebar','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(13,'logo_sidebar_mini','app','1','logo','logo_sidebar','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(14,'logo_sign','app','1','logo','logo_sigin','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(15,'logo_sign_mini','app','1','logo','logo_sigin','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(16,'logo_sign_with_google','app','1','logo','logo_sigin','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(17,'logo_sign_with_facebook','app','1','logo','logo_sigin','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(18,'layout_card_header','app','1','layout','default','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(19,'layout_card_footer','app','1','layout','default','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(20,'layout_sidebar_collapse','app','null','layout','default','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(21,'layout_dark_mode','app','null','layout','default','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(22,'default_status','app','1','default','default_value','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(23,'default_time_zone','app','1','default','default_value','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(24,'message_home_toolbar','app','welcome to my app','message','default','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(25,'message_test','app','test message','message','default','1','des',NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `test_demos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_demos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `local_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `edit_description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `test_demos_name_unique` (`name`),
  KEY `test_demos_created_by_index` (`created_by`),
  KEY `test_demos_updated_by_index` (`updated_by`),
  CONSTRAINT `test_demos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `test_demos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `test_demos` WRITE;
/*!40000 ALTER TABLE `test_demos` DISABLE KEYS */;
INSERT INTO `test_demos` VALUES (1,'Test 1','Local name 1',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(2,'Test 2','Local name 2',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(3,'Test 3','Local name 3',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(4,'Test 4','Local name 4',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(5,'Test 5','Local name 5',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(6,'Test 6','Local name 6',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(7,'Test 7','Local name 7',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(8,'Test 8','Local name 8',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(9,'Test 9','Local name 9',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(10,'Test 10','Local name 10',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(11,'Test 11','Local name 11',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(12,'Test 12','Local name 12',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(13,'Test 13','Local name 13',NULL,NULL,1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(14,'Test 14','Local name 14',NULL,NULL,1,1,1,'2024-07-27 17:09:53','2024-07-27 17:09:53'),(15,'Test 15','Local name 15',NULL,NULL,1,1,1,'2024-07-27 17:09:53','2024-07-27 17:09:53');
/*!40000 ALTER TABLE `test_demos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `time_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `utc_code` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `time_zone` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cities` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `time_zones_time_zone_unique` (`time_zone`),
  KEY `time_zones_created_by_index` (`created_by`),
  KEY `time_zones_updated_by_index` (`updated_by`),
  CONSTRAINT `time_zones_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `time_zones_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `time_zones` WRITE;
/*!40000 ALTER TABLE `time_zones` DISABLE KEYS */;
INSERT INTO `time_zones` VALUES (1,'UTC-11','Pacific/Midway','United States Minor Outlying Islands','','',1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52'),(2,'UTC-11','Pacific/Niue','Niue','Alofi','',1,1,1,'2024-07-27 17:09:52','2024-07-27 17:09:52');
/*!40000 ALTER TABLE `time_zones` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `user_value` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `edit_description` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_settings_settings_id_index` (`settings_id`),
  KEY `user_settings_user_id_index` (`user_id`),
  KEY `user_settings_created_by_index` (`created_by`),
  KEY `user_settings_updated_by_index` (`updated_by`),
  CONSTRAINT `user_settings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_settings_settings_id_foreign` FOREIGN KEY (`settings_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_settings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
INSERT INTO `user_settings` VALUES (1,1,1,'m y n a m e',NULL,NULL,NULL,1,1,NULL,NULL),(2,2,1,'settings custom',NULL,NULL,NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone1` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone2` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `personal_settings` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `time_zone_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_created_by_index` (`created_by`),
  KEY `users_updated_by_index` (`updated_by`),
  KEY `users_city_id_index` (`city_id`),
  KEY `users_time_zone_id_index` (`time_zone_id`),
  CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_time_zone_id_foreign` FOREIGN KEY (`time_zone_id`) REFERENCES `time_zones` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Developer','HSBR','2000-12-01','4374504387',NULL,'male',1,'{\"personal_settings\":\"1\",\"card_header\":1,\"card_footer\":1, \"sidebar_collapse\":null,\"dark_mode\":null,\"default_status\":1,\"default_time_zone\":1,\"permission_view\":\"list\",\"purchase_edit_days\":1,\"sale_edit_days\":1}',NULL,'admin@hsbr-apps.co','2000-12-01 05:00:00','$2y$10$b37Vxyq81eBVGFRYa5gkX.QuT5w1CINTX9glUTe70amqkvq0Qr1IW',0,1,1,NULL,'2024-07-27 17:09:51','2024-07-27 17:09:51',1,1),(2,'Hisham Basheer','Panayam Thodika','1990-10-24','9946564387',NULL,'male',0,'{\"personal_settings\":\"1\",\"card_header\":1,\"card_footer\":1, \"sidebar_collapse\":null,\"dark_mode\":null,\"default_status\":1,\"default_time_zone\":1,\"permission_view\":\"list\",\"purchase_edit_days\":1,\"sale_edit_days\":1}',NULL,'hisham.hsbr@gmail.com',NULL,'$2y$10$Aw1G.KjjaOPzQmMmRiji6ue5Q24uarQoFiSBMLSS92d1GzRBjb5lS',1,1,1,NULL,'2024-07-27 17:09:51','2024-07-27 17:09:51',1,1);
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

