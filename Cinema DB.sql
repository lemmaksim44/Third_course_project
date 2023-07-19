-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Фильм',7,'add_cinema'),(26,'Can change Фильм',7,'change_cinema'),(27,'Can delete Фильм',7,'delete_cinema'),(28,'Can view Фильм',7,'view_cinema'),(29,'Can add Сообщение',8,'add_contact'),(30,'Can change Сообщение',8,'change_contact'),(31,'Can delete Сообщение',8,'delete_contact'),(32,'Can view Сообщение',8,'view_contact'),(33,'Can add Кинозал',9,'add_hall'),(34,'Can change Кинозал',9,'change_hall'),(35,'Can delete Кинозал',9,'delete_hall'),(36,'Can view Кинозал',9,'view_hall'),(37,'Can add Расписание',10,'add_timetable'),(38,'Can change Расписание',10,'change_timetable'),(39,'Can delete Расписание',10,'delete_timetable'),(40,'Can view Расписание',10,'view_timetable'),(41,'Can add Бронирование',11,'add_booking'),(42,'Can change Бронирование',11,'change_booking'),(43,'Can delete Бронирование',11,'delete_booking'),(44,'Can view Бронирование',11,'view_booking');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$IBmk8qAgfaS1r7BvaVWvFv$3kU15bAz2epwgzzUOVaxCLNIncgX5ixg9d9VptW59vk=','2023-07-18 03:50:24.736159',1,'admin','','','',1,1,'2022-05-01 06:45:55.495326'),(2,'pbkdf2_sha256$320000$hxrLOkWQE9A608OlBrNj5n$kx563fr2AeLR0y1C5S1Vo2dZAVmfq4SdDNVow7rmb64=','2022-05-08 12:09:59.944386',0,'79145505450','','','',0,1,'2022-05-01 06:50:33.452869');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-05-01 06:46:59.438388','1','Зал 1',1,'[{\"added\": {}}]',9,1),(2,'2022-05-01 06:47:06.243404','2','Зал 2',1,'[{\"added\": {}}]',9,1),(3,'2022-05-01 06:48:21.069025','1','Анчартед: на картах не значится',1,'[{\"added\": {}}]',7,1),(4,'2022-05-01 06:48:42.158537','1','Анчартед: на картах не значится',1,'[{\"added\": {}}]',10,1),(5,'2022-05-01 09:10:41.647624','2','Анчартед: на картах не значится',1,'[{\"added\": {}}]',10,1),(6,'2022-05-03 11:04:48.893251','2','Анчартед: на картах не значится',3,'',10,1),(7,'2022-05-03 11:04:52.550214','1','Анчартед: на картах не значится',3,'',10,1),(8,'2022-05-03 11:05:06.586017','1','Анчартед: на картах не значится',3,'',7,1),(9,'2022-05-03 11:11:33.724766','1','Лем Максим',3,'',8,1),(10,'2022-05-03 11:15:06.246987','2','Анчартед: на картах не значится',1,'[{\"added\": {}}]',7,1),(11,'2022-05-03 11:18:38.139601','3','Отчаянные дольщики',1,'[{\"added\": {}}]',7,1),(12,'2022-05-03 11:21:18.153096','4','Призрак монахини из Борли',1,'[{\"added\": {}}]',7,1),(13,'2022-05-03 11:37:13.429695','2','Анчартед: на картах не значится',2,'[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435\"]}}]',7,1),(14,'2022-05-03 11:37:22.096984','3','Отчаянные дольщики',2,'[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435\"]}}]',7,1),(15,'2022-05-03 11:37:33.129842','4','Призрак монахини из Борли',2,'[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435\"]}}]',7,1),(16,'2022-05-03 11:38:33.815347','5','Казнь',1,'[{\"added\": {}}]',7,1),(17,'2022-05-03 11:39:34.072840','6','Первый Оскар',1,'[{\"added\": {}}]',7,1),(18,'2022-05-03 11:40:52.027676','7','Стикер',1,'[{\"added\": {}}]',7,1),(19,'2022-05-03 11:41:51.091524','8','Тед К. Унабомбер',1,'[{\"added\": {}}]',7,1),(20,'2022-05-03 11:43:28.736458','9','Слэпфейс',1,'[{\"added\": {}}]',7,1),(21,'2022-05-03 11:46:48.447304','10','1941. Крылья над Берлином',1,'[{\"added\": {}}]',7,1),(22,'2022-05-03 11:47:43.540256','11','Операция «Мясной фарш»',1,'[{\"added\": {}}]',7,1),(23,'2022-05-03 11:48:52.165003','12','Крио',1,'[{\"added\": {}}]',7,1),(24,'2022-05-03 11:50:14.931051','13','Супергерои',1,'[{\"added\": {}}]',7,1),(25,'2022-05-03 11:51:04.369314','2','Зал 2',2,'[]',9,1),(26,'2022-05-03 11:51:14.302482','3','Зал 3',1,'[{\"added\": {}}]',9,1),(27,'2022-05-03 11:51:36.339936','3','Анчартед: на картах не значится',1,'[{\"added\": {}}]',10,1),(28,'2022-05-03 11:51:56.110834','4','Анчартед: на картах не значится',1,'[{\"added\": {}}]',10,1),(29,'2022-05-03 11:52:16.005083','5','Анчартед: на картах не значится',1,'[{\"added\": {}}]',10,1),(30,'2022-05-03 11:52:25.845894','5','Анчартед: на картах не значится',2,'[]',10,1),(31,'2022-05-03 11:52:45.976837','6','Анчартед: на картах не значится',1,'[{\"added\": {}}]',10,1),(32,'2022-05-03 11:53:08.398050','7','Отчаянные дольщики',1,'[{\"added\": {}}]',10,1),(33,'2022-05-03 11:53:39.121818','8','Отчаянные дольщики',1,'[{\"added\": {}}]',10,1),(34,'2022-05-03 11:53:52.249681','9','Отчаянные дольщики',1,'[{\"added\": {}}]',10,1),(35,'2022-05-03 11:54:05.956767','10','Призрак монахини из Борли',1,'[{\"added\": {}}]',10,1),(36,'2022-05-03 11:54:21.622100','11','Призрак монахини из Борли',1,'[{\"added\": {}}]',10,1),(37,'2022-05-03 11:54:38.981724','12','Казнь',1,'[{\"added\": {}}]',10,1),(38,'2022-05-03 11:54:50.082712','13','Казнь',1,'[{\"added\": {}}]',10,1),(39,'2022-05-03 11:55:06.329029','14','Казнь',1,'[{\"added\": {}}]',10,1),(40,'2022-05-03 11:56:11.515616','15','Казнь',1,'[{\"added\": {}}]',10,1),(41,'2022-05-03 11:56:26.716901','16','Первый Оскар',1,'[{\"added\": {}}]',10,1),(42,'2022-05-03 11:56:37.906551','17','Первый Оскар',1,'[{\"added\": {}}]',10,1),(43,'2022-05-03 11:56:50.315617','18','Первый Оскар',1,'[{\"added\": {}}]',10,1),(44,'2022-05-03 11:57:04.447479','19','Стикер',1,'[{\"added\": {}}]',10,1),(45,'2022-05-03 11:57:14.796528','20','Стикер',1,'[{\"added\": {}}]',10,1),(46,'2022-05-03 11:57:37.012444','21','Тед К. Унабомбер',1,'[{\"added\": {}}]',10,1),(47,'2022-05-03 11:57:49.929776','22','Тед К. Унабомбер',1,'[{\"added\": {}}]',10,1),(48,'2022-05-03 11:58:04.722474','23','Тед К. Унабомбер',1,'[{\"added\": {}}]',10,1),(49,'2022-05-03 11:58:18.312497','24','Тед К. Унабомбер',1,'[{\"added\": {}}]',10,1),(50,'2022-05-03 11:58:30.321519','25','Тед К. Унабомбер',1,'[{\"added\": {}}]',10,1),(51,'2022-05-03 11:58:50.671963','26','Тед К. Унабомбер',1,'[{\"added\": {}}]',10,1),(52,'2022-05-03 11:59:18.161407','27','Слэпфейс',1,'[{\"added\": {}}]',10,1),(53,'2022-05-03 11:59:31.709412','28','Слэпфейс',1,'[{\"added\": {}}]',10,1),(54,'2022-05-03 11:59:46.418403','29','1941. Крылья над Берлином',1,'[{\"added\": {}}]',10,1),(55,'2022-05-03 11:59:56.330361','30','1941. Крылья над Берлином',1,'[{\"added\": {}}]',10,1),(56,'2022-05-03 12:00:11.195285','31','Операция «Мясной фарш»',1,'[{\"added\": {}}]',10,1),(57,'2022-05-03 12:00:21.487441','32','Операция «Мясной фарш»',1,'[{\"added\": {}}]',10,1),(58,'2022-05-03 12:00:37.849832','33','Крио',1,'[{\"added\": {}}]',10,1),(59,'2022-05-03 12:00:49.027427','34','Крио',1,'[{\"added\": {}}]',10,1),(60,'2022-05-03 12:01:01.493234','35','Супергерои',1,'[{\"added\": {}}]',10,1),(61,'2022-05-03 12:01:15.918259','36','Супергерои',1,'[{\"added\": {}}]',10,1),(62,'2022-05-04 03:39:00.832368','3','Зал 3',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0440\\u044f\\u0434\\u043e\\u0432\"]}}]',9,1),(63,'2022-05-08 10:26:42.204734','30','1941. Крылья над Берлином',2,'[]',10,1),(64,'2022-05-08 10:39:14.934340','30','1941. Крылья над Берлином',2,'[{\"changed\": {\"fields\": [\"\\u0417\\u0430\\u043b\"]}}]',10,1),(65,'2022-05-08 10:39:19.477469','29','1941. Крылья над Берлином',2,'[{\"changed\": {\"fields\": [\"\\u0417\\u0430\\u043b\"]}}]',10,1),(66,'2022-05-08 10:39:36.104402','29','1941. Крылья над Берлином',2,'[{\"changed\": {\"fields\": [\"\\u0426\\u0435\\u043d\\u0430\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'main','booking'),(7,'main','cinema'),(8,'main','contact'),(9,'main','hall'),(10,'main','timetable'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-05-01 06:44:25.268259'),(2,'auth','0001_initial','2022-05-01 06:44:35.992763'),(3,'admin','0001_initial','2022-05-01 06:44:39.003800'),(4,'admin','0002_logentry_remove_auto_add','2022-05-01 06:44:39.101863'),(5,'admin','0003_logentry_add_action_flag_choices','2022-05-01 06:44:39.220326'),(6,'contenttypes','0002_remove_content_type_name','2022-05-01 06:44:41.407287'),(7,'auth','0002_alter_permission_name_max_length','2022-05-01 06:44:42.615107'),(8,'auth','0003_alter_user_email_max_length','2022-05-01 06:44:42.793083'),(9,'auth','0004_alter_user_username_opts','2022-05-01 06:44:42.875573'),(10,'auth','0005_alter_user_last_login_null','2022-05-01 06:44:43.716081'),(11,'auth','0006_require_contenttypes_0002','2022-05-01 06:44:43.769573'),(12,'auth','0007_alter_validators_add_error_messages','2022-05-01 06:44:43.821013'),(13,'auth','0008_alter_user_username_max_length','2022-05-01 06:44:44.739167'),(14,'auth','0009_alter_user_last_name_max_length','2022-05-01 06:44:45.783097'),(15,'auth','0010_alter_group_name_max_length','2022-05-01 06:44:45.936235'),(16,'auth','0011_update_proxy_permissions','2022-05-01 06:44:46.006272'),(17,'auth','0012_alter_user_first_name_max_length','2022-05-01 06:44:47.084130'),(18,'main','0001_initial','2022-05-01 06:44:53.004773'),(19,'sessions','0001_initial','2022-05-01 06:44:53.906666');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bmwecg7y79z2jnt1s9jadewd6ea7zbvu','.eJxVjEEOwiAQRe_C2hAG6sC4dO8ZyMCgVA1NSrsy3l2bdKHb_977LxV5XWpce5njKOqkQB1-t8T5UdoG5M7tNuk8tWUek94UvdOuL5OU53l3_w4q9_qtQxaiYI9BIKRCxpOH4AERYUADCMmlzAYtMEEaCjpXnCXHV0TyIur9AayJNpY:1noHij:o4t65K91TkfyPlsU-luUEa6zaoGvQL_k40SBbydMHrQ','2022-05-24 04:43:37.930662'),('h8ng1iyycu3wjpdph8q532wifsft4y1q','.eJxVjEEOwiAQRe_C2pACZQSX7nsGMsOAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERSpx-N8L4SHUHfMd6azK2ui4zyV2RB-1yapye18P9OyjYy7dO3hHwoJTFEUCDiWATZQ9MEYeztsxGZwVkaMzaG82sIBsXmZwmY8X7A-HmN_w:1qLbjE:_y38_foVomdu1W8GgjIXAV0UP2Ex_0Afcnlfe7psMDQ','2023-08-01 03:50:24.149606'),('qp53bxpoq48i6n62itv4keuxghj68yk9','.eJxVjEEOwiAQRe_C2pACZQSX7nsGMsOAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERSpx-N8L4SHUHfMd6azK2ui4zyV2RB-1yapye18P9OyjYy7dO3hHwoJTFEUCDiWATZQ9MEYeztsxGZwVkaMzaG82sIBsXmZwmY8X7A-HmN_w:1qLbjF:jcUABVOQUie9rVakOzb3Qhm4libD7P9a5FpprQjxhwM','2023-08-01 03:50:25.133183'),('stuefk1383lca1vpy2z47866t30wwfpl','.eJxVjEEOwiAQRe_C2hAG6sC4dO8ZyMCgVA1NSrsy3l2bdKHb_977LxV5XWpce5njKOqkQB1-t8T5UdoG5M7tNuk8tWUek94UvdOuL5OU53l3_w4q9_qtQxaiYI9BIKRCxpOH4AERYUADCMmlzAYtMEEaCjpXnCXHV0TyIur9AayJNpY:1noHcQ:3dMeFfhIJ_iGJHWMaEFZUdJKTQjch9ftwA1pO7qeC0k','2022-05-24 04:37:06.581440');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_booking`
--

DROP TABLE IF EXISTS `main_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_booking` (
  `id_booking` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `row` int NOT NULL,
  `place` int NOT NULL,
  `id_timetable_id` int NOT NULL,
  PRIMARY KEY (`id_booking`),
  KEY `main_booking_id_timetable_id_35de1c36_fk_main_time` (`id_timetable_id`),
  CONSTRAINT `main_booking_id_timetable_id_35de1c36_fk_main_time` FOREIGN KEY (`id_timetable_id`) REFERENCES `main_timetable` (`id_timetable`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_booking`
--

LOCK TABLES `main_booking` WRITE;
/*!40000 ALTER TABLE `main_booking` DISABLE KEYS */;
INSERT INTO `main_booking` VALUES (5,'2022-05-04','79145505450',1,1,29),(6,'2022-05-04','79145505450',1,2,29),(7,'2022-05-04','79145505450',2,2,5),(8,'2022-05-04','79145505450',2,3,5),(9,'2022-05-08','79145505450',3,3,30),(10,'2022-05-08','79145505450',3,4,30);
/*!40000 ALTER TABLE `main_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_cinema`
--

DROP TABLE IF EXISTS `main_cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_cinema` (
  `id_cinema` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `actors` varchar(500) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `age_limit` varchar(5) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id_cinema`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_cinema`
--

LOCK TABLES `main_cinema` WRITE;
/*!40000 ALTER TABLE `main_cinema` DISABLE KEYS */;
INSERT INTO `main_cinema` VALUES (2,'image/1.jpg','Анчартед: на картах не значится','Боевик, Приключение','США','Рубен Фляйшер','Том Холланд, Марк Уолберг, София Тейлор Али, Антонио Бандерас, Тати Габриэль','1 ч. 55 мин.','12+','В центре сюжета история о том, как из соперников Нейтан Дрейк (Том Холланд) и Виктор «Салли» Салливан (Марк Уолберг) превратились в верных союзников и искателей приключений. Вместе им предстоит приоткрыть завесу над одной из величайших тайн в истории. \r\n\r\nФильм основан на одной из самых продаваемых и высоко оценённый критиками компьютерных игр всех времен.'),(3,'image/2.jpg','Отчаянные дольщики','Комедия, Криминал','Россия','Илья Фарфель','Михаил Трухин, Максим Лагашкин, Екатерина Стулова, Никита Кологривый, Ольга Веникова, Александра Флоринская','1 ч. 30 мин.','16+','Кто не мечтает о своей квартире, да ещё в центре города? Две заурядные семейные пары — не исключение. Однако на пути к их мечте встаёт ушлый застройщик, который взамен кровно нажитых денег даёт только котлован для фундамента. Простые россияне не хотят мириться с несправедливостью и совершенно случайно берут главу строительной компании в плен.'),(4,'image/3.jpg','Призрак монахини из Борли','Драма, Триллер, Детектив','Великобритания','Стивен М. Смит','Тоби Винн-Дэвис, Джулиан Сэндс, Колин Бэйкер, Кристофер Эллисон, Тойа Уиллкокс, Рис Путинас','1 ч. 20 мин.','18+','1937 год. Приходской священник и его супруга прибывают в деревеньку Борли для служения в местной церкви. Они надеются на спокойную и размеренную жизнь, однако дом, в котором размещают супругов, оказывается полон пугающих тайн. Загадочные звуки, видения, и призрак монахини, который твердит о проклятии, грозят свести благочестивую пару с ума. Слухи о неблагополучном доме разносятся далеко за пределы Борли и обращают на себя внимание Гарри Прайса. Тот радуется новой возможности доказать существование потустороннего мира и решает поселиться в доме священника, чтобы исследовать мистический феномен. Но он и не догадывается, насколько глубоко ему предстоит погрузиться во тьму.'),(5,'image/4.jpg','Казнь','Триллер','Россия','Ладо Кватания','Нико Тавадзе, Юлия Снигирь, Виктория Толстоганова, Даниил Спиваковский, Евгений Ткачук, Аглая Тарасова','2 ч. 17 мин.','18+','В деле о серийных убийствах, которое расследовалось долгие 10 лет и было официально закрыто, появляется новое обстоятельство — выжившая жертва. Следователь по особо важным делам Исса Давыдов вынужден срочно выехать на место, чтобы разобраться в ситуации и оправдаться в глазах системы правосудия, под давлением которой он закрыл глаза на недостаточность улик. Ему предстоит исправить свою ошибку и сделать все возможное, чтобы маньяк признался в убийствах.'),(6,'image/5.jpg','Первый Оскар','Драма, История, Военный','Россия','Максим Бударин, Юрий Ненев','Тихон Жизневский, Антон Момот, Дарья Жовнер, Андрей Мерзликин, Никита Тарасов, Василий Мищенко','1 ч. 55 мин.','12+','1941 год. Двадцатилетние студенты-операторы Лев Альперин и Иван Майский соперничают за звание лучшего оператора курса и за любовь красавицы Юны с актерского факультета. Когда начинается эвакуация, они втроем отказываются уезжать и отправляются на фронт: Юне предстоит выступать в концертной бригаде, а Иван и Лев становятся военными кинооператорами. Их соперничество продолжается и здесь, но испытания и ужасы войны, мужество и подвиги советских солдат, свидетелями которых они становятся, меняют их взгляды на творчество и жизнь. Только благодаря этому им удается снять кадры, которые войдут в историю…\r\n\r\nВдохновлено реальными событиями: снятый в рекордные сроки документальный фильм «Разгром немецких войск под Москвой» режиссеров Ильи Копалина и Леонида Варламова в 1943 году удостоился первой в истории «Оскара» награды за Лучший документальный фильм. Это первый «Оскар», полученный отечественными кинематографистами.'),(7,'image/6.jpg','Стикер','Мелодрама, Триллер, Детектив','Россия','Дмитрий Баран','Иван Стебунов, Александр Самойленко, Евгения Нохрина, Александр Дьяченко, Екатерина Олькина, Станислав Бондаренко','1 ч. 56 мин.','16+','Их первая ночь — цепь случайных совпадений. Однако спустя некоторое время она появляется в его офисе под другим именем и подозрительно чистой биографией. И это уже, кажется, неслучайно.'),(8,'image/7.jpg','Тед К. Унабомбер','Биография, Драма, Криминал','США','Тони Стоун','Шарлто Копли, Дрю Пауэлл, Кристиан Кэллоуэй, Тамус Раундс','2 ч. 00 мин.','18+','История о том, как талантливый математик и философ Тед Качинский стал террористом по прозвищу Унабомбер. 17 лет он рассылал бомбы учёным, которые поддерживали научный прогресс, потому что считал, что современные технологии — это худшее, что когда-либо случалось с человечеством, и продвигать их — не что иное, как преступление.'),(9,'image/8.jpg','Слэпфейс','Ужасы','США','Джереми Кипп','Аугуст Матуро, Майк К. Мэннинг, Либэ Барер, Мирабель Ли, Бьянка Д’Амброзио, Кьяра Д’Амброзио','1 ч. 25 мин.','18+','После смерти родителей Лукас живёт со старшим братом. Неприятности начинаются, когда он знакомится с Монстром, живущим в соседнем лесу. Пока не поздно, местный шериф должен остановить Лукаса и Монстра.'),(10,'image/9.jpg','1941. Крылья над Берлином','Боевик, Мелодрама, Биография','Россия','Константин Буслов','Сергей Пускепалис, Максим Битюков, Гела Месхи, Александр Метёлкин, Леонела Мантурова, Сергей Гилев','1 ч. 40 мин.','12+','История о подвиге лётчиков 1-го минно-торпедного авиационного полка ВВС Балтийского флота во главе с полковником Преображенским. У них была сложнейшая боевая задача — нанести первые бомбовые удары по Берлину, столице фашистской Германии.'),(11,'image/10.jpg','Операция «Мясной фарш»','Драма, Военный','США, Великобритания','Джон Мэдден','Руфус Райт, Мэттью Макфэдиен, Руби Бенталл, Шарлотта Хэмблин, Колин Фёрт, Джонни Флинн','2 ч. 08 мин.','18+','Во время Второй мировой войны два офицера разведки используют труп и фальшивые документы, чтобы перехитрить немецкие войска.'),(12,'image/11.jpg','Крио','Триллер, Фантастика, Детектив','США','Барретт Бергин','Майкл Флинн, Курт Дуссетт, Джиллиан Петри, Морган Гюнтер, Мэйсон Д. Дэвис, Эмили Мари Палмер','1 ч. 58 мин.','16+','Пятеро ученых пробуждаются после криогенного сна в подземном помещении. Они не понимают, как они там оказались и как долго они спали. Но одно точно становится ясно, что тот, кто собрал их здесь — убийца.'),(13,'image/12.jpg','Супергерои','Комедия, Драма','Италия','Паоло Дженовезе','Алессандро Борги, Жазмин Тринка, Виничио Маркиони, Грета Скарано, Анджелика Лео, Линда Кариди','2 ч. 02 мин.','16+','Она — импульсивная художница, враг условностей; он — профессор-физик, который убежден, что у всякого явления есть свое объяснение. Они знакомятся случайно, влюбляются неистово и, казалось бы, теперь они вместе навсегда. Подвластны ли настоящие чувства времени и нужен ли особый дар, чтобы любить друг друга всю жизнь?');
/*!40000 ALTER TABLE `main_cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_contact`
--

DROP TABLE IF EXISTS `main_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_contact` (
  `id_contact` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_contact`
--

LOCK TABLES `main_contact` WRITE;
/*!40000 ALTER TABLE `main_contact` DISABLE KEYS */;
INSERT INTO `main_contact` VALUES (2,'Лежанков Максим','lemmaksim44@gmail.ru','Здравствуйте, нашей фирме \"Название фирмы\" интересна реклама в вашем кинотеатре. Свяжитесь снами по данному Email адресу.');
/*!40000 ALTER TABLE `main_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_hall`
--

DROP TABLE IF EXISTS `main_hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_hall` (
  `id_hall` int NOT NULL AUTO_INCREMENT,
  `name_hall` varchar(100) NOT NULL,
  `amount_row` int NOT NULL,
  `amount_place` int NOT NULL,
  PRIMARY KEY (`id_hall`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_hall`
--

LOCK TABLES `main_hall` WRITE;
/*!40000 ALTER TABLE `main_hall` DISABLE KEYS */;
INSERT INTO `main_hall` VALUES (1,'Зал 1',5,8),(2,'Зал 2',4,6),(3,'Зал 3',4,6);
/*!40000 ALTER TABLE `main_hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_timetable`
--

DROP TABLE IF EXISTS `main_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_timetable` (
  `id_timetable` int NOT NULL AUTO_INCREMENT,
  `time` time(6) NOT NULL,
  `price` int NOT NULL,
  `id_cinema_id` int NOT NULL,
  `id_hall_id` int NOT NULL,
  PRIMARY KEY (`id_timetable`),
  KEY `main_timetable_id_cinema_id_78ff4897_fk_main_cinema_id_cinema` (`id_cinema_id`),
  KEY `main_timetable_id_hall_id_184f6a61_fk_main_hall_id_hall` (`id_hall_id`),
  CONSTRAINT `main_timetable_id_cinema_id_78ff4897_fk_main_cinema_id_cinema` FOREIGN KEY (`id_cinema_id`) REFERENCES `main_cinema` (`id_cinema`),
  CONSTRAINT `main_timetable_id_hall_id_184f6a61_fk_main_hall_id_hall` FOREIGN KEY (`id_hall_id`) REFERENCES `main_hall` (`id_hall`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_timetable`
--

LOCK TABLES `main_timetable` WRITE;
/*!40000 ALTER TABLE `main_timetable` DISABLE KEYS */;
INSERT INTO `main_timetable` VALUES (3,'10:00:00.000000',270,2,1),(4,'15:00:00.000000',310,2,1),(5,'19:00:00.000000',340,2,2),(6,'21:00:00.000000',380,2,2),(7,'12:00:00.000000',310,3,1),(8,'16:00:00.000000',310,3,3),(9,'18:00:00.000000',340,3,3),(10,'21:00:00.000000',380,4,3),(11,'22:00:00.000000',380,4,2),(12,'10:00:00.000000',270,5,2),(13,'12:00:00.000000',310,5,2),(14,'16:00:00.000000',340,5,3),(15,'19:00:00.000000',380,5,3),(16,'17:00:00.000000',340,6,2),(17,'19:00:00.000000',340,6,1),(18,'21:00:00.000000',380,6,3),(19,'15:00:00.000000',310,7,3),(20,'21:00:00.000000',380,7,3),(21,'11:00:00.000000',270,8,3),(22,'12:00:00.000000',310,8,2),(23,'13:00:00.000000',310,8,1),(24,'16:00:00.000000',340,8,2),(25,'19:00:00.000000',380,8,1),(26,'21:00:00.000000',380,8,1),(27,'11:00:00.000000',270,9,2),(28,'22:00:00.000000',380,9,3),(29,'14:00:00.000000',300,10,1),(30,'16:00:00.000000',340,10,1),(31,'15:00:00.000000',340,11,3),(32,'18:00:00.000000',380,11,2),(33,'20:00:00.000000',380,12,2),(34,'21:00:00.000000',380,12,1),(35,'10:00:00.000000',270,13,1),(36,'16:00:00.000000',340,13,2);
/*!40000 ALTER TABLE `main_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cinema'
--

--
-- Dumping routines for database 'cinema'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-19 13:31:25
