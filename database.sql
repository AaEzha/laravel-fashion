-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: fashion
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Formal','formal','<p>Pakaian formal adalah pakaian yang sesuai dengan aturan dan etika saat menghadiri acara resmi. Acara yang dianggap resmi adalah acara-acara pesta seperti pesta dansa atau pesta prom. Pakaian formal sering dikenakan di lingkungan kantor yang memberi kesan berwibawa.</p>\r\n','octocat-88bbb.png',NULL,'2021-05-31 22:50:05'),(2,'Casual','casual','<p>Outfit casual adalah pakaian yang kita pakai untuk keseharian, pada waktu santai, maupun waktu rekreasi. Bagi orang yang tidak suka ribet Outfit ini sangat cocok, nyaman dan simple.</p>\r\n','octocat-25c6e.png',NULL,'2021-05-31 23:08:02'),(3,'Boyish','boyish','<p>Tidak semuanya cewek menyukai hal yang feminim, banyak juga dari mereka yang lebih senang menggunakan <em>boyish style </em>yang dianggap lebih sederhana dan mudah di <em>mix and match. </em>Berbagai pilihan baju dengan nuansa tomboy ini juga sekarang sudah banyak dikenakan pada zaman modern saat ini.</p>\r\n','octocat-8df10.png',NULL,'2021-05-31 23:08:21'),(4,'Vintage','vintage','<p>Vintage outfit yakni sebuah gaya baju dengan banyak sentuhan bunga dan warna yang mencolok. Umumnya, gaya berpakaian vintage agak norak tetapi terlihat manis dan tetap menarik.</p>\r\n','octocat-8201a.png',NULL,'2021-05-31 23:08:42');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2020_12_02_201339_create_roles_table',1),(6,'2020_12_02_201439_add_role_to_users_table',1),(7,'2021_06_01_052813_create_categories_table',1),(8,'2021_06_01_052934_create_products_table',1),(9,'2021_06_01_053331_create_product_comments_table',1),(10,'2021_06_01_054235_add_user_column_to_products_table',1),(11,'2021_06_01_060604_add_content_to_categories_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `product_comments`
--

DROP TABLE IF EXISTS `product_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_comments_product_id_foreign` (`product_id`),
  CONSTRAINT `product_comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_comments`
--

LOCK TABLES `product_comments` WRITE;
/*!40000 ALTER TABLE `product_comments` DISABLE KEYS */;
INSERT INTO `product_comments` VALUES (1,1,'Aa Ezha','aaezha@gmail.com','<p>Syalala</p>\r\n',NULL,NULL),(2,2,'Namanya','email@gmail.com','Syalalala banget dah ah','2021-06-03 14:23:27','2021-06-03 14:23:27');
/*!40000 ALTER TABLE `product_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_user_id_foreign` (`user_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'Formal 1','formal-1','<p>Pakaian formal pertama ini sangat simple, ya! Kamu bisa menggunakan celana bahan hitam dan kemeja berbahan satin agar menambahkan kesan fancy. Jangan lupa ditambah heels agar makin stylish.</p>\r\n','formal-1.png',1,NULL,'2021-05-31 23:31:13'),(2,1,'Formal 2','formal-2','<p>Pakaian formal pakai rok juga bisa loh! Kamu bisa menggunakan rok dengan blazer sebagai outer. One set seperti ini sangat memudahkan kamu dalam mix and match outfit, sehingga lebih efisien. Untuk alas kakinya bisa menyesuaikan dengan warna pakaian nya ya! Digambar ini menggunakan heels bewarna nude yang menambah kesan kalem.</p>\r\n','formal-2.jpg',1,NULL,'2021-05-31 23:31:19'),(3,1,'Formal 3','formal-3','<p>Nah kali ini kita bisa mix and match blazer dan celana bahan, nih! Blazer yang oversize seperti ini bisa membuat kamu semakin keren. Ditambah dengan heels dan jam tangan juga!</p>\r\n','formal-3.jpg',1,NULL,'2021-05-31 23:31:23'),(4,1,'Formal 4','formal-4','<p>Rok hitam dipadu padankan dengan outer warna senada juga bisa kamu jadikan ide, loh! Memberikan kesan simple namun tetap modis.</p>\r\n','formal-4.jpg',1,NULL,'2021-05-31 23:31:27'),(5,2,'Casual 1','casual-1','<p>celana jeans dan flanel bisa dijadikan inspirasi outfit casual kamu loh! Ditambahkan kaos polos sebagai inner dan kamu juga kamu bisa menggunakan belt sebagai aksesorisnya!</p>\r\n','casual-1.jpg',1,NULL,'2021-05-31 23:31:36'),(6,2,'Casual 2','casual-2','<p>Sweater oversize juga bisa dijadikan ide outfit casual. Agar terlihat lebih simple kamu bisa memakai skinny jeans dan sneakers agar lebih keren! Ditambah sling bag sebagai aksesoris pemanis.</p>\r\n','casual-2.jpg',1,NULL,'2021-05-31 23:31:39'),(7,2,'Casual 3','casual-3','<p>Crew neck ditambah mom jeans juga oke banget nih! Simpel tapi tetap keren. Kamu bisa memakai white sneakers juga. Ditambah aksesoris seperti kalung, kacamata dan hand bag.</p>\r\n','casual-3.jpg',1,NULL,'2021-05-31 23:31:43'),(8,2,'Casual 4','casual-4','<p>Outfit casual tidak hanya memakai celana saja. Kamu juga bisa memakai rok motif dengan atasan kaos polos. Agar terlihat lebih menarik kamu juga bisa menambahkan akesesoris kacamata hitam dan kalung layer.</p>\r\n','casual-4.jpg',1,NULL,'2021-05-31 23:31:46'),(9,3,'Boyish 1','boyish-1','<p>Pada look ini, kita bisa menggunakan ripped jeans hitam dan kaos. Ditambah white sneakers juga makin keren nih!</p>\r\n','boyish-1.jpg',1,NULL,'2021-05-31 23:31:55'),(10,3,'Boyish 2','boyish-2','<p>Next ada look yang simple tapi tetap kece! Kamu bisa menggunakan kaos putih yg oversize dan celana yang agak longgar. Pas banget untuk kamu yang berbadan curvy agar terlihat langsing.</p>\r\n','boyish-2.jpg',1,NULL,'2021-05-31 23:31:59'),(11,3,'Boyish 3','boyish-3','<p>Outfit Kendall Jenner yang satu ini bisa kamu jadikan inspo loh! Dengan menggunakan biker short dan kaos oversize juga bisa membuat kamu lebih keren namun simple. Tidak ketinggalan kacamata hitam dan rambut diikat agar terlihat lebih <em>boyish.</em></p>\r\n','boyish-3.jpg',1,NULL,'2021-05-31 23:32:02'),(12,3,'Boyish 4','boyish-4','<p>Oversized sweater dan celana longgar sangat cocok untuk kamu mix and match nih! Sneaker hitam sebagai pelengkap agar terlihat makin keren.</p>\r\n','boyish-4.png',1,NULL,'2021-05-31 23:32:06'),(13,4,'Vintage 1','vintage-1','<p>Pada zaman modern seperti saat ini, banyak sekali inspirasi fashion yang diambil dari beberapa zaman sebelumnya, salah satunya vintage ini. Di look kali ini kamu bisa contek inspirasinya loh! Celana cutbray dan tank top atau atasan kaos seperti gambar diatas.</p>\r\n','vintage-1.jpg',1,NULL,'2021-05-31 23:32:14'),(14,4,'Vintage 2','vintage-2','<p>Kemeja dengan motif dan warna mencolok juga bisa kamu mix and match sama celana corduroy. Sebagai pelengkapnya kamu bisa mengguanakan kacamata coklat agar lebih menarik!</p>\r\n','vintage-2.jpg',1,NULL,'2021-05-31 23:32:17'),(15,4,'Vintage 3','vintage-3','<p>Untuk kamu pecinta dress, kali ini bisa dijadikan ide. Dress plaid coklat dengan topi baret bewarna senada bisa kamu tiru. Simple namun elegan.</p>\r\n','vintage-3.jpg',1,NULL,'2021-05-31 23:32:23'),(16,4,'Vintage 4','vintage-4','<p>Dress dengan warna mencolok juga tetep keren nih! Ditambah belt yang bisa membentuk tubuh. Selain itu sarung tangan gloves agar semakin kece. Cocok untuk dating ke pesta.</p>\r\n','vintage-4.jpg',1,NULL,'2021-05-31 23:32:26');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin',NULL,NULL),(2,'Member',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL DEFAULT 2,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','D\'Fashun','admin@gmail.com',1,NULL,'$2y$10$LeHU/Q2QhUKdoG/3t1tJQePmdVmHmJ/GY1ggcL3vsoejl4IYSY7vW',NULL,NULL,NULL,'2021-05-31 22:49:46','2021-05-31 22:49:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fashion'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04  4:28:57
